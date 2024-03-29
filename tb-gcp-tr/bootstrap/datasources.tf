# Copyright 2019 The Tranquility Base Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


data "template_file" "startup-script" {
  template = "${file(var.metadata_startup_script)}"
  vars = {
    clusters_master_whitelist_ip = "${google_compute_address.nat_gw_ip.address}"
    region = "${var.region}"
    region_zone = "${var.region_zone}"
    root_id = "${var.folder_id}"
    root_is_org = "false"
    billing_account_id = "${var.billing_account_id}"
    tb_discriminator = "${var.tb_discriminator}"
    terraform_state_bucket_name = "${google_storage_bucket.terraform-state-bucket-res.name}"
  }
}

data "google_client_config" "this" {}
