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

// Disable letterboxing
//user_pref("privacy.resistFingerprinting.letterboxing", false);

// Veritcal tabs
user_pref("sidebar.verticalTabs", true);
user_pref("sidebar.revamp", true);

// Disable sanitize cookies on exit https://bugzilla.mozilla.org/show_bug.cgi?id=1767271
// user_pref("privacy.clearOnShutdown_v2.cookiesAndStorage", false);
