Vim�UnDo� 2���ö�h&r���ɗC�[B"�|?����   
                                   ag�)    _�                             ����                                                                                                                                                                                                                                                                                                                                                             ag�v     �                   �               5��                                         �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ag�w    �                  5��                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ag�#     �               5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ag�$     �                  �               5��                   	      �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ag�%     �                })5��                          �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        ag�(    �                 require("cheatsheet").setup({   *    -- Whether to show bundled cheatsheets       E    -- For generic cheatsheets like default, unicode, nerd-fonts, etc       bundled_cheatsheets = true,       -- bundled_cheatsheets = {       --     enabled = {},       --     disabled = {},   	    -- },       &    -- For plugin specific cheatsheets   &    bundled_plugin_cheatsheets = true,   %    -- bundled_plugin_cheatsheets = {       --     enabled = {},       --     disabled = {},       -- }       A    -- For bundled plugin cheatsheets, do not show a sheet if you   @    -- don't have the plugin installed (searches runtimepath for       -- same directory name)   *    include_only_installed_plugins = true,5��                                   �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ag�!     �              �             
   }require("cheatsheet").setup({       bundled_cheatsheets = {   +        -- only show the default cheatsheet            enabled = { "default" },       },   "    bundled_plugin_cheatsheets = {   ;        -- show cheatsheets for all plugins except gitsigns   '        disabled = { "gitsigns.nvim" },       }   }))5��                  	      �                    5��