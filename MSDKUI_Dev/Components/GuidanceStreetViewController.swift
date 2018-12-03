//
// Copyright (C) 2017-2018 HERE Europe B.V.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import MSDKUI
import UIKit

final class GuidanceStreetViewController: UIViewController {

    @IBOutlet private(set) var currentStreetLabel: GuidanceStreetLabel!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsViewController = segue.destination as? GuidanceStreetSettingsViewController

        settingsViewController?.didSelect = { [weak self] setting in
            self?.currentStreetLabel.accentBackgroundColor = setting.accentBackgroundColor
            self?.currentStreetLabel.plainBackgroundColor = setting.plainBackgroundColor
            self?.currentStreetLabel.isAccented = setting.isAccented
            self?.currentStreetLabel.text = setting.text
        }
    }
}
