TMP        = tmp
BLOCKLISTS = unity steven danhorton7 zerodot1 \
	     blp-ads blp-tiktok blp-tracking

rgh = https://raw.githubusercontent.com
gl  = https://gitlab.com

hosts: $(addprefix $(TMP)/,$(addsuffix .hosts,$(BLOCKLISTS)))
	cp -f hosts.in hosts
	# patching...
	# step 1: removes anything that doesn't start with 0.0.0.0
	# step 2: removes inline comments
	# step 3: removes trailing spaces and tabs
	# step 4: removes any repeated entries
	grep -h '^0\.0\.0\.0' $(TMP)/*.hosts | \
		sed 's/\(.*\)[[:blank:]]*#.*/\1/' | \
		sed 's/[ \t]*$$//' | \
		sort -u >> hosts

.PHONY: clean
clean:; rm '$(TMP)'/*.hosts

$(TMP)/unity.hosts:
	cp local/unity.hosts '$@'

$(TMP)/steven.hosts:
	wget -O '$@' '$(rgh)/StevenBlack/hosts/master/hosts'

$(TMP)/danhorton7.hosts:
	wget -O '$@' '$(rgh)/danhorton7/pihole-block-tiktok/main/tiktok.txt'

$(TMP)/zerodot1.hosts:
	wget -O '$@' '$(gl)/ZeroDot1/CoinBlockerLists/-/raw/master/hosts'

$(TMP)/blp-ads.hosts:
	wget -O '$@' '$(rgh)/blocklistproject/Lists/master/ads.txt'

$(TMP)/blp-tiktok.hosts:
	wget -O '$@' '$(rgh)/blocklistproject/Lists/master/tiktok.txt'

$(TMP)/blp-tracking.hosts:
	wget -O '$@' '$(rgh)/blocklistproject/Lists/master/tracking.txt'
