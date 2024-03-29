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

# Setup of folders in existing directory inside already existing org.

module "advanced-folder-with-project-example" {
    source = "../../"

    region = "${var.region}"
    region_zone = "${var.region_zone}"

    root_is_org = "true"
    root_id = "${var.root_id}"

    shared_services_projects = "${var.shared_services_projects}"
}