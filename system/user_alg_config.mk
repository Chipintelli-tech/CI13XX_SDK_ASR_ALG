########单一算法使能定义(注意:值后更不能有空格)########
#只用ASR识别功能(注意：除了事件检测功能其他功能都依赖识别，都必须默认开启)
USE_ASR           := 1
#任意mic识别
USE_ANY_MIC       := 0
#使用回声消除模块:1-开启/0-关闭 会占用28K的空间 -单/双mic可用，130x内部有2个codec;如果同时使用双mic算法+加AEC算法，需要硬件再加一个codc作为AEC的信号回采
USE_AEC           := 0
#自学习功能-请在安静环境下，用清晰洪亮的声音进行指令学习，避免环境噪音过大和学习者声音过小导致学习不成功-
USE_CWSL          := 0
#使用降混响模块:1-开启/0-关闭
USE_DEREVERB	  := 0
#NN深度降噪    
USE_NN_DENOISE    := 0
#传统降噪
USE_TRA_DENOISE   := 0
#GCC DOA
USE_GCC_DOA       := 0
#盲源分离
USE_BF            := 0
#IIS 采音-开启IIS采音功能,可以使用采音板采音,占用PA2~PA6。会多消耗20KB 系统内存
USE_IIS_RECORD    := 0


#############各个算法内存统计###############
#只开识别算法, 只开ASR识别算法HOST END基地址--说明：词条节点数多了可以将SDK_ALG_PRO_SRAM_HOST_NOT_ALG_END_ADDR调小，增加ASR识别内存
SDK_ALG_PRO_SRAM_HOST_NOT_ALG_END_ADDR = 0x1FFD4000
#AEC算法算法在BNPU端消耗的内存
AEC_USE_BNPU_SRAM_SIZE	= 30*1024
#自学习算法在BNPU端消耗的内存
CWSL_USE_BNPU_SRAM_SIZE	= 1*1024
#降混响算法在BNPU端消耗的内存
DEREVERB_USE_BNPU_SRAM_SIZE = 34*1024
#NN降噪算法在NPU端消耗的内存
NN_DENOISE_USE_BNPU_SRAM_SIZE = 50*1024
#传统降噪算法在NPU端消耗的内存
TRA_DENOISE_USE_BNPU_SRAM_SIZE = 5*1024
#NN DOA算法在NPU端消耗的内存
NN_DOA_USE_BNPU_SRAM_SIZE = 60*1024
#GCC DOA算法在NPU端消耗的内存
GCC_DOA_USE_BNPU_SRAM_SIZE = 25*1024
#声纹和男女声纹检测算法在NPU端消耗的内存,算法部分分配消耗98KB
NN_VPR_USE_BNPU_SRAM_SIZE = 133*1024
#事件检测算法在NPU端消耗的内存
NN_SED_USE_BNPU_SRAM_SIZE = 157*1024
#BF算法在NPU端消耗的内存
BF_USE_BNPU_SRAM_SIZE = 60*1024
#IIS采音NPU端消耗的内存
IIS_RECORD_USE_BNPU_SRAM_SIZE = 0*1024

########可组合算法使能(注意:设置变量值后面不能有空格，只能是0/1)########
#---是否开启动态ALC功能，1:开启，0:关闭; -单mic算法，仅单mic可用
USE_ALC_AUTO_SWITCH_MODULE     := 0
#---意图数量:1-单意图   >1为多意图，最大支持3意图, CWSL自学习算法和BF算法不支持多意图, 多意图开AEC，只支持唤醒词打断
MULT_INTENT                    := 1
#---播放器类型: 0-精简播放器(相比老播放器节约内存15KB,功能简单) 1-老播放器(占内存较多，功能完善)
USE_AUDIO_PLAYER_TYPE          := 0
########################################################################
