/*
    Copyright 2020-2023. Huawei Technologies Co., Ltd. All rights reserved.

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

package com.huawei.hms.plugin.ar.core.util;

public class HandShaderUtil {
    public static final String LS = System.lineSeparator();

    public static final String HAND_VERTEX = "uniform vec4 inColor;" + LS + "attribute vec4 inPosition;" + LS
        + "uniform float inPointSize;" + LS + "varying vec4 varColor;" + LS + "uniform mat4 inMVPMatrix;" + LS
        + "void main() {" + LS + "    gl_PointSize = inPointSize;" + LS
        + "    gl_Position = inMVPMatrix * vec4(inPosition.xyz, 1.0);" + LS + "    varColor = inColor;" + LS + "}";

    public static final String HAND_FRAGMENT = "precision mediump float;" + LS + "varying vec4 varColor;" + LS
        + "void main() {" + LS + "    gl_FragColor = varColor;" + LS + "}";

    private HandShaderUtil() {
    }
}
