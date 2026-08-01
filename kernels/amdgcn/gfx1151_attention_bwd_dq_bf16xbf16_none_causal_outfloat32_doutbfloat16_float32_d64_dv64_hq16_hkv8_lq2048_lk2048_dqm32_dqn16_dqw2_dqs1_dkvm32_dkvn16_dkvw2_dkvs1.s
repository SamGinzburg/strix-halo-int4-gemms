	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x74
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_and_b32_e32 v97, 7, v0
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x0
	s_load_b64 s[28:29], s[0:1], 0x10
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s27, s2, 5
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_lshl_b32 s30, s3, 11
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s27, v1
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshlrev_b32_e32 v21, 3, v97
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s5, s27, s30
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v2
	s_clause 0x3
	s_load_b256 s[8:15], s[0:1], 0x38
	s_load_b32 s26, s[0:1], 0x7c
	s_load_b64 s[24:25], s[0:1], 0x58
	s_load_b32 s1, s[0:1], 0x9c
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s0, s3, 31
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_mov_b16_e32 v83.l, 0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s0, s0, 28
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v129, v0, 4, 1
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s34, v1
	s_mul_i32 s33, s34, s5
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s34, v21
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_lshl_b32 s4, s34, 3
	s_lshl_b32 s6, s34, 4
	s_mul_i32 s7, s34, 24
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s20, s16
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add3_u32 v2, v3, v21, s33
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s5, s35, s5
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s0, s3, s0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s5, v21
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v84.l, v83.l
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v3, 1, v2
	v_add_lshl_u32 v4, v2, s4, 1
	v_add_lshl_u32 v5, v2, s6, 1
	v_add_lshl_u32 v2, v2, s7, 1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_or_b32_e32 v23, 4, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	v_cndmask_b32_e64 v6, 0x80000000, v4, s4
	v_cndmask_b32_e64 v10, 0x80000000, v5, s4
	v_cndmask_b32_e64 v14, 0x80000000, v2, s4
	s_clause 0x3
	buffer_load_b128 v[2:5], v3, s[20:23], 0 offen
	buffer_load_b128 v[6:9], v6, s[20:23], 0 offen
	buffer_load_b128 v[10:13], v10, s[20:23], 0 offen
	buffer_load_b128 v[14:17], v14, s[20:23], 0 offen
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s4, s35, v21
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v85.l, v83.l
	v_mov_b16_e32 v86.l, v83.l
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v18, 56, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v19, 4, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v91.l, v83.l
	v_mov_b16_e32 v92.l, v83.l
	v_mov_b16_e32 v93.l, v83.l
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v73, 1, v18
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v18, s35, v1
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v94.l, v83.l
	v_mov_b16_e32 v89.l, v83.l
	v_mov_b16_e32 v90.l, v83.l
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v19, v19, v73
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v87.l, v83.l
	v_mov_b16_e32 v88.l, v83.l
	v_mov_b16_e32 v95.l, v83.l
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v24, s35, 3, v18
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v130, 0, v19
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[19:20], null, s35, 24, v[18:19]
	v_lshl_add_u32 v25, s35, 4, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v20, v24, v21, s5
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v24, v23, v24, 2
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v96.l, v83.l
	v_mov_b16_e32 v109.l, v83.l
	v_mov_b16_e32 v110.l, v83.l
	s_mov_b32 s16, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v26, v18, v21, s5
	v_add_nc_u32_e32 v21, v22, v25
	v_add_nc_u32_e32 v22, v22, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v18, v23, v18, 2
	v_add_lshl_u32 v25, v23, v25, 2
	v_lshlrev_b32_e32 v27, 2, v26
	v_add_lshl_u32 v19, v23, v19, 2
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v26, 1, v26
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v29, 2, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v23, 0x80000000, v27
	v_lshlrev_b32_e32 v27, 2, v20
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_lshlrev_b32 v28, 2, v21
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s5, s0, 0xfff0
	.loc	1 228 28                        ; attention_backward.py:228:28
	s_lshl_b32 s0, s0, 10
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s5
	.loc	1 228 28                        ; attention_backward.py:228:28
	s_and_b32 s0, s0, 0xffffc000
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s5, s3, 0x10007
	s_mov_b64 s[36:37], s[14:15]
	s_add_i32 s3, s3, s5
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_add_i32 s5, s27, s1
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s3, s3
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_add_i32 s5, s5, 32
	.loc	1 228 28                        ; attention_backward.py:228:28
	s_lshl_b32 s3, s3, 10
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(3)
	ds_store_b128 v130, v[2:5]
	s_waitcnt vmcnt(2)
	ds_store_b128 v130, v[6:9] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v130, v[10:13] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v130, v[14:17] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x7
	buffer_load_b128 v[33:36], v23, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v18, s[20:23], 0 offen
	buffer_load_b128 v[41:44], v27, s[20:23], 0 offen
	buffer_load_b128 v[45:48], v24, s[20:23], 0 offen
	buffer_load_b128 v[49:52], v28, s[20:23], 0 offen
	buffer_load_b128 v[53:56], v25, s[20:23], 0 offen
	buffer_load_b128 v[57:60], v29, s[20:23], 0 offen
	buffer_load_b128 v[61:64], v19, s[20:23], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
	v_cndmask_b32_e32 v2, 0x80000000, v20, vcc_lo
	buffer_load_b128 v[65:68], v26, s[20:23], 0 offen
	.loc	1 228 28                        ; attention_backward.py:228:28
	s_and_b32 s3, s3, 0xfffff800
	.loc	1 235 27                        ; attention_backward.py:235:27
	s_mul_f32 s10, s26, 0x3fb8aa3b
	v_add3_u32 v107, s0, s3, v1
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[69:72], v2, s[20:23], 0 offen
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s0, s5, 0x800
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s3, s0, 15
	v_mul_lo_u32 v108, s34, v107
	.loc	1 190 34 is_stmt 0              ; attention_backward.py:190:34
	s_ashr_i32 s6, s3, 31
	.loc	1 171 28 is_stmt 1              ; attention_backward.py:171:28
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v120, 0xffff0000, v66
	v_lshlrev_b32_e32 v3, 1, v21
	v_and_b32_e32 v122, 0xffff0000, v68
	v_mov_b16_e32 v83.h, v68.l
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v124, 0xffff0000, v70
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v36, v36, v120
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_and_b32_e32 v119, 0xffff0000, v65
	v_mov_b16_e32 v84.h, v67.l
	v_mov_b16_e32 v85.h, v66.l
	v_mov_b16_e32 v86.h, v65.l
	buffer_load_b128 v[75:78], v2, s[20:23], 0 offen
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v40, v40, v122
	v_mul_f32_e32 v44, v44, v124
	v_mul_f32_e32 v34, v34, v119
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v36, v35, v85
.Ltmp2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v89.h, v70.l
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v40, v39, v83
.Ltmp4:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v90.h, v69.l
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v34, v33, v86
.Ltmp6:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v87.h, v72.l
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v44, v43, v89
.Ltmp8:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v88.h, v71.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v33, v34, v36
.Ltmp10:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v128, 0xffff0000, v76
	v_and_b32_e32 v121, 0xffff0000, v67
	v_and_b32_e32 v127, 0xffff0000, v75
	v_and_b32_e32 v134, 0xffff0000, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v52, v52, v128 :: v_dual_and_b32 v135, 0xffff0000, v77
	v_dual_mul_f32 v38, v38, v121 :: v_dual_lshlrev_b32 v3, 1, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v50, v50, v127 :: v_dual_and_b32 v123, 0xffff0000, v69
	v_dual_mul_f32 v56, v56, v134 :: v_dual_and_b32 v125, 0xffff0000, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_mov_b16_e32 v91.h, v78.l
	v_mov_b16_e32 v93.h, v76.l
	v_mov_b16_e32 v94.h, v75.l
	v_mov_b16_e32 v92.h, v77.l
	buffer_load_b128 v[79:82], v2, s[20:23], 0 offen
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v54, v54, v135 :: v_dual_and_b32 v99, 32, v0
	v_mul_f32_e32 v42, v42, v123
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v38, v37, v84
	v_fmac_f32_e32 v50, v49, v94
	v_fmac_f32_e32 v52, v51, v93
	v_fmac_f32_e32 v54, v53, v92
	v_fmac_f32_e32 v56, v55, v91
.Ltmp12:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v99
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v38, v40
	v_dual_add_f32 v37, v50, v52 :: v_dual_fmac_f32 v42, v41, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v38, v54, v56
.Ltmp14:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v74, 15, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v98, 4, v97
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v46, v46, v125
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v35, v42, v44
	v_add_f32_e32 v43, v37, v38
.Ltmp16:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v131, v2, v74
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v132, v74, 7, v98
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v41, v33, v34 :: v_dual_and_b32 v126, 0xffff0000, v72
	v_fmac_f32_e32 v46, v45, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s27, v131
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v2, v99, 6, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v48, v48, v126 :: v_dual_mov_b32 v45, v41
	v_xor_b32_e32 v100, 16, v132
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v133, s1, v3
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v48, v47, v87 :: v_dual_add_nc_u32 v111, 0, v2
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v47, v43
.Ltmp21:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xad_u32 v112, v2, 16, 0
	v_xad_u32 v113, v2, 32, 0
	v_xad_u32 v114, v2, 48, 0
	v_xad_u32 v115, v2, 64, 0
	v_xad_u32 v116, 0x50, v2, 0
	v_xad_u32 v117, 0x60, v2, 0
	v_xad_u32 v118, 0x70, v2, 0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v3
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[1:4], v111
	ds_load_b128 v[5:8], v112
	ds_load_b128 v[9:12], v113
	ds_load_b128 v[13:16], v114
	ds_load_b128 v[17:20], v115
	ds_load_b128 v[21:24], v116
	ds_load_b128 v[25:28], v117
	ds_load_b128 v[29:32], v118
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v130, v[65:68]
	ds_store_b128 v130, v[69:72] offset:1024
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v47, v47 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_store_b128 v130, v[75:78] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v130, v[79:82] offset:3072
	v_and_b32_e32 v67, 0xffff0000, v81
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v45, v45 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v95.h, v82.l
	v_mov_b16_e32 v96.h, v81.l
	v_mov_b16_e32 v109.h, v80.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v62, v62, v67
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v67, v43, v47 :: v_dual_and_b32 v68, 0xffff0000, v82
.Ltmp27:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v110.h, v79.l
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v46, v48
.Ltmp29:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v71, v67
.Ltmp31:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v64, v64, v68 :: v_dual_and_b32 v65, 0xffff0000, v79
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v42, v35, v36
.Ltmp33:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_barrier
	ds_load_b128 v[49:52], v115
	ds_load_b128 v[53:56], v116
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v58, v58, v65
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v65, v41, v45 :: v_dual_and_b32 v66, 0xffff0000, v80
	v_fmac_f32_e32 v64, v63, v95
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v58, v57, v110
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v69, v65 :: v_dual_mul_f32 v60, v60, v66
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v46, v46 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_lshr_b32 s1, s6, 28
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v60, v59, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v77, v67, v71 :: v_dual_add_f32 v66, v42, v46
.Ltmp41:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_add_i32 s3, s3, s1
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v75, v65, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v39, v58, v60
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v81, v77 :: v_dual_mov_b32 v70, v66
	v_xor_b32_e32 v101, 32, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v79, v75 :: v_dual_fmac_f32 v62, v61, v96
	v_xor_b32_e32 v102, 48, v132
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_xor_b32_e32 v103, 64, v132
	v_xor_b32_e32 v104, 0x50, v132
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v40, v62, v64
.Ltmp45:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[57:60], v117
	ds_load_b128 v[61:64], v118
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v76, v66, v70
	v_xor_b32_e32 v105, 0x60, v132
	v_xor_b32_e32 v106, 0x70, v132
	v_add_f32_e32 v44, v39, v40
.Ltmp47:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[33:36], v111
	ds_load_b128 v[37:40], v112
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v80, v76
.Ltmp49:
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s11, s3, -16
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v48, v44
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_add_nc_u32_e32 v109, 8, v107
.Ltmp51:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_gt_i32 s5, 0
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v48, v48 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s5, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v68, v44, v48
.Ltmp55:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[41:44], v113
	ds_load_b128 v[45:48], v114
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v72, v68
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v78, v68, v72
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v82, v78
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_mul_lo_u32 v67, s34, v109
	v_lshl_add_u32 v84, v108, 1, v98
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_mov_b32 v65, 0
	v_add_nc_u32_e32 v85, 0, v100
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v86, 0, v101
	v_add_nc_u32_e32 v87, 0, v102
	v_lshl_add_u32 v88, v67, 1, v98
	v_add_nc_u32_e32 v89, 0, v103
	v_add_nc_u32_e32 v90, 0, v104
	v_add_nc_u32_e32 v91, 0, v105
	v_add_nc_u32_e32 v92, 0, v106
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	s_lshl_b32 s14, s34, 5
	s_mov_b32 s15, 0x76543210
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v67, 0x80000000, v84, s2
	v_cndmask_b32_e64 v68, 0x80000000, v88, s2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_add_nc_u32_e32 v122, s16, v129
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v72, v65
	v_dual_mov_b32 v126, v66 :: v_dual_add_nc_u32 v123, 0, v132
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x1
	buffer_load_b128 v[93:96], v67, s[20:23], 0 offen
	buffer_load_b128 v[118:121], v68, s[20:23], 0 offen
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v67, v65
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v125, 4, v122
	v_dual_mov_b32 v68, v65 :: v_dual_add_nc_u32 v127, 6, v122
	v_dual_mov_b32 v69, v65 :: v_dual_add_nc_u32 v124, 2, v122
	v_dual_mov_b32 v70, v65 :: v_dual_add_nc_u32 v135, 12, v122
	v_dual_mov_b32 v71, v65 :: v_dual_add_nc_u32 v128, 8, v122
	v_dual_mov_b32 v117, v72 :: v_dual_add_nc_u32 v134, 10, v122
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v115, v70 :: v_dual_add_nc_u32 v136, 14, v122
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v122, v133
	v_cmp_le_i32_e64 s1, v124, v133
	v_cmp_le_i32_e64 s3, v125, v133
	v_cmp_le_i32_e64 s7, v134, v133
	v_cmp_le_i32_e64 s8, v135, v133
	v_cmp_le_i32_e64 s9, v136, v133
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v116, v71 :: v_dual_mov_b32 v113, v68
	v_dual_mov_b32 v114, v69 :: v_dual_mov_b32 v111, v66
	v_mov_b32_e32 v112, v67
	v_mov_b32_e32 v110, v65
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s5, v127, v133
	v_cmp_le_i32_e64 s6, v128, v133
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s1, s0, s1
	s_and_b32 s3, s0, s3
	s_and_b32 s7, s0, s7
	s_and_b32 s5, s0, s5
	s_and_b32 s6, s0, s6
	s_and_b32 s8, s0, s8
	s_and_b32 s9, s0, s9
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	v_add_nc_u32_e32 v88, s14, v88
	v_add_nc_u32_e32 v84, s14, v84
	s_add_i32 s16, s16, 16
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(1)
	ds_store_b128 v130, v[93:96]
	s_waitcnt vmcnt(0)
	ds_store_b128 v130, v[118:121] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[118:121], v123
	ds_load_b128 v[122:125], v85
	ds_load_b128 v[134:137], v86
	ds_load_b128 v[138:141], v87
	ds_load_b128 v[142:145], v89
	ds_load_b128 v[146:149], v90
	ds_load_b128 v[150:153], v91
	ds_load_b128 v[154:157], v92
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s16, s11
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[110:117], v[118:125], v[1:8], v[110:117]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[110:117], v[134:141], v[9:16], v[110:117]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[110:117], v[142:149], v[17:24], v[110:117]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[110:117], v[150:157], v[25:32], v[110:117]
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v67, s10, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v69, s10, v113 :: v_dual_mul_f32 v66, s10, v110
	v_dual_mul_f32 v93, s10, v117 :: v_dual_mul_f32 v70, s10, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v71, s10, v115
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v67, 0xff800000, v67, s1
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v68, s10, v112
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v69, 0xff800000, v69, s5
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v72, s10, v116
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e32 v94, 0xff800000, v66, vcc_lo
	v_cndmask_b32_e64 v70, 0xff800000, v70, s6
	v_cndmask_b32_e64 v68, 0xff800000, v68, s3
	v_cndmask_b32_e64 v71, 0xff800000, v71, s7
	v_cndmask_b32_e64 v72, 0xff800000, v72, s8
	v_cndmask_b32_e64 v93, 0xff800000, v93, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v66, v94, v67, v68
	v_max3_f32 v95, v69, v70, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v96, v72, v93
	v_max3_f32 v66, v66, v95, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v95, v66, s15, 0xfedcba98 op_sel:[1,0]
.Ltmp62:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v66, v126, v66, v95
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v68, v68, v66
	v_sub_f32_e32 v69, v69, v66
	v_sub_f32_e32 v70, v70, v66
	v_sub_f32_e32 v71, v71, v66
	v_sub_f32_e32 v67, v67, v66
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v72, v72, v66
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v72, v72
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v68, 0, v68, s3
	v_cndmask_b32_e64 v69, 0, v69, s5
	v_cndmask_b32_e64 v70, 0, v70, s6
	v_cndmask_b32_e64 v71, 0, v71, s7
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v93, v93, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v67, 0, v67, s1
.Ltmp63:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v68, v68, v69 :: v_dual_add_f32 v69, v70, v71
.Ltmp64:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v94, v94, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v93, v93
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v72, 0, v72, s8
	.loc	1 260 70 is_stmt 1              ; attention_backward.py:260:70
	v_sub_f32_e32 v71, v126, v66
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v94, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v93, 0, v93, s9
	v_cndmask_b32_e32 v94, 0, v94, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v70, v72, v93
.Ltmp66:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v126
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v94, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_add_f32 v67, v67, v68 :: v_dual_add_f32 v68, v69, v70
.Ltmp68:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v69, v71
	v_mov_b32_e32 v70, v83
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v68, v67, s15, 0xfedcba98 op_sel:[1,0]
.Ltmp71:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v69, 0, v69, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v83, v67, v68
.Ltmp73:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v83, v70, v69
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_mov_b32 v83, 0
.LBB0_4:                                ; %Flow146
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v83
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v111, v75, v79 :: v_dual_and_b32 v68, 31, v0
.Ltmp75:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s1, 0, v83
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v67, 0, 32, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0x42000000, vcc_lo
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
	v_cmp_eq_u32_e32 vcc_lo, 0, v99
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v112, v76, v80 :: v_dual_add_f32 v113, v77, v81
.Ltmp77:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v67, v83, v67
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v67, v67
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v114, v78, v82
.Ltmp79:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s38, s14
	s_mov_b32 s39, s15
	v_lshrrev_b32_e32 v134, 4, v0
	s_mov_b32 s16, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v65, v67, v65 :: v_dual_mov_b32 v72, 0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v67, v74, 2, 0
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v65, v66, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v70, v72 :: v_dual_add_nc_u32 v115, 0, v73
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v66, v99, 1, v67
	v_dual_mov_b32 v71, v72 :: v_dual_and_b32 v110, 24, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v135, 0, v65, s1
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v65, v68, 2, 0
	v_mov_b32_e32 v69, v72
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v74, 1, v110
	v_mov_b32_e32 v67, v72
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v66, v135
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v73, v65
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v65, s27, v68
	.loc	1 266 18                        ; attention_backward.py:266:18
	v_or_b32_e32 v66, s30, v68
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v74, 0, v98, v74
	v_mov_b32_e32 v80, v72
	v_mov_b32_e32 v79, v72
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, 0x800, v65
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v65, v66, s27, 2
	v_mov_b32_e32 v66, v72
	v_mov_b32_e32 v78, v72
	v_mov_b32_e32 v77, v72
	s_and_b32 vcc_lo, vcc_lo, s1
	v_dual_mov_b32 v68, v72 :: v_dual_cndmask_b32 v81, 0x80000000, v65
	v_mov_b32_e32 v65, v72
	v_mov_b32_e32 v76, v72
	v_mov_b32_e32 v75, v72
	v_mov_b32_e32 v96, v72
	v_mov_b32_e32 v95, v72
	v_mov_b32_e32 v94, v72
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v73, v81, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v115, v[111:114]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v82, v74
	v_mov_b32_e32 v74, v72
	v_mov_b32_e32 v73, v72
	v_mov_b32_e32 v93, v72
	v_mov_b32_e32 v92, v72
	v_mov_b32_e32 v91, v72
	v_mov_b32_e32 v90, v72
	v_mov_b32_e32 v89, v72
	v_mov_b32_e32 v88, v72
	v_mov_b32_e32 v87, v72
	v_mov_b32_e32 v86, v72
	v_mov_b32_e32 v85, v72
	v_mov_b32_e32 v84, v72
	v_mov_b32_e32 v83, v72
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s17
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v82, v81, s[36:39], 0 offen
	v_mov_b32_e32 v82, v72
	v_mov_b32_e32 v81, v72
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v115, v[111:114]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_7
; %bb.5:                                ; %.lr.ph38
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_and_b32_e32 v78, 16, v0
	v_dual_mov_b32 v82, 0x5410 :: v_dual_and_b32 v65, 8, v0
	v_lshlrev_b32_e32 v67, 6, v0
	v_lshlrev_b32_e32 v66, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v78
	v_dual_mov_b32 v78, 0x7632 :: v_dual_and_b32 v81, 3, v0
	v_and_b32_e32 v67, 64, v67
	v_lshlrev_b32_e32 v0, 5, v0
	v_cndmask_b32_e32 v82, 0x1054, v82, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v84, 9, v81
	v_lshlrev_b32_e32 v81, 4, v81
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	v_mul_lo_u32 v86, s34, v109
	v_and_b32_e32 v0, 0x180, v0
	v_lshl_or_b32 v82, v82, 8, v82
	v_lshl_or_b32 v85, v110, 6, v98
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v69, 1, v65
	v_lshrrev_b32_e32 v68, 2, v99
	v_or3_b32 v0, v0, v81, v84
	v_and_b32_e32 v81, 0x540054, v82
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshl_add_u32 v143, v86, 1, v98
	v_mul_lo_u32 v84, s35, v109
	v_dual_cndmask_b32 v78, 0x3276, v78 :: v_dual_lshlrev_b32 v71, 8, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v81, v81, 4, v81
	v_xor_b32_e32 v87, 32, v0
	v_xor_b32_e32 v88, 48, v0
	v_lshl_add_u32 v144, v108, 1, v98
	v_lshl_or_b32 v78, v78, 8, v78
	v_and_b32_e32 v139, 0x5040504, v81
	v_mov_b32_e32 v81, 0
	v_lshlrev_b32_e32 v83, 1, v110
	v_and_b32_e32 v66, 60, v66
	v_lshlrev_b32_e32 v70, 2, v99
	v_lshlrev_b32_e32 v72, 2, v97
	v_mov_b32_e32 v86, v81
	v_xor_b32_e32 v82, v85, v83
	v_mul_lo_u32 v85, s35, v107
	v_xor_b32_e32 v83, 16, v0
	v_lshlrev_b32_e32 v65, 3, v65
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add_nc_u32_e32 v69, 0, v69
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshl_add_u32 v141, v84, 1, v98
	v_add_nc_u32_e32 v168, 0, v87
	v_add_nc_u32_e32 v167, 0, v83
	v_mov_b32_e32 v83, v81
	v_lshl_add_u32 v142, v85, 1, v98
	v_mov_b32_e32 v85, v81
	v_or3_b32 v136, v67, v66, v70
	v_add_nc_u32_e32 v70, 0, v70
	v_mov_b32_e32 v84, v81
	v_dual_mov_b32 v87, v81 :: v_dual_and_b32 v78, 0x760076, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v66, 0x104, v136
	v_add_nc_u32_e32 v166, v70, v82
	v_mov_b32_e32 v82, v81
	v_or3_b32 v137, v71, v65, v72
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v65, v69, v68, v98
	v_xor_b32_e32 v67, 0x208, v136
	v_xor_b32_e32 v68, 0x30c, v136
	v_xor_b32_e32 v69, 0x410, v136
	v_xor_b32_e32 v73, 16, v137
	ds_load_b32 v138, v65
	v_xor_b32_e32 v65, 0x514, v136
	v_xor_b32_e32 v71, 0x618, v136
	v_xor_b32_e32 v72, 0x71c, v136
	v_xor_b32_e32 v74, 4, v137
	v_xor_b32_e32 v75, 20, v137
	v_xor_b32_e32 v76, 8, v137
	v_xor_b32_e32 v77, 24, v137
	v_xor_b32_e32 v79, 12, v137
	v_xor_b32_e32 v80, 28, v137
	v_add_nc_u32_e32 v152, 0, v73
	v_mov_b32_e32 v73, v81
	v_lshl_or_b32 v78, v78, 4, v78
	v_dual_mov_b32 v90, v81 :: v_dual_add_nc_u32 v145, 0, v66
	v_add_nc_u32_e32 v146, 0, v67
	v_dual_mov_b32 v92, v81 :: v_dual_add_nc_u32 v147, 0, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v140, 0x7060706, v78
	v_add_nc_u32_e32 v148, 0, v69
	v_dual_mov_b32 v94, v81 :: v_dual_add_nc_u32 v149, 0, v65
	v_dual_mov_b32 v67, v81 :: v_dual_add_nc_u32 v150, 0, v71
	v_dual_mov_b32 v96, v81 :: v_dual_add_nc_u32 v151, 0, v72
	v_add_nc_u32_e32 v153, 0, v74
	v_mov_b32_e32 v74, v81
	v_dual_mov_b32 v71, v81 :: v_dual_add_nc_u32 v154, 0, v75
	v_add_nc_u32_e32 v155, 0, v76
	v_mov_b32_e32 v76, v81
	v_add_nc_u32_e32 v156, 0, v77
	v_dual_mov_b32 v78, v81 :: v_dual_add_nc_u32 v157, 0, v79
	v_add_nc_u32_e32 v158, 0, v80
	v_dual_mov_b32 v80, v81 :: v_dual_add_nc_u32 v159, 0, v100
	v_add_nc_u32_e32 v160, 0, v101
	v_dual_mov_b32 v66, v81 :: v_dual_add_nc_u32 v161, 0, v102
	v_add_nc_u32_e32 v162, 0, v103
	v_dual_mov_b32 v68, v81 :: v_dual_add_nc_u32 v163, 0, v104
	v_add_nc_u32_e32 v164, 0, v105
	v_dual_mov_b32 v70, v81 :: v_dual_add_nc_u32 v165, 0, v106
	v_add_nc_u32_e32 v169, 0, v88
	v_mov_b32_e32 v88, v81
	v_mov_b32_e32 v89, v81
	v_mov_b32_e32 v91, v81
	v_mov_b32_e32 v93, v81
	v_mov_b32_e32 v95, v81
	v_mov_b32_e32 v75, v81
	v_mov_b32_e32 v77, v81
	v_mov_b32_e32 v79, v81
	v_mov_b32_e32 v65, v81
	v_mov_b32_e32 v69, v81
	v_mov_b32_e32 v72, v81
	s_and_b32 s13, s19, 0xffff
	s_and_b32 s29, s29, 0xffff
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_lshl_b32 s27, s35, 5
	s_lshl_b32 s35, s34, 5
	s_mov_b32 s12, s18
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s30, s14
	s_mov_b32 s31, s15
	s_mov_b32 s36, 0x76543210
	s_mov_b32 s37, s16
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v97, 0x80000000, v144, s2
	v_cndmask_b32_e64 v101, 0x80000000, v143, s2
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v193, s23 :: v_dual_add_nc_u32 v102, 0, v136
	v_dual_mov_b32 v192, s22 :: v_dual_add_nc_u32 v115, 0, v137
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_clause 0x1
	buffer_load_b128 v[97:100], v97, s[12:15], 0 offen
	buffer_load_b128 v[105:108], v101, s[12:15], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v191, s21 :: v_dual_mov_b32 v188, s18
	v_dual_mov_b32 v189, s19 :: v_dual_mov_b32 v186, s16
	v_dual_mov_b32 v187, s17 :: v_dual_mov_b32 v190, s20
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v144, s35, v144
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v101.l, v97.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v101.h, v105.l
	v_mov_b16_e32 v103.l, v97.h
	v_mov_b16_e32 v103.h, v105.h
	v_mov_b16_e32 v104.l, v98.l
	v_mov_b16_e32 v104.h, v106.l
	v_mov_b16_e32 v109.l, v98.h
	v_mov_b16_e32 v109.h, v106.h
	v_mov_b16_e32 v110.l, v99.l
	v_mov_b16_e32 v110.h, v107.l
	v_mov_b16_e32 v111.l, v99.h
	v_mov_b16_e32 v111.h, v107.h
	v_mov_b16_e32 v112.l, v100.l
	v_mov_b16_e32 v112.h, v108.l
	v_mov_b16_e32 v113.l, v100.h
	v_mov_b16_e32 v113.h, v108.h
	ds_store_b32 v102, v101
	ds_store_b32 v145, v103
	ds_store_b32 v146, v104
	ds_store_b32 v147, v109
	ds_store_b32 v148, v110
	ds_store_b32 v149, v111
	ds_store_b32 v150, v112
	ds_store_b32 v151, v113
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 398 31                        ; attention_backward.py:398:31
	ds_load_2addr_b32 v[101:102], v152 offset1:8
	ds_load_2addr_b32 v[103:104], v152 offset0:32 offset1:40
	ds_load_2addr_b32 v[109:110], v154 offset1:8
	ds_load_2addr_b32 v[111:112], v154 offset0:32 offset1:40
	ds_load_2addr_b32 v[117:118], v156 offset1:8
	ds_load_2addr_b32 v[119:120], v156 offset0:32 offset1:40
	ds_load_2addr_b32 v[125:126], v158 offset1:8
	ds_load_2addr_b32 v[127:128], v158 offset0:32 offset1:40
	ds_load_2addr_b32 v[113:114], v115 offset1:8
	ds_load_2addr_b32 v[115:116], v115 offset0:32 offset1:40
	ds_load_2addr_b32 v[121:122], v153 offset1:8
	ds_load_2addr_b32 v[123:124], v153 offset0:32 offset1:40
	ds_load_2addr_b32 v[210:211], v155 offset1:8
	ds_load_2addr_b32 v[212:213], v155 offset0:32 offset1:40
	ds_load_2addr_b32 v[214:215], v157 offset1:8
	ds_load_2addr_b32 v[216:217], v157 offset0:32 offset1:40
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v130, v[97:100]
	ds_store_b128 v130, v[105:108] offset:1024
	v_add_nc_u32_e32 v97, 0, v132
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[170:173], v97
	ds_load_b128 v[174:177], v159
	ds_load_b128 v[178:181], v160
	ds_load_b128 v[182:185], v161
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v97, 0x80000000, v142, s4
	v_cndmask_b32_e64 v105, 0x80000000, v141, s4
	s_clause 0x1
	buffer_load_b128 v[97:100], v97, s[28:31], 0 offen
	buffer_load_b128 v[105:108], v105, s[28:31], 0 offen
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v142, s27, v142
	v_add_nc_u32_e32 v141, s27, v141
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[194:201], v[170:177], v[1:8], v[186:193]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[170:173], v162
	ds_load_b128 v[174:177], v163
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[194:201], v[178:185], v[9:16], v[194:201]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[194:201], v[170:177], v[17:24], v[194:201]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[170:173], v164
	ds_load_b128 v[174:177], v165
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v166, v[97:100]
	s_waitcnt vmcnt(0)
	ds_store_b128 v166, v[105:108] offset:256
	v_add_nc_u32_e32 v97, 0, v0
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_wmma_f32_16x16x16_bf16 v[194:201], v[170:177], v[25:32], v[194:201]
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[174:177], v167
	ds_load_b128 v[170:173], v97
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v98.l, v114.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v182, s10, v194, -v135
	v_fma_f32 v181, s10, v195, -v135
	v_fma_f32 v180, s10, v196, -v135
	v_fma_f32 v179, s10, v197, -v135
	v_fma_f32 v178, s10, v198, -v135
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v182, v182
	v_exp_f32_e32 v181, v181
	v_exp_f32_e32 v180, v180
	v_exp_f32_e32 v179, v179
	v_exp_f32_e32 v178, v178
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_mov_b16_e32 v98.h, v102.l
	v_mov_b16_e32 v102.l, v114.h
	v_mov_b16_e32 v99.l, v115.l
	v_mov_b16_e32 v99.h, v103.l
	v_mov_b16_e32 v100.l, v116.l
	v_mov_b16_e32 v100.h, v104.l
	v_mov_b16_e32 v103.l, v115.h
	v_mov_b16_e32 v104.l, v116.h
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[202:209], v[170:177], v[33:40], v[186:193]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[174:177], v169
	ds_load_b128 v[170:173], v168
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v186, s37, v129
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v105.l, v121.l
	v_mov_b16_e32 v105.h, v109.l
	v_mov_b16_e32 v106.l, v122.l
	v_mov_b16_e32 v106.h, v110.l
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s8, v186, v133
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v109.l, v121.h
	v_mov_b16_e32 v110.l, v122.h
	v_mov_b16_e32 v107.l, v123.l
	v_mov_b16_e32 v107.h, v111.l
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s8, s0, s8
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v108.l, v124.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v182, 0, v182, s8
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v108.h, v112.l
	v_mov_b16_e32 v111.l, v123.h
	v_mov_b16_e32 v112.l, v124.h
	v_mov_b16_e64 v114.l, v211.l
	v_mov_b16_e32 v114.h, v118.l
	v_mov_b16_e64 v118.l, v211.h
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[202:209], v[170:177], v[41:48], v[202:209]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[170:173], v97 offset:64
	ds_load_b128 v[174:177], v167 offset:64
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v97.l, v113.l
	v_mov_b16_e32 v97.h, v101.l
	v_mov_b16_e32 v101.l, v113.h
	v_mov_b16_e64 v113.l, v210.l
	v_mov_b16_e32 v113.h, v117.l
	v_mov_b16_e64 v117.l, v210.h
	v_mov_b16_e64 v115.l, v212.l
	v_mov_b16_e32 v115.h, v119.l
	v_mov_b16_e64 v116.l, v213.l
	v_mov_b16_e32 v116.h, v120.l
	v_mov_b16_e64 v119.l, v212.h
	v_mov_b16_e64 v120.l, v213.h
	v_mov_b16_e64 v121.l, v214.l
	v_mov_b16_e32 v121.h, v125.l
	v_mov_b16_e64 v122.l, v215.l
	v_mov_b16_e32 v122.h, v126.l
	v_mov_b16_e64 v125.l, v214.h
	v_mov_b16_e64 v126.l, v215.h
	v_mov_b16_e64 v123.l, v216.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[202:209], v[170:177], v[49:56], v[202:209]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[170:173], v168 offset:64
	ds_load_b128 v[174:177], v169 offset:64
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v123.h, v127.l
	v_mov_b16_e64 v124.l, v217.l
	v_mov_b16_e64 v124.h, v128.l
	v_mov_b16_e64 v127.l, v216.h
	v_mov_b16_e64 v128.l, v217.h
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s37, s37, 16
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[202:209], v[170:177], v[57:64], v[202:209]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v177, s10, v199, -v135
	v_fma_f32 v176, s10, v200, -v135
	v_fma_f32 v175, s10, v201, -v135
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v185, v202, v138
	v_sub_f32_e32 v183, v204, v138
	v_sub_f32_e32 v184, v203, v138
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v177, v177
	v_exp_f32_e32 v176, v176
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v182, v182, v185 :: v_dual_add_nc_u32 v187, 2, v186
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v175, v175
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v170, v205, v138
	v_sub_f32_e32 v174, v209, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v187, v133
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_dual_sub_f32 v172, v207, v138 :: v_dual_cndmask_b32 v181, 0, v181
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v181, v181, v184
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v187, 4, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s1, v187, v133
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v187, 6, v186
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s3, v187, v133
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v187, 8, v186
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v171, v206, v138 :: v_dual_cndmask_b32 v180, 0, v180
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 vcc_lo, s0, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s5, v187, v133
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v187, 10, v186
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v179, 0, v179, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v180, v180, v183
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v143, s35, v143
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s1, s0, s5
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s6, v187, v133
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v187, 12, v186
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v186, 14, v186
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v178, 0, v178, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v170, v179, v170
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s3, s0, s6
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s7, v187, v133
	v_cmp_le_i32_e64 s9, v186, v133
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v177, 0, v177, s3
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v173, v208, v138
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v170, s26, v170
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 s5, s0, s7
	s_and_b32 s6, s0, s9
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v176, 0, v176, s5
	v_cndmask_b32_e64 v175, 0, v175, s6
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v171, v178, v171 :: v_dual_mul_f32 v172, v177, v172
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s5, v170, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v173, v176, v173 :: v_dual_mul_f32 v174, v175, v174
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v175, s26, v182 :: v_dual_mul_f32 v176, s26, v181
	v_mul_f32_e32 v177, s26, v180
	v_dual_mul_f32 v171, s26, v171 :: v_dual_mul_f32 v172, s26, v172
	v_dual_mul_f32 v173, s26, v173 :: v_dual_mul_f32 v174, s26, v174
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v178, v175, 16, 1
	v_bfe_u32 v179, v176, 16, 1
	v_bfe_u32 v180, v177, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	v_cmp_o_f32_e64 s1, v176, v176
	v_cmp_o_f32_e64 s3, v177, v177
	v_bfe_u32 v181, v170, 16, 1
	v_bfe_u32 v182, v171, 16, 1
	v_add3_u32 v175, v175, v178, 0x7fff
	v_bfe_u32 v178, v172, 16, 1
	v_add3_u32 v176, v176, v179, 0x7fff
	v_bfe_u32 v179, v173, 16, 1
	v_add3_u32 v177, v177, v180, 0x7fff
	v_bfe_u32 v180, v174, 16, 1
	v_cmp_o_f32_e64 s6, v171, v171
	v_cmp_o_f32_e64 s7, v172, v172
	v_cmp_o_f32_e64 s8, v173, v173
	v_cmp_o_f32_e64 s9, v174, v174
	v_add3_u32 v170, v170, v181, 0x7fff
	v_add3_u32 v171, v171, v182, 0x7fff
	v_add3_u32 v172, v172, v178, 0x7fff
	v_add3_u32 v173, v173, v179, 0x7fff
	v_add3_u32 v174, v174, v180, 0x7fff
	v_cndmask_b16 v175.l, 0x7fff, v175.h, vcc_lo
	v_cndmask_b16 v175.h, 0x7fff, v176.h, s1
	v_cndmask_b16 v176.l, 0x7fff, v177.h, s3
	v_cndmask_b16 v176.h, 0x7fff, v170.h, s5
	v_cndmask_b16 v177.l, 0x7fff, v171.h, s6
	v_cndmask_b16 v177.h, 0x7fff, v172.h, s7
	v_cndmask_b16 v178.l, 0x7fff, v173.h, s8
	v_cndmask_b16 v178.h, 0x7fff, v174.h, s9
	v_permlanex16_b32 v171, v175, s36, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v173, v176, s36, 0xfedcba98 op_sel:[1,0]
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	s_cmp_lt_i32 s37, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v179, v178, s36, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v170, v171, v175, v139
	v_perm_b32 v171, v171, v175, v140
	v_permlanex16_b32 v175, v177, s36, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v172, v173, v176, v139
	v_perm_b32 v173, v173, v176, v140
	v_perm_b32 v176, v179, v178, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v174, v175, v177, v139
	v_perm_b32 v175, v175, v177, v140
	v_perm_b32 v177, v179, v178, v140
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[170:177], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[89:96], v[105:112], v[170:177], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[73:80], v[113:120], v[170:177], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[121:128], v[170:177], v[65:72]
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %._crit_edge39
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s34, v131
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e32 vcc_lo, s34, v129
	v_or_b32_e32 v1, 48, v129
	v_or_b32_e32 v2, 32, v129
	v_or_b32_e32 v3, 16, v129
	v_or_b32_e32 v4, 62, v134
	.loc	1 161 22 is_stmt 0              ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s1, s34, v1
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, v0, v129
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s34, v2
	v_cmp_gt_i32_e64 s3, s34, v3
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v5, v5, s33, 2
	v_add_nc_u32_e32 v3, v0, v3
	s_mov_b32 s26, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v6, 8, v5
	v_add_nc_u32_e32 v7, 16, v5
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v2, v0, v2
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v8, 24, v5
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v1, v0, v1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v9, 32, v5
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v4
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e32 v4, 0x80000000, v5, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_clause 0x2
	buffer_store_b32 v81, v4, s[24:27], 0 offen
	buffer_store_b32 v82, v6, s[24:27], 0 offen
	buffer_store_b32 v83, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v6, 48, v5
	v_add_nc_u32_e32 v4, 40, v5
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_add_nc_u32 v7, 56, v5
	v_add_lshl_u32 v3, v3, s33, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_clause 0x4
	buffer_store_b32 v84, v8, s[24:27], 0 offen
	buffer_store_b32 v85, v9, s[24:27], 0 offen
	buffer_store_b32 v86, v4, s[24:27], 0 offen
	buffer_store_b32 v87, v6, s[24:27], 0 offen
	buffer_store_b32 v88, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, 0x48, v5
	v_add_nc_u32_e32 v6, 0x50, v5
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s0, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v7, 0x58, v5
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_add_nc_u32_e32 v8, 0x60, v5
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_clause 0x2
	buffer_store_b32 v89, v3, s[24:27], 0 offen
	buffer_store_b32 v90, v4, s[24:27], 0 offen
	buffer_store_b32 v91, v6, s[24:27], 0 offen
	v_cndmask_b32_e32 v3, 0x80000000, v8, vcc_lo
	v_add_nc_u32_e32 v4, 0x68, v5
	buffer_store_b32 v92, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v6, 0x70, v5
	v_add_nc_u32_e32 v7, 0x78, v5
	buffer_store_b32 v93, v3, s[24:27], 0 offen
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	v_add_lshl_u32 v2, v2, s33, 2
	v_add_lshl_u32 v1, v1, s33, 2
	v_add_lshl_u32 v0, v0, s33, 2
	buffer_store_b32 v94, v3, s[24:27], 0 offen
	v_add_nc_u32_e32 v3, 0x88, v5
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s0, s2
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v7, 0xa8, v5
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_clause 0x2
	buffer_store_b32 v95, v4, s[24:27], 0 offen
	buffer_store_b32 v96, v6, s[24:27], 0 offen
	buffer_store_b32 v73, v2, s[24:27], 0 offen
	v_add_nc_u32_e32 v2, 0x90, v5
	v_add_nc_u32_e32 v4, 0x98, v5
	v_add_nc_u32_e32 v6, 0xa0, v5
	buffer_store_b32 v74, v3, s[24:27], 0 offen
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v4
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	buffer_store_b32 v75, v2, s[24:27], 0 offen
	v_add_nc_u32_e32 v2, 0xb0, v5
	s_clause 0x2
	buffer_store_b32 v76, v3, s[24:27], 0 offen
	buffer_store_b32 v77, v4, s[24:27], 0 offen
	buffer_store_b32 v78, v6, s[24:27], 0 offen
	v_add_nc_u32_e32 v3, 0xb8, v5
	v_add_nc_u32_e32 v4, 0xc8, v5
	v_add_nc_u32_e32 v6, 0xd0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s0, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	s_clause 0x4
	buffer_store_b32 v79, v2, s[24:27], 0 offen
	buffer_store_b32 v80, v3, s[24:27], 0 offen
	buffer_store_b32 v65, v1, s[24:27], 0 offen
	buffer_store_b32 v66, v4, s[24:27], 0 offen
	buffer_store_b32 v67, v6, s[24:27], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v5
	v_add_nc_u32_e32 v2, 0xe0, v5
	v_add_nc_u32_e32 v3, 0xe8, v5
	v_add_nc_u32_e32 v4, 0xf0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v68, v1, s[24:27], 0 offen
	buffer_store_b32 v69, v2, s[24:27], 0 offen
	buffer_store_b32 v70, v3, s[24:27], 0 offen
	buffer_store_b32 v71, v4, s[24:27], 0 offen
	buffer_store_b32 v72, v0, s[24:27], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp80:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 176
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 218
		.amdhsa_next_free_sgpr 40
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
		.amdhsa_inst_pref_size 54
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 218
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6812
; TotalNumSgprs: 42
; NumVgprs: 218
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 218
; Occupancy: 6
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x97 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x71 DW_TAG_subprogram
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
	.byte	6                               ; Abbrev [6] 0x5b:0x2a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp60                         ; DW_AT_low_pc
	.long	.Ltmp62-.Ltmp60                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp60                         ; DW_AT_low_pc
	.long	.Ltmp61-.Ltmp60                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x85:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x92:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     218
    .vgpr_spill_count: 0
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
