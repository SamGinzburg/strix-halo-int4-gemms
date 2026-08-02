	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x74
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v98, 3, v0
	v_and_b32_e32 v17, 56, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_and_b32_e32 v99, 7, v0
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x10
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s25, s2, 5
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v73, 1, v17
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_lshl_b32 s28, s3, 11
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s25, v98
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshlrev_b32_e32 v97, 3, v99
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s5, s25, s28
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	s_load_b256 s[16:23], s[0:1], 0x38
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_mov_b16_e32 v83.l, 0
	s_clause 0x2
	s_load_b32 s38, s[0:1], 0x7c
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b64 s[44:45], s[0:1], 0x28
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v207, v0, 4, 1
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s34, v98
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v17, s35, v98
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s33, s34, s5
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s5, s35, s5
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s34, v97
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_lshl_b32 s4, s34, 3
	s_lshl_b32 s6, s34, 4
	s_mul_i32 s7, s34, 24
	v_add3_u32 v1, v2, v97, s33
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v24, v17, v97, s5
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s12, s8
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v23, s35, 4, v17
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v3, v1, s4, 1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v26, 2, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v4, v1, s6, 1
	v_add_lshl_u32 v1, v1, s7, 1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s39, s35, 3
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v5, 0x80000000, v3, s4
	v_cndmask_b32_e64 v9, 0x80000000, v4, s4
	v_cndmask_b32_e64 v13, 0x80000000, v1, s4
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[12:15], 0 offen
	buffer_load_b128 v[5:8], v5, s[12:15], 0 offen
	buffer_load_b128 v[9:12], v9, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v13, s[12:15], 0 offen
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s4, s35, v97
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s39, v17
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s13, s17, 0xffff
	s_mov_b32 s12, s16
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v84.l, v83.l
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v18, 4, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v85.l, v83.l
	v_mov_b16_e32 v86.l, v83.l
	v_mov_b16_e32 v87.l, v83.l
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s5, v97
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v18, v18, v73
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v88.l, v83.l
	v_mov_b16_e32 v89.l, v83.l
	v_mov_b16_e32 v90.l, v83.l
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_or_b32_e32 v21, 4, v20
	v_add_nc_u32_e32 v25, v20, v23
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v91.l, v83.l
	v_mov_b16_e32 v92.l, v83.l
	v_mov_b16_e32 v93.l, v83.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v23, v21, v23, 2
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v206, 0, v18
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[18:19], null, s35, 24, v[17:18]
	v_add_nc_u32_e32 v19, v20, v22
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v27, 2, v25
	v_add_lshl_u32 v17, v21, v17, 2
	v_add_lshl_u32 v22, v21, v22, 2
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v94.l, v83.l
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, v20, v18
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v18, v21, v18, 2
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_cndmask_b32_e32 v21, 0x80000000, v26, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_lshlrev_b32 v28, 2, v20
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	s_load_b32 s5, s[0:1], 0x9c
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s6, s3, 31
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	v_lshlrev_b32_e32 v26, 2, v19
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v100, 4, v99
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s0, s6, 28
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v95.l, v83.l
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s0, s3, s0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s26, s0, 4
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s1, s3, s1
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v96.l, v83.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s3, s1, 0x10007
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v108.l, v83.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s1, s1, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v109.l, v83.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s1, s1
	.loc	1 235 27                        ; attention_backward.py:235:27
	s_mul_f32 s48, s38, 0x3fb8aa3b
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_ashr_i32 s27, s1, 1
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s25, s5
	s_mov_b64 s[16:17], s[22:23]
	s_add_i32 s1, s0, 32
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(3)
	ds_store_b128 v206, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v206, v[5:8] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v206, v[9:12] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v206, v[13:16] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x7
	buffer_load_b128 v[33:36], v21, s[12:15], 0 offen
	buffer_load_b128 v[37:40], v17, s[12:15], 0 offen
	buffer_load_b128 v[41:44], v26, s[12:15], 0 offen
	buffer_load_b128 v[45:48], v22, s[12:15], 0 offen
	buffer_load_b128 v[49:52], v27, s[12:15], 0 offen
	buffer_load_b128 v[53:56], v23, s[12:15], 0 offen
	buffer_load_b128 v[57:60], v28, s[12:15], 0 offen
	buffer_load_b128 v[61:64], v18, s[12:15], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v19, 1, v19
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s0, s1, 0x800
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[65:68], v24, s[12:15], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v19, vcc_lo
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s3, s0, 15
	s_mov_b32 s18, 0
	.loc	1 190 34 is_stmt 0              ; attention_backward.py:190:34
	s_ashr_i32 s6, s3, 31
	.loc	1 171 28 is_stmt 1              ; attention_backward.py:171:28
	buffer_load_b128 v[69:72], v1, s[12:15], 0 offen
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_lshr_b32 s6, s6, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s6
	.loc	1 190 33 is_stmt 0              ; attention_backward.py:190:33
	s_and_b32 s49, s3, -16
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_cmp_gt_i32 s1, 0
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s1, 1
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v128, 0xffff0000, v67
	v_and_b32_e32 v118, 0xffff0000, v66
	v_mov_b16_e32 v84.h, v66.l
	v_mov_b16_e32 v85.h, v65.l
	v_mov_b16_e32 v83.h, v68.l
	v_mov_b16_e32 v94.h, v67.l
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v120, 0xffff0000, v69
	v_and_b32_e32 v122, 0xffff0000, v71
	v_and_b32_e32 v119, 0xffff0000, v65
	v_mov_b16_e32 v89.h, v69.l
	v_mov_b16_e32 v88.h, v70.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v42, v42, v120
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v2, 1, v25
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v46, v46, v122
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v86.h, v72.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v34, v34, v119
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v87.h, v71.l
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v36, v36, v118
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v42, v41, v89
	v_fmac_f32_e32 v34, v33, v85
	v_fmac_f32_e32 v46, v45, v87
.Ltmp2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[75:78], v1, s[12:15], 0 offen
	v_lshlrev_b32_e32 v1, 1, v20
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v36, v35, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v38, v38, v128 :: v_dual_cndmask_b32 v1, 0x80000000, v1
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v34, v36 :: v_dual_fmac_f32 v38, v37, v94
.Ltmp6:
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[79:82], v1, s[12:15], 0 offen
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v124, 0xffff0000, v75
	v_and_b32_e32 v125, 0xffff0000, v78
	v_and_b32_e32 v126, 0xffff0000, v76
	v_and_b32_e32 v123, 0xffff0000, v72
	v_and_b32_e32 v127, 0xffff0000, v77
	v_and_b32_e32 v129, 0xffff0000, v68
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v50, v50, v124 :: v_dual_and_b32 v121, 0xffff0000, v70
	v_mul_f32_e32 v56, v56, v125
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v90.h, v78.l
	v_mov_b16_e32 v91.h, v77.l
	v_mov_b16_e32 v92.h, v76.l
	v_mov_b16_e32 v93.h, v75.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v44, v44, v121
	v_dual_mul_f32 v52, v52, v126 :: v_dual_and_b32 v103, 32, v0
	v_mul_f32_e32 v48, v48, v123
	v_mul_f32_e32 v54, v54, v127
	v_mul_f32_e32 v40, v40, v129
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v44, v43, v88
	v_fmac_f32_e32 v50, v49, v93
	v_fmac_f32_e32 v48, v47, v86
	v_fmac_f32_e32 v52, v51, v92
	v_fmac_f32_e32 v54, v53, v91
	v_fmac_f32_e32 v56, v55, v90
	v_dual_fmac_f32 v40, v39, v83 :: v_dual_add_f32 v35, v42, v44
	v_add_f32_e32 v36, v46, v48
	v_add_f32_e32 v37, v50, v52
.Ltmp8:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 1, v103
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v38, v40
	v_add_f32_e32 v38, v54, v56
.Ltmp10:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v74, 15, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v95.h, v82.l
	v_mov_b16_e32 v96.h, v81.l
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v33, v34 :: v_dual_add_f32 v34, v35, v36
	v_add_f32_e32 v35, v37, v38
.Ltmp12:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v209, v74, 7, v100
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v25, v1, v74
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp13:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v37, v33
.Ltmp14:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v108.h, v80.l
	v_mov_b16_e32 v109.h, v79.l
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v1, v103, 6, v209
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s25, v25
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v38, v34
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_xor_b32_e32 v101, 16, v209
.Ltmp16:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v110, 0, v1
	v_xad_u32 v111, v1, 16, 0
	v_xad_u32 v112, v1, 32, 0
	v_xad_u32 v113, v1, 48, 0
	v_xad_u32 v114, v1, 64, 0
	v_xad_u32 v115, 0x50, v1, 0
	v_xad_u32 v116, 0x60, v1, 0
	v_xad_u32 v117, 0x70, v1, 0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v2
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v210, s5, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[161:164], v110
	ds_load_b128 v[165:168], v111
	ds_load_b128 v[1:4], v112
	ds_load_b128 v[5:8], v113
	ds_load_b128 v[9:12], v114
	ds_load_b128 v[13:16], v115
	ds_load_b128 v[222:225], v116
	ds_load_b128 v[226:229], v117
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v206, v[65:68]
	ds_store_b128 v206, v[69:72] offset:1024
	v_and_b32_e32 v66, 0xffff0000, v80
	v_and_b32_e32 v65, 0xffff0000, v79
	v_and_b32_e32 v68, 0xffff0000, v82
	v_and_b32_e32 v67, 0xffff0000, v81
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v60, v60, v66
	v_mul_f32_e32 v58, v58, v65
	v_mul_f32_e32 v64, v64, v68
	v_dual_mul_f32 v62, v62, v67 :: v_dual_add_f32 v33, v33, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v60, v59, v108
	v_fmac_f32_e32 v58, v57, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v63, v95
	v_fmac_f32_e32 v62, v61, v96
	v_dual_add_f32 v34, v34, v38 :: v_dual_mov_b32 v37, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v39, v58, v60
.Ltmp20:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_store_b128 v206, v[75:78] offset:2048
	ds_store_b128 v206, v[79:82] offset:3072
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v40, v62, v64
.Ltmp22:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v38, v34
.Ltmp23:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[181:184], v110
	ds_load_b128 v[185:188], v111
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v39, v40
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v39, v35
.Ltmp26:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[41:44], v112
	ds_load_b128 v[45:48], v113
	ds_load_b128 v[49:52], v114
	ds_load_b128 v[53:56], v115
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v40, v36
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[57:60], v116
	ds_load_b128 v[61:64], v117
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v75, v33, v37
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v35, v35, v39 :: v_dual_add_f32 v76, v34, v38
	v_xor_b32_e32 v102, 32, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v79, v75 :: v_dual_add_f32 v36, v36, v40
	v_dual_mov_b32 v39, v35 :: v_dual_mov_b32 v80, v76
	v_xor_b32_e32 v104, 48, v209
	v_xor_b32_e32 v105, 64, v209
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v40, v36
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_xor_b32_e32 v106, 0x50, v209
	v_xor_b32_e32 v107, 0x60, v209
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v77, v35, v39
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_xor_b32_e32 v108, 0x70, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v78, v36, v40 :: v_dual_mov_b32 v81, v77
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v82, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_lshl_b32 s1, s26, 14
	s_lshl_b32 s3, s27, 11
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_mov_b32 v65, 0
	s_add_i32 s1, s1, s3
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v84, 0, v101
	v_or_b32_e32 v33, s1, v98
	v_add_nc_u32_e32 v85, 0, v102
	v_add_nc_u32_e32 v86, 0, v104
	v_add_nc_u32_e32 v87, 0, v105
	v_add_nc_u32_e32 v88, 0, v106
	v_or_b32_e32 v34, 8, v33
	v_mul_lo_u32 v33, s34, v33
	v_add_nc_u32_e32 v89, 0, v107
	v_add_nc_u32_e32 v90, 0, v108
	s_and_b32 s13, s11, 0xffff
	v_mul_lo_u32 v34, s34, v34
	s_mov_b32 s12, s10
	s_lshl_b32 s19, s34, 5
	s_mov_b32 s22, 0x76543210
	v_lshl_add_u32 v91, v33, 1, v100
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_add_u32 v92, v34, 1, v100
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e64 v33, 0x80000000, v91, s2
	v_cndmask_b32_e64 v34, 0x80000000, v92, s2
	v_add_nc_u32_e32 v35, 0, v209
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_add_nc_u32_e32 v92, s19, v92
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x1
	buffer_load_b128 v[93:96], v33, s[12:15], 0 offen
	buffer_load_b128 v[117:120], v34, s[12:15], 0 offen
	v_dual_mov_b32 v33, v66 :: v_dual_add_nc_u32 v34, s18, v207
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v67, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v68, v65 :: v_dual_add_nc_u32 v37, 4, v34
	v_dual_mov_b32 v69, v65 :: v_dual_add_nc_u32 v38, 6, v34
	v_dual_mov_b32 v70, v65 :: v_dual_add_nc_u32 v39, 8, v34
	v_dual_mov_b32 v71, v65 :: v_dual_add_nc_u32 v40, 10, v34
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_add_nc_u32_e32 v36, 2, v34
	v_add_nc_u32_e32 v121, 12, v34
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v122, 14, v34
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v116, v72 :: v_dual_mov_b32 v113, v69
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v115, v71
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s8, v121, v210
	v_cmp_le_i32_e64 s9, v122, v210
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v114, v70 :: v_dual_mov_b32 v111, v67
	v_dual_mov_b32 v112, v68 :: v_dual_mov_b32 v109, v65
	v_mov_b32_e32 v110, v66
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s1, v36, v210
	v_cmp_le_i32_e32 vcc_lo, v34, v210
	v_cmp_le_i32_e64 s7, v40, v210
	v_cmp_le_i32_e64 s3, v37, v210
	v_cmp_le_i32_e64 s5, v38, v210
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s1, s0, s1
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s6, v39, v210
	.loc	1 239 17                        ; attention_backward.py:239:17
	s_and_b32 s8, s0, s8
	s_and_b32 s9, s0, s9
	s_and_b32 s3, s0, s3
	s_and_b32 s5, s0, s5
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s0, s7
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s18, s18, 16
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(1)
	ds_store_b128 v206, v[93:96]
	s_waitcnt vmcnt(0)
	ds_store_b128 v206, v[117:120] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[117:120], v35
	ds_load_b128 v[121:124], v84
	ds_load_b128 v[125:128], v85
	ds_load_b128 v[129:132], v86
	ds_load_b128 v[133:136], v87
	ds_load_b128 v[137:140], v88
	ds_load_b128 v[141:144], v89
	ds_load_b128 v[145:148], v90
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s18, s49
	v_add_nc_u32_e32 v91, s19, v91
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[109:116], v[117:124], v[161:168], v[109:116]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[109:116], v[125:132], v[1:8], v[109:116]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[109:116], v[133:140], v[9:16], v[109:116]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[109:116], v[141:148], v[222:229], v[109:116]
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_dual_mul_f32 v34, s48, v109 :: v_dual_mul_f32 v35, s48, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v66, s48, v116
	v_dual_mul_f32 v36, s48, v111 :: v_dual_mul_f32 v39, s48, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v37, s48, v112
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v35, 0xff800000, v35, s1
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v40, s48, v115
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v67, 0xff800000, v66, s9
	v_cndmask_b32_e32 v34, 0xff800000, v34, vcc_lo
	v_cndmask_b32_e64 v36, 0xff800000, v36, s3
	v_cndmask_b32_e64 v37, 0xff800000, v37, s5
	v_cndmask_b32_e64 v40, 0xff800000, v40, s8
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v38, s48, v113
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v39, 0xff800000, v39, s7
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v66, v34, v35, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v69, v40, v67
.Ltmp39:
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v38, 0xff800000, v38, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v68, v37, v38, v39
	v_max3_f32 v66, v66, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v68, v66, s22, 0xfedcba98 op_sel:[1,0]
.Ltmp42:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v66, v33, v66, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v34, v34, v66
	v_sub_f32_e32 v35, v35, v66
	v_sub_f32_e32 v36, v36, v66
	v_sub_f32_e32 v40, v40, v66
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v40, v40
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v34, 0, v34, vcc_lo
	v_cndmask_b32_e64 v35, 0, v35, s1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v37, v37, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v36, 0, v36, s3
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v33
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v38, v66
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp44:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v37, v37
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v37, 0, v37, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v38, 0, v38, s6
.Ltmp45:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v36, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v39, v39, v66 :: v_dual_add_f32 v34, v34, v35
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v39, 0, v39, s7
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v67, v67, v66 :: v_dual_add_f32 v36, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v67, v67
	.loc	1 260 70 is_stmt 1              ; attention_backward.py:260:70
	v_sub_f32_e32 v38, v33, v66
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v67, 0, v67, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v37, v40, v67
	v_add_f32_e32 v35, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp48:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v36, v38
	v_mov_b32_e32 v37, v83
	.loc	1 260 21 is_stmt 0              ; attention_backward.py:260:21
	v_dual_cndmask_b32 v33, 0, v36 :: v_dual_add_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v35, v34, s22, 0xfedcba98 op_sel:[1,0]
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v83, v34, v35
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp51:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v83, v37, v33
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_mov_b32 v83, 0
.LBB0_4:                                ; %Flow148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v83
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v113, v78, v82 :: v_dual_mov_b32 v72, 0
.Ltmp53:
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s1, 0, v83
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v110, v75, v79 :: v_dual_and_b32 v35, 31, v0
.Ltmp55:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v34, 0, 32, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42000000, vcc_lo
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cmp_eq_u32_e32 vcc_lo, 0, v103
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v34, v83, v34
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v111, v76, v80 :: v_dual_add_f32 v112, v77, v81
	v_dual_mov_b32 v71, v72 :: v_dual_add_nc_u32 v36, 0, v73
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp57:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v34, v34
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_lshrrev_b32_e32 v26, 4, v0
	v_mov_b32_e32 v69, v72
	v_mov_b32_e32 v67, v72
	v_mov_b32_e32 v65, v72
	v_mov_b32_e32 v80, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v70, v72 :: v_dual_sub_f32 v33, v34, v33
	v_lshl_add_u32 v34, v74, 2, 0
	v_mov_b32_e32 v79, v72
	v_mov_b32_e32 v78, v72
	v_dual_mov_b32 v68, v72 :: v_dual_add_f32 v33, v66, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v34, v103, 1, v34
	v_mov_b32_e32 v66, v72
	v_mov_b32_e32 v77, v72
	v_mov_b32_e32 v76, v72
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v212, 0, v33, s1
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v33, v35, 2, 0
	v_mov_b32_e32 v75, v72
	v_mov_b32_e32 v74, v72
	v_mov_b32_e32 v73, v72
	ds_store_b32 v34, v212
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v34, s25, v35
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v33
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v35, s28, v35
	.loc	1 128 21 is_stmt 1              ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, 0x800, v34
	v_mov_b32_e32 v96, v72
	v_mov_b32_e32 v95, v72
	v_mov_b32_e32 v94, v72
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v34, v35, s25, 2
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v109, 24, v0
	v_mov_b32_e32 v93, v72
	v_mov_b32_e32 v92, v72
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_mov_b32 v91, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v37, 1, v109
	v_mov_b32_e32 v90, v72
	v_mov_b32_e32 v89, v72
	v_mov_b32_e32 v88, v72
	v_mov_b32_e32 v87, v72
	v_add3_u32 v35, 0, v100, v37
	v_mov_b32_e32 v86, v72
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v33, v34, s[20:23], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v36, v[110:113]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v35
	v_mov_b32_e32 v85, v72
	v_mov_b32_e32 v84, v72
	v_mov_b32_e32 v83, v72
	v_mov_b32_e32 v82, v72
	v_mov_b32_e32 v81, v72
	s_mov_b32 s24, 0
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s29
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v33, v34, s[16:19], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v36, v[110:113]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.5:                                ; %.lr.ph102
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_dual_mov_b32 v77, 0x5410 :: v_dual_lshlrev_b32 v34, 1, v0
	v_lshl_or_b32 v72, v109, 6, v100
	v_dual_mov_b32 v79, 0x7632 :: v_dual_lshlrev_b32 v36, 2, v103
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v34, 60, v34
	v_lshlrev_b32_e32 v71, 1, v109
	v_and_b32_e32 v76, 16, v0
	v_lshlrev_b32_e32 v75, 5, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_bfe_i32 v38, v0, 3, 1
	v_mov_b32_e32 v89, v81
	v_mov_b32_e32 v90, v81
	v_xor_b32_e32 v71, v72, v71
	v_dual_mov_b32 v85, v81 :: v_dual_and_b32 v72, 3, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v76
	v_and_b32_e32 v33, 8, v0
	v_lshlrev_b32_e32 v35, 6, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v91, v81 :: v_dual_lshlrev_b32 v78, 9, v72
	v_dual_mov_b32 v93, v81 :: v_dual_lshlrev_b32 v72, 4, v72
	v_cndmask_b32_e32 v76, 0x1054, v77, vcc_lo
	v_dual_mov_b32 v92, v81 :: v_dual_and_b32 v75, 0x180, v75
	v_mov_b32_e32 v94, v81
	v_mov_b32_e32 v82, v81
	v_lshrrev_b32_e32 v37, 1, v33
	v_dual_mov_b32 v88, v81 :: v_dual_lshlrev_b32 v33, 3, v33
	v_or3_b32 v32, v75, v72, v78
	v_lshl_or_b32 v72, v76, 8, v76
	v_cndmask_b32_e32 v76, 0x3276, v79, vcc_lo
	v_and_b32_e32 v35, 64, v35
	v_dual_mov_b32 v96, v81 :: v_dual_lshlrev_b32 v77, 3, v0
	v_mov_b32_e32 v83, v81
	v_mov_b32_e32 v86, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v213, v35, v34, v36
	v_lshlrev_b32_e32 v34, 8, v99
	v_lshlrev_b32_e32 v35, 2, v99
	v_lshrrev_b32_e32 v39, 2, v103
	v_dual_mov_b32 v84, v81 :: v_dual_add_nc_u32 v37, 0, v37
	v_xor_b32_e32 v40, 0x208, v213
	v_xor_b32_e32 v65, 0x30c, v213
	v_or3_b32 v215, v34, v33, v35
	v_xor_b32_e32 v33, 0x410, v213
	v_dual_mov_b32 v95, v81 :: v_dual_and_b32 v38, 0x420, v38
	v_add_nc_u32_e32 v0, 0, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v67, 4, v215
	v_xor_b32_e32 v73, 12, v215
	v_and_or_b32 v75, 0x180, v77, v100
	v_and_b32_e32 v72, 0x540054, v72
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v65
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	s_lshl_b32 s3, s26, 14
	s_lshl_b32 s5, s27, 11
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v37, v37, v39, v100
	v_xor_b32_e32 v34, 0x514, v213
	v_xor_b32_e32 v69, 8, v215
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s3, s3, s5
	v_add_nc_u32_e32 v230, 0, v67
	v_mov_b32_e32 v67, v81
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v33
	v_xor_b32_e32 v216, v75, v38
	v_or_b32_e32 v75, s3, v98
	v_add_nc_u32_e32 v234, 0, v73
	v_mov_b32_e32 v73, v81
	v_lshl_or_b32 v72, v72, 4, v72
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v214, v37
	v_xor_b32_e32 v35, 0x618, v213
	v_dual_mov_b32 v87, v81 :: v_dual_add_nc_u32 v36, 0, v36
	v_lshl_or_b32 v38, v76, 8, v76
	v_add_nc_u32_e32 v232, 0, v69
	v_mov_b32_e32 v69, v81
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v34
	v_and_b32_e32 v217, 0x5040504, v72
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_or_b32_e32 v72, 8, v75
	v_mul_lo_u32 v75, s34, v75
	s_lshl_b32 s3, s26, 13
	s_lshl_b32 s5, s27, 10
	v_xor_b32_e32 v37, 0x71c, v213
	v_and_b32_e32 v38, 0x760076, v38
	s_add_i32 s3, s3, s5
	v_add_nc_u32_e32 v243, v36, v71
	v_mov_b32_e32 v71, v81
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v35
	v_mul_lo_u32 v72, s34, v72
	v_or_b32_e32 v80, s3, v98
	v_xor_b32_e32 v39, 0x104, v213
	v_xor_b32_e32 v66, 16, v215
	v_xor_b32_e32 v68, 20, v215
	v_xor_b32_e32 v70, 24, v215
	v_xor_b32_e32 v74, 28, v215
	v_xor_b32_e32 v77, 16, v32
	v_xor_b32_e32 v78, 32, v32
	v_xor_b32_e32 v76, 48, v32
	v_xor_b32_e32 v79, 0x210, v216
	v_lshl_add_u32 v221, v75, 1, v100
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v75, v81 :: v_dual_add_nc_u32 v0, 0, v37
	v_lshl_or_b32 v38, v38, 4, v38
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_lshl3_add_u32 s1, s26, s27
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mad_u64_u32 v[189:190], null, s35, v80, v[97:98]
	s_mul_i32 s1, s1, s35
	v_and_b32_e32 v218, 0x7060706, v38
	v_lshl_or_b32 v219, s1, 8, v100
	v_lshl_add_u32 v220, v72, 1, v100
	v_add_nc_u32_e32 v208, 0, v39
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v236, 0, v66
	v_add_nc_u32_e32 v231, 0, v68
	v_add_nc_u32_e32 v233, 0, v70
	v_dual_mov_b32 v80, v81 :: v_dual_add_nc_u32 v235, 0, v74
	v_add_nc_u32_e32 v0, 0, v101
	v_dual_mov_b32 v66, v81 :: v_dual_add_nc_u32 v237, 0, v102
	v_add_nc_u32_e32 v238, 0, v104
	v_dual_mov_b32 v68, v81 :: v_dual_add_nc_u32 v239, 0, v105
	v_add_nc_u32_e32 v240, 0, v106
	v_dual_mov_b32 v70, v81 :: v_dual_add_nc_u32 v241, 0, v107
	v_add_nc_u32_e32 v242, 0, v108
	v_add_nc_u32_e32 v244, 0, v77
	v_add_nc_u32_e32 v245, 0, v78
	v_add_nc_u32_e32 v246, 0, v76
	v_dual_mov_b32 v74, v81 :: v_dual_add_nc_u32 v247, 0, v79
	v_mov_b32_e32 v76, v81
	v_mov_b32_e32 v77, v81
	v_mov_b32_e32 v78, v81
	v_mov_b32_e32 v79, v81
	v_mov_b32_e32 v65, v81
	v_mov_b32_e32 v72, v81
	s_and_b32 s21, s11, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_lshl_b32 s18, s35, 1
	s_lshl_b32 s19, s34, 5
	s_mov_b32 s20, s10
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	s_mov_b32 s42, s22
	s_mov_b32 s43, s23
	s_mov_b32 s46, s22
	s_mov_b32 s47, s23
	s_mov_b32 s35, 0x76543210
	s_mov_b32 s50, s24
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v26, off offset:32
	scratch_store_b32 off, v25, off offset:28
	scratch_store_b32 off, v0, off offset:24
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v33, 0x80000000, v221, s2
	v_cndmask_b32_e64 v34, 0x80000000, v220, s2
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v144, s31 :: v_dual_add_nc_u32 v35, 0, v213
	v_dual_mov_b32 v143, s30 :: v_dual_mov_b32 v138, s25
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_clause 0x1
	buffer_load_b128 v[97:100], v33, s[20:23], 0 offen
	buffer_load_b128 v[105:108], v34, s[20:23], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v137, s24 :: v_dual_add_nc_u32 v248, 0, v32
	v_dual_mov_b32 v31, v16 :: v_dual_mov_b32 v24, v9
	v_mov_b32_e32 v29, v14
	v_mov_b32_e32 v27, v12
	v_mov_b32_e32 v25, v10
	.loc	1 323 31                        ; attention_backward.py:323:31
	v_mov_b16_e64 v211.h, 0
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v221, s19, v221
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v142, s29
	v_mov_b32_e32 v140, s27
	v_mov_b32_e32 v30, v15
	v_mov_b32_e32 v28, v13
	v_mov_b32_e32 v26, v11
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v220, s19, v220
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v33.l, v97.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v33.h, v105.l
	v_mov_b16_e32 v34.l, v97.h
	v_mov_b16_e32 v34.h, v105.h
	ds_store_b32 v35, v33
	v_mov_b16_e32 v33.l, v98.l
	v_mov_b16_e32 v33.h, v106.l
	ds_store_b32 v208, v34
	v_mov_b16_e32 v34.l, v98.h
	v_mov_b16_e32 v34.h, v106.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v33
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	v_mov_b16_e32 v33.l, v99.l
	v_mov_b16_e32 v33.h, v107.l
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v34
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	v_mov_b16_e32 v34.l, v99.h
	v_mov_b16_e32 v34.h, v107.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v33
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	v_mov_b16_e32 v33.l, v100.l
	v_mov_b16_e32 v33.h, v108.l
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v34
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	v_mov_b16_e32 v34.l, v100.h
	v_mov_b16_e32 v34.h, v108.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v33
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v33, 0, v215
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 398 31                        ; attention_backward.py:398:31
	ds_load_2addr_b32 v[204:205], v33 offset1:8
	ds_load_2addr_b32 v[202:203], v33 offset0:32 offset1:40
	ds_load_2addr_b32 v[200:201], v230 offset1:8
	ds_load_2addr_b32 v[198:199], v230 offset0:32 offset1:40
	ds_load_2addr_b32 v[196:197], v232 offset1:8
	ds_load_2addr_b32 v[194:195], v232 offset0:32 offset1:40
	ds_load_2addr_b32 v[192:193], v234 offset1:8
	ds_load_2addr_b32 v[190:191], v234 offset0:32 offset1:40
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_nc_u32_e32 v33, 0, v209
	.loc	1 398 31                        ; attention_backward.py:398:31
	ds_load_2addr_b32 v[125:126], v236 offset1:8
	ds_load_2addr_b32 v[127:128], v236 offset0:32 offset1:40
	ds_load_2addr_b32 v[117:118], v231 offset1:8
	ds_load_2addr_b32 v[119:120], v231 offset0:32 offset1:40
	ds_load_2addr_b32 v[109:110], v233 offset1:8
	ds_load_2addr_b32 v[111:112], v233 offset0:32 offset1:40
	ds_load_2addr_b32 v[101:102], v235 offset1:8
	ds_load_2addr_b32 v[103:104], v235 offset0:32 offset1:40
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v206, v[97:100]
	ds_store_b128 v206, v[105:108] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[145:148], v33
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v33, 0x80000000, v189, s4
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v34, 0x80000000, v219, s4
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[37:38], v33, s[40:43], 0 offen
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[97:100], v34, s[44:47], 0 offen
	.loc	1 316 28                        ; attention_backward.py:316:28
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[149:152], v0
	ds_load_b128 v[153:156], v237
	ds_load_b128 v[157:160], v238
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v37.l, 15
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v141, s28 :: v_dual_and_b32 v34, 15, v37
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v36, v37, 16, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v40, 8, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v37.h, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v35, -16, v34
	v_or_b32_e32 v39, -16, v36
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v253, 8, v38
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v219, s18, v219
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v33.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v40.l, 15
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v189, s39, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v36, v36, v39, s1
	v_cndmask_b32_e32 v39, v34, v35, vcc_lo
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_alignbit_b32 v33, v38, v37, 24
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v139, s26
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v34, v37, 8, 4
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[145:152], v[161:168], v[137:144]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[145:148], v239
	ds_load_b128 v[149:152], v240
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v35, -16, v34
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[153:160], v[1:8], v[129:136]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[145:152], v[9:16], v[129:136]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[145:148], v241
	ds_load_b128 v[149:152], v242
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v243, v[97:100]
	ds_store_b128 v243, v[97:100] offset:256
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v97, v34, v35, vcc_lo
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b64 v[34:35], 24, v[37:38]
	v_dual_mov_b32 v23, v8 :: v_dual_and_b32 v98, 15, v33
	v_mov_b32_e32 v16, v1
	v_dual_mov_b32 v22, v7 :: v_dual_mov_b32 v21, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v34.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v35, -16, v98
	v_dual_mov_b32 v20, v5 :: v_dual_mov_b32 v19, v4
	v_mov_b32_e32 v18, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	v_dual_mov_b32 v17, v2 :: v_dual_mov_b32 v0, v57
	v_dual_mov_b32 v1, v58 :: v_dual_mov_b32 v6, v63
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v33, v98, v35, vcc_lo
	.loc	1 321 26 is_stmt 1              ; attention_backward.py:321:26
	v_wmma_f32_16x16x16_bf16 v[129:136], v[145:152], v[222:229], v[129:136]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v35, v34, 0, 8
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v145, v39
	v_cvt_f32_i32_e32 v147, v36
	v_cvt_f32_i32_e32 v148, v33
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v33.l, 4, v34.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v34, v37, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v33.h, 4, v37.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v146, v97
	v_dual_mov_b32 v2, v59 :: v_dual_add_nc_u32 v39, 0, v216
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v34.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v34, v40, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v211.l, v33.h, 15
	v_dual_mov_b32 v3, v60 :: v_dual_mov_b32 v4, v61
	v_mov_b32_e32 v5, v62
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v34.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e32 v34.l, v37.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v37, v37, 20, 4
	v_mov_b32_e32 v7, v64
	v_dual_mov_b32 v64, v56 :: v_dual_mov_b32 v63, v55
	v_mov_b32_e32 v60, v52
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v34, v34, 0, 8
	v_dual_mov_b32 v62, v54 :: v_dual_mov_b32 v61, v53
	v_dual_mov_b32 v59, v51 :: v_dual_mov_b32 v58, v50
	v_dual_mov_b32 v57, v49 :: v_dual_mov_b32 v56, v48
	v_dual_mov_b32 v55, v47 :: v_dual_mov_b32 v50, v42
	v_dual_mov_b32 v54, v46 :: v_dual_mov_b32 v53, v45
	v_dual_mov_b32 v52, v44 :: v_dual_mov_b32 v51, v43
	v_mov_b32_e32 v49, v41
	v_dual_mov_b32 v41, v181 :: v_dual_mov_b32 v48, v188
	v_dual_mov_b32 v43, v183 :: v_dual_mov_b32 v8, v161
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v42, v182
	v_dual_mov_b32 v44, v184 :: v_dual_mov_b32 v45, v185
	v_mov_b32_e32 v10, v163
	v_dual_mov_b32 v46, v186 :: v_dual_mov_b32 v47, v187
	v_mov_b32_e32 v12, v165
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[185:188], v248
	ds_load_b128 v[121:124], v248 offset:64
	ds_load_b128 v[173:176], v244
	ds_load_b128 v[113:116], v244 offset:64
	v_dual_mov_b32 v9, v162 :: v_dual_mov_b32 v14, v167
	v_mov_b32_e32 v13, v166
	v_mov_b32_e32 v15, v168
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v36, -16, v211
	v_mov_b32_e32 v11, v164
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[165:168], v245
	ds_load_b128 v[105:108], v245 offset:64
	ds_load_b128 v[153:156], v246
	ds_load_b128 v[97:100], v246 offset:64
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[145:148]
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v33.h, 4, v40.l
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v146, -16, v37
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v34.l
	.loc	1 362 30 is_stmt 1              ; attention_backward.py:362:30
	v_mov_b16_e64 v145.h, v211.h
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v36, v211, v36, vcc_lo
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v145.l, v33.h, 15
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v254, 0xffff0000, v187
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v34, v37, v146, s3
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v37.l, v33.l, 15
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v37.h, v211.h
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v33.l, v35.l
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v40, -16, v145
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v147, v34
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e64 v211.l, v38.h
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v35, -16, v37
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v33.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v33, v145, v40, s1
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v145, v36
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v36, 15, v38
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v40, 24, v38
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v34, v37, v35, s3
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v146, v33
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v38.h, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v37, -16, v36
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v255, 16, v188
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v148, v34
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v34, v38, 16, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v38.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v247, v[145:148]
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v35, -16, v34
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v33.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v40.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_barrier
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v34, v34, v35, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v35, v38, 24, 4
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v36, v36, v37, s1
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v33.l, v253.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v251, v34
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v37, -16, v35
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v249, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v35, v35, v37, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v37, v38, 8, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v252, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v145, -16, v37
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v33, v37, v145, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v37.l, 4, v38.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v250, v33
	ds_load_b128 v[33:36], v248
	ds_load_b128 v[161:164], v248 offset:64
	ds_load_b128 v[181:184], v244
	ds_load_b128 v[157:160], v244 offset:64
	ds_load_b128 v[177:180], v245
	ds_load_b128 v[149:152], v245 offset:64
	ds_load_b128 v[169:172], v246
	ds_load_b128 v[145:148], v246 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v39, v[249:252]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v39, v38, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v249.l, v37.l, 15
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v249.h, v211.h
	v_bfe_u32 v38, v38, 20, 4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v37.l, v39.l
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v39, -16, v249
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v37.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v37, v211, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v211.l, 4, v40.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v39, v249, v39, vcc_lo
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v249, -16, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v37.l
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v37.l, 4, v253.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v38, v38, v249, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v249.l, v37.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v37, v40, 0, 8
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v249.h, v211.h
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v40, -16, v211
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v37.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v37, v253, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v40, v211, v40, vcc_lo
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v211, -16, v249
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v37.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v37, v39
	v_cvt_f32_i32_e32 v39, v38
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v211, v249, v211, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v38, v211
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v211, 0xffff0000, v188
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v247, v[37:40]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v37, 16, v185
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v252, v33, v37
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v33, 0xffff0000, v185
	v_lshlrev_b32_e32 v37, 16, v173
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v251, v34, v33
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v33, 16, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v181, v181, v37
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v37, 0xffff0000, v173
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v252, v252
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v250, v35, v33 :: v_dual_and_b32 v33, 0xffff0000, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v182, v182, v37 :: v_dual_lshlrev_b32 v37, 16, v174
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v181, v181
	v_cmp_o_f32_e64 s3, v250, v250
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v249, v36, v33
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v182, v182
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v183, v183, v37
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v37, 0xffff0000, v174
	v_lshlrev_b32_e32 v253, 16, v187
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[185:188], v248
	ds_load_b128 v[33:36], v248 offset:64
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v248, 0xffff0000, v175
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v251, v251
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v184, v184, v37
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v183, v183
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v184, v184
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v185, v185, v253 :: v_dual_mul_f32 v186, v186, v254
	v_mul_f32_e32 v188, v188, v211
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v211, 16, v175
	v_lshlrev_b32_e32 v253, 16, v176
	v_and_b32_e32 v254, 0xffff0000, v176
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[37:40], v244
	ds_load_b128 v[173:176], v244 offset:64
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v249, v249
	v_cmp_o_f32_e64 s6, v185, v185
	v_cmp_o_f32_e64 s7, v186, v186
	v_cmp_o_f32_e64 s9, v188, v188
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v38, v38, v248
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v248, v251, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v40, v40, v254 :: v_dual_mul_f32 v187, v187, v255
	v_mul_f32_e32 v37, v37, v211
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v211, v252, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v248, v251, v248, 0x7fff
	v_bfe_u32 v251, v250, 16, 1
	v_cmp_o_f32_e64 s8, v187, v187
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v39, v39, v253
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v211, v252, v211, 0x7fff
	v_cmp_o_f32_e64 s14, v37, v37
	v_add3_u32 v250, v250, v251, 0x7fff
	v_bfe_u32 v251, v249, 16, 1
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v249, v249, v251, 0x7fff
	v_bfe_u32 v251, v185, 16, 1
	v_add3_u32 v185, v185, v251, 0x7fff
	v_bfe_u32 v251, v186, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v186, v186, v251, 0x7fff
	v_bfe_u32 v251, v187, 16, 1
	v_add3_u32 v187, v187, v251, 0x7fff
	v_bfe_u32 v251, v188, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v188, v188, v251, 0x7fff
	v_bfe_u32 v251, v181, 16, 1
	v_add3_u32 v251, v181, v251, 0x7fff
	v_bfe_u32 v181, v182, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v185.l, 0x7fff, v251.h, s10
	v_add3_u32 v252, v182, v181, 0x7fff
	v_bfe_u32 v181, v183, 16, 1
	v_cndmask_b16 v182.l, 0x7fff, v250.h, s3
	v_cndmask_b16 v182.h, 0x7fff, v249.h, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v253, v183, v181, 0x7fff
	v_bfe_u32 v181, v184, 16, 1
	v_cndmask_b16 v183.l, 0x7fff, v185.h, s6
	v_cndmask_b16 v183.h, 0x7fff, v186.h, s7
	v_cndmask_b16 v185.h, 0x7fff, v252.h, s11
	v_cndmask_b16 v186.l, 0x7fff, v253.h, s12
	v_add3_u32 v254, v184, v181, 0x7fff
	v_bfe_u32 v181, v37, 16, 1
	v_cndmask_b16 v184.l, 0x7fff, v187.h, s8
	v_cndmask_b16 v184.h, 0x7fff, v188.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v186.h, 0x7fff, v254.h, s13
	v_add3_u32 v37, v37, v181, 0x7fff
	v_bfe_u32 v181, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v187.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v181, 0x7fff
	v_bfe_u32 v181, v39, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v37, 16, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v187.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v181, 0x7fff
	v_bfe_u32 v181, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v188.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v181, 0x7fff
	v_cndmask_b16 v181.l, 0x7fff, v211.h, vcc_lo
	v_cndmask_b16 v181.h, 0x7fff, v248.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v188.h, 0x7fff, v40.h, s17
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[248:255], v[181:188], v[41:48], v[137:144]
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v137, v177, v37
	v_dual_mov_b32 v188, v48 :: v_dual_and_b32 v37, 0xffff0000, v165
	v_mov_b32_e32 v183, v43
	v_dual_mov_b32 v187, v47 :: v_dual_mov_b32 v186, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v138, v178, v37 :: v_dual_lshlrev_b32 v37, 16, v166
	v_dual_mov_b32 v185, v45 :: v_dual_mov_b32 v184, v44
	v_dual_mov_b32 v182, v42 :: v_dual_mov_b32 v181, v41
	v_mul_f32_e32 v139, v179, v37
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v37, 0xffff0000, v166
	v_mov_b32_e32 v41, v49
	v_dual_mov_b32 v43, v51 :: v_dual_and_b32 v142, 0xffff0000, v167
	v_dual_mov_b32 v45, v53 :: v_dual_and_b32 v144, 0xffff0000, v168
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v140, v180, v37 :: v_dual_lshlrev_b32 v141, 16, v167
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v143, 16, v168
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[37:40], v245
	ds_load_b128 v[165:168], v245 offset:64
	v_mov_b32_e32 v42, v50
	v_mov_b32_e32 v44, v52
	v_dual_mov_b32 v46, v54 :: v_dual_mov_b32 v47, v55
	v_dual_mov_b32 v48, v56 :: v_dual_mov_b32 v49, v57
	v_mov_b32_e32 v50, v58
	v_mov_b32_e32 v52, v60
	v_dual_mov_b32 v54, v62 :: v_dual_mov_b32 v55, v63
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v178, 0xffff0000, v155
	v_dual_mov_b32 v56, v64 :: v_dual_lshlrev_b32 v177, 16, v155
	v_lshlrev_b32_e32 v179, 16, v156
	v_and_b32_e32 v180, 0xffff0000, v156
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_cmp_o_f32_e64 s1, v138, v138
	v_cmp_o_f32_e64 s3, v139, v139
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v141, v37, v141
	v_dual_mul_f32 v142, v38, v142 :: v_dual_lshlrev_b32 v37, 16, v153
	v_dual_mul_f32 v143, v39, v143 :: v_dual_mul_f32 v144, v40, v144
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v140, v140
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v169, v169, v37
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v37, 0xffff0000, v153
	v_mov_b32_e32 v51, v59
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v141, v141
	v_cmp_o_f32_e64 s7, v142, v142
	v_cmp_o_f32_e64 s8, v143, v143
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v170, v170, v37 :: v_dual_lshlrev_b32 v37, 16, v154
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v144, v144
	v_cmp_o_f32_e64 s10, v169, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s11, v170, v170
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v171, v171, v37
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v37, 0xffff0000, v154
	v_dual_mov_b32 v53, v61 :: v_dual_mov_b32 v64, v7
	v_mov_b32_e32 v63, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v171, v171
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v172, v172, v37
	ds_load_b128 v[37:40], v246
	ds_load_b128 v[153:156], v246 offset:64
	v_mov_b32_e32 v61, v4
	v_mov_b32_e32 v59, v2
	v_mov_b32_e32 v57, v0
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v172, v172
	v_mov_b32_e32 v62, v5
	v_mov_b32_e32 v60, v3
	v_mov_b32_e32 v58, v1
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v37, v37, v177
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v177, v137, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v38, v38, v178 :: v_dual_mul_f32 v39, v39, v179
	v_mul_f32_e32 v40, v40, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v37, v37
	v_add3_u32 v137, v137, v177, 0x7fff
	v_bfe_u32 v177, v138, 16, 1
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_cndmask_b16 v137.l, 0x7fff, v137.h, vcc_lo
	v_add3_u32 v138, v138, v177, 0x7fff
	v_bfe_u32 v177, v139, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v137.h, 0x7fff, v138.h, s1
	v_add3_u32 v139, v139, v177, 0x7fff
	v_bfe_u32 v177, v140, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v138.l, 0x7fff, v139.h, s3
	v_add3_u32 v140, v140, v177, 0x7fff
	v_bfe_u32 v177, v141, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v138.h, 0x7fff, v140.h, s5
	v_add3_u32 v141, v141, v177, 0x7fff
	v_bfe_u32 v177, v142, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v139.l, 0x7fff, v141.h, s6
	v_add3_u32 v142, v142, v177, 0x7fff
	v_bfe_u32 v177, v143, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v139.h, 0x7fff, v142.h, s7
	v_add3_u32 v143, v143, v177, 0x7fff
	v_bfe_u32 v177, v144, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v140.l, 0x7fff, v143.h, s8
	v_add3_u32 v144, v144, v177, 0x7fff
	v_bfe_u32 v177, v169, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v140.h, 0x7fff, v144.h, s9
	v_add3_u32 v169, v169, v177, 0x7fff
	v_bfe_u32 v177, v170, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v141.l, 0x7fff, v169.h, s10
	v_add3_u32 v170, v170, v177, 0x7fff
	v_bfe_u32 v177, v171, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v141.h, 0x7fff, v170.h, s11
	v_add3_u32 v171, v171, v177, 0x7fff
	v_bfe_u32 v177, v172, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v142.l, 0x7fff, v171.h, s12
	v_add3_u32 v172, v172, v177, 0x7fff
	v_bfe_u32 v177, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v142.h, 0x7fff, v172.h, s13
	v_add3_u32 v37, v37, v177, 0x7fff
	v_bfe_u32 v177, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v143.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v177, 0x7fff
	v_bfe_u32 v177, v39, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v37, 16, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v143.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v177, 0x7fff
	v_bfe_u32 v177, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v37, v161, v37
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v38, 0xffff0000, v121
	v_lshlrev_b32_e32 v121, 16, v123
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v144.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v177, 0x7fff
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v39, 16, v122
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v38, v162, v38
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v33, v33, v121
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v144.h, 0x7fff, v40.h, s17
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v39, v163, v39 :: v_dual_and_b32 v40, 0xffff0000, v122
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v38, v38
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v122, 0xffff0000, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[248:255], v[137:144], v[41:48], v[248:255]
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v137, v37, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v40, v164, v40
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v39, v39
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v34, v34, v122 :: v_dual_lshlrev_b32 v123, 16, v124
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v37, v37, v137, 0x7fff
	v_bfe_u32 v137, v38, 16, 1
	v_cmp_o_f32_e64 s5, v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v35, v35, v123 :: v_dual_and_b32 v124, 0xffff0000, v124
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v33, v33
	v_add3_u32 v38, v38, v137, 0x7fff
	v_bfe_u32 v137, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v36, v36, v124 :: v_dual_lshlrev_b32 v121, 16, v113
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v34, v34
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v113, 0xffff0000, v113
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v39, v39, v137, 0x7fff
	v_bfe_u32 v137, v40, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v121, v157, v121
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v35, v35
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v113, v158, v113 :: v_dual_lshlrev_b32 v122, 16, v114
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v40, v40, v137, 0x7fff
	v_bfe_u32 v137, v33, 16, 1
	v_cmp_o_f32_e64 s9, v36, v36
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v114, 0xffff0000, v114
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v122, v159, v122
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v121, v121
	v_add3_u32 v33, v33, v137, 0x7fff
	v_bfe_u32 v137, v34, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v114, v160, v114 :: v_dual_lshlrev_b32 v123, 16, v115
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v113, v113
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v115, 0xffff0000, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v34, v34, v137, 0x7fff
	v_bfe_u32 v137, v35, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v123, v173, v123
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v122, v122
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v115, v174, v115 :: v_dual_lshlrev_b32 v124, 16, v116
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v35, v35, v137, 0x7fff
	v_bfe_u32 v137, v36, 16, 1
	v_cmp_o_f32_e64 s13, v114, v114
	v_cndmask_b16 v138.l, 0x7fff, v39.h, s3
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v39, 16, v108
	v_and_b32_e32 v116, 0xffff0000, v116
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v36, v36, v137, 0x7fff
	v_bfe_u32 v137, v121, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v124, v175, v124
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v123, v123
	v_cndmask_b16 v138.h, 0x7fff, v40.h, s5
	v_cndmask_b16 v139.l, 0x7fff, v33.h, s6
	v_add3_u32 v121, v121, v137, 0x7fff
	v_bfe_u32 v137, v113, 16, 1
	v_cndmask_b16 v140.l, 0x7fff, v35.h, s8
	v_cndmask_b16 v140.h, 0x7fff, v36.h, s9
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v36, 0xffff0000, v106
	v_and_b32_e32 v40, 0xffff0000, v108
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v113, v113, v137, 0x7fff
	v_bfe_u32 v137, v122, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v39, v167, v39 :: v_dual_lshlrev_b32 v108, 16, v100
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v35, 16, v106
	v_lshlrev_b32_e32 v106, 16, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v122, v122, v137, 0x7fff
	v_bfe_u32 v137, v114, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v116, v176, v116 :: v_dual_lshlrev_b32 v33, 16, v105
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v115, v115
	v_cndmask_b16 v139.h, 0x7fff, v34.h, s7
	v_add3_u32 v114, v114, v137, 0x7fff
	v_bfe_u32 v137, v123, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v34, 0xffff0000, v105
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v106, v147, v106 :: v_dual_mul_f32 v33, v149, v33
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v98, 0xffff0000, v98
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v123, v123, v137, 0x7fff
	v_bfe_u32 v137, v115, 16, 1
	v_cmp_o_f32_e64 s16, v124, v124
	v_cndmask_b16 v141.h, 0x7fff, v113.h, s11
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v34, v150, v34
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v113, v33, 16, 1
	v_add3_u32 v115, v115, v137, 0x7fff
	v_bfe_u32 v137, v124, 16, 1
	v_cmp_o_f32_e64 s17, v116, v116
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v108, v155, v108 :: v_dual_lshlrev_b32 v105, 16, v97
	v_dual_mul_f32 v35, v151, v35 :: v_dual_mul_f32 v98, v148, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v124, v124, v137, 0x7fff
	v_bfe_u32 v137, v116, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v36, v152, v36 :: v_dual_mul_f32 v105, v145, v105
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v100, 0xffff0000, v100
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v35, v35
	v_add3_u32 v116, v116, v137, 0x7fff
	v_cndmask_b16 v137.l, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v33, v113, 0x7fff
	v_bfe_u32 v113, v34, 16, 1
	v_cndmask_b16 v137.h, 0x7fff, v38.h, s1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v100, v156, v100 :: v_dual_lshlrev_b32 v37, 16, v107
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v34, v113, 0x7fff
	v_bfe_u32 v113, v35, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v37, v165, v37 :: v_dual_and_b32 v38, 0xffff0000, v107
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v36, v36
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v40, v168, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v35, v35, v113, 0x7fff
	v_bfe_u32 v113, v36, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v38, v166, v38
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v37, v37
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v97, 0xffff0000, v97
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v39, v39
	v_add3_u32 v36, v36, v113, 0x7fff
	v_bfe_u32 v113, v37, 16, 1
	v_cmp_o_f32_e64 s7, v38, v38
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v97, v146, v97
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v40, v40
	v_cndmask_b16 v141.l, 0x7fff, v121.h, s10
	v_add3_u32 v37, v37, v113, 0x7fff
	v_bfe_u32 v113, v38, 16, 1
	v_cmp_o_f32_e64 s10, v105, v105
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v107, 16, v99
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v97, v97
	v_cndmask_b16 v142.l, 0x7fff, v122.h, s12
	v_add3_u32 v38, v38, v113, 0x7fff
	v_bfe_u32 v113, v39, 16, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v99, 0xffff0000, v99
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v107, v153, v107
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v106, v106
	v_cndmask_b16 v142.h, 0x7fff, v114.h, s13
	v_add3_u32 v39, v39, v113, 0x7fff
	v_bfe_u32 v113, v40, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v99, v154, v99
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v98, v98
	v_cndmask_b16 v143.l, 0x7fff, v123.h, s14
	v_cmp_o_f32_e64 s14, v107, v107
	v_add3_u32 v40, v40, v113, 0x7fff
	v_bfe_u32 v113, v105, 16, 1
	v_cndmask_b16 v143.h, 0x7fff, v115.h, s15
	v_cmp_o_f32_e64 s15, v99, v99
	v_cndmask_b16 v144.l, 0x7fff, v124.h, s16
	v_cndmask_b16 v144.h, 0x7fff, v116.h, s17
	v_add3_u32 v105, v105, v113, 0x7fff
	v_bfe_u32 v113, v97, 16, 1
	v_cmp_o_f32_e64 s16, v108, v108
	v_cmp_o_f32_e64 s17, v100, v100
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[248:255], v[137:144], v[49:56], v[248:255]
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v137.l, 0x7fff, v33.h, vcc_lo
	v_add3_u32 v97, v97, v113, 0x7fff
	v_bfe_u32 v113, v106, 16, 1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v33, s48, v129, -v212
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v137.h, 0x7fff, v34.h, s1
	v_cndmask_b16 v138.l, 0x7fff, v35.h, s3
	v_cndmask_b16 v138.h, 0x7fff, v36.h, s5
	v_add3_u32 v106, v106, v113, 0x7fff
	v_bfe_u32 v113, v98, 16, 1
	v_cndmask_b16 v139.l, 0x7fff, v37.h, s6
	v_cndmask_b16 v139.h, 0x7fff, v38.h, s7
	v_cndmask_b16 v140.l, 0x7fff, v39.h, s8
	v_cndmask_b16 v140.h, 0x7fff, v40.h, s9
	v_add3_u32 v98, v98, v113, 0x7fff
	v_bfe_u32 v113, v107, 16, 1
	v_cndmask_b16 v141.l, 0x7fff, v105.h, s10
	v_cndmask_b16 v141.h, 0x7fff, v97.h, s11
	v_cndmask_b16 v142.l, 0x7fff, v106.h, s12
	v_cndmask_b16 v142.h, 0x7fff, v98.h, s13
	v_add3_u32 v107, v107, v113, 0x7fff
	v_bfe_u32 v113, v99, 16, 1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v34, s48, v130, -v212
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v33
	v_mov_b32_e32 v168, v15
	.loc	1 382 30 is_stmt 1              ; attention_backward.py:382:30
	v_cndmask_b16 v143.l, 0x7fff, v107.h, s14
	v_add3_u32 v99, v99, v113, 0x7fff
	v_bfe_u32 v113, v108, 16, 1
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v34, v34
	v_mov_b32_e32 v166, v13
	v_mov_b32_e32 v164, v11
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v143.h, 0x7fff, v99.h, s15
	v_add3_u32 v108, v108, v113, 0x7fff
	v_bfe_u32 v113, v100, 16, 1
	v_mov_b32_e32 v162, v9
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v35, s48, v131, -v212
	v_fma_f32 v36, s48, v132, -v212
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v144.l, 0x7fff, v108.h, s16
	v_add3_u32 v100, v100, v113, 0x7fff
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v113, s50, v207
	v_mov_b32_e32 v163, v10
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v37, s48, v133, -v212
	v_fma_f32 v38, s48, v134, -v212
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v144.h, 0x7fff, v100.h, s17
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v114, 2, v113
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s1, v113, v210
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v39, s48, v135, -v212
	v_fma_f32 v40, s48, v136, -v212
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[248:255], v[137:144], v[57:64], v[248:255]
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v114, v210
	.loc	1 327 17 is_stmt 0              ; attention_backward.py:327:17
	s_and_b32 s1, s0, s1
	v_mov_b32_e32 v167, v14
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v33, 0, v33, s1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v97, v248, v214
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 vcc_lo, s0, vcc_lo
	v_dual_mov_b32 v161, v8 :: v_dual_cndmask_b32 v34, 0, v34
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v98, v249, v214
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v33, v33, v97
	v_dual_mov_b32 v165, v12 :: v_dual_sub_f32 v108, v255, v214
	v_dual_mov_b32 v1, v16 :: v_dual_mul_f32 v34, v34, v98
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_mul_f32_e32 v33, s38, v33
	v_mov_b32_e32 v3, v18
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v99, v250, v214
	v_sub_f32_e32 v100, v251, v214
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v34, s38, v34
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v97, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_dual_sub_f32 v105, v252, v214 :: v_dual_mov_b32 v2, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s1, v34, v34
	v_add3_u32 v33, v33, v97, 0x7fff
	v_bfe_u32 v97, v34, 16, 1
	v_mov_b32_e32 v4, v19
	v_mov_b32_e32 v6, v21
	v_mov_b32_e32 v8, v23
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_add3_u32 v34, v34, v97, 0x7fff
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v106, v253, v214
	v_sub_f32_e32 v107, v254, v214
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v121.l, v204.l
	v_mov_b16_e32 v121.h, v125.l
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v122.l, v205.l
	v_mov_b16_e32 v122.h, v126.l
	v_mov_b16_e64 v125.l, v204.h
	v_mov_b16_e64 v126.l, v205.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v34, v33, s35, 0xfedcba98 op_sel:[1,0]
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v123.l, v202.l
	v_mov_b16_e32 v123.h, v127.l
	v_mov_b16_e64 v124.l, v203.l
	v_mov_b16_e64 v124.h, v128.l
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v129, v34, v33, v217
	v_perm_b32 v130, v34, v33, v218
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v33, 4, v113
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v34, v36
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v127.l, v202.h
	v_mov_b16_e64 v128.l, v203.h
	v_mov_b16_e64 v114.l, v201.l
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v33, v210
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v33, 6, v113
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v114.h, v118.l
	v_mov_b16_e64 v118.l, v201.h
	v_mov_b16_e64 v115.l, v198.l
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s1, v33, v210
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v35
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v115.h, v119.l
	v_mov_b16_e64 v116.l, v199.l
	v_mov_b16_e32 v116.h, v120.l
	v_mov_b16_e64 v119.l, v198.h
	v_mov_b16_e64 v120.l, v199.h
	v_mov_b16_e64 v97.l, v192.l
	v_mov_b16_e32 v97.h, v101.l
	v_mov_b16_e64 v98.l, v193.l
	v_mov_b16_e32 v98.h, v102.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v33, 0, v33, vcc_lo
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 vcc_lo, s0, s1
	v_dual_mov_b32 v5, v20 :: v_dual_cndmask_b32 v34, 0, v34
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v101.l, v192.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v33, v33, v99
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v102.l, v193.h
	v_mov_b16_e64 v99.l, v190.l
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v34, v34, v100
	v_mov_b32_e32 v7, v22
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v33, s38, v33
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v99.h, v103.l
	v_mov_b16_e64 v100.l, v191.l
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v34, s38, v34
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v100.h, v104.l
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v103.l, v190.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v104.l, v191.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v33, v33, v35, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s50, s50, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_add3_u32 v34, v34, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	v_permlanex16_b32 v34, v33, s35, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v131, v34, v33, v217
	v_perm_b32 v132, v34, v33, v218
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v33, 8, v113
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v34, v38
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v33, v210
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v33, 10, v113
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s1, v33, v210
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v37
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e32 v33, 0, v33, vcc_lo
	.loc	1 327 17 is_stmt 1              ; attention_backward.py:327:17
	s_and_b32 vcc_lo, s0, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v9, v24 :: v_dual_cndmask_b32 v34, 0, v34
	v_mov_b32_e32 v13, v28
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v33, v33, v105
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v105.l, v196.l
	v_mov_b16_e32 v105.h, v109.l
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v34, v34, v106
	v_mov_b32_e32 v11, v26
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v33, s38, v33
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v106.l, v197.l
	v_mov_b16_e32 v106.h, v110.l
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v34, s38, v34
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v109.l, v196.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v110.l, v197.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s1, v34, v34
	v_mov_b32_e32 v10, v25
	v_add3_u32 v33, v33, v35, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	v_mov_b32_e32 v12, v27
	v_mov_b32_e32 v14, v29
	v_mov_b32_e32 v16, v31
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_add3_u32 v34, v34, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	v_permlanex16_b32 v34, v33, s35, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v133, v34, v33, v217
	v_perm_b32 v134, v34, v33, v218
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v33, 12, v113
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v34, v40
	.loc	1 327 26                        ; attention_backward.py:327:26
	v_cmp_le_i32_e32 vcc_lo, v33, v210
	.loc	1 317 21                        ; attention_backward.py:317:21
	v_add_nc_u32_e32 v33, 14, v113
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v113.l, v200.l
	v_mov_b16_e32 v113.h, v117.l
	v_mov_b16_e64 v117.l, v200.h
	.loc	1 327 17                        ; attention_backward.py:327:17
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 327 26 is_stmt 0              ; attention_backward.py:327:26
	v_cmp_le_i32_e64 s1, v33, v210
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e32 v33, 0, v33, vcc_lo
	.loc	1 327 17 is_stmt 1              ; attention_backward.py:327:17
	s_and_b32 vcc_lo, s0, s1
	v_dual_mov_b32 v15, v30 :: v_dual_cndmask_b32 v34, 0, v34
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s50, s49
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v33, v33, v107
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v107.l, v194.l
	v_mov_b16_e32 v107.h, v111.l
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v34, v34, v108
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v108.l, v195.l
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v33, s38, v33
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v108.h, v112.l
	v_mov_b16_e64 v111.l, v194.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v34, s38, v34
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v112.l, v195.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v34, v34
	v_add3_u32 v33, v33, v35, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_add3_u32 v34, v34, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	v_permlanex16_b32 v34, v33, s35, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v135, v34, v33, v217
	v_perm_b32 v136, v34, v33, v218
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[81:88], v[121:128], v[129:136], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[89:96], v[113:120], v[129:136], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[129:136], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[129:136], v[65:72]
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ; %Flow
	.loc	1 0 31 is_stmt 0                ; attention_backward.py:0:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v25, off, off offset:28
	scratch_load_b32 v26, off, off offset:32
.LBB0_8:                                ; %._crit_edge103
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v0, s34, v25
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e32 vcc_lo, s34, v207
	v_or_b32_e32 v1, 48, v207
	v_or_b32_e32 v2, 32, v207
	v_or_b32_e32 v3, 16, v207
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v4, 62, v26
	.loc	1 161 22 is_stmt 0              ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s1, s34, v1
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, v0, v207
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s34, v2
	v_cmp_gt_i32_e64 s3, s34, v3
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v5, v5, s33, 2
	v_add_nc_u32_e32 v3, v0, v3
	s_mov_b32 s38, 0x7ffffffe
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
	buffer_store_b32 v81, v4, s[36:39], 0 offen
	buffer_store_b32 v82, v6, s[36:39], 0 offen
	buffer_store_b32 v83, v7, s[36:39], 0 offen
	v_add_nc_u32_e32 v6, 48, v5
	v_add_nc_u32_e32 v4, 40, v5
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_add_nc_u32 v7, 56, v5
	v_add_lshl_u32 v3, v3, s33, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_clause 0x4
	buffer_store_b32 v84, v8, s[36:39], 0 offen
	buffer_store_b32 v85, v9, s[36:39], 0 offen
	buffer_store_b32 v86, v4, s[36:39], 0 offen
	buffer_store_b32 v87, v6, s[36:39], 0 offen
	buffer_store_b32 v88, v7, s[36:39], 0 offen
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
	buffer_store_b32 v89, v3, s[36:39], 0 offen
	buffer_store_b32 v90, v4, s[36:39], 0 offen
	buffer_store_b32 v91, v6, s[36:39], 0 offen
	v_cndmask_b32_e32 v3, 0x80000000, v8, vcc_lo
	v_add_nc_u32_e32 v4, 0x68, v5
	buffer_store_b32 v92, v7, s[36:39], 0 offen
	v_add_nc_u32_e32 v6, 0x70, v5
	v_add_nc_u32_e32 v7, 0x78, v5
	buffer_store_b32 v93, v3, s[36:39], 0 offen
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	v_add_lshl_u32 v2, v2, s33, 2
	v_add_lshl_u32 v1, v1, s33, 2
	v_add_lshl_u32 v0, v0, s33, 2
	buffer_store_b32 v94, v3, s[36:39], 0 offen
	v_add_nc_u32_e32 v3, 0x88, v5
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, s0, s2
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v7, 0xa8, v5
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_clause 0x2
	buffer_store_b32 v95, v4, s[36:39], 0 offen
	buffer_store_b32 v96, v6, s[36:39], 0 offen
	buffer_store_b32 v73, v2, s[36:39], 0 offen
	v_add_nc_u32_e32 v2, 0x90, v5
	v_add_nc_u32_e32 v4, 0x98, v5
	v_add_nc_u32_e32 v6, 0xa0, v5
	buffer_store_b32 v74, v3, s[36:39], 0 offen
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v4
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	buffer_store_b32 v75, v2, s[36:39], 0 offen
	v_add_nc_u32_e32 v2, 0xb0, v5
	s_clause 0x2
	buffer_store_b32 v76, v3, s[36:39], 0 offen
	buffer_store_b32 v77, v4, s[36:39], 0 offen
	buffer_store_b32 v78, v6, s[36:39], 0 offen
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
	buffer_store_b32 v79, v2, s[36:39], 0 offen
	buffer_store_b32 v80, v3, s[36:39], 0 offen
	buffer_store_b32 v65, v1, s[36:39], 0 offen
	buffer_store_b32 v66, v4, s[36:39], 0 offen
	buffer_store_b32 v67, v6, s[36:39], 0 offen
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
	buffer_store_b32 v68, v1, s[36:39], 0 offen
	buffer_store_b32 v69, v2, s[36:39], 0 offen
	buffer_store_b32 v70, v3, s[36:39], 0 offen
	buffer_store_b32 v71, v4, s[36:39], 0 offen
	buffer_store_b32 v72, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 40
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
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 40
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11884
; TotalNumSgprs: 53
; NumVgprs: 256
; ScratchSize: 40
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 53
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
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 40
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 9
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
