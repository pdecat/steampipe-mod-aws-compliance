benchmark "d_2_ti" {
  title       = "Threat Intelligence (TI)"
  description = "Threat intelligence and collaboration includes processes to effectively discover, analyze, and understand cyber threats, with the capability to share information internally and with appropriate third parties."
  children = [
    benchmark.d_2_ti_ti_b_1,
    benchmark.d_2_ti_ti_b_2,
    benchmark.d_2_ti_ti_b_3
  ]

  tags = local.d_2_common_tags
}

benchmark "d_2_ti_ti_b_1" {
  title       = "D2.TI.Ti.B.1"
  description = "The institution belongs or subscribes to a threat and vulnerability information-sharing source(s) that provides information on threats (e.g., FS-ISAC, US- CERT)."
  children = [
    control.securityhub_enabled,
    control.guardduty_enabled

  ]

  tags = merge(local.d_2_common_tags, {
    ffiec_item_id = "d_2_ti_ti_b_1"
  })
}

benchmark "d_2_ti_ti_b_2" {
  title       = "D2.TI.Ti.B.2"
  description = "Threat information is used to monitor threats and vulnerabilities."
  children = [
    control.ssm_managed_instance_compliance_patch_compliant,
    control.guardduty_enabled, 
    control.securityhub_enabled
  ]

  tags = merge(local.d_2_common_tags, {
    ffiec_item_id = "d_2_ti_ti_b_2"
  })
}

benchmark "d_2_ti_ti_b_3" {
  title       = "D2.TI.Ti.B.3"
  description = "Threat information is used to enhance internal risk management and controls. "
  children = [
    control.securityhub_enabled,
    control.guardduty_enabled
  ]

  tags = merge(local.d_2_common_tags, {
    ffiec_item_id = "d_2_ti_ti_b_3"
  })
}

