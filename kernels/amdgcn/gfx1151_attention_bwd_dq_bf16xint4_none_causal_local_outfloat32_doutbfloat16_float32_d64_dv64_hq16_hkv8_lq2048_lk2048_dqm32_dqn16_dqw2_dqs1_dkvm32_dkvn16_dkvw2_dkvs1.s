	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	s_load_b128 s[24:27], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x10
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s42, s2, 5
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v73, 1, v17
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_lshl_b32 s46, s3, 11
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s42, v98
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshlrev_b32_e32 v97, 3, v99
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s5, s42, s46
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
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
	s_and_b32 s29, s25, 0xffff
	s_mov_b32 s28, s24
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
	buffer_load_b128 v[1:4], v2, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s4, s35, v97
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s39, v17
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s28, s16
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
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x94
	s_load_b32 s1, s[0:1], 0x9c
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	v_lshlrev_b32_e32 v26, 2, v19
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v100, 4, v99
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s5, s3, 31
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v95.l, v83.l
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s0, s5, 28
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s0, s3, s0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v96.l, v83.l
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s5, s0, 0xfff0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s25, s0, 4
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v108.l, v83.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s5, s3, 0x10007
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v109.l, v83.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s5
	s_mov_b64 s[48:49], s[22:23]
	s_sext_i32_i8 s3, s3
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_waitcnt lgkmcnt(0)
	s_sub_i32 s0, s42, s6
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_ashr_i32 s43, s3, 1
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s5, s0, s1
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s3, s1, s42
	.loc	1 181 25                        ; attention_backward.py:181:25
	s_max_i32 s47, s5, 0
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s3, s3, 32
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
	buffer_load_b128 v[37:40], v21, s[28:31], 0 offen
	buffer_load_b128 v[33:36], v17, s[28:31], 0 offen
	buffer_load_b128 v[41:44], v26, s[28:31], 0 offen
	buffer_load_b128 v[45:48], v22, s[28:31], 0 offen
	buffer_load_b128 v[49:52], v27, s[28:31], 0 offen
	buffer_load_b128 v[53:56], v23, s[28:31], 0 offen
	buffer_load_b128 v[57:60], v28, s[28:31], 0 offen
	buffer_load_b128 v[61:64], v18, s[28:31], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v19, 1, v19
	s_and_b32 s29, s19, 0xffff
	s_mov_b32 s28, s18
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s19, s47, 0x7ffffff0
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[65:68], v24, s[28:31], 0 offen
	v_cndmask_b32_e32 v1, 0x80000000, v19, vcc_lo
	.loc	1 235 27                        ; attention_backward.py:235:27
	s_mul_f32 s18, s38, 0x3fb8aa3b
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[69:72], v1, s[28:31], 0 offen
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
	v_mul_f32_e32 v38, v38, v119
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v87.h, v71.l
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v40, v40, v118
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v42, v41, v89
	v_fmac_f32_e32 v38, v37, v85
	v_fmac_f32_e32 v46, v45, v87
.Ltmp2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[75:78], v1, s[28:31], 0 offen
	v_lshlrev_b32_e32 v1, 1, v20
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v40, v39, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v34, v34, v128 :: v_dual_cndmask_b32 v1, 0x80000000, v1
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v34, v33, v94 :: v_dual_add_f32 v33, v38, v40
.Ltmp6:
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[79:82], v1, s[28:31], 0 offen
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
	v_mul_f32_e32 v36, v36, v129
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v44, v43, v88
	v_fmac_f32_e32 v50, v49, v93
	v_fmac_f32_e32 v48, v47, v86
	v_fmac_f32_e32 v52, v51, v92
	v_fmac_f32_e32 v54, v53, v91
	v_fmac_f32_e32 v56, v55, v90
	v_dual_fmac_f32 v36, v35, v83 :: v_dual_add_f32 v35, v42, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v37, v50, v52
.Ltmp8:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 1, v103
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v54, v56
.Ltmp10:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v74, 15, v0
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v34, v36
	v_add_f32_e32 v36, v46, v48
.Ltmp12:
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v95.h, v82.l
	v_mov_b16_e32 v96.h, v81.l
	v_mov_b16_e32 v108.h, v80.l
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v33, v34 :: v_dual_add_f32 v34, v35, v36
	v_add_f32_e32 v35, v37, v38
.Ltmp14:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v209, v74, 7, v100
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v141, v1, v74
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp15:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v37, v33
.Ltmp16:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v109.h, v79.l
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v38, v34
.Ltmp18:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v1, v103, 6, v209
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v2, s42, v141
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_xor_b32_e32 v101, 16, v209
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp20:
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
	v_add_nc_u32_e32 v210, s1, v2
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[153:156], v110
	ds_load_b128 v[157:160], v111
	ds_load_b128 v[1:4], v112
	ds_load_b128 v[5:8], v113
	ds_load_b128 v[9:12], v114
	ds_load_b128 v[13:16], v115
	ds_load_b128 v[224:227], v116
	ds_load_b128 v[228:231], v117
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v206, v[65:68]
	ds_store_b128 v206, v[69:72] offset:1024
	v_and_b32_e32 v66, 0xffff0000, v80
	v_and_b32_e32 v65, 0xffff0000, v79
	v_and_b32_e32 v68, 0xffff0000, v82
	v_and_b32_e32 v67, 0xffff0000, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v33, v37 :: v_dual_mul_f32 v60, v60, v66
.Ltmp22:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v58, v58, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v64, v64, v68
	v_mul_f32_e32 v62, v62, v67
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v34, v38
	v_fmac_f32_e32 v60, v59, v108
	v_fmac_f32_e32 v58, v57, v109
	v_fmac_f32_e32 v64, v63, v95
	v_fmac_f32_e32 v62, v61, v96
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v37, v33 :: v_dual_mov_b32 v38, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v39, v58, v60
.Ltmp26:
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s1, s3, s7
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v40, v62, v64
.Ltmp28:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_store_b128 v206, v[75:78] offset:2048
	ds_store_b128 v206, v[79:82] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[173:176], v110
	ds_load_b128 v[177:180], v111
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v39, v40
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v39, v35 :: v_dual_add_nc_u32 v212, s7, v210
.Ltmp31:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[165:168], v112
	ds_load_b128 v[169:172], v113
	ds_load_b128 v[57:60], v114
	ds_load_b128 v[61:64], v115
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v40, v36
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[232:235], v116
	ds_load_b128 v[236:239], v117
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v35, v35, v39
.Ltmp36:
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s3, s3, 0x800
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s1, s1, 0x800
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s3, s3, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v36, v40 :: v_dual_mov_b32 v39, v35
.Ltmp38:
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s1, s1, 15
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v33, v37 :: v_dual_add_f32 v34, v34, v38
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v40, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_ashr_i32 s5, s3, 31
	.loc	1 241 43                        ; attention_backward.py:241:43
	v_subrev_nc_u32_e32 v211, s6, v210
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_ashr_i32 s6, s1, 31
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v35, v35, v39
.Ltmp44:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_lshr_b32 s5, s5, 28
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_lshr_b32 s6, s6, 28
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_add_i32 s3, s3, s5
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v40
.Ltmp46:
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_add_i32 s1, s1, s6
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v37, v33 :: v_dual_mov_b32 v38, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v39, v35 :: v_dual_mov_b32 v40, v36
.Ltmp48:
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s3, s3, -16
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s1, s1, -16
	v_xor_b32_e32 v102, 32, v209
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s52, s1, s3
	v_xor_b32_e32 v104, 48, v209
	v_xor_b32_e32 v105, 64, v209
	v_xor_b32_e32 v106, 0x50, v209
	v_xor_b32_e32 v107, 0x60, v209
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_xor_b32_e32 v108, 0x70, v209
.Ltmp50:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s19, s52
	s_cselect_b32 s53, -1, 0
	s_cmp_ge_i32 s19, s52
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_lshl_b32 s1, s25, 14
	s_lshl_b32 s3, s43, 11
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_add_nc_u32 v77, 0, v102
	s_add_i32 s1, s1, s3
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v76, 0, v101
	v_add3_u32 v41, s1, s19, v98
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v78, 0, v104
	v_add_nc_u32_e32 v79, 0, v105
	v_add_nc_u32_e32 v80, 0, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v42, 8, v41
	v_mul_lo_u32 v41, s34, v41
	v_add_nc_u32_e32 v81, 0, v107
	v_add_nc_u32_e32 v82, 0, v108
	s_and_b32 s29, s27, 0xffff
	v_mul_lo_u32 v42, s34, v42
	s_mov_b32 s28, s26
	s_lshl_b32 s22, s34, 5
	s_mov_b32 s23, 0x76543210
	v_lshl_add_u32 v83, v41, 1, v100
	s_mov_b32 s24, s19
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_add_u32 v84, v42, 1, v100
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e64 v41, 0x80000000, v83, s2
	v_cndmask_b32_e64 v42, 0x80000000, v84, s2
	v_add_nc_u32_e32 v43, 0, v209
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_min_i32_e32 v44, v210, v212
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_add_nc_u32_e32 v83, s22, v83
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x1
	buffer_load_b128 v[93:96], v41, s[28:31], 0 offen
	buffer_load_b128 v[109:112], v42, s[28:31], 0 offen
	v_dual_mov_b32 v41, v66 :: v_dual_add_nc_u32 v42, s24, v207
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v69, v65 :: v_dual_add_nc_u32 v48, 8, v42
	v_dual_mov_b32 v70, v65 :: v_dual_add_nc_u32 v47, 6, v42
	v_dual_mov_b32 v71, v65 :: v_dual_add_nc_u32 v114, 12, v42
	v_dual_mov_b32 v72, v65 :: v_dual_add_nc_u32 v113, 10, v42
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_add_nc_u32_e32 v45, 2, v42
	v_add_nc_u32_e32 v46, 4, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v92, v72 :: v_dual_add_nc_u32 v115, 14, v42
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s8, v113, v211
	v_cmp_ge_i32_e64 s9, v114, v211
	v_cmp_ge_i32_e64 s10, v115, v211
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s15, v44, v113
	v_cmp_ge_i32_e64 s16, v44, v114
	v_cmp_ge_i32_e64 s17, v44, v115
	.loc	1 234 26 is_stmt 1              ; attention_backward.py:234:26
	v_dual_mov_b32 v91, v71 :: v_dual_mov_b32 v90, v70
	v_dual_mov_b32 v89, v69 :: v_dual_mov_b32 v88, v68
	v_dual_mov_b32 v87, v67 :: v_dual_mov_b32 v86, v66
	v_mov_b32_e32 v85, v65
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v42, v211
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s1, v44, v42
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s3, v45, v211
	v_cmp_ge_i32_e64 s5, v46, v211
	v_cmp_ge_i32_e64 s6, v47, v211
	v_cmp_ge_i32_e64 s7, v48, v211
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s11, v44, v45
	v_cmp_ge_i32_e64 s12, v44, v46
	v_cmp_ge_i32_e64 s13, v44, v47
	v_cmp_ge_i32_e64 s14, v44, v48
	.loc	1 242 17 is_stmt 1              ; attention_backward.py:242:17
	s_and_b32 s50, s1, vcc_lo
	s_and_b32 s1, s11, s3
	s_and_b32 s3, s12, s5
	s_and_b32 s5, s13, s6
	s_and_b32 s6, s14, s7
	s_and_b32 s7, s15, s8
	s_and_b32 s8, s16, s9
	s_and_b32 vcc_lo, s0, s1
	s_and_b32 s1, s0, s3
	s_and_b32 s3, s0, s5
	s_and_b32 s5, s0, s6
	s_and_b32 s6, s0, s7
	s_and_b32 s7, s0, s8
	s_and_b32 s9, s17, s10
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s24, s24, 16
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s8, s0, s9
	s_and_b32 s9, s0, s50
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s24, s52
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(1)
	ds_store_b128 v206, v[93:96]
	s_waitcnt vmcnt(0)
	ds_store_b128 v206, v[109:112] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[109:112], v43
	ds_load_b128 v[113:116], v76
	ds_load_b128 v[117:120], v77
	ds_load_b128 v[121:124], v78
	ds_load_b128 v[125:128], v79
	ds_load_b128 v[129:132], v80
	ds_load_b128 v[133:136], v81
	ds_load_b128 v[137:140], v82
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_add_nc_u32_e32 v84, s22, v84
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[85:92], v[109:116], v[153:160], v[85:92]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[85:92], v[117:124], v[1:8], v[85:92]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[85:92], v[125:132], v[9:16], v[85:92]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[85:92], v[133:140], v[224:231], v[85:92]
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_dual_mul_f32 v47, s18, v90 :: v_dual_mul_f32 v48, s18, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v42, s18, v85 :: v_dual_mul_f32 v43, s18, v86
	v_dual_mul_f32 v44, s18, v87 :: v_dual_mul_f32 v45, s18, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, s18, v89
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v48, 0xff800000, v48, s7
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v66, s18, v92
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v42, 0xff800000, v42, s9
	v_cndmask_b32_e32 v43, 0xff800000, v43, vcc_lo
	v_cndmask_b32_e64 v44, 0xff800000, v44, s1
	v_cndmask_b32_e64 v45, 0xff800000, v45, s3
	v_cndmask_b32_e64 v46, 0xff800000, v46, s5
	v_cndmask_b32_e64 v47, 0xff800000, v47, s6
	v_cndmask_b32_e64 v67, 0xff800000, v66, s8
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v66, v42, v43, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v68, v45, v46, v47
	v_max_f32_e32 v69, v48, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v66, v66, v68, v69
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v68, v66, s23, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v66, v41, v66, v68
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v46, v46, v66
	v_sub_f32_e32 v47, v47, v66
	v_sub_f32_e32 v42, v42, v66
	v_sub_f32_e32 v48, v48, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v48, v48
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v46, 0, v46, s5
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v47, 0, v47, s6
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v43, v43, v66
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v42, 0, v42, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v48, 0, v48, s7
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v44, v44, v66 :: v_dual_cndmask_b32 v43, 0, v43
	v_sub_f32_e32 v45, v45, v66
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v44, v44
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp55:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v44, 0, v44, s1
	v_cndmask_b32_e64 v45, 0, v45, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v43, v44, v45 :: v_dual_add_f32 v44, v46, v47
.Ltmp57:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v46, v41, v66
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v42, v42, v43 :: v_dual_sub_f32 v67, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp59:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v67, v67
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v67, 0, v67, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v45, v48, v67
	v_add_f32_e32 v43, v44, v45
.Ltmp61:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v45, v75 :: v_dual_add_f32 v42, v42, v43
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v43, v42, s23, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v41, 0, v44, vcc_lo
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v75, v42, v43
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp65:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v75, v45, v41
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_mov_b32 v75, 0
.LBB0_4:                                ; %Flow148
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v75
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v37, v33, v37 :: v_dual_add_f32 v40, v36, v40
	v_dual_add_f32 v39, v35, v39 :: v_dual_mov_b32 v72, 0
.Ltmp67:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v42, 0, 32, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0x42000000, vcc_lo
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v34, v38 :: v_dual_and_b32 v43, 31, v0
.Ltmp69:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v34, v74, 2, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v42, v75, v42
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s1, 0, v75
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	v_lshl_add_u32 v36, v43, 2, 0
	s_waitcnt lgkmcnt(0)
	v_lshl_add_u32 v34, v103, 1, v34
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v42, v42
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
	v_cmp_eq_u32_e32 vcc_lo, 0, v103
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_lshrrev_b32_e32 v25, 4, v0
	v_mov_b32_e32 v71, v72
	v_mov_b32_e32 v69, v72
	v_mov_b32_e32 v67, v72
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v33, v42, v41 :: v_dual_mov_b32 v70, v72
	.loc	1 266 18                        ; attention_backward.py:266:18
	v_or_b32_e32 v41, s46, v43
	v_mov_b32_e32 v65, v72
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v80, v72 :: v_dual_add_f32 v33, v66, v33
	v_mov_b32_e32 v68, v72
	v_mov_b32_e32 v79, v72
	v_mov_b32_e32 v78, v72
	v_mov_b32_e32 v77, v72
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v214, 0, v33, s1
	v_dual_mov_b32 v66, v72 :: v_dual_and_b32 v33, 24, v0
	v_mov_b32_e32 v76, v72
	v_mov_b32_e32 v75, v72
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v34, v214
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v34, v36
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v36, s42, v43
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v42, 1, v33
	v_mov_b32_e32 v74, v72
	v_mov_b32_e32 v96, v72
	v_mov_b32_e32 v95, v72
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, 0x800, v36
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v36, v41, s42, 2
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v41, 0, v100, v42
	v_mov_b32_e32 v94, v72
	v_mov_b32_e32 v93, v72
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, vcc_lo, s1
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_add_nc_u32 v35, 0, v73
	v_mov_b32_e32 v73, v72
	v_mov_b32_e32 v92, v72
	v_mov_b32_e32 v91, v72
	v_mov_b32_e32 v90, v72
	v_mov_b32_e32 v89, v72
	v_mov_b32_e32 v88, v72
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v34, v36, s[20:23], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v35, v[37:40]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v34, v41
	v_mov_b32_e32 v87, v72
	v_mov_b32_e32 v86, v72
	v_mov_b32_e32 v85, v72
	v_mov_b32_e32 v84, v72
	v_mov_b32_e32 v83, v72
	v_mov_b32_e32 v82, v72
	v_mov_b32_e32 v81, v72
	s_mov_b32 s24, 0
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s50, s22
	s_mov_b32 s51, s23
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s53
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v34, v36, s[48:51], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v35, v[37:40]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.5:                                ; %.lr.ph102
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[173:176], off offset:32
	scratch_store_b128 off, v[177:180], off offset:48
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:32
	scratch_load_b128 v[53:56], off, off offset:48
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v36, 6, v0
	v_and_b32_e32 v69, 16, v0
	v_dual_mov_b32 v70, 0x5410 :: v_dual_lshlrev_b32 v35, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v83, v81 :: v_dual_lshlrev_b32 v38, 2, v103
	v_mov_b32_e32 v86, v81
	v_cmp_eq_u32_e32 vcc_lo, 0, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v35, 60, v35
	v_dual_mov_b32 v85, v81 :: v_dual_and_b32 v36, 64, v36
	v_dual_mov_b32 v91, v81 :: v_dual_lshlrev_b32 v66, 1, v33
	v_lshl_or_b32 v33, v33, 6, v100
	v_dual_cndmask_b32 v69, 0x1054, v70 :: v_dual_and_b32 v34, 8, v0
	v_dual_mov_b32 v84, v81 :: v_dual_and_b32 v67, 3, v0
	v_dual_mov_b32 v93, v81 :: v_dual_lshlrev_b32 v68, 5, v0
	v_mov_b32_e32 v70, 0x7632
	v_or3_b32 v215, v36, v35, v38
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_bfe_i32 v35, v0, 3, 1
	v_xor_b32_e32 v33, v33, v66
	v_dual_mov_b32 v73, v81 :: v_dual_lshlrev_b32 v66, 3, v0
	v_dual_cndmask_b32 v70, 0x3276, v70 :: v_dual_lshlrev_b32 v41, 2, v99
	v_dual_mov_b32 v88, v81 :: v_dual_lshlrev_b32 v71, 9, v67
	v_dual_mov_b32 v95, v81 :: v_dual_and_b32 v68, 0x180, v68
	v_dual_mov_b32 v90, v81 :: v_dual_lshlrev_b32 v67, 4, v67
	v_lshl_or_b32 v69, v69, 8, v69
	v_lshrrev_b32_e32 v39, 1, v34
	v_dual_mov_b32 v87, v81 :: v_dual_lshlrev_b32 v40, 8, v99
	v_dual_mov_b32 v89, v81 :: v_dual_lshlrev_b32 v34, 3, v34
	v_dual_mov_b32 v92, v81 :: v_dual_and_b32 v35, 0x420, v35
	v_and_or_b32 v66, 0x180, v66, v100
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v25, off offset:100
	scratch_store_b32 off, v141, off offset:96
	v_or3_b32 v25, v68, v67, v71
	v_dual_mov_b32 v94, v81 :: v_dual_and_b32 v67, 0x540054, v69
	v_lshl_or_b32 v68, v70, 8, v70
	v_lshrrev_b32_e32 v37, 2, v103
	v_dual_mov_b32 v82, v81 :: v_dual_add_nc_u32 v39, 0, v39
	v_or3_b32 v216, v40, v34, v41
	v_xor_b32_e32 v34, 0x104, v215
	v_xor_b32_e32 v0, v66, v35
	v_lshl_or_b32 v35, v67, 4, v67
	v_dual_mov_b32 v77, v81 :: v_dual_and_b32 v66, 0x760076, v68
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	s_lshl_b32 s1, s25, 14
	s_lshl_b32 s3, s43, 11
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v36, v39, v37, v100
	v_xor_b32_e32 v37, 0x208, v215
	v_xor_b32_e32 v65, 28, v216
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_xor_b32_e32 v70, 0x210, v0
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s1, s1, s3
	v_add_nc_u32_e32 v0, 0, v34
	v_dual_mov_b32 v96, v81 :: v_dual_and_b32 v219, 0x5040504, v35
	v_lshl_or_b32 v35, v66, 4, v66
	v_add3_u32 v66, s1, s19, v98
	v_xor_b32_e32 v39, 0x30c, v215
	v_xor_b32_e32 v67, 32, v25
	v_add_nc_u32_e32 v32, 0, v65
	v_mov_b32_e32 v65, v81
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v25, off offset:68
	scratch_store_b32 off, v0, off
	v_add_nc_u32_e32 v0, 0, v37
	v_dual_mov_b32 v74, v81 :: v_dual_add_nc_u32 v71, 8, v66
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v217, v36
	v_xor_b32_e32 v36, 0x410, v215
	v_xor_b32_e32 v69, 16, v25
	v_add_nc_u32_e32 v247, 0, v67
	v_mov_b32_e32 v67, v81
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v39
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mul_lo_u32 v71, s34, v71
	v_xor_b32_e32 v40, 0x514, v215
	v_add_nc_u32_e32 v246, 0, v69
	v_mov_b32_e32 v69, v81
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v36
	v_xor_b32_e32 v41, 0x618, v215
	v_xor_b32_e32 v42, 0x71c, v215
	v_lshl_add_u32 v222, v71, 1, v100
	v_mov_b32_e32 v71, v81
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v40
	s_lshr_b32 s5, s47, 4
	s_lshl_b32 s3, s25, 10
	s_lshl_b32 s6, s25, 13
	s_lshl_b32 s7, s43, 10
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v41
	s_add_i32 s1, s5, s3
	s_lshl_b32 s3, s43, 7
	s_add_i32 s6, s6, s7
	s_add_i32 s1, s1, s3
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v42
	s_lshl3_add_u32 s3, s5, s6
	v_mul_lo_u32 v66, s34, v66
	v_or_b32_e32 v72, s3, v98
	v_xor_b32_e32 v43, 16, v216
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v101
	v_xor_b32_e32 v44, 4, v216
	v_xor_b32_e32 v45, 20, v216
	v_xor_b32_e32 v46, 8, v216
	v_xor_b32_e32 v47, 24, v216
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v102
	v_xor_b32_e32 v48, 12, v216
	v_dual_mov_b32 v75, v81 :: v_dual_add_nc_u32 v38, 0, v38
	v_xor_b32_e32 v68, 48, v25
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v104
	v_mad_u64_u32 v[189:190], null, s35, v72, v[97:98]
	s_mul_i32 s1, s35, s1
	v_dual_mov_b32 v79, v81 :: v_dual_and_b32 v220, 0x7060706, v35
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v105
	v_lshl_add_u32 v221, s1, 1, v100
	v_lshl_add_u32 v223, v66, 1, v100
	v_add_nc_u32_e32 v240, 0, v43
	v_add_nc_u32_e32 v218, 0, v44
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v106
	v_dual_mov_b32 v76, v81 :: v_dual_add_nc_u32 v241, 0, v45
	v_add_nc_u32_e32 v242, 0, v46
	v_dual_mov_b32 v78, v81 :: v_dual_add_nc_u32 v243, 0, v47
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v107
	v_add_nc_u32_e32 v244, 0, v48
	v_dual_mov_b32 v80, v81 :: v_dual_add_nc_u32 v245, v38, v33
	v_add_nc_u32_e32 v248, 0, v68
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v108
	v_dual_mov_b32 v68, v81 :: v_dual_add_nc_u32 v249, 0, v70
	v_mov_b32_e32 v66, v81
	v_mov_b32_e32 v70, v81
	v_mov_b32_e32 v72, v81
	s_and_b32 s21, s27, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_lshl_b32 s48, s35, 1
	s_lshl_b32 s35, s34, 5
	s_mov_b32 s20, s26
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
	s_mov_b32 s49, 0x76543210
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v33, 0x80000000, v223, s2
	v_cndmask_b32_e64 v37, 0x80000000, v222, s2
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v144, s31 :: v_dual_add_nc_u32 v43, 0, v215
	v_dual_mov_b32 v143, s30 :: v_dual_mov_b32 v138, s25
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_clause 0x1
	buffer_load_b128 v[33:36], v33, s[20:23], 0 offen
	buffer_load_b128 v[37:40], v37, s[20:23], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v141, s28
	v_mov_b32_e32 v139, s26
	v_mov_b32_e32 v137, s24
	v_dual_mov_b32 v31, v16 :: v_dual_mov_b32 v28, v13
	v_dual_mov_b32 v29, v14 :: v_dual_mov_b32 v26, v11
	v_dual_mov_b32 v27, v12 :: v_dual_mov_b32 v24, v9
	v_mov_b32_e32 v25, v10
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v223, s35, v223
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v142, s29
	v_mov_b32_e32 v140, s27
	v_mov_b32_e32 v30, v15
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v222, s35, v222
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v41.l, v33.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v41.h, v37.l
	v_mov_b16_e32 v42.l, v33.h
	v_mov_b16_e32 v42.h, v37.h
	ds_store_b32 v43, v41
	v_mov_b16_e32 v41.l, v34.l
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v42
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	v_mov_b16_e32 v41.h, v38.l
	v_mov_b16_e32 v42.l, v34.h
	v_mov_b16_e32 v42.h, v38.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v41
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	v_mov_b16_e32 v41.l, v35.l
	v_mov_b16_e32 v41.h, v39.l
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v42
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	v_mov_b16_e32 v42.l, v35.h
	v_mov_b16_e32 v42.h, v39.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v41
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	v_mov_b16_e32 v41.l, v36.l
	v_mov_b16_e32 v41.h, v40.l
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v42
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	v_mov_b16_e32 v42.l, v36.h
	v_mov_b16_e32 v42.h, v40.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v41
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v41, 0, v216
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 398 31                        ; attention_backward.py:398:31
	ds_load_2addr_b32 v[125:126], v240 offset1:8
	ds_load_2addr_b32 v[127:128], v240 offset0:32 offset1:40
	ds_load_2addr_b32 v[117:118], v241 offset1:8
	ds_load_2addr_b32 v[119:120], v241 offset0:32 offset1:40
	ds_load_2addr_b32 v[109:110], v243 offset1:8
	ds_load_2addr_b32 v[111:112], v243 offset0:32 offset1:40
	ds_load_2addr_b32 v[101:102], v32 offset1:8
	ds_load_2addr_b32 v[103:104], v32 offset0:32 offset1:40
	ds_load_2addr_b32 v[204:205], v41 offset1:8
	ds_load_2addr_b32 v[202:203], v41 offset0:32 offset1:40
	ds_load_2addr_b32 v[200:201], v218 offset1:8
	ds_load_2addr_b32 v[198:199], v218 offset0:32 offset1:40
	ds_load_2addr_b32 v[196:197], v242 offset1:8
	ds_load_2addr_b32 v[194:195], v242 offset0:32 offset1:40
	ds_load_2addr_b32 v[192:193], v244 offset1:8
	ds_load_2addr_b32 v[190:191], v244 offset0:32 offset1:40
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v206, v[33:36]
	ds_store_b128 v206, v[37:40] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v33, 0, v209
	ds_load_b128 v[33:36], v33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v0
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[33:40], v[153:160], v[137:144]
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[145:148], v0
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[149:152], v0
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[145:152], v[1:8], v[129:136]
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[33:36], v0
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v0
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[33:40], v[9:16], v[129:136]
	v_dual_mov_b32 v23, v8 :: v_dual_mov_b32 v20, v5
	v_dual_mov_b32 v22, v7 :: v_dual_mov_b32 v21, v6
	v_dual_mov_b32 v18, v3 :: v_dual_mov_b32 v19, v4
	v_dual_mov_b32 v16, v1 :: v_dual_mov_b32 v17, v2
	v_dual_mov_b32 v8, v153 :: v_dual_mov_b32 v9, v154
	v_dual_mov_b32 v10, v155 :: v_dual_mov_b32 v11, v156
	v_dual_mov_b32 v12, v157 :: v_dual_mov_b32 v13, v158
	v_dual_mov_b32 v14, v159 :: v_dual_mov_b32 v15, v160
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[33:36], v0
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v0
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[33:40], v[224:231], v[129:136]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v33, 0x80000000, v189, s4
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v34, 0x80000000, v221, s4
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[41:42], v33, s[40:43], 0 offen
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[33:36], v34, s[44:47], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v245, v[33:36]
	ds_store_b128 v245, v[33:36] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v34, 15, v41
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v41.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v36, v41, 16, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v45, 8, v41
	v_lshrrev_b64 v[43:44], 24, v[41:42]
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v35, -16, v34
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v33.l, v41.h, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v37, -16, v36
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[153:156], v248
	ds_load_b128 v[97:100], v248 offset:64
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_dual_cndmask_b32 v34, v34, v35 :: v_dual_add_nc_u32 v221, s48, v221
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v33.l
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_bfe_u32 v35, v41, 8, 4
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v45.l, 15
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v189, s39, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v36, v36, v37, s1
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v37, -16, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_alignbit_b32 v33, v42, v41, 24
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v37, v35, v37, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v35, 15, v33
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v43.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v38, -16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v33, v34
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v38, v35, v38, vcc_lo
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v35, v36
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v36, v38
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v250, 0, v0
	v_dual_mov_b32 v0, v57 :: v_dual_mov_b32 v1, v58
	v_dual_mov_b32 v2, v59 :: v_dual_mov_b32 v3, v60
	v_dual_mov_b32 v4, v61 :: v_dual_mov_b32 v5, v62
	v_dual_mov_b32 v6, v63 :: v_dual_mov_b32 v7, v64
	v_dual_mov_b32 v57, v165 :: v_dual_mov_b32 v60, v168
	v_mov_b32_e32 v63, v171
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v34, v37
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[37:40], v250
	ds_load_b128 v[121:124], v250 offset:64
	ds_load_b128 v[173:176], v246
	ds_load_b128 v[113:116], v246 offset:64
	v_dual_mov_b32 v58, v166 :: v_dual_mov_b32 v59, v167
	v_dual_mov_b32 v62, v170 :: v_dual_mov_b32 v61, v169
	v_mov_b32_e32 v64, v172
	ds_load_b128 v[165:168], v247
	ds_load_b128 v[105:108], v247 offset:64
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v44, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v208, 16, v40
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, 0, v44
	ds_store_b128 v44, v[33:36]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v34, v41, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v33.h, 4, v41.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v35, v43, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v33.l, 4, v43.l
	.loc	1 323 31                        ; attention_backward.py:323:31
	v_mov_b16_e32 v43.h, 0
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v34.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v34, v45, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v43.l, v33.h, 15
	v_lshrrev_b16 v33.h, 4, v45.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v46.h, v43.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v34.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e32 v34.l, v41.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v41, v41, 20, 4
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_and_b16 v46.l, v33.h, 15
	.loc	1 364 56 is_stmt 1              ; attention_backward.py:364:56
	v_or_b32_e32 v36, -16, v43
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v34, v34, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v47, -16, v41
	v_or_b32_e32 v45, -16, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v34.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v45, v46, v45, s1
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v46, 8, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v34, v41, v47, s3
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v41.l, v33.l, 15
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e32 v41.h, v43.h
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v33.l, v35.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v35, v34
	v_cvt_f32_i32_e32 v34, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v47, -16, v41
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v33.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v33, v43, v36, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v36, v41, v47, s3
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v36, v36
	ds_store_b128 v249, v[33:36]
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v42.h, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v36, 15, v42
	v_bfe_u32 v34, v42, 16, 4
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v42.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v41, -16, v36
	v_or_b32_e32 v35, -16, v34
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[185:188], v250
	ds_load_b128 v[161:164], v250 offset:64
	ds_load_b128 v[181:184], v246
	ds_load_b128 v[157:160], v246 offset:64
	ds_load_b128 v[177:180], v247
	ds_load_b128 v[149:152], v247 offset:64
	ds_load_b128 v[169:172], v248
	ds_load_b128 v[145:148], v248 offset:64
	s_waitcnt lgkmcnt(0)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v33.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_barrier
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v34, v34, v35, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v35, v42, 24, 4
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v213, 0xffff0000, v39
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v36, v36, v41, s1
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v41, 24, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v45, -16, v35
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v41.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v43.l, 4, v41.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v46.l, 15
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v45, v35, v45, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v35, v42, 8, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v33, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v36, v45
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v47, -16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v47, v35, v47, vcc_lo
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v35, v34
	v_cvt_f32_i32_e32 v34, v47
	ds_store_b128 v44, v[33:36]
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v33.l, 4, v42.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v34, v42, 0, 8
	v_mov_b16_e32 v35.l, v42.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v36, v42, 20, 4
	v_mov_b16_e32 v42.h, v43.h
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_and_b16 v42.l, v33.l, 15
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v33.l, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v34, -16, v42
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v33.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v33, v35, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v35, -16, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v34, v42, v34, vcc_lo
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v33.l
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v33.l, 4, v46.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v35, v36, v35, vcc_lo
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v36.l, v33.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v33, v41, 0, 8
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e32 v36.h, v43.h
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v41, -16, v43
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v33.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v33, v46, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v42, -16, v36
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v41, v43, v41, vcc_lo
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v33.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v33, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v42, v36, v42, vcc_lo
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v36, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cvt_f32_i32_e32 v34, v42
	ds_store_b128 v249, v[33:36]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v33, 16, v37
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v254, v185, v33
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v33, 0xffff0000, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v254, v254
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v253, v186, v33
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v33, 16, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v253, v253
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v252, v187, v33 :: v_dual_and_b32 v33, 0xffff0000, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v252, v252
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v251, v188, v33
	ds_load_b128 v[185:188], v250
	ds_load_b128 v[41:44], v250 offset:64
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v33, 0xffff0000, v40
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v40, v188, v33 :: v_dual_lshlrev_b32 v255, 16, v39
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v33, 16, v173
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v39, v187, v208
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v181, v181, v33
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v33, 0xffff0000, v173
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v173, v182, v33
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v33, 16, v174
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v173, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v182, v183, v33 :: v_dual_and_b32 v33, 0xffff0000, v174
	v_dual_mul_f32 v37, v185, v255 :: v_dual_mul_f32 v38, v186, v213
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v183, 16, v175
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v174, v184, v33 :: v_dual_and_b32 v175, 0xffff0000, v175
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v185, v37, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[33:36], v246
	ds_load_b128 v[45:48], v246 offset:64
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v184, 16, v176
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v37, v37, v185, 0x7fff
	v_bfe_u32 v185, v38, 16, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v176, 0xffff0000, v176
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v181, v181
	v_cmp_o_f32_e64 s12, v182, v182
	v_cmp_o_f32_e64 s13, v174, v174
	v_add3_u32 v38, v38, v185, 0x7fff
	v_bfe_u32 v185, v39, 16, 1
	v_cmp_o_f32_e64 s5, v251, v251
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v39, v39, v185, 0x7fff
	v_bfe_u32 v185, v40, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v33, v33, v183
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v40, v40, v185, 0x7fff
	v_bfe_u32 v185, v181, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v34, v34, v175 :: v_dual_mul_f32 v35, v35, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v33, v33
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v36, v36, v176
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v181, v181, v185, 0x7fff
	v_bfe_u32 v185, v173, 16, 1
	v_bfe_u32 v175, v254, 16, 1
	v_bfe_u32 v176, v253, 16, 1
	v_bfe_u32 v183, v252, 16, 1
	v_bfe_u32 v184, v251, 16, 1
	v_add3_u32 v173, v173, v185, 0x7fff
	v_bfe_u32 v185, v182, 16, 1
	v_add3_u32 v175, v254, v175, 0x7fff
	v_add3_u32 v176, v253, v176, 0x7fff
	v_add3_u32 v183, v252, v183, 0x7fff
	v_add3_u32 v184, v251, v184, 0x7fff
	v_add3_u32 v182, v182, v185, 0x7fff
	v_bfe_u32 v185, v174, 16, 1
	v_cmp_o_f32_e64 s15, v34, v34
	v_cmp_o_f32_e64 s16, v35, v35
	v_cmp_o_f32_e64 s17, v36, v36
	v_cndmask_b16 v37.l, 0x7fff, v181.h, s10
	v_add3_u32 v174, v174, v185, 0x7fff
	v_bfe_u32 v185, v33, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v182.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v185, v33, v185, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v185.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v186, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v183.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v184.h, s5
	v_add3_u32 v187, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s7
	v_cndmask_b16 v37.h, 0x7fff, v173.h, s11
	v_cndmask_b16 v38.h, 0x7fff, v174.h, s13
	v_add3_u32 v188, v36, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v175.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v176.h, s1
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s9
	v_cndmask_b16 v39.h, 0x7fff, v186.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v187.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v188.h, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[181:188], v[33:40], v[49:56], v[137:144]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v33, 16, v165
	v_lshlrev_b32_e32 v141, 16, v167
	v_and_b32_e32 v142, 0xffff0000, v167
	v_lshlrev_b32_e32 v143, 16, v168
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v37, v177, v33 :: v_dual_and_b32 v144, 0xffff0000, v168
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v33, 0xffff0000, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v38, v178, v33 :: v_dual_lshlrev_b32 v33, 16, v166
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v39, v179, v33
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v33, 0xffff0000, v166
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v40, v180, v33
	ds_load_b128 v[33:36], v247
	ds_load_b128 v[137:140], v247 offset:64
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v40, v40
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v165, v33, v141
	v_dual_mul_f32 v166, v34, v142 :: v_dual_lshlrev_b32 v33, 16, v153
	v_dual_mul_f32 v167, v35, v143 :: v_dual_mul_f32 v168, v36, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v165, v165
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v169, v169, v33
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v33, 0xffff0000, v153
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v167, v167
	v_cmp_o_f32_e64 s7, v166, v166
	v_cmp_o_f32_e64 s9, v168, v168
	v_cmp_o_f32_e64 s10, v169, v169
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v153, v170, v33
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v33, 16, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v153, v153
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v170, v171, v33 :: v_dual_and_b32 v33, 0xffff0000, v154
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v171, 16, v155
	v_and_b32_e32 v155, 0xffff0000, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v170, v170
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v154, v172, v33
	ds_load_b128 v[33:36], v248
	ds_load_b128 v[141:144], v248 offset:64
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v172, 16, v156
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v156, 0xffff0000, v156
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v39, v39
	v_cmp_o_f32_e64 s13, v154, v154
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v34, v34, v155
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v155, v37, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v36, v36, v156
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v156, v166, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v33, v33, v171
	v_mul_f32_e32 v35, v35, v172
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v37, v37, v155, 0x7fff
	v_bfe_u32 v155, v38, 16, 1
	v_add3_u32 v156, v166, v156, 0x7fff
	v_bfe_u32 v166, v168, 16, 1
	v_cmp_o_f32_e64 s14, v33, v33
	v_cmp_o_f32_e64 s15, v34, v34
	v_add3_u32 v38, v38, v155, 0x7fff
	v_bfe_u32 v155, v39, 16, 1
	v_add3_u32 v166, v168, v166, 0x7fff
	v_bfe_u32 v168, v153, 16, 1
	v_cmp_o_f32_e64 s16, v35, v35
	v_cmp_o_f32_e64 s17, v36, v36
	v_add3_u32 v39, v39, v155, 0x7fff
	v_bfe_u32 v155, v40, 16, 1
	v_add3_u32 v153, v153, v168, 0x7fff
	v_bfe_u32 v168, v170, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v155, 0x7fff
	v_bfe_u32 v155, v165, 16, 1
	v_add3_u32 v168, v170, v168, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v155, v165, v155, 0x7fff
	v_bfe_u32 v165, v167, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v168.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v165, v167, v165, 0x7fff
	v_bfe_u32 v167, v169, 16, 1
	v_add3_u32 v167, v169, v167, 0x7fff
	v_bfe_u32 v169, v154, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v37.l, 0x7fff, v167.h, s10
	v_add3_u32 v154, v154, v169, 0x7fff
	v_bfe_u32 v169, v33, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v169, v33, v169, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v169.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v170, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v39.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v40.h, s5
	v_cndmask_b16 v39.h, 0x7fff, v170.h, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v171, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v155.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v156.h, s7
	v_cndmask_b16 v40.l, 0x7fff, v171.h, s16
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v172, v36, v33, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v165.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v166.h, s9
	v_cndmask_b16 v33.l, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v38.h, s1
	v_cndmask_b16 v40.h, 0x7fff, v172.h, s17
	v_mov_b32_e32 v172, v64
	v_cndmask_b16 v37.h, 0x7fff, v153.h, s11
	v_cndmask_b16 v38.h, 0x7fff, v154.h, s13
	v_dual_mov_b32 v171, v63 :: v_dual_mov_b32 v170, v62
	v_dual_mov_b32 v169, v61 :: v_dual_mov_b32 v168, v60
	v_dual_mov_b32 v167, v59 :: v_dual_mov_b32 v166, v58
	v_dual_mov_b32 v165, v57 :: v_dual_mov_b32 v64, v7
	v_dual_mov_b32 v63, v6 :: v_dual_mov_b32 v62, v5
	v_mov_b32_e32 v61, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[181:188], v[33:40], v[165:172], v[181:188]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v37, 16, v123
	v_and_b32_e32 v38, 0xffff0000, v123
	v_lshlrev_b32_e32 v39, 16, v124
	v_and_b32_e32 v40, 0xffff0000, v124
	v_lshlrev_b32_e32 v33, 16, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v37, v41, v37 :: v_dual_mul_f32 v38, v42, v38
	v_dual_mul_f32 v39, v43, v39 :: v_dual_mul_f32 v40, v44, v40
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v41, 16, v113
	v_and_b32_e32 v42, 0xffff0000, v113
	v_lshlrev_b32_e32 v43, 16, v114
	v_and_b32_e32 v44, 0xffff0000, v114
	v_lshlrev_b32_e32 v113, 16, v115
	v_and_b32_e32 v114, 0xffff0000, v115
	v_lshlrev_b32_e32 v115, 16, v116
	v_and_b32_e32 v116, 0xffff0000, v116
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v42, v158, v42 :: v_dual_mul_f32 v43, v159, v43
	v_mul_f32_e32 v44, v160, v44
	v_mov_b32_e32 v60, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v48, v48, v116 :: v_dual_mul_f32 v41, v157, v41
	v_dual_mov_b32 v160, v15 :: v_dual_mov_b32 v59, v2
	v_dual_mov_b32 v58, v1 :: v_dual_mov_b32 v57, v0
	v_dual_mov_b32 v159, v14 :: v_dual_mov_b32 v158, v13
	v_dual_mov_b32 v157, v12 :: v_dual_mov_b32 v156, v11
	v_dual_mov_b32 v155, v10 :: v_dual_mov_b32 v154, v9
	v_mov_b32_e32 v153, v8
	v_dual_mov_b32 v1, v16 :: v_dual_and_b32 v34, 0xffff0000, v121
	v_dual_mov_b32 v8, v23 :: v_dual_mul_f32 v33, v161, v33
	v_dual_mov_b32 v2, v17 :: v_dual_mov_b32 v3, v18
	v_dual_mov_b32 v4, v19 :: v_dual_mov_b32 v5, v20
	v_dual_mov_b32 v6, v21 :: v_dual_mov_b32 v7, v22
	v_dual_mov_b32 v9, v24 :: v_dual_mul_f32 v34, v162, v34
	v_dual_mov_b32 v10, v25 :: v_dual_lshlrev_b32 v35, 16, v122
	v_dual_mov_b32 v12, v27 :: v_dual_mul_f32 v45, v45, v113
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v113, v33, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v35, v163, v35 :: v_dual_mov_b32 v14, v29
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v36, 0xffff0000, v122
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v33, v113, 0x7fff
	v_bfe_u32 v113, v34, 16, 1
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v36, v164, v36
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s6, v37, v37
	v_add3_u32 v34, v34, v113, 0x7fff
	v_bfe_u32 v113, v35, 16, 1
	v_cmp_o_f32_e64 s5, v36, v36
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v35, v35, v113, 0x7fff
	v_bfe_u32 v113, v36, 16, 1
	v_cmp_o_f32_e64 s10, v41, v41
	v_cmp_o_f32_e64 s11, v42, v42
	v_cmp_o_f32_e64 s12, v43, v43
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v46, v46, v114
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v36, v36, v113, 0x7fff
	v_bfe_u32 v113, v37, 16, 1
	v_cmp_o_f32_e64 s13, v44, v44
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v47, v47, v115
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_add3_u32 v37, v37, v113, 0x7fff
	v_bfe_u32 v113, v38, 16, 1
	v_cmp_o_f32_e64 s16, v47, v47
	v_cmp_o_f32_e64 s17, v48, v48
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	v_add3_u32 v38, v38, v113, 0x7fff
	v_bfe_u32 v113, v39, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s5
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s7
	v_add3_u32 v39, v39, v113, 0x7fff
	v_bfe_u32 v113, v40, 16, 1
	v_mov_b32_e32 v13, v28
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_mov_b16_e64 v121.l, v204.l
	v_mov_b16_e32 v121.h, v125.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s8
	v_add3_u32 v40, v40, v113, 0x7fff
	v_bfe_u32 v113, v41, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v122.l, v205.l
	v_mov_b16_e32 v122.h, v126.l
	v_mov_b16_e64 v125.l, v204.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s9
	v_add3_u32 v41, v41, v113, 0x7fff
	v_bfe_u32 v113, v42, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v126.l, v205.h
	v_mov_b16_e64 v123.l, v202.l
	v_mov_b16_e32 v123.h, v127.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s10
	v_add3_u32 v42, v42, v113, 0x7fff
	v_bfe_u32 v113, v43, 16, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v41, 16, v97
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v124.l, v203.l
	v_mov_b16_e64 v124.h, v128.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v37.h, 0x7fff, v42.h, s11
	v_add3_u32 v43, v43, v113, 0x7fff
	v_bfe_u32 v113, v44, 16, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v42, 0xffff0000, v97
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v41, v145, v41
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v127.l, v202.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s12
	v_add3_u32 v44, v44, v113, 0x7fff
	v_bfe_u32 v113, v45, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v42, v146, v42
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v43, 16, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v41, v41
	v_cndmask_b16 v38.h, 0x7fff, v44.h, s13
	v_add3_u32 v45, v45, v113, 0x7fff
	v_bfe_u32 v113, v46, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v43, v147, v43 :: v_dual_and_b32 v44, 0xffff0000, v98
	v_mov_b32_e32 v11, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s14
	v_add3_u32 v46, v46, v113, 0x7fff
	v_bfe_u32 v113, v47, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v44, v148, v44 :: v_dual_lshlrev_b32 v45, 16, v99
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v39.h, 0x7fff, v46.h, s15
	v_add3_u32 v47, v47, v113, 0x7fff
	v_bfe_u32 v113, v48, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v45, v141, v45 :: v_dual_and_b32 v46, 0xffff0000, v99
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v43, v43
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s16
	v_add3_u32 v48, v48, v113, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v46, v142, v46 :: v_dual_lshlrev_b32 v47, 16, v100
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v44, v44
	v_cmp_o_f32_e64 s14, v45, v45
	v_cndmask_b16 v40.h, 0x7fff, v48.h, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v47, v143, v47 :: v_dual_and_b32 v48, 0xffff0000, v100
	v_mov_b32_e32 v15, v30
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v46, v46
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[181:188], v[33:40], v[57:64], v[181:188]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v33, 16, v105
	v_and_b32_e32 v34, 0xffff0000, v105
	v_lshlrev_b32_e32 v35, 16, v106
	v_and_b32_e32 v36, 0xffff0000, v106
	v_lshlrev_b32_e32 v37, 16, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v33, v149, v33 :: v_dual_mul_f32 v34, v150, v34
	v_dual_mul_f32 v35, v151, v35 :: v_dual_mul_f32 v36, v152, v36
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v38, 0xffff0000, v107
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v97, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v37, v137, v37
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v35, v35
	v_add3_u32 v33, v33, v97, 0x7fff
	v_bfe_u32 v97, v34, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v38, v138, v38 :: v_dual_lshlrev_b32 v39, 16, v108
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v36, v36
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v40, 0xffff0000, v108
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v34, v34, v97, 0x7fff
	v_bfe_u32 v97, v35, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v39, v139, v39
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v37, v37
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v40, v140, v40
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v38, v38
	v_add3_u32 v35, v35, v97, 0x7fff
	v_bfe_u32 v97, v36, 16, 1
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v48, v144, v48
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v47, v47
	v_add3_u32 v36, v36, v97, 0x7fff
	v_bfe_u32 v97, v37, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e64 s17, v48, v48
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s3
	v_add3_u32 v37, v37, v97, 0x7fff
	v_bfe_u32 v97, v38, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s5
	.loc	1 329 17 is_stmt 1              ; attention_backward.py:329:17
	v_min_i32_e32 v99, v210, v212
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v128.l, v203.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s6
	v_add3_u32 v38, v38, v97, 0x7fff
	v_bfe_u32 v97, v39, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v113.l, v200.l
	v_mov_b16_e32 v113.h, v117.l
	v_mov_b16_e64 v114.l, v201.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s7
	v_add3_u32 v39, v39, v97, 0x7fff
	v_bfe_u32 v97, v40, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v114.h, v118.l
	v_mov_b16_e64 v117.l, v200.h
	v_mov_b16_e64 v118.l, v201.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s8
	v_add3_u32 v40, v40, v97, 0x7fff
	v_bfe_u32 v97, v41, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v115.l, v198.l
	v_mov_b16_e32 v115.h, v119.l
	v_mov_b16_e64 v116.l, v199.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s9
	v_add3_u32 v41, v41, v97, 0x7fff
	v_bfe_u32 v97, v42, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v116.h, v120.l
	v_mov_b16_e64 v119.l, v198.h
	v_mov_b16_e64 v120.l, v199.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s10
	v_add3_u32 v42, v42, v97, 0x7fff
	v_bfe_u32 v97, v43, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v105.l, v196.l
	v_mov_b16_e32 v105.h, v109.l
	v_mov_b16_e64 v106.l, v197.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v37.h, 0x7fff, v42.h, s11
	v_add3_u32 v43, v43, v97, 0x7fff
	v_bfe_u32 v97, v44, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v106.h, v110.l
	v_mov_b16_e64 v109.l, v196.h
	v_mov_b16_e64 v110.l, v197.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s12
	v_add3_u32 v44, v44, v97, 0x7fff
	v_bfe_u32 v97, v45, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v107.l, v194.l
	v_mov_b16_e32 v107.h, v111.l
	v_mov_b16_e64 v108.l, v195.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v38.h, 0x7fff, v44.h, s13
	v_add3_u32 v45, v45, v97, 0x7fff
	v_bfe_u32 v97, v46, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v108.h, v112.l
	v_mov_b16_e64 v111.l, v194.h
	v_mov_b16_e64 v112.l, v195.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v39.l, 0x7fff, v45.h, s14
	v_add3_u32 v46, v46, v97, 0x7fff
	v_bfe_u32 v97, v47, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v100.l, v191.l
	v_mov_b16_e32 v100.h, v104.l
	v_mov_b16_e64 v104.l, v191.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v39.h, 0x7fff, v46.h, s15
	v_add3_u32 v47, v47, v97, 0x7fff
	v_bfe_u32 v97, v48, 16, 1
	v_mov_b32_e32 v16, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s16
	v_add3_u32 v48, v48, v97, 0x7fff
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v97, s19, v207
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s19, s19, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v40.h, 0x7fff, v48.h, s17
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v98, 2, v97
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s3, v97, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s5, v99, v97
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[181:188], v[33:40], v[232:239], v[181:188]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v33, s18, v129, -v214
	v_fma_f32 v34, s18, v130, -v214
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v98, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s1, v99, v98
	.loc	1 330 17 is_stmt 1              ; attention_backward.py:330:17
	s_and_b32 s3, s5, s3
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s0, s3
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v41, v181, v217
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s1, vcc_lo
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v42, v182, v217
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v35, s18, v131, -v214
	v_fma_f32 v36, s18, v132, -v214
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v43, v183, v217
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v33, 0, v33, s3
	v_cndmask_b32_e32 v34, 0, v34, vcc_lo
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v44, v184, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v33, v33, v41 :: v_dual_mul_f32 v34, v34, v42
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v37, s18, v133, -v214
	v_fma_f32 v38, s18, v134, -v214
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v45, v185, v217
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v33, s38, v33 :: v_dual_mul_f32 v34, s38, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v46, v186, v217
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v39, s18, v135, -v214
	v_fma_f32 v40, s18, v136, -v214
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v33, v33, v41, 0x7fff
	v_bfe_u32 v41, v34, 16, 1
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v47, v187, v217
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v48, v188, v217
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v34, v34, v41, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, vcc_lo
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v98.l, v193.l
	v_mov_b16_e32 v98.h, v102.l
	v_mov_b16_e64 v102.l, v193.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v34, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v41, v34, v219
	v_perm_b32 v34, v41, v34, v220
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v41, 4, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v41, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s1, v99, v41
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v41, 6, v97
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s1, vcc_lo
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s3, v41, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s5, v99, v41
	.loc	1 330 17 is_stmt 1              ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v35, 0, v35, vcc_lo
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s5, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_and_b32 vcc_lo, s0, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v35, v35, v43 :: v_dual_cndmask_b32 v36, 0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v35, s38, v35 :: v_dual_mul_f32 v36, v36, v44
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v41, v35, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v36, s38, v36
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_add3_u32 v35, v35, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v41, v36, 16, 1
	v_cmp_o_f32_e64 s1, v36, v36
	v_add3_u32 v36, v36, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, vcc_lo
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v36, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v41, v36, v219
	v_perm_b32 v36, v41, v36, v220
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v41, 8, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v41, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s1, v99, v41
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v41, 10, v97
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s1, vcc_lo
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s3, v41, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s5, v99, v41
	.loc	1 330 17 is_stmt 1              ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v37, 0, v37, vcc_lo
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s5, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_and_b32 vcc_lo, s0, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v37, v37, v45 :: v_dual_cndmask_b32 v38, 0, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v37, s38, v37 :: v_dual_mul_f32 v38, v38, v46
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v41, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v38, s38, v38
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_add3_u32 v37, v37, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v41, v38, 16, 1
	v_cmp_o_f32_e64 s1, v38, v38
	v_add3_u32 v38, v38, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v38, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v41, v38, v219
	v_perm_b32 v38, v41, v38, v220
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v41, 12, v97
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v41, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s1, v99, v41
	.loc	1 317 21 is_stmt 1              ; attention_backward.py:317:21
	v_add_nc_u32_e32 v41, 14, v97
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v97.l, v192.l
	v_mov_b16_e32 v97.h, v101.l
	v_mov_b16_e64 v101.l, v192.h
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s1, vcc_lo
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s3, v99, v41
	.loc	1 329 26 is_stmt 0              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s5, v41, v211
	.loc	1 330 17 is_stmt 1              ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v99.l, v190.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v39, 0, v39, vcc_lo
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v99.h, v103.l
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s3, s5
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v103.l, v190.h
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v39, v39, v47 :: v_dual_cndmask_b32 v40, 0, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s19, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v39, s38, v39 :: v_dual_mul_f32 v40, v40, v48
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v41, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v40, s38, v40
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_add3_u32 v39, v39, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v41, v40, 16, 1
	v_cmp_o_f32_e64 s1, v40, v40
	v_add3_u32 v40, v40, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, vcc_lo
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v40, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v41, v40, v219
	v_perm_b32 v40, v41, v40, v220
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[81:88], v[121:128], v[33:40], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[89:96], v[113:120], v[33:40], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[33:40], v[73:80]
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[33:40], v[65:72]
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ; %Flow
	.loc	1 0 31 is_stmt 0                ; attention_backward.py:0:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v141, off, off offset:96
	scratch_load_b32 v25, off, off offset:100
.LBB0_8:                                ; %._crit_edge103
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v0, s34, v141
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e32 vcc_lo, s34, v207
	v_or_b32_e32 v1, 48, v207
	v_or_b32_e32 v2, 32, v207
	v_or_b32_e32 v3, 16, v207
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v4, 62, v25
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
.Ltmp70:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 108
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
		.amdhsa_next_free_sgpr 54
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 108
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12288
; TotalNumSgprs: 56
; NumVgprs: 256
; ScratchSize: 108
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 56
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
	.quad	.Ltmp51                         ; DW_AT_low_pc
	.long	.Ltmp53-.Ltmp51                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp51                         ; DW_AT_low_pc
	.long	.Ltmp52-.Ltmp51                 ; DW_AT_high_pc
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 108
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 26
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
