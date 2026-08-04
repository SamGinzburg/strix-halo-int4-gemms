	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[46:47], s[0:1], 0x74
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_and_b32_e32 v172, 31, v0
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s30, s2, 5
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_lshl_b32 s56, s3, 11
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v237, 0x60, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshlrev_b32_e32 v1, 3, v172
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s30, v2
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s33, s30, s56
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v34, 4, v0
	v_and_b32_e32 v83, 15, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshrrev_b32_e32 v35, 1, v237
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	v_mov_b16_e64 v163.l, 0
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v36, s30, v34
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x38
	s_load_b64 s[28:29], s[0:1], 0x94
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[213:214], null, s46, v2, v[1:2]
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s46, v1
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s57, s46, s33
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v165.l, v163.l
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v33, 3, v83
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_and_b32 s5, s17, 0xffff
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_lshl_add_u32 v2, s46, 2, v213
	v_mad_u64_u32 v[217:218], null, s46, 20, v[213:214]
	v_mad_u64_u32 v[218:219], null, s46, 24, v[213:214]
	scratch_store_b32 off, v2, off offset:60 ; 4-byte Folded Spill
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v2, v2, s57, 1
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_mad_u64_u32 v[215:216], null, s46, 12, v[213:214]
	v_mad_u64_u32 v[219:220], null, s46, 28, v[213:214]
	v_lshl_add_u32 v246, s46, 3, v213
	v_lshl_add_u32 v216, s46, 4, v213
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_dual_cndmask_b32 v5, 0x80000000, v2 :: v_dual_lshlrev_b32 v236, 4, v0
	v_add_lshl_u32 v1, v213, s57, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v3, v246, s57, 1
	v_add_lshl_u32 v9, v216, s57, 1
	v_add_lshl_u32 v10, v217, s57, 1
	v_add_lshl_u32 v11, v215, s57, 1
	v_add_lshl_u32 v12, v218, s57, 1
	v_add_lshl_u32 v13, v219, s57, 1
	v_xor_b32_e32 v35, v236, v35
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v14, 0x80000000, v10
	v_cndmask_b32_e32 v25, 0x80000000, v11, vcc_lo
	v_cndmask_b32_e32 v21, 0x80000000, v12, vcc_lo
	v_dual_cndmask_b32 v29, 0x80000000, v13 :: v_dual_and_b32 v248, 32, v0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[220:221], null, s47, v34, v[33:34]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v34, 0x840, v35
	v_cndmask_b32_e32 v17, 0x80000000, v3, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v36
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v36, 0x1080, v35
	s_mov_b32 s4, s16
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	v_add_nc_u32_e32 v222, 0, v34
	v_add_nc_u32_e32 v224, 0, v36
	s_clause 0x4
	buffer_load_b128 v[13:16], v14, s[4:7], 0 offen
	buffer_load_b128 v[17:20], v17, s[4:7], 0 offen
	buffer_load_b128 v[21:24], v21, s[4:7], 0 offen
	buffer_load_b128 v[25:28], v25, s[4:7], 0 offen
	buffer_load_b128 v[29:32], v29, s[4:7], 0 offen
	v_add_nc_u32_e32 v214, 0, v35
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	v_xor_b32_e32 v35, 0x18c0, v35
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v226, s47, 4, v220
	v_mad_u64_u32 v[254:255], null, s47, 24, v[220:221]
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s3, s47, v33
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s12, s47, s33
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v225, 0, v35
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s4, s8
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v175.l, v163.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v205.l, v163.l
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v171, 64, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v184.l, v163.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v209.l, v163.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v33, v220, s12, 1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v223, s47, 3, v220
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v173.l, v163.l
	v_mov_b16_e64 v174.l, v163.l
	v_mov_b16_e64 v183.l, v163.l
	v_cndmask_b32_e32 v73, 0x80000000, v33, vcc_lo
	v_add_lshl_u32 v37, v223, s12, 1
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v208.l, v163.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v189.l, v163.l
	v_mov_b16_e64 v192.l, v163.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v212.l, v163.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v181.l, v163.l
	v_mov_b16_e64 v191.l, v163.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v211.l, v163.l
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v253, 0x70, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v166.l, v163.l
	v_mov_b16_e64 v164.l, v163.l
	v_mov_b16_e64 v176.l, v163.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v206.l, v163.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v182.l, v163.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v207.l, v163.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v190.l, v163.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v210.l, v163.l
	s_clause 0x1
	s_load_b32 s31, s[0:1], 0x9c
	s_load_b32 s58, s[0:1], 0x7c
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(7)
	ds_store_b128 v214, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v214, v[9:12] offset:8192
	ds_store_b128 v222, v[5:8]
	ds_store_b128 v222, v[13:16] offset:8192
	ds_store_b128 v224, v[17:20]
	ds_store_b128 v224, v[21:24] offset:8192
	ds_store_b128 v225, v[25:28]
	ds_store_b128 v225, v[29:32] offset:8192
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v1, v226, s12, 1
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v152, 0x80000000, v1, vcc_lo
	v_add_lshl_u32 v1, v254, s12, 1
	buffer_load_b128 v[45:48], v152, s[4:7], 0 offen
	v_dual_cndmask_b32 v156, 0x80000000, v1 :: v_dual_lshlrev_b32 v221, 9, v83
	buffer_load_b128 v[49:52], v156, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v184.h, v45.l
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v1, 7, v171
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v183.h, v46.l
	v_mov_b16_e64 v181.h, v48.l
	v_mov_b16_e64 v182.h, v47.l
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v195, 0xffff0000, v51
	v_and_b32_e32 v185, 0xffff0000, v45
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v235, 4, v83
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v189.h, v52.l
	v_mov_b16_e64 v192.h, v49.l
	v_mov_b16_e64 v191.h, v50.l
	v_mov_b16_e64 v190.h, v51.l
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_or3_b32 v74, v221, v1, v235
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v75, 0x90, v74, 0
	v_xad_u32 v76, 0x80, v74, 0
	ds_load_b128 v[69:72], v75
	ds_load_b128 v[65:68], v76
	ds_load_b128 v[96:99], v76 offset:256
	ds_load_b128 v[100:103], v75 offset:256
	v_xad_u32 v75, 0xb0, v74, 0
	v_xad_u32 v76, 0xa0, v74, 0
	ds_load_b128 v[108:111], v75
	ds_load_b128 v[104:107], v76
	ds_load_b128 v[112:115], v76 offset:256
	ds_load_b128 v[116:119], v75 offset:256
	v_xad_u32 v75, 0xd0, v74, 0
	v_xad_u32 v76, 0xc0, v74, 0
	ds_load_b128 v[124:127], v75
	ds_load_b128 v[120:123], v76
	ds_load_b128 v[128:131], v76 offset:256
	ds_load_b128 v[132:135], v75 offset:256
	v_xad_u32 v75, 0xf0, v74, 0
	v_add_nc_u32_e32 v5, 0, v74
	v_xad_u32 v13, v74, 16, 0
	v_xad_u32 v29, v74, 48, 0
	v_xad_u32 v21, v74, 32, 0
	v_xad_u32 v53, 0x50, v74, 0
	v_xad_u32 v54, v74, 64, 0
	v_xad_u32 v61, 0x70, v74, 0
	v_xad_u32 v57, 0x60, v74, 0
	v_xad_u32 v74, 0xe0, v74, 0
	ds_load_b128 v[140:143], v75
	ds_load_b128 v[136:139], v74
	ds_load_b128 v[144:147], v74 offset:256
	ds_load_b128 v[148:151], v75 offset:256
	v_lshlrev_b32_e32 v74, 8, v248
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[33:36], v73, s[4:7], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_or3_b32 v74, v221, v74, v235
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v77, 0x80000000, v37, vcc_lo
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[1:4], v5
	ds_load_b128 v[9:12], v5 offset:256
	ds_load_b128 v[5:8], v13
	ds_load_b128 v[13:16], v13 offset:256
	ds_load_b128 v[17:20], v21
	ds_load_b128 v[25:28], v21 offset:256
	ds_load_b128 v[21:24], v29
	ds_load_b128 v[29:32], v29 offset:256
	ds_load_b128 v[37:40], v53
	v_add_nc_u32_e32 v82, 0, v74
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[41:44], v77, s[4:7], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v75, 16, v74
	v_xor_b32_e32 v76, 32, v74
	v_xor_b32_e32 v78, 48, v74
	v_xor_b32_e32 v79, 64, v74
	v_xor_b32_e32 v80, 0x50, v74
	v_xor_b32_e32 v89, 0x60, v74
	v_xor_b32_e32 v90, 0x70, v74
	v_xor_b32_e32 v91, 0x80, v74
	v_xor_b32_e32 v92, 0x90, v74
	v_xor_b32_e32 v93, 0xa0, v74
	v_xor_b32_e32 v94, 0xb0, v74
	v_xor_b32_e32 v95, 0xc0, v74
	v_xor_b32_e32 v153, 0xd0, v74
	v_xor_b32_e32 v154, 0xe0, v74
	v_xor_b32_e32 v74, 0xf0, v74
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v86, 0, v78
	v_add_nc_u32_e32 v87, 0, v79
	v_add_nc_u32_e32 v88, 0, v80
	v_add_nc_u32_e32 v160, 0, v153
	v_add_nc_u32_e32 v161, 0, v154
	v_add_nc_u32_e32 v162, 0, v74
	v_add_nc_u32_e32 v89, 0, v89
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v91, 0, v91
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v95, 0, v95
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v163.h, v36.l
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v85, 0, v76
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v164.h, v35.l
	v_mov_b16_e64 v165.h, v34.l
	v_mov_b16_e64 v166.h, v33.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v174.h, v43.l
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v84, 0, v75
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_clause 0x3
	buffer_load_b128 v[73:76], v73, s[4:7], 0 offen
	buffer_load_b128 v[77:80], v77, s[4:7], 0 offen
	buffer_load_b128 v[152:155], v152, s[4:7], 0 offen
	buffer_load_b128 v[156:159], v156, s[4:7], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[201:204], v84
	ds_load_b128 v[197:200], v82
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[197:200], off offset:640
	scratch_store_b128 off, v[201:204], off offset:656
	ds_load_b128 v[227:230], v82 offset:256
	ds_load_b128 v[231:234], v84 offset:256
	ds_load_b128 v[201:204], v86
	ds_load_b128 v[197:200], v85
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[197:200], off offset:800
	scratch_store_b128 off, v[201:204], off offset:816
	ds_load_b128 v[197:200], v85 offset:256
	ds_load_b128 v[201:204], v86 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[197:200], off offset:832 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[201:204], off offset:848 ; 16-byte Folded Spill
	ds_load_b128 v[201:204], v88
	ds_load_b128 v[197:200], v87
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[197:200], off offset:864
	scratch_store_b128 off, v[201:204], off offset:880
	ds_load_b128 v[197:200], v87 offset:256
	ds_load_b128 v[201:204], v88 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[197:200], off offset:896 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[201:204], off offset:912 ; 16-byte Folded Spill
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e64 v173.h, v44.l
	v_mov_b16_e64 v175.h, v42.l
	v_mov_b16_e64 v176.h, v41.l
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s30, s29
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s5, s30, s28
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, s31
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s5, s5, s31
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s4, s4, 32
	.loc	1 181 25                        ; attention_backward.py:181:25
	s_max_i32 s5, s5, 0
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s4, s4, 0x800
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s59, s5, 0x7fffffe0
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s4, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 187 34 is_stmt 0              ; attention_backward.py:187:34
	s_ashr_i32 s6, s4, 31
	s_lshr_b32 s6, s6, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s60, s4, s6
	s_mov_b32 s4, 0
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_not1_b32 s60, s60, 31
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_cmp_lt_i32 s59, s60
	s_cselect_b32 s34, -1, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 vcc_lo, exec_lo, s34
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v206.h, v77.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v188, 0xffff0000, v48
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v212.h, v156.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v179, 0xffff0000, v43
	v_and_b32_e32 v194, 0xffff0000, v50
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v90, 0, v90
	ds_load_b128 v[201:204], v90
	ds_load_b128 v[197:200], v89
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[197:200], off offset:928
	scratch_store_b128 off, v[201:204], off offset:944
	ds_load_b128 v[197:200], v89 offset:256
	ds_load_b128 v[201:204], v90 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[197:200], off offset:960 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[201:204], off offset:976 ; 16-byte Folded Spill
	ds_load_b128 v[201:204], v92
	ds_load_b128 v[197:200], v91
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[197:200], off offset:992
	scratch_store_b128 off, v[201:204], off offset:1008
	ds_load_b128 v[197:200], v91 offset:256
	ds_load_b128 v[201:204], v92 offset:256
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v211.h, v157.l
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v94, 0, v94
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[197:200], off offset:1024 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[201:204], off offset:1040 ; 16-byte Folded Spill
	ds_load_b128 v[201:204], v94
	ds_load_b128 v[197:200], v93
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[197:200], off offset:1056
	scratch_store_b128 off, v[201:204], off offset:1072
	ds_load_b128 v[197:200], v93 offset:256
	ds_load_b128 v[201:204], v94 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[197:200], off offset:1088 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[201:204], off offset:1104 ; 16-byte Folded Spill
	ds_load_b128 v[201:204], v160
	ds_load_b128 v[197:200], v95
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[197:200], off offset:1120
	scratch_store_b128 off, v[201:204], off offset:1136
	ds_load_b128 v[197:200], v95 offset:256
	ds_load_b128 v[201:204], v160 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[197:200], off offset:1152 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[201:204], off offset:1168 ; 16-byte Folded Spill
	ds_load_b128 v[201:204], v162
	ds_load_b128 v[197:200], v161
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[197:200], off offset:1184
	scratch_store_b128 off, v[201:204], off offset:1200
	ds_load_b128 v[197:200], v161 offset:256
	ds_load_b128 v[201:204], v162 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[197:200], off offset:1216 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[201:204], off offset:1232 ; 16-byte Folded Spill
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xor_b32_e32 v197, v236, v253
	v_mov_b16_e64 v200.h, v75.l
	v_mov_b16_e64 v202.h, v73.l
	v_mov_b16_e64 v207.h, v154.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v177, 0xffff0000, v41
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v198, 0, v197
	v_xad_u32 v197, 0x880, v197, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v180, 0xffff0000, v44
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v210.h, v158.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v187, 0xffff0000, v47
	v_and_b32_e32 v167, 0xffff0000, v33
	v_and_b32_e32 v168, 0xffff0000, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v202.l, v163.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v170, 0xffff0000, v36
	v_and_b32_e32 v193, 0xffff0000, v49
	v_and_b32_e32 v169, 0xffff0000, v35
	v_and_b32_e32 v178, 0xffff0000, v42
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v200.l, v163.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v186, 0xffff0000, v46
	v_and_b32_e32 v196, 0xffff0000, v52
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[33:36], v54
	ds_load_b128 v[41:44], v54 offset:256
	ds_load_b128 v[45:48], v53 offset:256
	ds_load_b128 v[53:56], v61
	ds_load_b128 v[49:52], v57
	ds_load_b128 v[57:60], v57 offset:256
	ds_load_b128 v[61:64], v61 offset:256
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v197, v[77:80]
	ds_store_b128 v197, v[156:159] offset:4096
	v_and_b32_e32 v158, 0xffff0000, v158
	ds_store_b128 v198, v[73:76]
	ds_store_b128 v198, v[152:155] offset:4096
	v_and_b32_e32 v154, 0xffff0000, v154
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v158, v195, v158 :: v_dual_and_b32 v77, 0xffff0000, v77
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v73, 0xffff0000, v73
	v_mov_b16_e64 v199.h, v76.l
	v_and_b32_e32 v75, 0xffff0000, v75
	v_and_b32_e32 v156, 0xffff0000, v156
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v158, v190, v210
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v154, v187, v154
	v_mul_f32_e32 v73, v167, v73
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v208.h, v153.l
	v_mov_b16_e64 v209.h, v152.l
	v_and_b32_e32 v152, 0xffff0000, v152
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v154, v182, v207 :: v_dual_mul_f32 v77, v177, v77
.Ltmp4:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v153, 0xffff0000, v153
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v73, v166, v202 :: v_dual_mul_f32 v152, v185, v152
.Ltmp6:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v201.h, v74.l
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v77, v176, v206 :: v_dual_and_b32 v76, 0xffff0000, v76
.Ltmp8:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v201.l, v163.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v152, v184, v209
.Ltmp10:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v199.l, v163.l
	v_mov_b16_e64 v203.h, v80.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v76, v170, v76
	v_mul_f32_e32 v156, v193, v156
	v_mul_f32_e32 v75, v169, v75
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v204.h, v79.l
	v_and_b32_e32 v79, 0xffff0000, v79
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v76, v163, v199 :: v_dual_and_b32 v157, 0xffff0000, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v164, v200
.Ltmp12:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v153, v186, v153
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v204.l, v163.l
	v_mov_b16_e64 v203.l, v163.l
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v156, v192, v212 :: v_dual_mul_f32 v79, v179, v79
	v_dual_fmac_f32 v153, v183, v208 :: v_dual_and_b32 v74, 0xffff0000, v74
.Ltmp14:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v157, v194, v157
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v205.h, v78.l
	v_mov_b16_e64 v198.h, v155.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v74, v168, v74 :: v_dual_and_b32 v155, 0xffff0000, v155
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v79, v174, v204
	v_dual_fmac_f32 v157, v191, v211 :: v_dual_and_b32 v78, 0xffff0000, v78
.Ltmp16:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v155, v188, v155 :: v_dual_fmac_f32 v74, v165, v201
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v198.l, v163.l
	v_mov_b16_e64 v197.h, v159.l
	v_and_b32_e32 v159, 0xffff0000, v159
	v_mov_b16_e64 v197.l, v163.l
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v73, v73, v74 :: v_dual_add_f32 v74, v75, v76
	v_dual_fmac_f32 v155, v181, v198 :: v_dual_and_b32 v80, 0xffff0000, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v159, v196, v159
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v167, 1, v248
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v73, v73, v74 :: v_dual_mul_f32 v80, v180, v80
.Ltmp20:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v159, v189, v197
.Ltmp22:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_barrier
	v_lshlrev_b32_e32 v170, 2, v83
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v80, v173, v203
	v_lshlrev_b32_e32 v192, 2, v172
	v_dual_add_f32 v76, v79, v80 :: v_dual_add_f32 v79, v156, v157
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v78, v178, v78
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v80, v158, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v175, v205
	v_add_f32_e32 v75, v77, v78
	v_dual_add_f32 v77, v152, v153 :: v_dual_add_f32 v78, v154, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_add_f32 v75, v75, v76 :: v_dual_add_f32 v76, v77, v78
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v78, v73 :: v_dual_add_f32 v77, v79, v80
	v_mov_b32_dpp v78, v78 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v73, v73, v78 :: v_dual_mov_b32 v78, v75
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v78, v78 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v75, v75, v78 :: v_dual_mov_b32 v78, v76
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v78, v78 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v76, v76, v78
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v78, v77
	v_mov_b32_dpp v78, v78 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v77, v77, v78 :: v_dual_lshlrev_b32 v74, 8, v83
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v78, v73
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v73, v73, v78 :: v_dual_lshlrev_b32 v152, 7, v248
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v78, v75
.Ltmp37:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_or3_b32 v74, v74, v152, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v155, 0, v74
	v_xad_u32 v156, v74, 16, 0
	v_xad_u32 v157, v74, 32, 0
	v_xad_u32 v158, v74, 48, 0
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v75, v75, v78 :: v_dual_mov_b32 v78, v76
.Ltmp41:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v159, v74, 64, 0
	v_xad_u32 v173, 0x50, v74, 0
	v_xad_u32 v174, 0x60, v74, 0
	v_xad_u32 v175, 0x70, v74, 0
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v176, 0x80, v74, 0
	v_xad_u32 v177, 0x90, v74, 0
	v_xad_u32 v178, 0xa0, v74, 0
	v_xad_u32 v179, 0xb0, v74, 0
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v76, v76, v78
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v78, v77
.Ltmp46:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v180, 0xc0, v74, 0
	v_xad_u32 v181, 0xd0, v74, 0
	v_xad_u32 v182, 0xe0, v74, 0
	v_xad_u32 v183, 0xf0, v74, 0
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_bfe_u32 v74, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v77, v77, v78
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v78, v73
.Ltmp51:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v163, v74, v167
	.loc	1 194 9                         ; attention_backward.py:194:9
	scratch_store_b32 off, v74, off offset:1248 ; 4-byte Folded Spill
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v81, v73, v78
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v73, v75
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v168, v75, v73 :: v_dual_mov_b32 v73, v76
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v250, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v250, v250 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v169, v76, v73
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v73, v77
	v_mov_b32_e32 v251, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v251, v251 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v247, v77, v73
.Ltmp60:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v73, 2, v171
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v252, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v73, v73, v83
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v249, v81
	v_mov_b32_dpp v252, v252 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v154, s30, v73
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v249, v249 row_xmask:1 row_mask:0xf bank_mask:0xf
	scratch_store_b32 off, v73, off offset:1484 ; 4-byte Folded Spill
.Ltmp66:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_vccnz .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshlrev_b32_e32 v153, 2, v83
	v_lshlrev_b32_e32 v152, 2, v172
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr153
                                        ; implicit-def: $vgpr152
.LBB0_3:                                ; %Flow453
	ds_load_b128 v[184:187], v155
	ds_load_b128 v[188:191], v156
	ds_load_b128 v[238:241], v157
	ds_load_b128 v[242:245], v158
	ds_load_b128 v[204:207], v159
	ds_load_b128 v[208:211], v173
	ds_load_b128 v[73:76], v174
	ds_load_b128 v[77:80], v175
	s_clause 0x2
	s_load_b64 s[44:45], s[0:1], 0x58
	s_load_b128 s[20:23], s[0:1], 0x48
	s_load_b64 s[48:49], s[0:1], 0x10
	v_cmp_gt_i32_e64 s0, 0x800, v154
	v_or_b32_e32 v156, 2, v163
	v_or_b32_e32 v157, 4, v163
	v_or_b32_e32 v158, 6, v163
	v_or_b32_e32 v159, 8, v163
	v_or_b32_e32 v164, 10, v163
	v_or_b32_e32 v165, 12, v163
	v_or_b32_e32 v166, 14, v163
	s_mul_f32 s61, s58, 0x3fb8aa3b
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[73:76], off offset:1252
	scratch_store_b128 off, v[77:80], off offset:1268
	ds_load_b128 v[73:76], v176
	ds_load_b128 v[77:80], v177
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[73:76], off offset:1284 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[77:80], off offset:1300 ; 16-byte Folded Spill
	ds_load_b128 v[73:76], v178
	ds_load_b128 v[77:80], v179
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[73:76], off offset:1316 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[77:80], off offset:1332 ; 16-byte Folded Spill
	ds_load_b128 v[73:76], v180
	ds_load_b128 v[77:80], v181
	ds_load_b128 v[175:178], v182
	ds_load_b128 v[179:182], v183
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[73:76], off offset:1348 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[77:80], off offset:1364 ; 16-byte Folded Spill
	v_mov_b32_e32 v73, v213
	scratch_store_b64 off, v[73:74], off    ; 8-byte Folded Spill
	v_mov_b32_e32 v73, v215
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[73:74], off offset:8
	scratch_store_b32 off, v216, off offset:16
	v_mov_b32_e32 v73, v217
	scratch_store_b64 off, v[73:74], off offset:20 ; 8-byte Folded Spill
	v_mov_b32_e32 v73, v218
	scratch_store_b64 off, v[73:74], off offset:28 ; 8-byte Folded Spill
	v_mov_b32_e32 v73, v219
	s_clause 0xa                            ; 120-byte Folded Spill
	scratch_store_b64 off, v[73:74], off offset:36
	scratch_store_b32 off, v214, off offset:44
	scratch_store_b32 off, v222, off offset:48
	scratch_store_b32 off, v224, off offset:52
	scratch_store_b32 off, v225, off offset:56
	scratch_store_b128 off, v[227:230], off offset:672
	scratch_store_b128 off, v[231:234], off offset:688
	scratch_store_b128 off, v[184:187], off offset:704
	scratch_store_b128 off, v[188:191], off offset:720
	scratch_store_b128 off, v[204:207], off offset:736
	scratch_store_b128 off, v[208:211], off offset:752
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[175:178], off offset:768 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[179:182], off offset:784 ; 16-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 129 27 is_stmt 1              ; attention_backward.py:129:27
	v_add_nc_u32_e32 v73, s31, v154
	s_clause 0x7                            ; 64-byte Folded Spill
	scratch_store_b32 off, v169, off offset:256
	scratch_store_b32 off, v168, off offset:224
	scratch_store_b128 off, v[238:241], off offset:192
	scratch_store_b128 off, v[242:245], off offset:208
	scratch_store_b64 off, v[254:255], off offset:64
	scratch_store_b32 off, v226, off offset:128
	scratch_store_b32 off, v223, off offset:96
	scratch_store_b64 off, v[220:221], off offset:160
	v_dual_mov_b32 v243, v170 :: v_dual_lshlrev_b32 v74, 1, v237
	v_dual_mov_b32 v174, 0 :: v_dual_lshlrev_b32 v75, 1, v171
	v_mov_b32_e32 v244, v192
	.loc	1 241 43                        ; attention_backward.py:241:43
	v_subrev_nc_u32_e32 v175, s28, v73
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_add_nc_u32 v176, s29, v73
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v73, 0, v170
	v_add_nc_u32_e32 v76, 0, v192
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v177, v73, v74
	s_and_b32 s25, s19, 0xffff
	v_add_nc_u32_e32 v178, v76, v75
	s_mov_b32 s24, s18
	s_mov_b32 s35, 0x76543210
	s_mov_b32 s36, s59
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 229 28                        ; attention_backward.py:229:28
	scratch_load_b32 v74, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 230 21                        ; attention_backward.py:230:21
	s_add_i32 s1, s36, s56
	v_dual_mov_b32 v204, v157 :: v_dual_mov_b32 v205, v158
	s_mul_i32 s1, s1, s46
	v_dual_mov_b32 v206, v159 :: v_dual_mov_b32 v203, v156
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v73, s1, v213, 1
	v_dual_mov_b32 v255, v163 :: v_dual_mov_b32 v172, v164
	v_dual_mov_b32 v254, v165 :: v_dual_mov_b32 v253, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v73, 0x80000000, v73, s2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v74, s1, v74, 1
	v_cndmask_b32_e64 v153, 0x80000000, v74, s2
	v_add_lshl_u32 v74, s1, v246, 1
	buffer_load_b128 v[153:156], v153, s[24:27], 0 offen
	v_cndmask_b32_e64 v157, 0x80000000, v74, s2
	v_add_lshl_u32 v74, s1, v215, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v158, 0x80000000, v74, s2
	v_add_lshl_u32 v74, s1, v216, 1
	v_cndmask_b32_e64 v77, 0x80000000, v74, s2
	v_add_lshl_u32 v74, s1, v217, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v159, 0x80000000, v74, s2
	v_add_lshl_u32 v74, s1, v218, 1
	v_cndmask_b32_e64 v179, 0x80000000, v74, s2
	v_add_lshl_u32 v74, s1, v219, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v187, 0x80000000, v74, s2
	s_clause 0x6
	buffer_load_b128 v[73:76], v73, s[24:27], 0 offen
	buffer_load_b128 v[77:80], v77, s[24:27], 0 offen
	buffer_load_b128 v[163:166], v159, s[24:27], 0 offen
	buffer_load_b128 v[167:170], v157, s[24:27], 0 offen
	buffer_load_b128 v[179:182], v179, s[24:27], 0 offen
	buffer_load_b128 v[183:186], v158, s[24:27], 0 offen
	buffer_load_b128 v[187:190], v187, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v159, v152
	v_mov_b32_e32 v157, v152
	v_mov_b32_e32 v158, v152
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(6)
	ds_store_b128 v214, v[73:76]
	s_waitcnt vmcnt(5)
	ds_store_b128 v214, v[77:80] offset:8192
	ds_store_b128 v222, v[153:156]
	s_waitcnt vmcnt(4)
	ds_store_b128 v222, v[163:166] offset:8192
	s_waitcnt vmcnt(3)
	ds_store_b128 v224, v[167:170]
	s_waitcnt vmcnt(2)
	ds_store_b128 v224, v[179:182] offset:8192
	s_waitcnt vmcnt(1)
	ds_store_b128 v225, v[183:186]
	s_waitcnt vmcnt(0)
	ds_store_b128 v225, v[187:190] offset:8192
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[183:186], v84
	ds_load_b128 v[179:182], v82
	ds_load_b128 v[187:190], v82 offset:256
	ds_load_b128 v[191:194], v84 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v153, v152
	v_mov_b32_e32 v154, v152
	v_mov_b32_e32 v155, v152
	v_mov_b32_e32 v156, v152
	v_dual_mov_b32 v202, v159 :: v_dual_mov_b32 v201, v158
	v_mov_b32_e32 v200, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v198, v155 :: v_dual_mov_b32 v197, v154
	v_dual_mov_b32 v199, v156 :: v_dual_mov_b32 v196, v153
	v_mov_b32_e32 v195, v152
	v_dual_mov_b32 v159, v206 :: v_dual_mov_b32 v158, v205
	v_dual_mov_b32 v157, v204 :: v_dual_mov_b32 v156, v203
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[179:186], v[1:8], v[195:202]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[183:186], v86
	ds_load_b128 v[179:182], v85
	ds_load_b128 v[203:206], v85 offset:256
	ds_load_b128 v[207:210], v86 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[179:186], v[17:24], v[195:202]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[183:186], v88
	ds_load_b128 v[179:182], v87
	ds_load_b128 v[211:214], v87 offset:256
	ds_load_b128 v[215:218], v88 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[179:186], v[33:40], v[195:202]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[183:186], v90
	ds_load_b128 v[179:182], v89
	ds_load_b128 v[219:222], v89 offset:256
	ds_load_b128 v[223:226], v90 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[179:186], v[49:56], v[195:202]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[183:186], v92
	ds_load_b128 v[179:182], v91
	ds_load_b128 v[227:230], v91 offset:256
	ds_load_b128 v[231:234], v92 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[179:186], v[65:72], v[195:202]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[183:186], v94
	ds_load_b128 v[179:182], v93
	ds_load_b128 v[235:238], v93 offset:256
	ds_load_b128 v[239:242], v94 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[179:186], v[104:111], v[195:202]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[183:186], v160
	ds_load_b128 v[179:182], v95
	ds_load_b128 v[163:166], v95 offset:256
	ds_load_b128 v[167:170], v160 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[179:186], v[120:127], v[195:202]
	.loc	1 229 28                        ; attention_backward.py:229:28
	ds_load_b128 v[183:186], v162
	ds_load_b128 v[179:182], v161
	ds_load_b128 v[73:76], v161 offset:256
	ds_load_b128 v[77:80], v162 offset:256
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[179:186], v[136:143], v[195:202]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[187:194], v[9:16], v[195:202]
	v_wmma_f32_16x16x16_bf16 v[195:202], v[203:210], v[25:32], v[195:202]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[211:218], v[41:48], v[195:202]
	s_clause 0x4                            ; 32-byte Folded Reload
	scratch_load_b64 v[217:218], off, off offset:20
	scratch_load_b64 v[215:216], off, off offset:8
	scratch_load_b32 v216, off, off offset:16
	scratch_load_b64 v[213:214], off, off
	scratch_load_b32 v214, off, off offset:44
	v_wmma_f32_16x16x16_bf16 v[195:202], v[219:226], v[57:64], v[195:202]
	s_clause 0x4                            ; 28-byte Folded Reload
	scratch_load_b32 v225, off, off offset:56
	scratch_load_b32 v224, off, off offset:52
	scratch_load_b32 v222, off, off offset:48
	scratch_load_b64 v[218:219], off, off offset:28
	scratch_load_b64 v[219:220], off, off offset:36
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp68:
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_wmma_f32_16x16x16_bf16 v[195:202], v[227:234], v[96:103], v[195:202]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[235:242], v[112:119], v[195:202]
	v_wmma_f32_16x16x16_bf16 v[195:202], v[163:170], v[128:135], v[195:202]
	v_mov_b32_e32 v163, v255
	v_dual_mov_b32 v165, v254 :: v_dual_mov_b32 v166, v253
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[195:202], v[73:80], v[144:151], v[195:202]
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v153, s36, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v164, v172 :: v_dual_mul_f32 v73, s61, v195
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v153, v175
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s1, v153, v176
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v153, s36, v156
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v76, s61, v198
	v_dual_mul_f32 v74, s61, v196 :: v_dual_mul_f32 v75, s61, v197
	v_mul_f32_e32 v78, s61, v200
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s4, v153, v175
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s5, v153, v176
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v153, s36, v157
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_dual_mul_f32 v77, s61, v199 :: v_dual_mul_f32 v80, s61, v202
	v_mul_f32_e32 v79, s61, v201
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s37, vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s6, v153, v175
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s7, v153, v176
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v153, s36, v158
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s1, s4, s5
	s_and_b32 vcc_lo, s0, s1
	s_and_b32 s4, s6, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s8, v153, v175
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s9, v153, v176
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v153, s36, v159
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s1, s0, s4
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v75, 0xff800000, v75, s1
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s5, s8, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s10, v153, v175
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s11, v153, v176
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v153, s36, v164
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s4, s0, s5
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v76, 0xff800000, v76, s4
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s6, s10, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s12, v153, v175
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s13, v153, v176
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v153, s36, v165
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s5, s0, s6
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v77, 0xff800000, v77, s5
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s7, s12, s13
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s14, v153, v175
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s15, v153, v176
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v153, s36, v166
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s6, s0, s7
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s36, s36, 32
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v78, 0xff800000, v78, s6
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s8, s14, s15
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s16, v153, v175
	.loc	1 242 26                        ; attention_backward.py:242:26
	v_cmp_le_i32_e64 s17, v153, v176
	.loc	1 242 17 is_stmt 0              ; attention_backward.py:242:17
	s_and_b32 s7, s0, s8
.Ltmp69:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v154, v76, v77, v78
.Ltmp70:
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v79, 0xff800000, v79, s7
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s9, s16, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s8, s0, s9
	s_and_b32 s9, s0, s37
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v80, 0xff800000, v80, s8
	v_cndmask_b32_e64 v73, 0xff800000, v73, s9
	v_cndmask_b32_e32 v74, 0xff800000, v74, vcc_lo
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s36, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v155, v79, v80
	v_max3_f32 v153, v73, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v153, v153, v154, v155
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v154, v153, s35, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max_f32_e32 v154, v154, v154
	v_max_f32_e32 v153, v153, v154
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	ds_store_b32 v177, v153
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v154, v178
	v_mov_b32_e32 v153, v173
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v155, v154, s35, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v173, v153, v154, v155
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v73, v73, v173
	v_sub_f32_e32 v74, v74, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v73, 0, v73, s9
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s10, 0xff800000, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v73, v73, v74 :: v_dual_sub_f32 v74, v75, v173
.Ltmp79:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v75, v76, v173
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v75, v75
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v74, 0, v74, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v75, 0, v75, s4
.Ltmp80:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v74, v74, v75 :: v_dual_sub_f32 v75, v77, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v76, v78, v173 :: v_dual_add_f32 v73, v73, v74
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v76, v76
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v75, 0, v75, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v76, 0, v76, s6
	.loc	1 260 70 is_stmt 1              ; attention_backward.py:260:70
	v_dual_sub_f32 v154, v153, v173 :: v_dual_add_f32 v75, v75, v76
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v76, v79, v173
	v_sub_f32_e32 v77, v80, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v154, v154
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v77, v77
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v76, 0, v76, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v77, 0, v77, s8
.Ltmp82:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v76, v76, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v74, v75, v76
	v_add_f32_e32 v73, v73, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v74, v73, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v73, v73, v74
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	ds_store_b32 v177, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v74, v178
	v_mov_b32_e32 v73, v174
	s_waitcnt lgkmcnt(0)
	v_permlanex16_b32 v75, v74, s35, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v174, v74, v75
.Ltmp87:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v74, 0, v154, s10
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v174, v73, v74
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow452
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v153, v243 :: v_dual_mov_b32 v152, v244
	s_clause 0x11                           ; 224-byte Folded Reload
	scratch_load_b64 v[220:221], off, off offset:160
	scratch_load_b32 v223, off, off offset:96
	scratch_load_b32 v226, off, off offset:128
	scratch_load_b64 v[254:255], off, off offset:64
	scratch_load_b128 v[84:87], off, off offset:640
	scratch_load_b128 v[88:91], off, off offset:656
	scratch_load_b128 v[227:230], off, off offset:672
	scratch_load_b128 v[231:234], off, off offset:688
	scratch_load_b128 v[184:187], off, off offset:704
	scratch_load_b128 v[188:191], off, off offset:720
	scratch_load_b128 v[238:241], off, off offset:192
	scratch_load_b128 v[242:245], off, off offset:208
	scratch_load_b128 v[204:207], off, off offset:736
	scratch_load_b128 v[208:211], off, off offset:752
	scratch_load_b128 v[175:178], off, off offset:768
	scratch_load_b128 v[179:182], off, off offset:784
	scratch_load_b32 v168, off, off offset:224
	scratch_load_b32 v169, off, off offset:256
	v_and_b32_e32 v172, 31, v0
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v221, 9, v83
	v_lshlrev_b32_e32 v235, 4, v83
	v_lshlrev_b32_e32 v236, 4, v0
	v_and_b32_e32 v237, 0x60, v0
	v_and_b32_e32 v253, 0x70, v0
	v_lshrrev_b32_e32 v167, 1, v248
	s_branch .LBB0_8
.LBB0_7:
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[84:87], off, off offset:640
	scratch_load_b128 v[88:91], off, off offset:656
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_mov_b32 v174, 0
.LBB0_8:                                ; %Flow454
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v174
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s30, v172
	v_mov_b32_e32 v24, 0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v8, 0, v153
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v13, 1, v0
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v2, 0, 32, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0x42000000, vcc_lo
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e32 vcc_lo, 0, v174
	.loc	1 128 21 is_stmt 1              ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, 0x800, v7
	v_mov_b32_e32 v23, v24
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v2, v174, v2
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_nc_u32_e32 v9, v8, v171
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_lshl_u32 v12, s33, v172, 2
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v2, v2
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	s_waitcnt vmcnt(1)
	v_dual_add_f32 v4, v168, v250 :: v_dual_and_b32 v1, 16, v0
	v_dual_add_f32 v3, v81, v249 :: v_dual_add_f32 v6, v247, v252
	v_dual_mov_b32 v17, v24 :: v_dual_add_nc_u32 v14, 0, v253
.Ltmp89:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s53, s21, 0xffff
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 264 43                        ; attention_backward.py:264:43
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v2, v2, v5 :: v_dual_add_f32 v5, v169, v251
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_mov_b32 s52, s20
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_lshl_add_u32 v8, v248, 1, v8
	v_mov_b32_e32 v22, v24
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v2, v173, v2 :: v_dual_and_b32 v7, 12, v13
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v32, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 264 17 is_stmt 0              ; attention_backward.py:264:17
	v_dual_cndmask_b32 v10, 0, v2 :: v_dual_mov_b32 v21, v24
	v_dual_mov_b32 v19, v24 :: v_dual_add_nc_u32 v2, 0, v152
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v237
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v2
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v2, 0x70, v236
	s_and_b32 vcc_lo, vcc_lo, s1
	v_dual_mov_b32 v29, v24 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v7, 0, v2, v7
	v_mov_b32_e32 v30, v24
	v_mov_b32_e32 v28, v24
	v_mov_b32_e32 v27, v24
	v_mov_b32_e32 v26, v24
	v_mov_b32_e32 v25, v24
	v_mov_b32_e32 v40, v24
	v_mov_b32_e32 v39, v24
	v_mov_b32_e32 v38, v24
	v_mov_b32_e32 v37, v24
	v_mov_b32_e32 v36, v24
	v_mov_b32_e32 v35, v24
	v_mov_b32_e32 v34, v24
	v_mov_b32_e32 v33, v24
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v11, v12, s[52:55], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v14, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v7, v7
	s_and_b32 s53, s23, 0xffff
	s_mov_b32 s52, s22
	v_mov_b32_e32 v48, v24
	v_mov_b32_e32 v47, v24
	v_mov_b32_e32 v46, v24
	v_mov_b32_e32 v45, v24
	v_mov_b32_e32 v44, v24
	v_mov_b32_e32 v43, v24
	v_mov_b32_e32 v42, v24
	v_mov_b32_e32 v41, v24
	v_mov_b32_e32 v63, v24
	v_mov_b32_e32 v62, v24
	v_mov_b32_e32 v61, v24
	v_mov_b32_e32 v60, v24
	v_mov_b32_e32 v59, v24
	v_mov_b32_e32 v58, v24
	v_mov_b32_e32 v57, v24
	v_mov_b32_e32 v56, v24
	v_mov_b32_e32 v71, v24
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v7, v12, s[52:55], 0 offen
	.loc	1 345 58                        ; attention_backward.py:345:58
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v9, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v55, v8
	v_mov_b32_e32 v70, v24
	v_mov_b32_e32 v69, v24
	v_mov_b32_e32 v68, v24
	v_mov_b32_e32 v67, v24
	v_mov_b32_e32 v66, v24
	v_mov_b32_e32 v65, v24
	v_mov_b32_e32 v64, v24
	v_mov_b32_e32 v79, v24
	v_mov_b32_e32 v78, v24
	v_mov_b32_e32 v77, v24
	v_mov_b32_e32 v76, v24
	v_mov_b32_e32 v75, v24
	v_mov_b32_e32 v74, v24
	v_mov_b32_e32 v73, v24
	v_mov_b32_e32 v72, v24
	v_mov_b32_e32 v100, v24
	v_mov_b32_e32 v99, v24
	v_mov_b32_e32 v98, v24
	v_mov_b32_e32 v97, v24
	v_mov_b32_e32 v96, v24
	v_mov_b32_e32 v95, v24
	v_mov_b32_e32 v94, v24
	v_mov_b32_e32 v93, v24
	s_mov_b32 s36, 0
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s34
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v14, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_12
; %bb.9:                                ; %.lr.ph70
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v6, 0, v248
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v3, 8, v0
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or3_b32 v4, s30, v83, v167
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v5, 2, v248
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v95, v93 :: v_dual_lshlrev_b32 v8, 5, v0
	v_mov_b32_e32 v94, v93
	v_lshrrev_b32_e32 v7, 1, v3
	v_dual_mov_b32 v96, v93 :: v_dual_and_b32 v9, 3, v0
	v_dual_mov_b32 v97, v93 :: v_dual_add_nc_u32 v10, s31, v4
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v99, v93 :: v_dual_add_nc_u32 v4, 0, v7
	v_and_or_b32 v13, 0xf00, v8, v2
	v_dual_mov_b32 v98, v93 :: v_dual_lshlrev_b32 v7, 12, v9
	v_dual_mov_b32 v100, v93 :: v_dual_lshlrev_b32 v11, 4, v9
	v_dual_mov_b32 v73, v93 :: v_dual_and_b32 v12, 0x80, v8
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v4, v4, v5, v2
	v_lshl_or_b32 v3, v3, 1, v248
	v_or_b32_e32 v26, v221, v235
	v_dual_mov_b32 v75, v93 :: v_dual_lshlrev_b32 v24, 6, v0
	v_xor_b32_e32 v5, 0x1010, v13
	ds_load_b32 v111, v4
	v_xor_b32_e32 v4, 0x2020, v13
	v_xor_b32_e32 v3, v3, v11
	v_add3_u32 v7, 0, v7, v12
	v_xor_b32_e32 v12, 16, v26
	v_dual_mov_b32 v74, v93 :: v_dual_lshlrev_b32 v9, 10, v9
	v_dual_mov_b32 v77, v93 :: v_dual_and_b32 v8, 0x180, v8
	v_dual_mov_b32 v79, v93 :: v_dual_and_b32 v0, 48, v0
	v_and_or_b32 v2, 0xe00, v24, v2
	.loc	1 329 43                        ; attention_backward.py:329:43
	v_subrev_nc_u32_e32 v202, s28, v10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v246, off offset:1384
	scratch_store_b32 off, v13, off offset:1380
	v_dual_mov_b32 v72, v93 :: v_dual_add_nc_u32 v203, s29, v10
	v_xor_b32_e32 v10, 0x3030, v13
	v_xor_b32_e32 v13, 32, v26
	v_or3_b32 v27, v8, v9, v11
	v_xor_b32_e32 v0, v2, v0
	v_lshl_add_u32 v2, v171, 1, 0
	v_dual_mov_b32 v76, v93 :: v_dual_add_nc_u32 v5, 0, v5
	v_dual_mov_b32 v69, v93 :: v_dual_add_nc_u32 v4, 0, v4
	v_dual_mov_b32 v57, v93 :: v_dual_add_nc_u32 v80, v7, v3
	v_dual_mov_b32 v78, v93 :: v_dual_add_nc_u32 v3, 0, v12
	v_xor_b32_e32 v14, 48, v26
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v26, off offset:1388
	scratch_store_b32 off, v27, off offset:1392
	scratch_store_b32 off, v5, off offset:1396
	scratch_store_b32 off, v4, off offset:1400
	v_xor_b32_e32 v9, 16, v27
	v_dual_mov_b32 v71, v93 :: v_dual_add_nc_u32 v4, 0, v10
	v_dual_mov_b32 v59, v93 :: v_dual_add_nc_u32 v0, v2, v0
	scratch_store_b32 off, v3, off offset:1408 ; 4-byte Folded Spill
	v_dual_mov_b32 v64, v93 :: v_dual_add_nc_u32 v3, 0, v13
	v_xor_b32_e32 v15, 64, v26
	v_xor_b32_e32 v16, 0x50, v26
	v_xor_b32_e32 v17, 0x60, v26
	v_xor_b32_e32 v18, 0x70, v26
	v_xor_b32_e32 v19, 0x80, v26
	v_xor_b32_e32 v20, 0x90, v26
	v_xor_b32_e32 v21, 0xa0, v26
	v_xor_b32_e32 v22, 0xb0, v26
	v_xor_b32_e32 v23, 0xc0, v26
	v_xor_b32_e32 v25, 0xd0, v26
	v_xor_b32_e32 v24, 0xe0, v26
	v_xor_b32_e32 v8, 0xf0, v26
	v_xor_b32_e32 v26, 32, v27
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v4, off offset:1404
	scratch_store_b32 off, v0, off offset:1468
	v_dual_mov_b32 v61, v93 :: v_dual_add_nc_u32 v0, 0, v9
	scratch_store_b32 off, v3, off offset:1412 ; 4-byte Folded Spill
	v_dual_mov_b32 v66, v93 :: v_dual_add_nc_u32 v3, 0, v14
	v_xor_b32_e32 v27, 48, v27
	scratch_store_b32 off, v0, off offset:1472 ; 4-byte Folded Spill
	v_dual_mov_b32 v63, v93 :: v_dual_add_nc_u32 v0, 0, v26
	scratch_store_b32 off, v3, off offset:1416 ; 4-byte Folded Spill
	v_dual_mov_b32 v68, v93 :: v_dual_add_nc_u32 v3, 0, v15
	scratch_store_b32 off, v0, off offset:1476 ; 4-byte Folded Spill
	v_dual_mov_b32 v41, v93 :: v_dual_add_nc_u32 v0, 0, v27
	scratch_store_b32 off, v3, off offset:1420 ; 4-byte Folded Spill
	v_dual_mov_b32 v70, v93 :: v_dual_add_nc_u32 v3, 0, v16
	v_mov_b32_e32 v56, v93
	v_mov_b32_e32 v58, v93
	v_mov_b32_e32 v60, v93
	scratch_store_b32 off, v3, off offset:1424 ; 4-byte Folded Spill
	v_dual_mov_b32 v62, v93 :: v_dual_add_nc_u32 v3, 0, v17
	v_mov_b32_e32 v42, v93
	v_mov_b32_e32 v44, v93
	v_lshrrev_b32_e32 v11, 1, v171
	scratch_store_b32 off, v3, off offset:1428 ; 4-byte Folded Spill
	v_dual_mov_b32 v46, v93 :: v_dual_add_nc_u32 v3, 0, v18
	v_dual_mov_b32 v65, v93 :: v_dual_lshlrev_b32 v28, 1, v83
	v_lshl_add_u32 v1, v1, 2, v6
	scratch_store_b32 off, v3, off offset:1432 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v19
	v_dual_mov_b32 v67, v93 :: v_dual_add_nc_u32 v6, 0, v11
	v_mov_b32_e32 v48, v93
	v_add_nc_u32_e32 v246, v1, v28
	scratch_store_b32 off, v3, off offset:1436 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v20
	v_dual_mov_b32 v38, v93 :: v_dual_add_nc_u32 v247, v6, v28
	v_mov_b32_e32 v43, v93
	v_mov_b32_e32 v45, v93
	scratch_store_b32 off, v3, off offset:1440 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v21
	v_mov_b32_e32 v47, v93
	v_mov_b32_e32 v33, v93
	v_mov_b32_e32 v34, v93
	v_mov_b32_e32 v35, v93
	scratch_store_b32 off, v3, off offset:1444 ; 4-byte Folded Spill
	v_dual_mov_b32 v36, v93 :: v_dual_add_nc_u32 v3, 0, v22
	v_mov_b32_e32 v37, v93
	v_mov_b32_e32 v39, v93
	v_mov_b32_e32 v40, v93
	scratch_store_b32 off, v3, off offset:1448 ; 4-byte Folded Spill
	v_dual_mov_b32 v26, v93 :: v_dual_add_nc_u32 v3, 0, v23
	v_mov_b32_e32 v27, v93
	v_mov_b32_e32 v28, v93
	v_mov_b32_e32 v29, v93
	scratch_store_b32 off, v3, off offset:1452 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v25
	v_mov_b32_e32 v25, v93
	v_mov_b32_e32 v30, v93
	v_mov_b32_e32 v31, v93
	v_mov_b32_e32 v32, v93
	scratch_store_b32 off, v3, off offset:1456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v24
	v_mov_b32_e32 v17, v93
	v_mov_b32_e32 v18, v93
	v_mov_b32_e32 v19, v93
	v_mov_b32_e32 v20, v93
	scratch_store_b32 off, v3, off offset:1460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0, v8
	v_mov_b32_e32 v21, v93
	v_mov_b32_e32 v22, v93
	v_mov_b32_e32 v23, v93
	v_mov_b32_e32 v24, v93
	s_and_b32 s53, s19, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s52, s18
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	s_clause 0x9                            ; 40-byte Folded Spill
	scratch_store_b32 off, v166, off offset:1516
	scratch_store_b32 off, v165, off offset:1512
	scratch_store_b32 off, v164, off offset:1508
	scratch_store_b32 off, v159, off offset:1504
	scratch_store_b32 off, v158, off offset:1500
	scratch_store_b32 off, v157, off offset:1496
	scratch_store_b32 off, v156, off offset:1492
	scratch_store_b32 off, v163, off offset:1488
	scratch_store_b32 off, v3, off offset:1464
	scratch_store_b32 off, v0, off offset:1480
.LBB0_10:                               ; =>This Inner Loop Header: Depth=1
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	scratch_load_b32 v1, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 317 21 is_stmt 1              ; attention_backward.py:317:21
	s_add_i32 s1, s59, s56
	s_clause 0xf                            ; 256-byte Folded Spill
	scratch_store_b128 off, v[72:75], off offset:288
	scratch_store_b128 off, v[76:79], off offset:304
	scratch_store_b128 off, v[93:96], off offset:256
	scratch_store_b128 off, v[97:100], off offset:272
	scratch_store_b128 off, v[64:67], off offset:224
	scratch_store_b128 off, v[68:71], off offset:240
	scratch_store_b128 off, v[56:59], off offset:192
	scratch_store_b128 off, v[60:63], off offset:208
	scratch_store_b128 off, v[41:44], off offset:160
	scratch_store_b128 off, v[45:48], off offset:176
	scratch_store_b128 off, v[33:36], off offset:128
	scratch_store_b128 off, v[37:40], off offset:144
	scratch_store_b128 off, v[25:28], off offset:96
	scratch_store_b128 off, v[29:32], off offset:112
	scratch_store_b128 off, v[17:20], off offset:64
	scratch_store_b128 off, v[21:24], off offset:80
	s_mul_i32 s4, s1, s46
	v_mov_b32_e32 v44, v254
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_lshl_u32 v0, s4, v213, 1
	v_mov_b32_e32 v34, v223
	.loc	1 386 21                        ; attention_backward.py:386:21
	s_mul_i32 s1, s1, s47
	v_mov_b32_e32 v35, v226
	v_mov_b32_e32 v29, v44
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s4, v1, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v4, 0x80000000, v1, s2
	scratch_load_b32 v1, off, off offset:1384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s4, v1, 1
	v_cndmask_b32_e64 v8, 0x80000000, v1, s2
	v_add_lshl_u32 v1, s4, v215, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v12, 0x80000000, v1, s2
	v_add_lshl_u32 v1, s4, v216, 1
	v_cndmask_b32_e64 v16, 0x80000000, v1, s2
	v_add_lshl_u32 v1, s4, v217, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0x80000000, v1, s2
	v_add_lshl_u32 v1, s4, v218, 1
	v_cndmask_b32_e64 v18, 0x80000000, v1, s2
	v_add_lshl_u32 v1, s4, v219, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v19, 0x80000000, v1, s2
	s_clause 0x7
	buffer_load_b128 v[0:3], v0, s[52:55], 0 offen
	buffer_load_b128 v[4:7], v4, s[52:55], 0 offen
	buffer_load_b128 v[8:11], v8, s[52:55], 0 offen
	buffer_load_b128 v[12:15], v12, s[52:55], 0 offen
	buffer_load_b128 v[70:73], v16, s[52:55], 0 offen
	buffer_load_b128 v[81:84], v17, s[52:55], 0 offen
	buffer_load_b128 v[85:88], v18, s[52:55], 0 offen
	buffer_load_b128 v[93:96], v19, s[52:55], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v24, off, off offset:1380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v16.l, v0.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v16.h, v4.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v17.l, v8.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v17.h, v12.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v18.l, v70.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v18.h, v81.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v19.l, v85.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v19.h, v93.l
	v_mov_b16_e32 v20.l, v2.l
	v_mov_b16_e32 v20.h, v6.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, 0, v24
	v_mov_b16_e32 v21.l, v10.l
	v_mov_b16_e32 v21.h, v14.l
	v_mov_b16_e32 v22.l, v72.l
	v_mov_b16_e32 v22.h, v83.l
	v_mov_b16_e32 v23.l, v87.l
	v_mov_b16_e32 v23.h, v95.l
	ds_store_b128 v24, v[16:19]
	ds_store_b128 v24, v[20:23] offset:128
	scratch_load_b32 v24, off, off offset:1396 ; 4-byte Folded Reload
	v_mov_b16_e32 v16.l, v0.h
	v_mov_b16_e32 v16.h, v4.h
	v_mov_b16_e32 v17.l, v8.h
	v_mov_b16_e32 v17.h, v12.h
	v_mov_b16_e32 v18.l, v70.h
	v_mov_b16_e32 v18.h, v81.h
	v_mov_b16_e32 v19.l, v85.h
	v_mov_b16_e32 v19.h, v93.h
	v_mov_b16_e32 v20.l, v2.h
	v_mov_b16_e32 v20.h, v6.h
	v_mov_b16_e32 v21.l, v10.h
	v_mov_b16_e32 v21.h, v14.h
	v_mov_b16_e32 v22.l, v72.h
	v_mov_b16_e32 v22.h, v83.h
	v_mov_b16_e32 v23.l, v87.h
	v_mov_b16_e32 v23.h, v95.h
	s_waitcnt vmcnt(0)
	ds_store_b128 v24, v[16:19]
	ds_store_b128 v24, v[20:23] offset:128
	scratch_load_b32 v24, off, off offset:1400 ; 4-byte Folded Reload
	v_mov_b16_e32 v16.l, v1.l
	v_mov_b16_e32 v16.h, v5.l
	v_mov_b16_e32 v17.l, v9.l
	v_mov_b16_e32 v17.h, v13.l
	v_mov_b16_e32 v18.l, v71.l
	v_mov_b16_e32 v18.h, v82.l
	v_mov_b16_e32 v19.l, v86.l
	v_mov_b16_e32 v19.h, v94.l
	v_mov_b16_e32 v20.l, v3.l
	v_mov_b16_e32 v20.h, v7.l
	v_mov_b16_e32 v21.l, v11.l
	v_mov_b16_e32 v21.h, v15.l
	v_mov_b16_e32 v22.l, v73.l
	v_mov_b16_e32 v22.h, v84.l
	v_mov_b16_e32 v23.l, v88.l
	v_mov_b16_e32 v23.h, v96.l
	s_waitcnt vmcnt(0)
	ds_store_b128 v24, v[16:19]
	ds_store_b128 v24, v[20:23] offset:128
	scratch_load_b32 v24, off, off offset:1404 ; 4-byte Folded Reload
	v_mov_b16_e32 v16.l, v1.h
	v_mov_b16_e32 v16.h, v5.h
	v_mov_b16_e32 v17.l, v9.h
	v_mov_b16_e32 v17.h, v13.h
	v_mov_b16_e32 v18.l, v71.h
	v_mov_b16_e32 v18.h, v82.h
	v_mov_b16_e32 v19.l, v86.h
	v_mov_b16_e32 v19.h, v94.h
	v_mov_b16_e32 v20.l, v3.h
	v_mov_b16_e32 v20.h, v7.h
	v_mov_b16_e32 v21.l, v11.h
	v_mov_b16_e32 v21.h, v15.h
	v_mov_b16_e32 v22.l, v73.h
	v_mov_b16_e32 v22.h, v84.h
	v_mov_b16_e32 v23.l, v88.h
	v_mov_b16_e32 v23.h, v96.h
	s_waitcnt vmcnt(0)
	ds_store_b128 v24, v[16:19]
	ds_store_b128 v24, v[20:23] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v80
	ds_load_b128 v[76:79], v80 offset:3072
	ds_load_b128 v[66:69], v80 offset:3136
	ds_load_b128 v[56:59], v80 offset:3328
	ds_load_b128 v[46:49], v80 offset:3392
	ds_load_b128 v[36:39], v80 offset:3584
	ds_load_b128 v[194:197], v80 offset:3648
	ds_load_b128 v[107:110], v80 offset:3840
	ds_load_b128 v[234:237], v80 offset:3904
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v193.h, v195.l
	.loc	1 323 31                        ; attention_backward.py:323:31
	scratch_store_b128 off, v[16:19], off offset:544 ; 16-byte Folded Spill
	ds_load_b128 v[16:19], v80 offset:64
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e32 v106.h, v108.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v233.h, v235.l
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:512 ; 16-byte Folded Spill
	ds_load_b128 v[60:63], v80 offset:1024
	ds_load_b128 v[50:53], v80 offset:1088
	ds_load_b128 v[16:19], v80 offset:2048
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:560 ; 16-byte Folded Spill
	ds_load_b128 v[16:19], v80 offset:2112
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:528 ; 16-byte Folded Spill
	ds_load_b128 v[16:19], v80 offset:256
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:480 ; 16-byte Folded Spill
	ds_load_b128 v[16:19], v80 offset:320
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:448 ; 16-byte Folded Spill
	ds_load_b128 v[40:43], v80 offset:1280
	ds_load_b128 v[30:33], v80 offset:1344
	ds_load_b128 v[16:19], v80 offset:2304
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:496 ; 16-byte Folded Spill
	ds_load_b128 v[16:19], v80 offset:2368
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:464 ; 16-byte Folded Spill
	ds_load_b128 v[16:19], v80 offset:512
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:416 ; 16-byte Folded Spill
	ds_load_b128 v[16:19], v80 offset:576
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:384 ; 16-byte Folded Spill
	ds_load_b128 v[101:104], v80 offset:1536
	ds_load_b128 v[89:92], v80 offset:1600
	ds_load_b128 v[16:19], v80 offset:2560
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v192.h, v90.l
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:432 ; 16-byte Folded Spill
	ds_load_b128 v[16:19], v80 offset:2624
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:400 ; 16-byte Folded Spill
	ds_load_b128 v[16:19], v80 offset:768
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:352 ; 16-byte Folded Spill
	ds_load_b128 v[16:19], v80 offset:832
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:320 ; 16-byte Folded Spill
	ds_load_b128 v[228:231], v80 offset:1792
	ds_load_b128 v[198:201], v80 offset:1856
	ds_load_b128 v[16:19], v80 offset:2816
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v105.h, v229.l
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v232.h, v199.l
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:368 ; 16-byte Folded Spill
	ds_load_b128 v[16:19], v80 offset:2880
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[16:19], off offset:336 ; 16-byte Folded Spill
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v214, v[0:3]
	ds_store_b128 v214, v[70:73] offset:8192
	ds_store_b128 v222, v[4:7]
	ds_store_b128 v222, v[81:84] offset:8192
	ds_store_b128 v224, v[8:11]
	ds_store_b128 v224, v[85:88] offset:8192
	ds_store_b128 v225, v[12:15]
	ds_store_b128 v225, v[93:96] offset:8192
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1388
	scratch_load_b32 v1, off, off offset:1408
	scratch_load_b32 v2, off, off offset:1412
	scratch_load_b32 v3, off, off offset:1416
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v12, s36 :: v_dual_mov_b32 v17, s41
	v_dual_mov_b32 v14, s38 :: v_dual_mov_b32 v19, s43
	v_dual_mov_b32 v13, s37 :: v_dual_mov_b32 v16, s40
	v_dual_mov_b32 v18, s42 :: v_dual_mov_b32 v15, s39
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v27, v19
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(1)
	ds_load_b128 v[184:187], v2 offset:256
	s_waitcnt vmcnt(0)
	ds_load_b128 v[188:191], v3 offset:256
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_b128 v[85:88], v3
	ds_load_b128 v[4:7], v0 offset:256
	ds_load_b128 v[8:11], v1 offset:256
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[4:7], off offset:608 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[8:11], off offset:624 ; 16-byte Folded Spill
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[4:7], off, off offset:640
	scratch_load_b128 v[8:11], off, off offset:656
	ds_load_b128 v[168:171], v0
	ds_load_b128 v[172:175], v1
	v_dual_mov_b32 v26, v18 :: v_dual_mov_b32 v25, v17
	v_dual_mov_b32 v24, v16 :: v_dual_mov_b32 v23, v15
	v_dual_mov_b32 v22, v14 :: v_dual_mov_b32 v21, v13
	v_mov_b32_e32 v20, v12
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[20:23], off offset:576
	scratch_store_b128 off, v[24:27], off offset:592
	ds_load_b128 v[81:84], v2
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[168:175], v[4:11], v[12:19]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[12:15], off, off offset:800
	scratch_load_b128 v[16:19], off, off offset:816
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[81:88], v[12:19], v[160:167]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[81:84], v0 offset:8192
	ds_load_b128 v[85:88], v1 offset:8192
	ds_load_b128 v[112:115], v2 offset:8192
	ds_load_b128 v[116:119], v3 offset:8192
	ds_load_b128 v[176:179], v0 offset:8448
	ds_load_b128 v[180:183], v1 offset:8448
	ds_load_b128 v[120:123], v2 offset:8448
	ds_load_b128 v[124:127], v3 offset:8448
	scratch_load_b32 v1, off, off offset:1424 ; 4-byte Folded Reload
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[168:175], v[81:88], v[4:11], v[20:27]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off offset:864
	scratch_load_b128 v[6:9], off, off offset:880
	v_mov_b32_e32 v10, v220
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[168:175], v[112:119], v[12:19], v[168:175]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v12, off, off offset:1464
	scratch_load_b32 v0, off, off offset:1420
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[81:84], v0
	ds_load_b128 v[112:115], v0 offset:256
	ds_load_b128 v[116:119], v1 offset:256
	ds_load_b128 v[85:88], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[81:88], v[2:9], v[160:167]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[85:88], v1 offset:8192
	ds_load_b128 v[81:84], v0 offset:8192
	ds_load_b128 v[128:131], v0 offset:8448
	ds_load_b128 v[132:135], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1432
	scratch_load_b32 v0, off, off offset:1428
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[168:175], v[81:88], v[2:9], v[168:175]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off offset:928
	scratch_load_b128 v[6:9], off, off offset:944
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(2)
	ds_load_b128 v[81:84], v0
	ds_load_b128 v[144:147], v0 offset:256
	ds_load_b128 v[148:151], v1 offset:256
	ds_load_b128 v[85:88], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[81:88], v[2:9], v[160:167]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[85:88], v1 offset:8192
	ds_load_b128 v[81:84], v0 offset:8192
	ds_load_b128 v[152:155], v0 offset:8448
	ds_load_b128 v[156:159], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1440
	scratch_load_b32 v0, off, off offset:1436
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[168:175], v[81:88], v[2:9], v[168:175]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off offset:992
	scratch_load_b128 v[6:9], off, off offset:1008
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(2)
	ds_load_b128 v[81:84], v0
	ds_load_b128 v[136:139], v0 offset:256
	ds_load_b128 v[140:143], v1 offset:256
	ds_load_b128 v[85:88], v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[81:88], v[2:9], v[160:167]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[85:88], v1 offset:8192
	ds_load_b128 v[81:84], v0 offset:8192
	ds_load_b128 v[204:207], v0 offset:8448
	ds_load_b128 v[208:211], v1 offset:8448
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1448
	scratch_load_b32 v0, off, off offset:1444
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[168:175], v[81:88], v[2:9], v[168:175]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off offset:1056
	scratch_load_b128 v[6:9], off, off offset:1072
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(2)
	ds_load_b128 v[81:84], v0
	ds_load_b128 v[212:215], v0 offset:256
	ds_load_b128 v[216:219], v1 offset:256
	ds_load_b128 v[85:88], v1
	ds_load_b128 v[220:223], v0 offset:8448
	ds_load_b128 v[224:227], v1 offset:8448
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[81:88], v[2:9], v[160:167]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[85:88], v1 offset:8192
	ds_load_b128 v[81:84], v0 offset:8192
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:1456
	scratch_load_b32 v0, off, off offset:1452
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[168:175], v[81:88], v[2:9], v[168:175]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off offset:1120
	scratch_load_b128 v[6:9], off, off offset:1136
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(2)
	ds_load_b128 v[81:84], v0
	ds_load_b128 v[93:96], v0 offset:256
	ds_load_b128 v[97:100], v1 offset:256
	ds_load_b128 v[85:88], v1
	ds_load_b128 v[252:255], v1 offset:8448
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[81:88], v[2:9], v[160:167]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[85:88], v1 offset:8192
	ds_load_b128 v[81:84], v0 offset:8192
	ds_load_b128 v[248:251], v0 offset:8448
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[168:175], v[81:88], v[2:9], v[168:175]
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v8, off, off offset:1460
	scratch_load_b128 v[0:3], off, off offset:1184
	scratch_load_b128 v[4:7], off, off offset:1200
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[85:88], v12
	s_waitcnt vmcnt(2)
	ds_load_b128 v[81:84], v8
	ds_load_b128 v[13:16], v8 offset:256
	ds_load_b128 v[17:20], v12 offset:256
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[81:88], v[0:7], v[160:167]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[85:88], v12 offset:8192
	ds_load_b128 v[81:84], v8 offset:8192
	ds_load_b128 v[21:24], v8 offset:8448
	ds_load_b128 v[25:28], v12 offset:8448
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[168:175], v[81:88], v[0:7], v[168:175]
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[81:84], off, off offset:672
	scratch_load_b128 v[85:88], off, off offset:688
	scratch_load_b128 v[0:3], off, off offset:608
	scratch_load_b128 v[4:7], off, off offset:624
	s_waitcnt vmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[168:175], v[176:183], v[81:88], v[168:175]
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[0:7], v[81:88], v[160:167]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:832
	scratch_load_b128 v[4:7], off, off offset:848
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[184:191], v[0:7], v[160:167]
	v_wmma_f32_16x16x16_bf16 v[168:175], v[120:127], v[0:7], v[168:175]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:896
	scratch_load_b128 v[4:7], off, off offset:912
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v188.h, v89.l
	v_mov_b16_e64 v189.h, v194.l
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[112:119], v[0:7], v[160:167]
	v_wmma_f32_16x16x16_bf16 v[168:175], v[128:135], v[0:7], v[168:175]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:960
	scratch_load_b128 v[4:7], off, off offset:976
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[144:151], v[0:7], v[160:167]
	v_wmma_f32_16x16x16_bf16 v[168:175], v[152:159], v[0:7], v[168:175]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:1024
	scratch_load_b128 v[4:7], off, off offset:1040
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[136:143], v[0:7], v[160:167]
	v_wmma_f32_16x16x16_bf16 v[168:175], v[204:211], v[0:7], v[168:175]
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[204:207], off, off offset:736
	scratch_load_b128 v[208:211], off, off offset:752
	scratch_load_b128 v[0:3], off, off offset:1088
	scratch_load_b128 v[4:7], off, off offset:1104
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[212:219], v[0:7], v[160:167]
	v_wmma_f32_16x16x16_bf16 v[168:175], v[220:227], v[0:7], v[168:175]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:1152
	scratch_load_b128 v[4:7], off, off offset:1168
	v_mov_b32_e32 v223, v34
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[217:218], off, off offset:20
	scratch_load_b64 v[218:219], off, off offset:28
	scratch_load_b64 v[215:216], off, off offset:8
	v_mov_b32_e32 v226, v35
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v222, off, off offset:48
	scratch_load_b64 v[219:220], off, off offset:36
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v220, v10
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v216, off, off offset:16
	scratch_load_b64 v[213:214], off, off
	scratch_load_b32 v214, off, off offset:44
	scratch_load_b32 v225, off, off offset:56
	scratch_load_b32 v224, off, off offset:52
	v_wmma_f32_16x16x16_bf16 v[160:167], v[93:100], v[0:7], v[160:167]
	v_wmma_f32_16x16x16_bf16 v[168:175], v[248:255], v[0:7], v[168:175]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:1216
	scratch_load_b128 v[4:7], off, off offset:1232
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[160:167], v[13:20], v[0:7], v[160:167]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[168:175], v[21:28], v[0:7], v[168:175]
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v1, s1, v223, 1
	v_add_lshl_u32 v0, s1, v220, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v45, s61, v173, -v55
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v4, 0x80000000, v1, s3
	v_add_lshl_u32 v1, s1, v226, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v54, s61, v174, -v55
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v8, 0x80000000, v1, s3
	v_add_lshl_u32 v1, s1, v29, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v9, 0x80000000, v1, s3
	s_clause 0x3
	buffer_load_b128 v[0:3], v0, s[48:51], 0 offen
	buffer_load_b128 v[4:7], v4, s[48:51], 0 offen
	buffer_load_b128 v[70:73], v8, s[48:51], 0 offen
	buffer_load_b128 v[144:147], v9, s[48:51], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v25, off, off offset:1468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v25, v[0:3]
	ds_store_b128 v25, v[4:7] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:1392
	scratch_load_b32 v34, off, off offset:1472
	scratch_load_b32 v44, off, off offset:1480
	scratch_load_b32 v35, off, off offset:1476
	s_waitcnt vmcnt(0)
	ds_load_b128 v[112:115], v35
	ds_load_b128 v[120:123], v35 offset:64
	ds_load_b128 v[124:127], v44 offset:64
	ds_load_b128 v[132:135], v44 offset:512
	ds_load_b128 v[128:131], v35 offset:512
	ds_load_b128 v[136:139], v35 offset:576
	ds_load_b128 v[140:143], v44 offset:576
	v_add_nc_u32_e32 v24, 0, v0
	ds_load_b128 v[4:7], v34
	ds_load_b128 v[0:3], v24
	ds_load_b128 v[8:11], v24 offset:64
	ds_load_b128 v[12:15], v34 offset:64
	ds_load_b128 v[85:88], v34 offset:512
	ds_load_b128 v[81:84], v24 offset:512
	ds_load_b128 v[93:96], v24 offset:576
	ds_load_b128 v[97:100], v34 offset:576
	ds_load_b128 v[116:119], v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v25, v[70:73]
	ds_store_b128 v25, v[144:147] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[248:251], off, off offset:704
	scratch_load_b128 v[252:255], off, off offset:720
	scratch_load_b128 v[16:19], off, off offset:576
	scratch_load_b128 v[20:23], off, off offset:592
	ds_load_b128 v[148:151], v34
	ds_load_b128 v[144:147], v24
	ds_load_b128 v[152:155], v24 offset:64
	ds_load_b128 v[156:159], v34 offset:64
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v25, s61, v169, -v55
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[180:187], v[0:7], v[248:255], v[16:23]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[144:151], v[248:255], v[16:23]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:1284
	scratch_load_b128 v[20:23], off, off offset:1300
	v_wmma_f32_16x16x16_bf16 v[180:187], v[112:119], v[238:245], v[180:187]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[116:119], v44
	ds_load_b128 v[112:115], v35
	ds_load_b128 v[144:147], v35 offset:64
	ds_load_b128 v[148:151], v44 offset:64
	v_mov_b32_e32 v254, v29
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[180:187], v[8:15], v[204:211], v[180:187]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[8:11], off, off offset:1252
	scratch_load_b128 v[12:15], off, off offset:1268
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[112:119], v[238:245], v[0:7]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[152:159], v[204:211], v[0:7]
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[180:187], v[120:127], v[8:15], v[180:187]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[144:151], v[8:15], v[0:7]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[180:187], v[81:88], v[16:23], v[180:187]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[12:15], v34 offset:512
	ds_load_b128 v[8:11], v24 offset:512
	ds_load_b128 v[81:84], v24 offset:576
	ds_load_b128 v[85:88], v34 offset:576
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v24, s61, v168, -v55
	v_fma_f32 v34, s61, v170, -v55
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v24, v24
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[8:15], v[16:23], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[16:19], off, off offset:1316
	scratch_load_b128 v[20:23], off, off offset:1332
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[12:15], v44 offset:512
	ds_load_b128 v[8:11], v35 offset:512
	ds_load_b128 v[112:115], v35 offset:576
	ds_load_b128 v[116:119], v44 offset:576
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v35, s61, v171, -v55
	v_fma_f32 v44, s61, v172, -v55
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[8:15], v[16:23], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[8:11], off, off offset:1348
	scratch_load_b128 v[12:15], off, off offset:1364
	v_wmma_f32_16x16x16_bf16 v[180:187], v[128:135], v[16:23], v[180:187]
	.loc	1 271 27                        ; attention_backward.py:271:27
	scratch_load_b32 v16, off, off offset:1248 ; 4-byte Folded Reload
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[180:187], v[93:100], v[8:15], v[180:187]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[81:88], v[8:15], v[0:7]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[8:11], off, off offset:768
	scratch_load_b128 v[12:15], off, off offset:784
	.loc	1 271 27                        ; attention_backward.py:271:27
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v81, s59, v16
	v_mov_b32_e32 v83, v55
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[93:96], off, off offset:256
	scratch_load_b128 v[97:100], off, off offset:272
	.loc	1 397 33                        ; attention_backward.py:397:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 2, v81
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s31, v81, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s33, v81, v203
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s59, s59, 32
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s1, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s4, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 4, v81
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s31, s31, s33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_and_b32 s31, vcc_lo, s31
	s_and_b32 s1, s1, s4
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s5, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s6, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 6, v81
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s7, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s8, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 8, v81
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s9, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s10, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 10, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s11, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s12, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 12, v81
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s13, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s14, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 14, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s15, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s16, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 16, v81
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s17, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s18, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 18, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s19, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s20, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 20, v81
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s21, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s22, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 22, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s23, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s24, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 24, v81
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s25, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s26, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 26, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s27, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s28, v82, v203
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v82, 28, v81
	v_or_b32_e32 v81, 30, v81
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s29, v82, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s30, v82, v203
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s34, v81, v202
	.loc	1 330 26                        ; attention_backward.py:330:26
	v_cmp_le_i32_e64 s35, v81, v203
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[180:187], v[136:143], v[8:15], v[180:187]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[112:119], v[8:15], v[0:7]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v9, s61, v161, -v55
	v_fma_f32 v10, s61, v162, -v55
	v_fma_f32 v11, s61, v163, -v55
	v_fma_f32 v12, s61, v164, -v55
	v_fma_f32 v13, s61, v165, -v55
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v12, v12
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v14, s61, v166, -v55
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v13, v13
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v15, s61, v167, -v55
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v73, v185, v111
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v8, s61, v160, -v55
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v14, v14
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 330 17 is_stmt 1              ; attention_backward.py:330:17
	s_and_b32 s1, s5, s6
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v15, v15
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v71, v183, v111
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s7, s8
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v8, v8
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v65, v181, v111
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s9, s10
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v64, v180, v111
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v9, v9, v65
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s11, s12
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v8, 0, v8, s31
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v1, v1, v111
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s13, s14
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v70, v182, v111
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v8, v8, v64
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s15, s16
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v13, v13, v73
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v0, v0, v111
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s17, s18
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v13, s58, v13
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v72, v184, v111 :: v_dual_mul_f32 v9, s58, v9
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v11, v11, v71
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s19, s20
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v75, v187, v111
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v0, v24, v0
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v24, v25
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v5, v5, v111 :: v_dual_mul_f32 v12, v12, v72
	v_sub_f32_e32 v2, v2, v111
	v_dual_sub_f32 v3, v3, v111 :: v_dual_mul_f32 v10, v10, v70
	v_sub_f32_e32 v4, v4, v111
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v55, s61, v175, -v83
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v6, v6, v111
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v8, s58, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v74, v186, v111
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s21, s22
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v10, s58, v10
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v1, v24, v1
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v24, v34
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v7, v7, v111 :: v_dual_mul_f32 v14, v14, v74
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s4, v9, v9
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v11, s58, v11
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s5, v10, v10
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v12, s58, v12
	v_mul_f32_e32 v14, s58, v14
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s8, v13, v13
	v_cmp_o_f32_e64 s6, v11, v11
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v15, v15, v75
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s23, s24
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s7, v12, v12
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v2, v24, v2
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v24, v35
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v15, s58, v15
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s9, v14, v14
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s58, v0
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_mov_b16_e32 v70.h, v60.l
	v_mov_b16_e32 v71.h, v76.l
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s10, v15, v15
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v74.h, v61.l
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s11, v0, v0
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v75.h, v77.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s25, s26
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v64.h, v51.l
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, vcc_lo, s1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v65.h, v67.l
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v3, v24, v3
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v24, v44
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v44.h, v31.l
	v_mov_b16_e32 v34.h, v102.l
	v_mov_b16_e32 v35.h, v37.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s27, s28
	s_and_b32 s1, vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v4, v24, v4
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v24, v45
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v45.h, v47.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s29, s30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_and_b32 s1, vcc_lo, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v5, v24, v5
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v24, v54
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v54.h, v41.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s34, s35
	s_and_b32 s1, vcc_lo, s1
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s59, s60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v6, v24, v6
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v24, v55
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v55.h, v57.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s1, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v7, v24, v7
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v24, v8, 16, 1
	v_add3_u32 v8, v8, v24, 0x7fff
	v_bfe_u32 v24, v9, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v9, v9, v24, 0x7fff
	v_bfe_u32 v24, v10, 16, 1
	v_add3_u32 v10, v10, v24, 0x7fff
	v_bfe_u32 v24, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v11, v24, 0x7fff
	v_bfe_u32 v24, v12, 16, 1
	v_add3_u32 v12, v12, v24, 0x7fff
	v_bfe_u32 v24, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v13, v13, v24, 0x7fff
	v_bfe_u32 v24, v14, 16, 1
	v_add3_u32 v14, v14, v24, 0x7fff
	v_bfe_u32 v24, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v15, v24, 0x7fff
	v_bfe_u32 v24, v0, 16, 1
	v_add3_u32 v24, v0, v24, 0x7fff
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s58, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e64 s12, v0, v0
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s58, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v2, v0, 16, 1
	v_cmp_o_f32_e64 s13, v0, v0
	v_add3_u32 v2, v0, v2, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s58, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v3, v0, 16, 1
	v_cmp_o_f32_e64 s14, v0, v0
	v_add3_u32 v3, v0, v3, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s58, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v4, v0, 16, 1
	v_cmp_o_f32_e64 s15, v0, v0
	v_add3_u32 v4, v0, v4, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s58, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v5, v0, 16, 1
	v_cmp_o_f32_e64 s16, v0, v0
	v_add3_u32 v5, v0, v5, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s58, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v6, v0, 16, 1
	v_cmp_o_f32_e64 s17, v0, v0
	v_add3_u32 v6, v0, v6, 0x7fff
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v0, s58, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v7, v0, 16, 1
	v_cmp_o_f32_e64 s18, v0, v0
	v_add3_u32 v7, v0, v7, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v8.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s4
	ds_store_b16 v246, v0
	v_cndmask_b16 v0.l, 0x7fff, v10.h, s5
	ds_store_b16_d16_hi v246, v0 offset:128
	v_cndmask_b16 v0.h, 0x7fff, v11.h, s6
	ds_store_b16 v246, v0 offset:256
	v_cndmask_b16 v0.l, 0x7fff, v12.h, s7
	ds_store_b16_d16_hi v246, v0 offset:384
	v_cndmask_b16 v0.h, 0x7fff, v13.h, s8
	ds_store_b16 v246, v0 offset:512
	v_cndmask_b16 v0.l, 0x7fff, v14.h, s9
	ds_store_b16_d16_hi v246, v0 offset:640
	v_cndmask_b16 v0.h, 0x7fff, v15.h, s10
	ds_store_b16 v246, v0 offset:768
	ds_store_b16_d16_hi v246, v0 offset:896
	v_cndmask_b16 v0.l, 0x7fff, v24.h, s11
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s12
	ds_store_b16 v246, v0 offset:1024
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s13
	ds_store_b16_d16_hi v246, v0 offset:1152
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s14
	ds_store_b16 v246, v0 offset:1280
	v_cndmask_b16 v0.l, 0x7fff, v4.h, s15
	ds_store_b16_d16_hi v246, v0 offset:1408
	v_cndmask_b16 v0.h, 0x7fff, v5.h, s16
	ds_store_b16 v246, v0 offset:1536
	v_cndmask_b16 v0.l, 0x7fff, v6.h, s17
	ds_store_b16_d16_hi v246, v0 offset:1664
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s18
	ds_store_b16 v246, v0 offset:1792
	ds_store_b16_d16_hi v246, v0 offset:1920
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[4:7], off, off offset:544
	scratch_load_b128 v[0:3], off, off offset:560
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v160, v247
	ds_load_u16_d16 v161, v247 offset:128
	ds_load_u16_d16 v162, v247 offset:256
	ds_load_u16_d16 v163, v247 offset:384
	ds_load_u16_d16 v164, v247 offset:512
	ds_load_u16_d16 v165, v247 offset:640
	ds_load_u16_d16 v166, v247 offset:768
	ds_load_u16_d16 v167, v247 offset:896
	ds_load_u16_d16 v168, v247 offset:1024
	ds_load_u16_d16 v169, v247 offset:1152
	ds_load_u16_d16 v170, v247 offset:1280
	ds_load_u16_d16 v171, v247 offset:1408
	ds_load_u16_d16 v172, v247 offset:1536
	ds_load_u16_d16 v173, v247 offset:1664
	ds_load_u16_d16 v174, v247 offset:1792
	ds_load_u16_d16 v175, v247 offset:1920
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v160, v247 offset:64
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v161, v247 offset:192
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v162, v247 offset:320
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v163, v247 offset:448
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v164, v247 offset:576
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v165, v247 offset:704
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v166, v247 offset:832
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v167, v247 offset:960
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v168, v247 offset:1088
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v169, v247 offset:1216
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v170, v247 offset:1344
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v171, v247 offset:1472
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v172, v247 offset:1600
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v173, v247 offset:1728
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v174, v247 offset:1856
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v175, v247 offset:1984
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v60.l, v4.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v76.l, v0.h
	v_mov_b16_e32 v61.l, v5.h
	v_mov_b16_e32 v70.l, v4.l
	v_mov_b16_e32 v71.l, v0.l
	v_mov_b16_e32 v74.l, v5.l
	v_mov_b16_e32 v75.l, v1.l
	v_mov_b16_e32 v77.l, v1.h
	v_mov_b32_e32 v72, v60
	v_dual_mov_b32 v73, v76 :: v_dual_mov_b32 v76, v61
	v_mov_b16_e32 v60.h, v50.l
	v_mov_b16_e32 v61.h, v66.l
	s_waitcnt lgkmcnt(8)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[93:100], v[70:77], v[160:167], v[93:100]
	v_mov_b16_e32 v72.h, v62.l
	v_mov_b16_e32 v62.l, v6.h
	v_mov_b16_e32 v76.h, v63.l
	v_mov_b16_e32 v63.l, v7.h
	v_mov_b16_e32 v73.h, v78.l
	v_mov_b16_e32 v78.l, v2.h
	v_mov_b16_e32 v72.l, v6.l
	v_mov_b16_e32 v76.l, v7.l
	v_mov_b16_e32 v73.l, v2.l
	v_mov_b16_e32 v77.l, v3.l
	v_mov_b16_e32 v77.h, v79.l
	v_mov_b16_e32 v79.l, v3.h
	v_mov_b32_e32 v74, v62
	v_dual_mov_b32 v75, v78 :: v_dual_mov_b32 v78, v63
	scratch_load_b128 v[0:3], off, off offset:528 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[93:100], v[72:79], v[168:175], v[93:100]
	s_clause 0x2                            ; 48-byte Folded Reload
	scratch_load_b128 v[72:75], off, off offset:288
	scratch_load_b128 v[76:79], off, off offset:304
	scratch_load_b128 v[4:7], off, off offset:512
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v66.l, v0.h
	v_mov_b16_e32 v61.l, v0.l
	v_mov_b16_e32 v65.l, v1.l
	v_mov_b16_e32 v67.l, v1.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v50.l, v4.h
	v_mov_b16_e32 v51.l, v5.h
	v_mov_b16_e32 v60.l, v4.l
	v_mov_b16_e32 v64.l, v5.l
	v_mov_b32_e32 v63, v66
	v_mov_b32_e32 v62, v50
	v_mov_b32_e32 v66, v51
	v_mov_b16_e32 v50.h, v40.l
	v_mov_b16_e32 v51.h, v56.l
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[60:67], v[160:167], v[72:79]
	v_mov_b16_e32 v62.h, v52.l
	v_mov_b16_e32 v52.l, v6.h
	v_mov_b16_e32 v66.h, v53.l
	v_mov_b16_e32 v53.l, v7.h
	v_mov_b16_e32 v63.h, v68.l
	v_mov_b16_e32 v68.l, v2.h
	v_mov_b16_e32 v62.l, v6.l
	v_mov_b16_e32 v66.l, v7.l
	v_mov_b16_e32 v63.l, v2.l
	v_mov_b16_e32 v67.l, v3.l
	v_mov_b16_e32 v67.h, v69.l
	v_mov_b16_e32 v69.l, v3.h
	v_mov_b32_e32 v64, v52
	v_dual_mov_b32 v65, v68 :: v_dual_mov_b32 v68, v53
	scratch_load_b128 v[0:3], off, off offset:496 ; 16-byte Folded Reload
	v_wmma_f32_16x16x16_bf16 v[72:79], v[62:69], v[168:175], v[72:79]
	s_clause 0x2                            ; 48-byte Folded Reload
	scratch_load_b128 v[64:67], off, off offset:224
	scratch_load_b128 v[68:71], off, off offset:240
	scratch_load_b128 v[4:7], off, off offset:480
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v56.l, v0.h
	v_mov_b16_e32 v51.l, v0.l
	v_mov_b16_e32 v55.l, v1.l
	v_mov_b16_e32 v57.l, v1.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v40.l, v4.h
	v_mov_b16_e32 v41.l, v5.h
	v_mov_b16_e32 v50.l, v4.l
	v_mov_b16_e32 v54.l, v5.l
	v_mov_b32_e32 v53, v56
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v56, v41
	v_mov_b16_e32 v40.h, v30.l
	v_mov_b16_e32 v41.h, v46.l
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[50:57], v[160:167], v[64:71]
	v_mov_b16_e32 v52.l, v6.l
	v_mov_b16_e32 v52.h, v42.l
	v_mov_b16_e32 v42.l, v6.h
	v_mov_b16_e32 v56.l, v7.l
	v_mov_b16_e32 v56.h, v43.l
	v_mov_b16_e32 v43.l, v7.h
	v_mov_b16_e32 v53.l, v2.l
	v_mov_b16_e32 v53.h, v58.l
	v_mov_b16_e32 v58.l, v2.h
	v_mov_b16_e32 v57.l, v3.l
	v_mov_b16_e32 v57.h, v59.l
	v_mov_b16_e32 v59.l, v3.h
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[4:7], off, off offset:448
	scratch_load_b128 v[0:3], off, off offset:464
	v_mov_b32_e32 v54, v42
	v_dual_mov_b32 v55, v58 :: v_dual_mov_b32 v58, v43
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[52:59], v[168:175], v[64:71]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[56:59], off, off offset:192
	scratch_load_b128 v[60:63], off, off offset:208
	v_mov_b32_e32 v55, v83
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v30.l, v4.h
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v46.l, v0.h
	v_mov_b16_e32 v31.l, v5.h
	v_mov_b16_e32 v40.l, v4.l
	v_mov_b16_e32 v41.l, v0.l
	v_mov_b16_e32 v44.l, v5.l
	v_mov_b16_e32 v45.l, v1.l
	v_mov_b16_e32 v47.l, v1.h
	v_mov_b32_e32 v42, v30
	v_dual_mov_b32 v43, v46 :: v_dual_mov_b32 v46, v31
	v_mov_b16_e32 v30.h, v101.l
	v_mov_b16_e32 v31.h, v36.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[56:63], v[40:47], v[160:167], v[56:63]
	v_mov_b16_e32 v42.h, v32.l
	v_mov_b16_e32 v32.l, v6.h
	v_mov_b16_e32 v46.h, v33.l
	v_mov_b16_e32 v33.l, v7.h
	v_mov_b16_e32 v43.h, v48.l
	v_mov_b16_e32 v48.l, v2.h
	v_mov_b16_e32 v42.l, v6.l
	v_mov_b16_e32 v46.l, v7.l
	v_mov_b16_e32 v43.l, v2.l
	v_mov_b16_e32 v47.l, v3.l
	v_mov_b16_e32 v47.h, v49.l
	v_mov_b16_e32 v49.l, v3.h
	v_mov_b32_e32 v44, v32
	v_dual_mov_b32 v45, v48 :: v_dual_mov_b32 v48, v33
	scratch_load_b128 v[0:3], off, off offset:432 ; 16-byte Folded Reload
	v_wmma_f32_16x16x16_bf16 v[56:63], v[42:49], v[168:175], v[56:63]
	s_clause 0x2                            ; 48-byte Folded Reload
	scratch_load_b128 v[41:44], off, off offset:160
	scratch_load_b128 v[45:48], off, off offset:176
	scratch_load_b128 v[4:7], off, off offset:416
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v36.l, v0.h
	v_mov_b16_e32 v31.l, v0.l
	v_mov_b16_e32 v35.l, v1.l
	v_mov_b16_e32 v37.l, v1.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v101.l, v4.h
	v_mov_b16_e32 v102.l, v5.h
	v_mov_b16_e32 v30.l, v4.l
	v_mov_b16_e32 v34.l, v5.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v33, v36 :: v_dual_mov_b32 v32, v101
	v_mov_b32_e32 v36, v102
	v_mov_b16_e64 v101.h, v228.l
	v_mov_b16_e32 v102.h, v107.l
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[30:37], v[160:167], v[41:48]
	v_mov_b16_e32 v32.h, v103.l
	v_mov_b16_e32 v103.l, v6.h
	v_mov_b16_e32 v36.h, v104.l
	v_mov_b16_e32 v104.l, v7.h
	v_mov_b16_e32 v33.h, v38.l
	v_mov_b16_e32 v38.l, v2.h
	v_mov_b16_e32 v32.l, v6.l
	v_mov_b16_e32 v36.l, v7.l
	v_mov_b16_e32 v33.l, v2.l
	v_mov_b16_e32 v37.l, v3.l
	v_mov_b16_e32 v37.h, v39.l
	v_mov_b16_e32 v39.l, v3.h
	v_dual_mov_b32 v34, v103 :: v_dual_mov_b32 v35, v38
	v_mov_b32_e32 v38, v104
	scratch_load_b128 v[0:3], off, off offset:400 ; 16-byte Folded Reload
	v_wmma_f32_16x16x16_bf16 v[41:48], v[32:39], v[168:175], v[41:48]
	s_clause 0x2                            ; 48-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:128
	scratch_load_b128 v[37:40], off, off offset:144
	scratch_load_b128 v[4:7], off, off offset:384
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v194.l, v0.h
	v_mov_b16_e64 v189.l, v0.l
	v_mov_b16_e64 v193.l, v1.l
	v_mov_b16_e64 v195.l, v1.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v89.l, v4.h
	v_mov_b16_e32 v90.l, v5.h
	v_mov_b16_e64 v188.l, v4.l
	v_mov_b16_e64 v192.l, v5.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v191, v194 :: v_dual_mov_b32 v190, v89
	v_mov_b32_e32 v194, v90
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[188:195], v[160:167], v[33:40]
	v_mov_b16_e64 v190.l, v6.l
	v_mov_b16_e64 v190.h, v91.l
	v_mov_b16_e32 v91.l, v6.h
	v_mov_b16_e64 v194.l, v7.l
	v_mov_b16_e64 v194.h, v92.l
	v_mov_b16_e32 v92.l, v7.h
	v_mov_b16_e64 v191.l, v2.l
	v_mov_b16_e64 v191.h, v196.l
	v_mov_b16_e64 v196.l, v2.h
	v_mov_b16_e64 v195.l, v3.l
	v_mov_b16_e64 v195.h, v197.l
	v_mov_b16_e64 v197.l, v3.h
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[25:28], off, off offset:96
	scratch_load_b128 v[29:32], off, off offset:112
	scratch_load_b128 v[4:7], off, off offset:352
	scratch_load_b128 v[0:3], off, off offset:368
	v_dual_mov_b32 v192, v91 :: v_dual_mov_b32 v193, v196
	v_mov_b32_e32 v196, v92
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[190:197], v[168:175], v[33:40]
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v228.l, v4.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v107.l, v0.h
	v_mov_b16_e64 v229.l, v5.h
	v_mov_b16_e32 v101.l, v4.l
	v_mov_b16_e32 v102.l, v0.l
	v_mov_b16_e32 v105.l, v5.l
	v_mov_b16_e32 v106.l, v1.l
	v_mov_b16_e32 v108.l, v1.h
	v_dual_mov_b32 v103, v228 :: v_dual_mov_b32 v104, v107
	v_mov_b32_e32 v107, v229
	v_mov_b16_e64 v228.h, v198.l
	v_mov_b16_e64 v229.h, v234.l
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[101:108], v[160:167], v[25:32]
	v_mov_b16_e32 v103.l, v6.l
	v_mov_b16_e64 v103.h, v230.l
	v_mov_b16_e64 v230.l, v6.h
	v_mov_b16_e32 v107.l, v7.l
	v_mov_b16_e64 v107.h, v231.l
	v_mov_b16_e64 v231.l, v7.h
	v_mov_b16_e32 v104.l, v2.l
	v_mov_b16_e32 v104.h, v109.l
	v_mov_b16_e32 v109.l, v2.h
	v_mov_b16_e32 v108.l, v3.l
	v_mov_b16_e32 v108.h, v110.l
	v_mov_b16_e32 v110.l, v3.h
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[17:20], off, off offset:64
	scratch_load_b128 v[21:24], off, off offset:80
	scratch_load_b128 v[4:7], off, off offset:320
	scratch_load_b128 v[0:3], off, off offset:336
	v_dual_mov_b32 v105, v230 :: v_dual_mov_b32 v106, v109
	v_mov_b32_e32 v109, v231
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[103:110], v[168:175], v[25:32]
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v198.l, v4.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v234.l, v0.h
	v_mov_b16_e64 v199.l, v5.h
	v_mov_b16_e64 v228.l, v4.l
	v_mov_b16_e64 v229.l, v0.l
	v_mov_b16_e64 v232.l, v5.l
	v_mov_b16_e64 v233.l, v1.l
	v_mov_b16_e64 v235.l, v1.h
	v_mov_b32_e32 v230, v198
	v_dual_mov_b32 v231, v234 :: v_dual_mov_b32 v234, v199
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[228:235], v[160:167], v[17:24]
	v_mov_b16_e64 v230.h, v200.l
	v_mov_b16_e64 v200.l, v6.h
	v_mov_b16_e64 v234.h, v201.l
	v_mov_b16_e64 v201.l, v7.h
	v_mov_b16_e64 v231.h, v236.l
	v_mov_b16_e64 v236.l, v2.h
	v_mov_b16_e64 v230.l, v6.l
	v_mov_b16_e64 v234.l, v7.l
	v_mov_b16_e64 v231.l, v2.l
	v_mov_b16_e64 v235.l, v3.l
	v_mov_b16_e64 v235.h, v237.l
	v_mov_b16_e64 v237.l, v3.h
	v_mov_b32_e32 v232, v200
	v_dual_mov_b32 v233, v236 :: v_dual_mov_b32 v236, v201
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[230:237], v[168:175], v[17:24]
	s_cbranch_scc1 .LBB0_10
; %bb.11:                               ; %Flow
	.loc	1 0 31 is_stmt 0                ; attention_backward.py:0:31
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v163, off, off offset:1488
	scratch_load_b32 v156, off, off offset:1492
	scratch_load_b32 v157, off, off offset:1496
	scratch_load_b32 v158, off, off offset:1500
	scratch_load_b32 v159, off, off offset:1504
	scratch_load_b32 v164, off, off offset:1508
	scratch_load_b32 v165, off, off offset:1512
	scratch_load_b32 v166, off, off offset:1516
.LBB0_12:                               ; %._crit_edge71
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	scratch_load_b32 v6, off, off offset:1484 ; 4-byte Folded Reload
	.loc	1 161 44                        ; attention_backward.py:161:44
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v0, 0xe0, v163
	v_cmp_gt_i32_e64 s7, s46, v163
	v_or_b32_e32 v1, 0xc0, v163
	v_or_b32_e32 v2, 0xa0, v163
	v_or_b32_e32 v3, 0x80, v163
	v_cmp_gt_i32_e32 vcc_lo, s46, v0
	v_or_b32_e32 v4, 0x60, v163
	v_or_b32_e32 v5, 64, v163
	v_or_b32_e32 v7, 32, v163
	.loc	1 161 22 is_stmt 0              ; attention_backward.py:161:22
	s_and_b32 s7, s0, s7
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s1, s46, v1
	v_cmp_gt_i32_e64 s2, s46, v2
	v_cmp_gt_i32_e64 s3, s46, v3
	v_cmp_gt_i32_e64 s4, s46, v4
	v_cmp_gt_i32_e64 s5, s46, v5
	v_cmp_gt_i32_e64 s6, s46, v7
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s4, s0, s4
	s_and_b32 s5, s0, s5
	s_and_b32 s6, s0, s6
	s_and_b32 s3, s0, s3
	s_and_b32 s2, s0, s2
	s_and_b32 s1, s0, s1
	.loc	1 401 13                        ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v6, s46, v6
	s_mov_b32 s46, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v8, v6, v163
	v_add_nc_u32_e32 v9, v6, v156
	v_add_nc_u32_e32 v0, v6, v0
	v_add_nc_u32_e32 v10, v6, v157
	v_add_nc_u32_e32 v12, v6, v159
	v_add_lshl_u32 v8, v8, s57, 2
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v9, v9, s57, 2
	v_add_lshl_u32 v0, v0, s57, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v11, v6, v158
	v_add_nc_u32_e32 v13, v6, v164
	v_add_nc_u32_e32 v14, v6, v165
	v_add_nc_u32_e32 v15, v6, v166
	v_add_nc_u32_e32 v7, v6, v7
	v_add_nc_u32_e32 v5, v6, v5
	v_add_nc_u32_e32 v4, v6, v4
	v_add_nc_u32_e32 v3, v6, v3
	v_add_nc_u32_e32 v2, v6, v2
	v_add_nc_u32_e32 v1, v6, v1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v10, s57, 2
	v_cndmask_b32_e64 v16, 0x80000000, v8, s7
	v_cndmask_b32_e64 v9, 0x80000000, v9, s7
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add_lshl_u32 v10, v11, s57, 2
	v_add_lshl_u32 v11, v12, s57, 2
	v_add_lshl_u32 v12, v13, s57, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s7
	s_clause 0x1
	buffer_store_b32 v93, v16, s[44:47], 0 offen
	buffer_store_b32 v94, v9, s[44:47], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v10, s7
	v_cndmask_b32_e64 v10, 0x80000000, v11, s7
	v_cndmask_b32_e64 v11, 0x80000000, v12, s7
	buffer_store_b32 v95, v6, s[44:47], 0 offen
	v_add_lshl_u32 v6, v14, s57, 2
	s_clause 0x2
	buffer_store_b32 v96, v9, s[44:47], 0 offen
	buffer_store_b32 v97, v10, s[44:47], 0 offen
	buffer_store_b32 v98, v11, s[44:47], 0 offen
	v_add_lshl_u32 v9, v15, s57, 2
	v_add_lshl_u32 v7, v7, s57, 2
	v_add_nc_u32_e32 v10, 0x88, v8
	v_add_nc_u32_e32 v11, 0x90, v8
	v_cndmask_b32_e64 v6, 0x80000000, v6, s7
	v_cndmask_b32_e64 v9, 0x80000000, v9, s7
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	s_clause 0x4
	buffer_store_b32 v99, v6, s[44:47], 0 offen
	buffer_store_b32 v100, v9, s[44:47], 0 offen
	buffer_store_b32 v72, v7, s[44:47], 0 offen
	buffer_store_b32 v73, v10, s[44:47], 0 offen
	buffer_store_b32 v74, v11, s[44:47], 0 offen
	v_add_nc_u32_e32 v6, 0x98, v8
	v_add_nc_u32_e32 v7, 0xa0, v8
	v_add_nc_u32_e32 v9, 0xa8, v8
	v_add_nc_u32_e32 v10, 0xb0, v8
	v_add_nc_u32_e32 v11, 0xb8, v8
	v_cndmask_b32_e64 v6, 0x80000000, v6, s6
	v_cndmask_b32_e64 v7, 0x80000000, v7, s6
	v_cndmask_b32_e64 v9, 0x80000000, v9, s6
	v_cndmask_b32_e64 v10, 0x80000000, v10, s6
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	v_add_lshl_u32 v5, v5, s57, 2
	s_clause 0x4
	buffer_store_b32 v75, v6, s[44:47], 0 offen
	buffer_store_b32 v76, v7, s[44:47], 0 offen
	buffer_store_b32 v77, v9, s[44:47], 0 offen
	buffer_store_b32 v78, v10, s[44:47], 0 offen
	buffer_store_b32 v79, v11, s[44:47], 0 offen
	v_add_nc_u32_e32 v6, 0x108, v8
	v_add_nc_u32_e32 v7, 0x110, v8
	v_add_nc_u32_e32 v9, 0x118, v8
	v_cndmask_b32_e64 v5, 0x80000000, v5, s5
	v_add_nc_u32_e32 v10, 0x120, v8
	v_cndmask_b32_e64 v6, 0x80000000, v6, s5
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	s_clause 0x2
	buffer_store_b32 v64, v5, s[44:47], 0 offen
	buffer_store_b32 v65, v6, s[44:47], 0 offen
	buffer_store_b32 v66, v7, s[44:47], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v10, s5
	v_add_nc_u32_e32 v6, 0x128, v8
	v_add_nc_u32_e32 v7, 0x130, v8
	buffer_store_b32 v67, v9, s[44:47], 0 offen
	v_add_nc_u32_e32 v9, 0x138, v8
	buffer_store_b32 v68, v5, s[44:47], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v6, s5
	v_add_lshl_u32 v4, v4, s57, 2
	v_cndmask_b32_e64 v6, 0x80000000, v7, s5
	v_cndmask_b32_e64 v7, 0x80000000, v9, s5
	v_add_nc_u32_e32 v9, 0x1a8, v8
	buffer_store_b32 v69, v5, s[44:47], 0 offen
	v_add_nc_u32_e32 v5, 0x188, v8
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_clause 0x2
	buffer_store_b32 v70, v6, s[44:47], 0 offen
	buffer_store_b32 v71, v7, s[44:47], 0 offen
	buffer_store_b32 v56, v4, s[44:47], 0 offen
	v_add_nc_u32_e32 v4, 0x190, v8
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_add_nc_u32_e32 v6, 0x198, v8
	v_add_nc_u32_e32 v7, 0x1a0, v8
	v_add_lshl_u32 v3, v3, s57, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	buffer_store_b32 v57, v5, s[44:47], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v6, s4
	v_cndmask_b32_e64 v6, 0x80000000, v7, s4
	v_cndmask_b32_e64 v7, 0x80000000, v9, s4
	buffer_store_b32 v58, v4, s[44:47], 0 offen
	v_add_nc_u32_e32 v4, 0x1b0, v8
	s_clause 0x2
	buffer_store_b32 v59, v5, s[44:47], 0 offen
	buffer_store_b32 v60, v6, s[44:47], 0 offen
	buffer_store_b32 v61, v7, s[44:47], 0 offen
	v_add_nc_u32_e32 v5, 0x1b8, v8
	v_add_nc_u32_e32 v6, 0x208, v8
	v_add_nc_u32_e32 v7, 0x210, v8
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	s_clause 0x4
	buffer_store_b32 v62, v4, s[44:47], 0 offen
	buffer_store_b32 v63, v5, s[44:47], 0 offen
	buffer_store_b32 v41, v3, s[44:47], 0 offen
	buffer_store_b32 v42, v6, s[44:47], 0 offen
	buffer_store_b32 v43, v7, s[44:47], 0 offen
	v_add_nc_u32_e32 v3, 0x218, v8
	v_add_nc_u32_e32 v4, 0x220, v8
	v_add_nc_u32_e32 v5, 0x228, v8
	v_add_nc_u32_e32 v6, 0x230, v8
	v_add_nc_u32_e32 v7, 0x238, v8
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_add_lshl_u32 v2, v2, s57, 2
	s_clause 0x4
	buffer_store_b32 v44, v3, s[44:47], 0 offen
	buffer_store_b32 v45, v4, s[44:47], 0 offen
	buffer_store_b32 v46, v5, s[44:47], 0 offen
	buffer_store_b32 v47, v6, s[44:47], 0 offen
	buffer_store_b32 v48, v7, s[44:47], 0 offen
	v_add_nc_u32_e32 v3, 0x288, v8
	v_add_nc_u32_e32 v4, 0x290, v8
	v_add_nc_u32_e32 v5, 0x298, v8
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_add_nc_u32_e32 v6, 0x2a0, v8
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x2
	buffer_store_b32 v33, v2, s[44:47], 0 offen
	buffer_store_b32 v34, v3, s[44:47], 0 offen
	buffer_store_b32 v35, v4, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v6, s2
	v_add_nc_u32_e32 v3, 0x2a8, v8
	v_add_nc_u32_e32 v4, 0x2b0, v8
	buffer_store_b32 v36, v5, s[44:47], 0 offen
	v_add_nc_u32_e32 v5, 0x2b8, v8
	buffer_store_b32 v37, v2, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	v_add_lshl_u32 v1, v1, s57, 2
	v_cndmask_b32_e64 v3, 0x80000000, v4, s2
	v_cndmask_b32_e64 v4, 0x80000000, v5, s2
	v_add_nc_u32_e32 v5, 0x328, v8
	buffer_store_b32 v38, v2, s[44:47], 0 offen
	v_add_nc_u32_e32 v2, 0x308, v8
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	s_clause 0x2
	buffer_store_b32 v39, v3, s[44:47], 0 offen
	buffer_store_b32 v40, v4, s[44:47], 0 offen
	buffer_store_b32 v25, v1, s[44:47], 0 offen
	v_add_nc_u32_e32 v1, 0x310, v8
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_add_nc_u32_e32 v3, 0x318, v8
	v_add_nc_u32_e32 v4, 0x320, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	buffer_store_b32 v26, v2, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v3, s1
	v_cndmask_b32_e64 v3, 0x80000000, v4, s1
	v_cndmask_b32_e64 v4, 0x80000000, v5, s1
	buffer_store_b32 v27, v1, s[44:47], 0 offen
	v_add_nc_u32_e32 v1, 0x330, v8
	s_clause 0x2
	buffer_store_b32 v28, v2, s[44:47], 0 offen
	buffer_store_b32 v29, v3, s[44:47], 0 offen
	buffer_store_b32 v30, v4, s[44:47], 0 offen
	v_add_nc_u32_e32 v2, 0x338, v8
	v_add_nc_u32_e32 v3, 0x388, v8
	v_add_nc_u32_e32 v4, 0x390, v8
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_clause 0x4
	buffer_store_b32 v31, v1, s[44:47], 0 offen
	buffer_store_b32 v32, v2, s[44:47], 0 offen
	buffer_store_b32 v17, v0, s[44:47], 0 offen
	buffer_store_b32 v18, v3, s[44:47], 0 offen
	buffer_store_b32 v19, v4, s[44:47], 0 offen
	v_add_nc_u32_e32 v0, 0x398, v8
	v_add_nc_u32_e32 v1, 0x3a0, v8
	v_add_nc_u32_e32 v2, 0x3a8, v8
	v_add_nc_u32_e32 v3, 0x3b0, v8
	v_add_nc_u32_e32 v4, 0x3b8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v20, v0, s[44:47], 0 offen
	buffer_store_b32 v21, v1, s[44:47], 0 offen
	buffer_store_b32 v22, v2, s[44:47], 0 offen
	buffer_store_b32 v23, v3, s[44:47], 0 offen
	buffer_store_b32 v24, v4, s[44:47], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp90:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1524
		.amdhsa_kernarg_size 176
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 62
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 62
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 1524
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18104
; TotalNumSgprs: 64
; NumVgprs: 256
; ScratchSize: 1524
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x87 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x61 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	176                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention_backward.py"         ; string offset=7 ; attention_backward.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=29 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .offset:         144
        .size:           1
        .value_kind:     by_value
      - .offset:         145
        .size:           1
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 176
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 1524
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_local_outbfloat16_doutbfloat16_float32_d192_dv128_hq128_hkv128_lq2048_lk2048_dqm32_dqn32_dqw4_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 396
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
