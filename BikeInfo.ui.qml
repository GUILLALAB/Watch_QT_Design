/****************************************************************************
**
** Copyright (C) 2019 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Design Studio.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.10
import ebikeDesign 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Item {
    id: page01
    width: Constants.width
    height: 320

    Image {
        id: image
        x: 874
        y: 90
        source: "images/bike-rearwheel.png"
    }

    CustomLabel {
        x: 8
        y: 8
        text: "BIKE INFO"
        font.pixelSize: 24
    }

    CustomLabel {
        x: 39
        y: 57
        text: "Battery"
        font.pixelSize: 22
    }

    CheckDelegate {
        id: checkDelegate
        x: -16
        y: 48
        text: qsTr("")
        hoverEnabled: false
        checked: true

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    ColumnLayout {
        x: 8
        y: 121
        spacing: 10

        ColumnLayout {
            spacing: 0

            CustomLabel {
                color: "#707070"
                text: "Health"
                font.pixelSize: 18
            }

            CustomLabel {
                text: "85%"
                font.pixelSize: 22
            }
        }

        ColumnLayout {
            spacing: 0
            CustomLabel {
                color: "#707070"
                text: "Last maintance"
                font.pixelSize: 18
            }

            CustomLabel {
                text: "10/3/2017"
                font.pixelSize: 22
            }
        }

        ColumnLayout {
            spacing: 0
            CustomLabel {
                color: "#707070"
                text: "Scheduled maintance"
                font.pixelSize: 18
            }

            CustomLabel {
                text: "10/3/2018"
                font.pixelSize: 22
            }
        }
    }
}
