resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "win365_oib_device_security_d_resource_redirection_v1_0" {
  name               = "Win365 - OIB - Device Security - D - Resource Redirection - v1.0"
  description        = ""
  platforms          = "windows10"
  technologies       = ["mdm"]
  role_scope_tag_ids = ["0"]

  template_reference = {
    template_id = ""
  }

  configuration_policy = {
    settings = [
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_audio"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_audio_1"
          }
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_audio_capture"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_audio_capture_1"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_time_zone"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_time_zone_1"
          }
        }
        id = "2"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_com"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_com_1"
          }
        }
        id = "3"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_donotallowdriveredirection"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_remotedesktopservices_donotallowdriveredirection_1"
          }
        }
        id = "4"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_lpt"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_lpt_1"
          }
        }
        id = "5"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_pnp"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_client_pnp_1"
          }
        }
        id = "6"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_limitservertoclientclipboardredirection"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = [
              {
                odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_limitservertoclientclipboardredirection_ts_sc_clipboard_restriction_text"
                setting_instance_template_reference = null
                choice_setting_value = {
                  setting_value_template_reference = null
                  children                         = []
                  value                            = "device_vendor_msft_policy_config_remotedesktopservices_limitservertoclientclipboardredirection_ts_sc_clipboard_restriction_text_0"
                }
              }
            ]
            value = "device_vendor_msft_policy_config_remotedesktopservices_limitservertoclientclipboardredirection_1"
          }
        }
        id = "7"
      }
    ]
  }
}
