resource "microsoft365_graph_beta_device_management_settings_catalog_configuration_policy" "win365_oib_device_security_d_connectivity_settings_v1_0" {
  name               = "Win365 - OIB - Device Security - D - Connectivity Settings - v1.0"
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
          setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_select_transport"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = [
              {
                odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                setting_definition_id               = "device_vendor_msft_policy_config_admx_terminalserver_ts_select_transport_ts_select_transport_type"
                setting_instance_template_reference = null
                choice_setting_value = {
                  setting_value_template_reference = null
                  children                         = []
                  value                            = "device_vendor_msft_policy_config_admx_terminalserver_ts_select_transport_ts_select_transport_type_0"
                }
              }
            ]
            value = "device_vendor_msft_policy_config_admx_terminalserver_ts_select_transport_1"
          }
        }
        id = "0"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_promptforpassworduponconnection"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_remotedesktopservices_promptforpassworduponconnection_1"
          }
        }
        id = "1"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_disconnectonlockmicrosoftidentityauthn"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_remotedesktopservices_disconnectonlockmicrosoftidentityauthn_1"
          }
        }
        id = "2"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_requiresecurerpccommunication"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children                         = []
            value                            = "device_vendor_msft_policy_config_remotedesktopservices_requiresecurerpccommunication_1"
          }
        }
        id = "3"
      },
      {
        setting_instance = {
          odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
          setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel"
          setting_instance_template_reference = null
          choice_setting_value = {
            setting_value_template_reference = null
            children = [
              {
                odata_type                          = "#microsoft.graph.deviceManagementConfigurationChoiceSettingInstance"
                setting_definition_id               = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_ts_encryption_level"
                setting_instance_template_reference = null
                choice_setting_value = {
                  setting_value_template_reference = null
                  children                         = []
                  value                            = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_ts_encryption_level_3"
                }
              }
            ]
            value = "device_vendor_msft_policy_config_remotedesktopservices_clientconnectionencryptionlevel_1"
          }
        }
        id = "4"
      }
    ]
  }
}
