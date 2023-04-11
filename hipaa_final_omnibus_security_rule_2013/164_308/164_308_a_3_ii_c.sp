benchmark "hipaa_final_omnibus_security_rule_2013_164_308_a_3_ii_c" {
  title       = "164.308(a)(3)(ii)(C) Termination procedures"
  description = "Implement procedures for terminating access to electronic protected health information when the employment of, or other arrangement with, a workforce member ends or as required by determinations made as specified in paragraph (a)(3)(ii)(B) of this section."
  children = [
    control.iam_user_access_key_age_90
  ]

  tags = merge(local.hipaa_final_omnibus_security_rule_2013_164_308_common_tags, {
    hipaa_final_omnibus_security_rule_2013_item_id = "164_308_a_3_ii_c"
    service                                        = "AWS/IAM"
  })
}
