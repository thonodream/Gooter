if os_browser == browser_chrome {
	image_index = 1;
} else if os_browser == browser_firefox {
	image_index = 2;
} else if os_browser == browser_opera {
	image_index = 3;
} else if os_browser == browser_edge {
	image_index = 4;
} else if os_browser == browser_ie or os_browser == browser_ie_mobile {
	image_index = 5;
} else if os_browser == browser_safari or os_browser == browser_safari_mobile {
	image_index = 6;
} else if os_browser == browser_tizen {
	image_index = 7;
} else {
	image_index = 0;
}