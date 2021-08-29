var plasma = getApiVersion(1);

var layout = {
    "desktops": [
        {
            "applets": [
            ],
            "config": {
                "/": {
                    "formfactor": "0",
                    "immutability": "0",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                },
                "/ConfigDialog": {
                    "DialogHeight": "540",
                    "DialogWidth": "720"
                },
                "/Configuration": {
                    "PreloadWeight": "0"
                },
                "/General": {
                    "ToolBoxButtonState": "topright",
                    "ToolBoxButtonX": "1310",
                    "ToolBoxButtonY": "4",
                    "pressToMoveHelp": "false"
                },
                "/Wallpaper/org.kde.image/General": {
                    "FillMode": "2",
                    "Image": "bluelake"
                }
            },
            "wallpaperPlugin": "org.kde.image"
        }
    ],
    "panels": [
        {
            "alignment": "left",
            "applets": [
                {
                    "config": {
                        "/": {
                            "immutability": "0"
                        },
                        "/Configuration": {
                            "PreloadWeight": "100"
                        },
                        "/Configuration/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                            "/General": {
                            "fullscreen": "true",
                            "icon": "bluelake",
                            "searchFieldFollowsTheme": "true",
                            "sidebarFollowsTheme": "true",
                            "sidebarShortcuts": "xdg:DOWNLOAD,xdg:DOCUMENTS,xdg:PICTURES,org.kde.dolphin.desktop,systemsettings.desktop",
                            "tileModel": ""
                        },
                        "/Shortcuts": {
                            "global": "Alt+F1"
                        }
                    },
                    "plugin": "com.github.zren.tiledmenu"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        },
                        "/Configuration/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/Shortcuts": {
                            "global": "Meta+Tab"
                        }
                    },
                    "plugin": "com.github.zren.presentwindows"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        }
                    },
                    "plugin": "org.kde.plasma.panelspacer"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        },
                        "/Configuration/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                         "/General": {
                            "noWindowText": "藍鯉鎮作業系統主界面",
                            "noWindowType": "text",
                            "showApplicationIcon": "true"
                         }
                    },
                    "plugin": "org.communia.apptitle"
                }
            ],
            "config": {
                "/": {
                    "formfactor": "2",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                },
                "/ConfigDialog": {
                    "DialogHeight": "79",
                    "DialogWidth": "1366"
                },
                "/Configuration": {
                    "PreloadWeight": "0"
                }
            },
            "height": 2.5555555555555554,
            "hiding": "normal",
            "location": "bottom",
            "maximumLength": 75.88888888888889,
            "minimumLength": 75.88888888888889,
            "offset": 0
        },
        {
            "alignment": "left",
            "applets": [
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        },
                        "/Configuration/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/Configuration/General": {
                            "cpuActivated": "false",
                            "swapActivated": "false"
                        }
                    },
                    "plugin": "org.kde.plasma.systemloadviewer"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        }
                    },
                    "plugin": "org.kde.plasma.digitalclock"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        }
                    },
                    "plugin": "org.kde.plasma.panelspacer"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        },
                        "/Configuration/Advanced": {
                            "dayTemperature": "3000",
                            "nightTemperature": "3000"
                        },
                        "/Configuration/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/Configuration/General": {
                            "manualBrightnessStep": "0.1",
                            "manualTemperatureStep": "2900",
                            "smoothTransitions": "true"
                        }
                    },
                    "plugin": "org.kde.redshiftControl"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "97"
                        }
                    },
                    "plugin": "org.kde.plasma.systemtray"
                }
            ],
            "config": {
                "/": {
                    "formfactor": "2",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                },
                "/ConfigDialog": {
                    "DialogHeight": "79",
                    "DialogWidth": "1366"
                },
                "/Configuration": {
                    "PreloadWeight": "0"
                }
            },
            "height": 2.2222222222222223,
            "hiding": "normal",
            "location": "top",
            "maximumLength": 75.88888888888889,
            "minimumLength": 75.88888888888889,
            "offset": 0
        }
    ],
    "serializationFormatVersion": "1"
}
;

plasma.loadSerializedLayout(layout);
