if exists("b:current_syntax")
    finish
endif

" Booleans
syntax keyword chuckBoolean true false maybe
syntax keyword chuckBoolean null NULL
highlight link chuckBoolean Boolean

" Comments
syntax match chuckComment "\v//.*$"
syntax region  chuckComment start="/\*"  end="\*/"
highlight link chuckComment Comment

" Conditionals
syntax keyword chuckConditional if else
highlight link chuckConditional Conditional

" Keywords
syntax keyword chuckKeyword fun function
syntax keyword chuckKeyword return
syntax keyword chuckKeyword const
syntax keyword chuckKeyword new
syntax keyword chuckKeyword now
syntax keyword chuckKeyword pi
syntax keyword chuckKeyword me
syntax keyword chuckKeyword samp ms second minute hour day week eon
syntax keyword chuckKeyword repeat break continue
syntax keyword chuckKeyword class extends public private static pure this
syntax keyword chuckKeyword spork
syntax keyword chuckKeyword cherr chout
highlight link chuckKeyword Keyword

" Operators
syntax keyword chuckOperator => @=> =^ -->
syntax keyword chuckOperator + - * /
syntax keyword chuckOperator %
syntax keyword chuckOperator "&&" "||" == != >=
syntax keyword chuckOperator & + ^
syntax keyword chuckOperator ++ --
syntax keyword chuckOperator ! + -
syntax keyword chuckOperator <<< >>>
highlight link chuckOperator Operator

" Loops
syntax keyword chuckRepeat while until for do
highlight link chuckRepeat Repeat

" Primitives
syntax keyword chuckType int float time dur void string
syntax keyword chuckType array ugen complex polar
syntax keyword chuckType Object Event UGen
highlight link chuckType Type

" UGens
syntax keyword chuckBuiltinUGen adc blackhole dac
syntax keyword chuckBuiltinUGen Gain
syntax keyword chuckBuiltinUGen Noise Impulse Step
syntax keyword chuckBuiltinUGen Phasor Osc SinOsc PulseOsc SqrOsc TriOsc SawOsc
syntax keyword chuckBuiltinUGen Gen5 Gen7 Gen9 Gen10 Gen17
syntax keyword chuckBuiltinUGen CurveTable WarpTable
syntax keyword chuckBuiltinUGen BiQuad OneZero TwoZero OnePole TwoPole PoleZero
syntax keyword chuckBuiltinUGen Filter LPF HPF BPF BRF ResonZ Dynamics
syntax keyword chuckBuiltinUGen HalfRect FullRect ZeroX
syntax keyword chuckBuiltinUGen SndBuf
syntax keyword chuckBuiltinUGen Mix2 Pan2
syntax keyword chuckBuiltinUGen StkInstrument BandedWG
syntax keyword chuckBuiltinUGen BlowBotl BlowHole Bowed Brass Clarinet Flute
syntax keyword chuckBuiltinUGen Mandolin ModalBar Moog Saxofony Shakers
syntax keyword chuckBuiltinUGen Sitar StifKarp VoicForm
syntax keyword chuckBuiltinUGen FM BeeThree FMVoices HevyMetl PercFlut Rhodey TubeBell Wurley
syntax keyword chuckBuiltinUGen Delay DelayA DelayL Echo
syntax keyword chuckBuiltinUGen Envelope ADSR
syntax keyword chuckBuiltinUGen JCRev NRev PRCRev
syntax keyword chuckBuiltinUGen Chorus Modulate PitShift SubNoise Blit BlitSaw BlitSquare
syntax keyword chuckBuiltinUGen WvIn WaveLoop WvOut
syntax keyword chuckBuiltinUGen GenX LiSa Dyno
syntax keyword chuckBuiltinUGen Chugen Chubgraph
highlight link chuckBuiltinUGen Structure

" Methods
" Base Classes Methods
syntax keyword chuckMethod abs acos add arg args asin atan atan2 atof atoi broadcast can_wait cap capacity ceil charAt childMemSize childRegSize clamp clampf clampi clear clearVM cos cosh cossim crash dbtolin dbtopow dbtorms dir done e ensurePow2 equal erase euclidean eval exit exp exp2 fabs find floor fmod fromId ftoa ftoi ftom gauss getKeys getenv help hypot i id im insert intsize isInMap isinf isnan itoa j length lintodb log log10 log2 loglevel lower ltrim mag map map2 max min mtof nextpow2 numShreds path phase pi popBack popFront popOut pow powtodb printStatus printTimeCheck ptor rand rand2 rand2f randf random random2 random2f randomf randomize range re realtime refcount remainder remap remove removeAllShreds removeLastShred replace reset resetOperators resetShredID reverse rfind rmstodb round rtop rtrim running scalef setCharAt setenv sgn shreds shuffle signal silent sin sinh size sort sourceDir sourcePath sqrt srand srandom status substring system tan tanh toFloat toInt toString trim trunc two_pi typeOf upper version waiting_on yield zero
" Basic UGen Methods
syntax keyword chuckMethod attackRate attackTime buffered chan channel channels chunks clear decayRate decayTime delay duration fprob frames freq gain inlet interp isConnectedTo keyOff keyOn last left length loop max mix mode next op outlet pan panType period phase phaseOffset play pos rate read releaseRate releaseTime right samples set sfreq state sustainLevel sync target time value valueAt width write
" Basic Filter Methods
syntax keyword chuckMethod Q a0 a1 a2 allpass b0 b1 b2 blockZero eqzs freq norm pfreq pole prad pregain radius set zero zfreq zrad
" STK UGen Methods
syntax keyword chuckMethod addPhase addPhaseOffset adsrTarget afterTouch aifFilename aperture autoPrefix baseDelay baseLoopGain blowPosition bodyIR bodySize bowMotion bowPosition bowPressure bowRate clear closeFile coefs controlChange controlOne controlTwo damp decay directGain effectMix endReflection energy fileGain filename filterQ filterStartFreq filterSweepRate freq getFMTableGain getFMTableSusLevel getFMTableTime harmonics integrationConstant jetDelay jetReflection lfoDepth lfoSpeed lip loudness masterGain matFilename max mix modDepth modFreq modSpeed mode modeGain modeRadius modeRatio modesGain noiseGain noteOff noteOn objects op4Feedback opADSR opAM opGain opRatio opWave path phase phoneme phonemeNum pickupPosition pitchSweepRate pluck pluckPos preset pressure quiet randomGain rate rawFilename record reed shift slide sndFilename speak spectralTilt startBlowing startBowing stickHardness stiffness stopBlowing stopBowing stretch strike strikePosition stringDamping stringDetune sustain tonehole unVoiced vent vibratoFreq vibratoGain vibratoRate voiceMix voiced volume vowel wavFilename which
" Advanced UGen Methods
syntax keyword chuckMethod attackTime bi clear coefs compress duck duration expand externalSideInput feedback gate getVoice getbi limit lookup loop loop0 loopEnd loopEndRec loopRec loopStart maxVoices pan play playPos playing rampDown rampUp rate ratio recPos recRamp record releaseTime sideInput slopeAbove slopeBelow sync thresh track value valueAt voiceGain voicePan
" ChuGins Library Methods
syntax keyword chuckMethod T60 accent amp ampcurve attack attackCurve attackTime atten azimuth bands bandwidth bias bits bpHetero bpf bypass channelMap clear coeff cutoff damping dcOffset decay decayCurve decayTime delay delayMax delayMin downsample downsampleFactor drive dry durcurve early elevation env eq feedback fftlen fidelity frame freq freqMax freqMin gaussian get hold hpHetero hpf index keyOff keyOn lpf makeupGain match max maxfreq minfreq minpower mix nlp_type nonlinear noteOff noteOn npeak npts num order overlap pan param1 param2 param3 peak posteq radius range release releaseCurve releaseTime replace replaceAll reps resonance revtime ripple roomsize saturation sensitivity set setBlackman setBlackmanDerivative setBlackmanHarris setBlackmanNutall setCurves setExponential setHann setHannPoisson setNutall setParzen setPoisson setSigmoid setTukey setWelch sinc stabletime state sustainLevel table tail threshold tracks value windowValue x xpos y ypos
" UAna Methods
syntax keyword chuckMethod blackmanHarris compute cval cvals fval fvals hamming hann highOctNum isUpConnectedTo lowOctNum m_blob m_cvals m_fvals m_when normalize nrBands numCoeffs numFilters output percent rectangle reset sampleRate samples size spectrum transform triangle upchuck when window windowSize
" ChAI Methods
syntax keyword chuckMethod add backprop clear clearAllObs clearObs deleteLastRound dim exportObs forward generate getActivations getAllRecordStatus
syntax keyword chuckMethod getAllRunStatus getBiases getGradients getObs getOutputProperty getOutputPropertyFloat getOutputPropertyInt getOutputRecordStatus getOutputRunStatus getPropertyFloat getPropertyInt getRound getSimilar getVector getWeights importObs init input inputDims load minMax modelType modelTypeName nextRound numObs output outputDims predict randomizeOutputs reduce save search setAllRecordStatus setAllRunStatus setOutputProperty setOutputRecordStatus setOutputRunStatus setProperty shuffle size taskType taskTypeName train useKDTree weigh
syntax match chuckMethod "contains"
" I/O Methods
syntax keyword chuckMethod add addAddress address args ascii autoExtension autoPrefix autoPrefixExtension axisPosition axis_position baudRate can_wait close cursorX cursorY data1 data2 data3 dataAvailable deltaX deltaY dest deviceNum deviceType dirList eof expandPath fdata filename flush getByte getBytes getFloat getInt getInts getLine getString getchar globalTiltPollRate good hatPosition hit idata isAxisMotion isButtonDown isButtonUp isDir isHatMotion isMouseMotion isWheelMotion is_axis_motion is_button_down is_button_up is_hat_motion is_mouse_motion key list listenAll mode more name newline nl num numArgs numTracks off on onByte onBytes onFloats onInts onLine open openJoystick openKeyboard openMouse openTiltSensor port printerr read readFloat readInt readLine readTiltSensor recv removeAddress removeAllAddresses rewind scaledCursorX scaledCursorY scaled_axis_position seek send size start startCursorTrack state stopCursorTrack tell touchSize touchX touchY type typetag when which write writeByte writeBytes x y z
" Utility Methods
syntax keyword chuckMethod addGroup can_wait clear examplesRoot genCSS genGroups genIndex genType get getLine more next numGroups outputFormat outputToDir prompt reset set size
highlight link chuckMethod Function

" Constants
" Base Classes Constants
syntax keyword chuckConstant E FLOAT_MAX FLOAT_MIN_MAG I INFINITY INT_MAX J PI RANDOM_MAX RAND_MAX TWO_PI
" Basic UGen Constants
syntax keyword chuckConstant ATTACK DECAY DONE RELEASE SUSTAIN
" ChAI Constants
syntax keyword chuckConstant BOOST Classification DT KNN LR Linear MLP NAIVEBAYES PR ReLU Regression SVM Sigmoid Softmax Tanh
" I/O Constants
syntax keyword chuckConstant ACCELEROMETER APPEND ASCII AXIS_MOTION B115200 B14400 B19200 B230400 B2400 B28800 B38400 B4800 B57600 B7200 B76800 B9600 BINARY BUTTON_DOWN BUTTON_UP DEVICE_CONNECTED DEVICE_DISCONNECTED FLOAT32 FLOAT64 FORCE_FEEDBACK INT16 INT24 INT32 INT64 INT8 JOYSTICK JOYSTICK_BALL JOYSTICK_HAT KEYBOARD LED MODE_ASYNC MODE_SYNC MOUSE MOUSE_MOTION MOUSE_WHEEL READ READ_WRITE SINT16 SINT24 SINT32 SINT64 SINT8 TABLET TILT_SENSOR UINT16 UINT24 UINT32 UINT64 UINT8 WII_REMOTE WRITE
" Utility Constants
syntax keyword chuckConstant HTML JSON MARKDOWN NONE TEXT
highlight link chuckConstant Constant

" ChAI Classes
syntax keyword chaiClass MLP KNN KNN2 HMM SVM Word2Vec PCA Wekinator AI
highlight link chaiClass Structure

" Utility Classes
syntax keyword chuckUtilities CKDoc StringTokenizer ConsoleInput
highlight link chuckUtilities Structure

" ChuGL Classes
syntax keyword chuglClass GSphere GCube GGen GScene GPoints GLines GMesh GCircle GPlane GCube GSphere GTorus GLight GPointLight GDirLight GCamera
syntax keyword chuglClass Geometry BoxGeometry SphereGeometry CircleGeometry LatheGeometry PlaneGeometry TorusGeometry CustomGeometry
syntax keyword chuglClass Material NormalsMaterial FlatMaterial PhongMaterial PointMaterial LineMaterial MangoUVMaterial ShaderMaterial
syntax keyword chuglClass Texture FileTexture DataTexture
highlight link chuglClass Structure

" ChuGL Methods
syntax keyword chuglMethods camera dt fps frameHeight frameWidth fullscreen hideCursor lockCursor mouseMode mouseX mouseY nextFrame numRegisteredShreds 
syntax keyword chuglMethods numRegisteredWaitingShreds register resolution scene showCursor unregister useChuckTime windowHeight windowUptime windowWidth windowed
syntax keyword chuglMethods forward id lookAt pos posX posY posZ position right rot rotX rotY rotZ rotateOnLocalAxis rotateOnWorldAxis rotation sca scale 
syntax keyword chuglMethods translate up update worldPos backgroundColor disableFog enableFog fogColor fogDensity fogType fogType 
syntax keyword chuglMethods light numLights dup dupGeo dupMat geo mat set ambient diffuse intensity specular 
syntax keyword chuglMethods falloff clip clipFar clipNear fov mode orthographic perspective viewSize viewSize 
syntax keyword chuglMethods clone colors indices normals positions positions setAttribute uvs
syntax keyword chuglMethods attenuatePoints attenuatePoints clone color diffuseMap fragShader lineMode lineWidth localNormals pointSize pointSprite polygonMode 
syntax keyword chuglMethods shaders shine specularMap uniformBool uniformFloat2 uniformFloat3 uniformFloat4 uniformFloat uniformInt2 uniformInt3 uniformInt4
syntax keyword chuglMethods uniformInt uniformTexture vertShader worldNormals
syntax keyword chuglMethods filter filterMag filterMin wrap wrapS wrapT path data
highlight link chuglMethods Function

" ChuGL Constants
syntax keyword chuglConstants MOUSE_HIDDEN MOUSE_LOCKED MOUSE_NORMAL
syntax keyword chuglConstants FOG_EXP FOG_EXP2 MODE_ORTHO MODE_PERSP
syntax keyword chuglConstants COL_ATTRIB_LOC NORM_ATTRIB_LOC POS_ATTRIB_LOC UV0_ATTRIB_LOC
syntax keyword chuglConstants LINE_LOOP LINE_SEGMENTS LINE_STRIP POLYGON_FILL POLYGON_LINE POLYGON_POINT
syntax keyword chuglConstants FILTER_LINEAR FILTER_NEAREST WRAP_CLAMP WRAP_MIRRORED WRAP_REPEAT
highlight link chuglConstants Constant

" UAna
syntax keyword chuckBuiltinUAna UAna UAnaBlob Windowing
syntax keyword chuckBuiltinUAna FFT IFFT DCT IDCT
syntax keyword chuckBuiltinUAna Centroid Flux RMS RollOff
syntax keyword chuckBuiltinUAna Flip pilF
highlight link chuckBuiltinUAna Structure

" Chugins
syntax keyword chuckChugin ABSaturator AmbPan Bitcrusher Elliptic ExpDelay FIR
syntax keyword chuckChugin FluidSynth GVerb KasFilter Ladspa MagicSine Mesh2D
syntax keyword chuckChugin Multicomb Overdrive PanN PitchTrack PowerADSR Sigmund
syntax keyword chuckChugin Spectacle WinFuncEnv
syntax keyword chuckChugin GG WindowResizeEvent
highlight link chuckChugin Structure

" Events
syntax keyword chuckEvent OscRecv OscSend OscEvent OscOut OscIn OscMsg
syntax keyword chuckEvent MidiIn MidiOut MidiMsg
syntax keyword chuckEvent KBHit Hid HidMsg
highlight link chuckEvent Special

" I/O
syntax keyword chuckIO Machine RegEx FileIO SerialIO StringTokenizer ConsoleInput
highlight link chuckIO Special

" Standard Library
syntax keyword chuckLib Math Std
highlight link chuckLib Special

" Numbers
syntax match chuckNumber /\%(\i\|\$\)\@<![-]\?\d\+/ display
highlight link chuckNumber Number

" 0x Numbers
syntax match chuckHex /\<0[xX]\x\+[lL]\=\>/ display
highlight link chuckHex Number

" Floats
syntax match chuckFloat /\%(\i\|\$\)\@<![-]\?\%(\d*\.\d\+\|\d\+\.\)/ display
highlight link chuckFloat Float

" Strings
syntax region chuckString start=/"/ end=/"/ display
highlight link chuckString String

let b:current_syntax = "chuck"
  
