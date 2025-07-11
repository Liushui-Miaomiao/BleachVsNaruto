/*
 * Copyright (C) 2021-2024, 5DPLAY Game Studio
 * All rights reserved.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package net.play5d.game.bvn.debug {
import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.display.Stage;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.events.TimerEvent;
import flash.filters.GlowFilter;
import flash.system.System;
import flash.text.TextField;
import flash.utils.Timer;

import net.play5d.game.bvn.GameConfig;

import net.play5d.game.bvn.ui.UIUtils;

import net.play5d.kyo.display.BitmapText;

import net.play5d.kyo.input.KyoKeyCode;

public class Debugger {
    include '../../../../../../include/_INCLUDE_.as';

    public static const DRAW_AREA:Boolean     = false;
    public static const SAFE_MODE:Boolean     = false;
    public static const DEBUG_ENABLED:Boolean = false;
    public static const HIDE_MAP:Boolean       = false;
    public static const HIDE_HITEFFECT:Boolean = false;
    public static var onErrorMsgCall:Function;
    private static var _stage:Stage;

    public static function log(...params):void {
        trace.call(null, params);
    }

    public static function errorMsg(msg:String):void {
        TraceLang('debug.trace.data.debugger.error_msg', '\n' + msg);
        if (onErrorMsgCall != null) {
            onErrorMsgCall(msg);
        }
    }

    public static function initDebug(stage:Stage):void {
        _stage = stage;

        showFPS();
    }

    public static function addChild(d:DisplayObject):void {
        _stage.addChild(d);
    }

    /**
     * 显示当前提交哈希
     *
     * @param hash 提交哈希
     */
    public static function showCommitHash(hash:String):void {
        if (!hash) {
            return;
        }

        var hashText:BitmapText = new BitmapText(
                true,
                0xFFFF00,
                [new GlowFilter(0x000000, 1, 2, 2, 3)]
        );

        hashText.font = FONT.fontName;
        hashText.text = hash;

        UIUtils.formatText(hashText.textfield, {
            color: 0xFFFF00,
            size: 10
        });

        var sp:Sprite = new Sprite();
        sp.y = GameConfig.GAME_SIZE.y - 20;
        sp.addChild(hashText);
        sp.addEventListener(MouseEvent.CLICK, function (e:MouseEvent):void {
            System.setClipboard(hash);
        });

        addChild(sp);
    }

    public static function showFPS():void {

        var currentTime:int = 0;
        var n:int           = 0;
        var fpsCount:int;
        var fpsText:TextField;

        fpsText              = new TextField();
        fpsText.textColor    = 0xffff00;
        fpsText.mouseEnabled = false;
        _stage.addChild(fpsText);
        _stage.addEventListener(Event.ENTER_FRAME, countFPS);

        var fpsTimer:Timer = new Timer(1000, 0);
        fpsTimer.addEventListener(TimerEvent.TIMER, updateFPS);
        fpsTimer.start();

        function countFPS(e:Event):void {
            fpsCount++;
        }

        function updateFPS(e:TimerEvent):void {
            fpsText.text = 'fps:' + fpsCount;
            fpsCount     = 0;
        }

    }

    public static function runScriect(stage:Stage, success:Function):void {
        var _scriect:Array = [KyoKeyCode.P, KyoKeyCode.L, KyoKeyCode.A, KyoKeyCode.Y];
        var _keyIndex:int;
        var _successed:Boolean;

        stage.addEventListener(KeyboardEvent.KEY_DOWN, function (e:KeyboardEvent):void {

            if (_successed) {
                return;
            }

            if (e.keyCode == _scriect[_keyIndex].code) {
                _keyIndex++;

                if (_keyIndex >= _scriect.length) {
                    _successed = true;
                    success();
                }

            }
            else {
                _keyIndex = 0;
            }

        }, false, 0, true);


    }

    public function Debugger() {
    }


}
}
