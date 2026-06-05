package com.greenbulb.sonarpen;

/* JADX INFO: loaded from: classes.dex */
public interface SonarPenCallBack {
    public static final int AUDIO_CHANNEL_FAIL = -2;
    public static final int AUDIO_VOL_CANT_CHANGE = -3;
    public static final int CALIBRATE_SONAR_PEN = 6;
    public static final int CALIBRATE_STAGE = 1;
    public static final int CLOSED_STAGE = 4;
    public static final int INIT_FAIL = -1;
    public static final int INIT_STAGE = 0;
    public static final int SONAR_PEN_ABSENSE = 2;
    public static final int SONAR_PEN_EXIST = 3;
    public static final int SONAR_PEN_NOT_DETECTED_BY_PASSED = 8;
    public static final int SONAR_PEN_NOT_PLUGED = 7;
    public static final int SONAR_PEN_NOT_PRESS = 2;
    public static final int SONAR_PEN_PRESSED = 3;
    public static final int WAITING_HEADSET = 5;

    void onSonarPenButtonPressed();

    void onSonarPenStatusChange(int i);
}
