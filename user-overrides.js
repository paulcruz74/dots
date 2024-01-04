//DNS over HTTPS
// Cloudflare is the default, so we leave the below line out.
// user_pref("network.trr.uri", "https://mozilla.cloudflare-dns.com/dns-query");
user_pref("network.trr.mode", 2);

//Firefox stores passwords in plain text and obsolete if you use a password manager.
//Mozilla also told people to stop using their password manager.
user_pref("signon.rememberSignons", false);


// Re-enable safebrowsing
user_pref("browser.safebrowsing.downloads.remote.enabled", true);

//Disable Pocket
user_pref("extensions.pocket.enabled", false);

