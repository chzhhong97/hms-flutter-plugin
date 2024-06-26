/*
    Copyright 2020-2022. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

part of huawei_contactshield;

class SketchData {
  double maxScore;
  double scoreSum;
  double weightedDurationSum;

  SketchData({
    this.maxScore = 0,
    this.scoreSum = 0,
    this.weightedDurationSum = 0,
  });

  factory SketchData.fromJson(String str) {
    return SketchData.fromMap(json.decode(str));
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory SketchData.fromMap(Map<String, dynamic> json) {
    return SketchData(
      maxScore: json['maxScore'],
      scoreSum: json['scoreSum'],
      weightedDurationSum: json['weightedDurationSum'],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxScore': maxScore,
      'scoreSum': scoreSum,
      'weightedDurationSum': weightedDurationSum,
    };
  }

  @override
  String toString() {
    return '$SketchData('
        'maxScore: $maxScore, '
        'scoreSum: $scoreSum, '
        'weightedDurationSum: $weightedDurationSum)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is SketchData &&
        other.maxScore == maxScore &&
        other.scoreSum == scoreSum &&
        other.weightedDurationSum == weightedDurationSum;
  }

  @override
  int get hashCode {
    return maxScore.hashCode ^ scoreSum.hashCode ^ weightedDurationSum.hashCode;
  }
}
