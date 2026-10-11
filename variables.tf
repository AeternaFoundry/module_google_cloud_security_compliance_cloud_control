variable "cloud_security_compliance_cloud_controls" {
  description = <<EOT
Map of cloud_security_compliance_cloud_controls, attributes below
Required:
    - cloud_control_id
    - location
Optional:
    - categories
    - deletion_policy
    - description
    - display_name
    - finding_category
    - organization
    - parent
    - remediation_steps
    - severity
    - supported_cloud_providers
    - parameter_spec (block):
        - default_value (optional, block):
            - bool_value (optional)
            - number_value (optional)
            - oneof_value (optional, block):
                - name (optional)
                - parameter_value (optional, block):
                    - bool_value (optional)
                    - number_value (optional)
                    - oneof_value (optional, block):
                        - name (optional)
                        - parameter_value (optional, block):
                            - bool_value (optional)
                            - number_value (optional)
                            - string_list_value (optional, block):
                                - values (required)
                            - string_value (optional)
                    - string_list_value (optional, block):
                        - values (required)
                    - string_value (optional)
            - string_list_value (optional, block):
                - values (required)
            - string_value (optional)
        - description (optional)
        - display_name (optional)
        - is_required (required)
        - name (required)
        - sub_parameters (optional, block):
            - default_value (optional, block):
                - bool_value (optional)
                - number_value (optional)
                - oneof_value (optional, block):
                    - name (optional)
                    - parameter_value (optional, block):
                        - bool_value (optional)
                        - number_value (optional)
                        - oneof_value (optional, block):
                            - name (optional)
                            - parameter_value (optional, block):
                                - bool_value (optional)
                                - number_value (optional)
                                - string_list_value (optional, block):
                                    - values (required)
                                - string_value (optional)
                        - string_list_value (optional, block):
                            - values (required)
                        - string_value (optional)
                - string_list_value (optional, block):
                    - values (required)
                - string_value (optional)
            - description (optional)
            - display_name (optional)
            - is_required (required)
            - name (required)
            - sub_parameters (optional, block):
                - default_value (optional, block):
                    - bool_value (optional)
                    - number_value (optional)
                    - oneof_value (optional, block):
                        - name (optional)
                        - parameter_value (optional, block):
                            - bool_value (optional)
                            - number_value (optional)
                            - string_list_value (optional, block):
                                - values (required)
                            - string_value (optional)
                    - string_list_value (optional, block):
                        - values (required)
                    - string_value (optional)
                - description (optional)
                - display_name (optional)
                - is_required (required)
                - name (required)
                - substitution_rules (optional, block):
                    - attribute_substitution_rule (optional, block):
                        - attribute (optional)
                    - placeholder_substitution_rule (optional, block):
                        - attribute (optional)
                - validation (optional, block):
                    - allowed_values (optional, block):
                        - values (required, block):
                            - bool_value (optional)
                            - number_value (optional)
                            - oneof_value (optional, block):
                                - name (optional)
                                - parameter_value (optional, block):
                                    - bool_value (optional)
                                    - number_value (optional)
                                    - string_list_value (optional, block):
                                        - values (required)
                                    - string_value (optional)
                            - string_list_value (optional, block):
                                - values (required)
                            - string_value (optional)
                    - int_range (optional, block):
                        - max (required)
                        - min (required)
                    - regexp_pattern (optional, block):
                        - pattern (required)
                - value_type (required)
            - substitution_rules (optional, block):
                - attribute_substitution_rule (optional, block):
                    - attribute (optional)
                - placeholder_substitution_rule (optional, block):
                    - attribute (optional)
            - validation (optional, block):
                - allowed_values (optional, block):
                    - values (required, block):
                        - bool_value (optional)
                        - number_value (optional)
                        - oneof_value (optional, block):
                            - name (optional)
                            - parameter_value (optional, block):
                                - bool_value (optional)
                                - number_value (optional)
                                - oneof_value (optional, block):
                                    - name (optional)
                                    - parameter_value (optional, block):
                                        - bool_value (optional)
                                        - number_value (optional)
                                        - string_list_value (optional, block):
                                            - values (required)
                                        - string_value (optional)
                                - string_list_value (optional, block):
                                    - values (required)
                                - string_value (optional)
                        - string_list_value (optional, block):
                            - values (required)
                        - string_value (optional)
                - int_range (optional, block):
                    - max (required)
                    - min (required)
                - regexp_pattern (optional, block):
                    - pattern (required)
            - value_type (required)
        - substitution_rules (optional, block):
            - attribute_substitution_rule (optional, block):
                - attribute (optional)
            - placeholder_substitution_rule (optional, block):
                - attribute (optional)
        - validation (optional, block):
            - allowed_values (optional, block):
                - values (required, block):
                    - bool_value (optional)
                    - number_value (optional)
                    - oneof_value (optional, block):
                        - name (optional)
                        - parameter_value (optional, block):
                            - bool_value (optional)
                            - number_value (optional)
                            - oneof_value (optional, block):
                                - name (optional)
                                - parameter_value (optional, block):
                                    - bool_value (optional)
                                    - number_value (optional)
                                    - string_list_value (optional, block):
                                        - values (required)
                                    - string_value (optional)
                            - string_list_value (optional, block):
                                - values (required)
                            - string_value (optional)
                    - string_list_value (optional, block):
                        - values (required)
                    - string_value (optional)
            - int_range (optional, block):
                - max (required)
                - min (required)
            - regexp_pattern (optional, block):
                - pattern (required)
        - value_type (required)
    - rules (block):
        - cel_expression (optional, block):
            - expression (required)
            - resource_types_values (optional, block):
                - values (required)
        - description (optional)
        - rule_action_types (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cloud_control_id          = string
    location                  = string
    categories                = optional(list(string))
    deletion_policy           = optional(string)
    description               = optional(string)
    display_name              = optional(string)
    finding_category          = optional(string)
    organization              = optional(string)
    parent                    = optional(string)
    remediation_steps         = optional(string)
    severity                  = optional(string)
    supported_cloud_providers = optional(list(string))
    parameter_spec = optional(list(object({
      default_value = optional(object({
        bool_value   = optional(bool)
        number_value = optional(number)
        oneof_value = optional(object({
          name = optional(string)
          parameter_value = optional(object({
            bool_value   = optional(bool)
            number_value = optional(number)
            oneof_value = optional(object({
              name = optional(string)
              parameter_value = optional(object({
                bool_value   = optional(bool)
                number_value = optional(number)
                string_list_value = optional(object({
                  values = list(string)
                }))
                string_value = optional(string)
              }))
            }))
            string_list_value = optional(object({
              values = list(string)
            }))
            string_value = optional(string)
          }))
        }))
        string_list_value = optional(object({
          values = list(string)
        }))
        string_value = optional(string)
      }))
      description  = optional(string)
      display_name = optional(string)
      is_required  = bool
      name         = string
      sub_parameters = optional(list(object({
        default_value = optional(object({
          bool_value   = optional(bool)
          number_value = optional(number)
          oneof_value = optional(object({
            name = optional(string)
            parameter_value = optional(object({
              bool_value   = optional(bool)
              number_value = optional(number)
              oneof_value = optional(object({
                name = optional(string)
                parameter_value = optional(object({
                  bool_value   = optional(bool)
                  number_value = optional(number)
                  string_list_value = optional(object({
                    values = list(string)
                  }))
                  string_value = optional(string)
                }))
              }))
              string_list_value = optional(object({
                values = list(string)
              }))
              string_value = optional(string)
            }))
          }))
          string_list_value = optional(object({
            values = list(string)
          }))
          string_value = optional(string)
        }))
        description  = optional(string)
        display_name = optional(string)
        is_required  = bool
        name         = string
        sub_parameters = optional(list(object({
          default_value = optional(object({
            bool_value   = optional(bool)
            number_value = optional(number)
            oneof_value = optional(object({
              name = optional(string)
              parameter_value = optional(object({
                bool_value   = optional(bool)
                number_value = optional(number)
                string_list_value = optional(object({
                  values = list(string)
                }))
                string_value = optional(string)
              }))
            }))
            string_list_value = optional(object({
              values = list(string)
            }))
            string_value = optional(string)
          }))
          description  = optional(string)
          display_name = optional(string)
          is_required  = bool
          name         = string
          substitution_rules = optional(list(object({
            attribute_substitution_rule = optional(object({
              attribute = optional(string)
            }))
            placeholder_substitution_rule = optional(object({
              attribute = optional(string)
            }))
          })))
          validation = optional(object({
            allowed_values = optional(object({
              values = list(object({
                bool_value   = optional(bool)
                number_value = optional(number)
                oneof_value = optional(object({
                  name = optional(string)
                  parameter_value = optional(object({
                    bool_value   = optional(bool)
                    number_value = optional(number)
                    string_list_value = optional(object({
                      values = list(string)
                    }))
                    string_value = optional(string)
                  }))
                }))
                string_list_value = optional(object({
                  values = list(string)
                }))
                string_value = optional(string)
              }))
            }))
            int_range = optional(object({
              max = string
              min = string
            }))
            regexp_pattern = optional(object({
              pattern = string
            }))
          }))
          value_type = string
        })))
        substitution_rules = optional(list(object({
          attribute_substitution_rule = optional(object({
            attribute = optional(string)
          }))
          placeholder_substitution_rule = optional(object({
            attribute = optional(string)
          }))
        })))
        validation = optional(object({
          allowed_values = optional(object({
            values = list(object({
              bool_value   = optional(bool)
              number_value = optional(number)
              oneof_value = optional(object({
                name = optional(string)
                parameter_value = optional(object({
                  bool_value   = optional(bool)
                  number_value = optional(number)
                  oneof_value = optional(object({
                    name = optional(string)
                    parameter_value = optional(object({
                      bool_value   = optional(bool)
                      number_value = optional(number)
                      string_list_value = optional(object({
                        values = list(string)
                      }))
                      string_value = optional(string)
                    }))
                  }))
                  string_list_value = optional(object({
                    values = list(string)
                  }))
                  string_value = optional(string)
                }))
              }))
              string_list_value = optional(object({
                values = list(string)
              }))
              string_value = optional(string)
            }))
          }))
          int_range = optional(object({
            max = string
            min = string
          }))
          regexp_pattern = optional(object({
            pattern = string
          }))
        }))
        value_type = string
      })))
      substitution_rules = optional(list(object({
        attribute_substitution_rule = optional(object({
          attribute = optional(string)
        }))
        placeholder_substitution_rule = optional(object({
          attribute = optional(string)
        }))
      })))
      validation = optional(object({
        allowed_values = optional(object({
          values = list(object({
            bool_value   = optional(bool)
            number_value = optional(number)
            oneof_value = optional(object({
              name = optional(string)
              parameter_value = optional(object({
                bool_value   = optional(bool)
                number_value = optional(number)
                oneof_value = optional(object({
                  name = optional(string)
                  parameter_value = optional(object({
                    bool_value   = optional(bool)
                    number_value = optional(number)
                    string_list_value = optional(object({
                      values = list(string)
                    }))
                    string_value = optional(string)
                  }))
                }))
                string_list_value = optional(object({
                  values = list(string)
                }))
                string_value = optional(string)
              }))
            }))
            string_list_value = optional(object({
              values = list(string)
            }))
            string_value = optional(string)
          }))
        }))
        int_range = optional(object({
          max = string
          min = string
        }))
        regexp_pattern = optional(object({
          pattern = string
        }))
      }))
      value_type = string
    })))
    rules = optional(list(object({
      cel_expression = optional(object({
        expression = string
        resource_types_values = optional(object({
          values = list(string)
        }))
      }))
      description       = optional(string)
      rule_action_types = list(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloud_security_compliance_cloud_controls : (
        v.parameter_spec == null || alltrue([for item in v.parameter_spec : (item.sub_parameters == null || alltrue([for item in item.sub_parameters : (item.sub_parameters == null || alltrue([for item in item.sub_parameters : (item.validation == null || (item.validation.allowed_values == null || (length(item.validation.allowed_values.values) >= 1)))]))]))])
      )
    ])
    error_message = "Each values list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloud_security_compliance_cloud_controls : (
        v.parameter_spec == null || alltrue([for item in v.parameter_spec : (item.sub_parameters == null || alltrue([for item in item.sub_parameters : (item.validation == null || (item.validation.allowed_values == null || (length(item.validation.allowed_values.values) >= 1)))]))])
      )
    ])
    error_message = "Each values list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloud_security_compliance_cloud_controls : (
        v.parameter_spec == null || alltrue([for item in v.parameter_spec : (item.validation == null || (item.validation.allowed_values == null || (length(item.validation.allowed_values.values) >= 1)))])
      )
    ])
    error_message = "Each values list must contain at least 1 items"
  }
}

