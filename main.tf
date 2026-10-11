resource "google_cloud_security_compliance_cloud_control" "cloud_security_compliance_cloud_controls" {
  for_each = var.cloud_security_compliance_cloud_controls

  cloud_control_id          = each.value.cloud_control_id
  location                  = each.value.location
  categories                = each.value.categories
  deletion_policy           = each.value.deletion_policy
  description               = each.value.description
  display_name              = each.value.display_name
  finding_category          = each.value.finding_category
  organization              = each.value.organization
  parent                    = each.value.parent
  remediation_steps         = each.value.remediation_steps
  severity                  = each.value.severity
  supported_cloud_providers = each.value.supported_cloud_providers

  dynamic "parameter_spec" {
    for_each = each.value.parameter_spec != null ? each.value.parameter_spec : []
    content {
      dynamic "default_value" {
        for_each = parameter_spec.value.default_value != null ? [parameter_spec.value.default_value] : []
        content {
          bool_value   = default_value.value.bool_value
          number_value = default_value.value.number_value
          dynamic "oneof_value" {
            for_each = default_value.value.oneof_value != null ? [default_value.value.oneof_value] : []
            content {
              name = oneof_value.value.name
              dynamic "parameter_value" {
                for_each = oneof_value.value.parameter_value != null ? [oneof_value.value.parameter_value] : []
                content {
                  bool_value   = parameter_value.value.bool_value
                  number_value = parameter_value.value.number_value
                  dynamic "oneof_value" {
                    for_each = parameter_value.value.oneof_value != null ? [parameter_value.value.oneof_value] : []
                    content {
                      name = oneof_value.value.name
                      dynamic "parameter_value" {
                        for_each = oneof_value.value.parameter_value != null ? [oneof_value.value.parameter_value] : []
                        content {
                          bool_value   = parameter_value.value.bool_value
                          number_value = parameter_value.value.number_value
                          dynamic "string_list_value" {
                            for_each = parameter_value.value.string_list_value != null ? [parameter_value.value.string_list_value] : []
                            content {
                              values = string_list_value.value.values
                            }
                          }
                          string_value = parameter_value.value.string_value
                        }
                      }
                    }
                  }
                  dynamic "string_list_value" {
                    for_each = parameter_value.value.string_list_value != null ? [parameter_value.value.string_list_value] : []
                    content {
                      values = string_list_value.value.values
                    }
                  }
                  string_value = parameter_value.value.string_value
                }
              }
            }
          }
          dynamic "string_list_value" {
            for_each = default_value.value.string_list_value != null ? [default_value.value.string_list_value] : []
            content {
              values = string_list_value.value.values
            }
          }
          string_value = default_value.value.string_value
        }
      }
      description  = parameter_spec.value.description
      display_name = parameter_spec.value.display_name
      is_required  = parameter_spec.value.is_required
      name         = parameter_spec.value.name
      dynamic "sub_parameters" {
        for_each = parameter_spec.value.sub_parameters != null ? parameter_spec.value.sub_parameters : []
        content {
          dynamic "default_value" {
            for_each = sub_parameters.value.default_value != null ? [sub_parameters.value.default_value] : []
            content {
              bool_value   = default_value.value.bool_value
              number_value = default_value.value.number_value
              dynamic "oneof_value" {
                for_each = default_value.value.oneof_value != null ? [default_value.value.oneof_value] : []
                content {
                  name = oneof_value.value.name
                  dynamic "parameter_value" {
                    for_each = oneof_value.value.parameter_value != null ? [oneof_value.value.parameter_value] : []
                    content {
                      bool_value   = parameter_value.value.bool_value
                      number_value = parameter_value.value.number_value
                      dynamic "oneof_value" {
                        for_each = parameter_value.value.oneof_value != null ? [parameter_value.value.oneof_value] : []
                        content {
                          name = oneof_value.value.name
                          dynamic "parameter_value" {
                            for_each = oneof_value.value.parameter_value != null ? [oneof_value.value.parameter_value] : []
                            content {
                              bool_value   = parameter_value.value.bool_value
                              number_value = parameter_value.value.number_value
                              dynamic "string_list_value" {
                                for_each = parameter_value.value.string_list_value != null ? [parameter_value.value.string_list_value] : []
                                content {
                                  values = string_list_value.value.values
                                }
                              }
                              string_value = parameter_value.value.string_value
                            }
                          }
                        }
                      }
                      dynamic "string_list_value" {
                        for_each = parameter_value.value.string_list_value != null ? [parameter_value.value.string_list_value] : []
                        content {
                          values = string_list_value.value.values
                        }
                      }
                      string_value = parameter_value.value.string_value
                    }
                  }
                }
              }
              dynamic "string_list_value" {
                for_each = default_value.value.string_list_value != null ? [default_value.value.string_list_value] : []
                content {
                  values = string_list_value.value.values
                }
              }
              string_value = default_value.value.string_value
            }
          }
          description  = sub_parameters.value.description
          display_name = sub_parameters.value.display_name
          is_required  = sub_parameters.value.is_required
          name         = sub_parameters.value.name
          dynamic "sub_parameters" {
            for_each = sub_parameters.value.sub_parameters != null ? sub_parameters.value.sub_parameters : []
            content {
              dynamic "default_value" {
                for_each = sub_parameters.value.default_value != null ? [sub_parameters.value.default_value] : []
                content {
                  bool_value   = default_value.value.bool_value
                  number_value = default_value.value.number_value
                  dynamic "oneof_value" {
                    for_each = default_value.value.oneof_value != null ? [default_value.value.oneof_value] : []
                    content {
                      name = oneof_value.value.name
                      dynamic "parameter_value" {
                        for_each = oneof_value.value.parameter_value != null ? [oneof_value.value.parameter_value] : []
                        content {
                          bool_value   = parameter_value.value.bool_value
                          number_value = parameter_value.value.number_value
                          dynamic "string_list_value" {
                            for_each = parameter_value.value.string_list_value != null ? [parameter_value.value.string_list_value] : []
                            content {
                              values = string_list_value.value.values
                            }
                          }
                          string_value = parameter_value.value.string_value
                        }
                      }
                    }
                  }
                  dynamic "string_list_value" {
                    for_each = default_value.value.string_list_value != null ? [default_value.value.string_list_value] : []
                    content {
                      values = string_list_value.value.values
                    }
                  }
                  string_value = default_value.value.string_value
                }
              }
              description  = sub_parameters.value.description
              display_name = sub_parameters.value.display_name
              is_required  = sub_parameters.value.is_required
              name         = sub_parameters.value.name
              dynamic "substitution_rules" {
                for_each = sub_parameters.value.substitution_rules != null ? sub_parameters.value.substitution_rules : []
                content {
                  dynamic "attribute_substitution_rule" {
                    for_each = substitution_rules.value.attribute_substitution_rule != null ? [substitution_rules.value.attribute_substitution_rule] : []
                    content {
                      attribute = attribute_substitution_rule.value.attribute
                    }
                  }
                  dynamic "placeholder_substitution_rule" {
                    for_each = substitution_rules.value.placeholder_substitution_rule != null ? [substitution_rules.value.placeholder_substitution_rule] : []
                    content {
                      attribute = placeholder_substitution_rule.value.attribute
                    }
                  }
                }
              }
              dynamic "validation" {
                for_each = sub_parameters.value.validation != null ? [sub_parameters.value.validation] : []
                content {
                  dynamic "allowed_values" {
                    for_each = validation.value.allowed_values != null ? [validation.value.allowed_values] : []
                    content {
                      dynamic "values" {
                        for_each = allowed_values.value.values
                        content {
                          bool_value   = values.value.bool_value
                          number_value = values.value.number_value
                          dynamic "oneof_value" {
                            for_each = values.value.oneof_value != null ? [values.value.oneof_value] : []
                            content {
                              name = oneof_value.value.name
                              dynamic "parameter_value" {
                                for_each = oneof_value.value.parameter_value != null ? [oneof_value.value.parameter_value] : []
                                content {
                                  bool_value   = parameter_value.value.bool_value
                                  number_value = parameter_value.value.number_value
                                  dynamic "string_list_value" {
                                    for_each = parameter_value.value.string_list_value != null ? [parameter_value.value.string_list_value] : []
                                    content {
                                      values = string_list_value.value.values
                                    }
                                  }
                                  string_value = parameter_value.value.string_value
                                }
                              }
                            }
                          }
                          dynamic "string_list_value" {
                            for_each = values.value.string_list_value != null ? [values.value.string_list_value] : []
                            content {
                              values = string_list_value.value.values
                            }
                          }
                          string_value = values.value.string_value
                        }
                      }
                    }
                  }
                  dynamic "int_range" {
                    for_each = validation.value.int_range != null ? [validation.value.int_range] : []
                    content {
                      max = int_range.value.max
                      min = int_range.value.min
                    }
                  }
                  dynamic "regexp_pattern" {
                    for_each = validation.value.regexp_pattern != null ? [validation.value.regexp_pattern] : []
                    content {
                      pattern = regexp_pattern.value.pattern
                    }
                  }
                }
              }
              value_type = sub_parameters.value.value_type
            }
          }
          dynamic "substitution_rules" {
            for_each = sub_parameters.value.substitution_rules != null ? sub_parameters.value.substitution_rules : []
            content {
              dynamic "attribute_substitution_rule" {
                for_each = substitution_rules.value.attribute_substitution_rule != null ? [substitution_rules.value.attribute_substitution_rule] : []
                content {
                  attribute = attribute_substitution_rule.value.attribute
                }
              }
              dynamic "placeholder_substitution_rule" {
                for_each = substitution_rules.value.placeholder_substitution_rule != null ? [substitution_rules.value.placeholder_substitution_rule] : []
                content {
                  attribute = placeholder_substitution_rule.value.attribute
                }
              }
            }
          }
          dynamic "validation" {
            for_each = sub_parameters.value.validation != null ? [sub_parameters.value.validation] : []
            content {
              dynamic "allowed_values" {
                for_each = validation.value.allowed_values != null ? [validation.value.allowed_values] : []
                content {
                  dynamic "values" {
                    for_each = allowed_values.value.values
                    content {
                      bool_value   = values.value.bool_value
                      number_value = values.value.number_value
                      dynamic "oneof_value" {
                        for_each = values.value.oneof_value != null ? [values.value.oneof_value] : []
                        content {
                          name = oneof_value.value.name
                          dynamic "parameter_value" {
                            for_each = oneof_value.value.parameter_value != null ? [oneof_value.value.parameter_value] : []
                            content {
                              bool_value   = parameter_value.value.bool_value
                              number_value = parameter_value.value.number_value
                              dynamic "oneof_value" {
                                for_each = parameter_value.value.oneof_value != null ? [parameter_value.value.oneof_value] : []
                                content {
                                  name = oneof_value.value.name
                                  dynamic "parameter_value" {
                                    for_each = oneof_value.value.parameter_value != null ? [oneof_value.value.parameter_value] : []
                                    content {
                                      bool_value   = parameter_value.value.bool_value
                                      number_value = parameter_value.value.number_value
                                      dynamic "string_list_value" {
                                        for_each = parameter_value.value.string_list_value != null ? [parameter_value.value.string_list_value] : []
                                        content {
                                          values = string_list_value.value.values
                                        }
                                      }
                                      string_value = parameter_value.value.string_value
                                    }
                                  }
                                }
                              }
                              dynamic "string_list_value" {
                                for_each = parameter_value.value.string_list_value != null ? [parameter_value.value.string_list_value] : []
                                content {
                                  values = string_list_value.value.values
                                }
                              }
                              string_value = parameter_value.value.string_value
                            }
                          }
                        }
                      }
                      dynamic "string_list_value" {
                        for_each = values.value.string_list_value != null ? [values.value.string_list_value] : []
                        content {
                          values = string_list_value.value.values
                        }
                      }
                      string_value = values.value.string_value
                    }
                  }
                }
              }
              dynamic "int_range" {
                for_each = validation.value.int_range != null ? [validation.value.int_range] : []
                content {
                  max = int_range.value.max
                  min = int_range.value.min
                }
              }
              dynamic "regexp_pattern" {
                for_each = validation.value.regexp_pattern != null ? [validation.value.regexp_pattern] : []
                content {
                  pattern = regexp_pattern.value.pattern
                }
              }
            }
          }
          value_type = sub_parameters.value.value_type
        }
      }
      dynamic "substitution_rules" {
        for_each = parameter_spec.value.substitution_rules != null ? parameter_spec.value.substitution_rules : []
        content {
          dynamic "attribute_substitution_rule" {
            for_each = substitution_rules.value.attribute_substitution_rule != null ? [substitution_rules.value.attribute_substitution_rule] : []
            content {
              attribute = attribute_substitution_rule.value.attribute
            }
          }
          dynamic "placeholder_substitution_rule" {
            for_each = substitution_rules.value.placeholder_substitution_rule != null ? [substitution_rules.value.placeholder_substitution_rule] : []
            content {
              attribute = placeholder_substitution_rule.value.attribute
            }
          }
        }
      }
      dynamic "validation" {
        for_each = parameter_spec.value.validation != null ? [parameter_spec.value.validation] : []
        content {
          dynamic "allowed_values" {
            for_each = validation.value.allowed_values != null ? [validation.value.allowed_values] : []
            content {
              dynamic "values" {
                for_each = allowed_values.value.values
                content {
                  bool_value   = values.value.bool_value
                  number_value = values.value.number_value
                  dynamic "oneof_value" {
                    for_each = values.value.oneof_value != null ? [values.value.oneof_value] : []
                    content {
                      name = oneof_value.value.name
                      dynamic "parameter_value" {
                        for_each = oneof_value.value.parameter_value != null ? [oneof_value.value.parameter_value] : []
                        content {
                          bool_value   = parameter_value.value.bool_value
                          number_value = parameter_value.value.number_value
                          dynamic "oneof_value" {
                            for_each = parameter_value.value.oneof_value != null ? [parameter_value.value.oneof_value] : []
                            content {
                              name = oneof_value.value.name
                              dynamic "parameter_value" {
                                for_each = oneof_value.value.parameter_value != null ? [oneof_value.value.parameter_value] : []
                                content {
                                  bool_value   = parameter_value.value.bool_value
                                  number_value = parameter_value.value.number_value
                                  dynamic "string_list_value" {
                                    for_each = parameter_value.value.string_list_value != null ? [parameter_value.value.string_list_value] : []
                                    content {
                                      values = string_list_value.value.values
                                    }
                                  }
                                  string_value = parameter_value.value.string_value
                                }
                              }
                            }
                          }
                          dynamic "string_list_value" {
                            for_each = parameter_value.value.string_list_value != null ? [parameter_value.value.string_list_value] : []
                            content {
                              values = string_list_value.value.values
                            }
                          }
                          string_value = parameter_value.value.string_value
                        }
                      }
                    }
                  }
                  dynamic "string_list_value" {
                    for_each = values.value.string_list_value != null ? [values.value.string_list_value] : []
                    content {
                      values = string_list_value.value.values
                    }
                  }
                  string_value = values.value.string_value
                }
              }
            }
          }
          dynamic "int_range" {
            for_each = validation.value.int_range != null ? [validation.value.int_range] : []
            content {
              max = int_range.value.max
              min = int_range.value.min
            }
          }
          dynamic "regexp_pattern" {
            for_each = validation.value.regexp_pattern != null ? [validation.value.regexp_pattern] : []
            content {
              pattern = regexp_pattern.value.pattern
            }
          }
        }
      }
      value_type = parameter_spec.value.value_type
    }
  }

  dynamic "rules" {
    for_each = each.value.rules != null ? each.value.rules : []
    content {
      dynamic "cel_expression" {
        for_each = rules.value.cel_expression != null ? [rules.value.cel_expression] : []
        content {
          expression = cel_expression.value.expression
          dynamic "resource_types_values" {
            for_each = cel_expression.value.resource_types_values != null ? [cel_expression.value.resource_types_values] : []
            content {
              values = resource_types_values.value.values
            }
          }
        }
      }
      description       = rules.value.description
      rule_action_types = rules.value.rule_action_types
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

