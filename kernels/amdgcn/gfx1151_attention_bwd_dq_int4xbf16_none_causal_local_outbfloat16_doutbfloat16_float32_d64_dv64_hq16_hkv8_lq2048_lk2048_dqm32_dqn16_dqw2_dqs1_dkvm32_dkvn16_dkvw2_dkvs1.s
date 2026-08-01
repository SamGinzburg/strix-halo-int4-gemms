	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b64 s[34:35], s[0:1], 0x78
	s_load_b256 s[24:31], s[0:1], 0x38
	s_load_b256 s[36:43], s[0:1], 0x0
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v67, 1, v0
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v38, 4, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s20, s2, 5
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v66, 32, v0
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s22, s3, 11
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s20, v67
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v38
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s33, s20, s22
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v66
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_or_b32_e32 v5, s33, v67
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	s_clause 0x1
	s_load_b32 s46, s[0:1], 0x80
	s_load_b64 s[44:45], s[0:1], 0x58
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v55, 7, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v4, 3, v0
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	v_mov_b16_e32 v40.l, 0
	.loc	1 139 44                        ; attention_backward.py:139:44
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s34, v1
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s4, s35, s33
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s49, s37, 0xffff
	s_mov_b32 s48, s36
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s20, v4
	.loc	1 139 22                        ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v65, 15, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v89, v0, 4, 1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v61.l, v40.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v71.l, v40.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v60.l, v40.l
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v88, v2, v65
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[2:3], null, s34, v5, v[1:2]
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v1, 3, v55
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_mul_f32 s9, s46, 0x3fb8aa3b
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v53, s20, v88
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v3, s33, v88
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v64.l, v40.l
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s21, s35, v1
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s2, 0x800, v53
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v6
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v51.l, v40.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v57.l, v40.l
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[78:79], null, s35, v4, v[1:2]
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[21:24], v2, s[48:51], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v2, 1, v3
	s_and_b32 s49, s43, 0xffff
	s_mov_b32 s48, s42
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s21
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v77.l, v40.l
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v90, s35, 3, v78
	v_add_nc_u32_e32 v3, s4, v78
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v83.l, v40.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v54.l, v40.l
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v50, v2, s[48:51], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v2, v90, s4, 1
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_lshl_b32 s4, s35, 4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v1, 1, v3
	v_add_lshl_u32 v4, v3, s4, 1
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s4, s35, 24
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_add_lshl_u32 v3, v3, s4, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_and_b32 s49, s25, 0xffff
	s_mov_b32 s48, s24
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x2
	buffer_load_b128 v[33:36], v1, s[48:51], 0 offen
	buffer_load_b128 v[29:32], v2, s[48:51], 0 offen
	buffer_load_b128 v[25:28], v4, s[48:51], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v59.l, v40.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[17:20], v3, s[48:51], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s49, s27, 0xffff
	s_mov_b32 s48, s26
	s_clause 0x3
	buffer_load_b128 v[13:16], v1, s[48:51], 0 offen
	buffer_load_b128 v[9:12], v2, s[48:51], 0 offen
	buffer_load_b128 v[5:8], v4, s[48:51], 0 offen
	buffer_load_b128 v[1:4], v3, s[48:51], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v52.l, v40.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v58.l, v40.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v63.l, v40.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v73.l, v40.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v49.l, v40.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v56.l, v40.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v62.l, v40.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v72.l, v40.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v42.l, v40.l
	v_mov_b16_e32 v44.l, v40.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v46.l, v40.l
	v_mov_b16_e32 v48.l, v40.l
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x98
	s_load_b32 s5, s[0:1], 0xa0
	s_load_b64 s[36:37], s[0:1], 0x20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v43.l, v40.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v45.l, v40.l
	v_mov_b16_e32 v47.l, v40.l
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s4, s3, 31
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v75.l, v40.l
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s4, s4, 28
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v81.l, v40.l
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s4, s3, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v76.l, v40.l
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s8, s4, 0xfff0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v82.l, v40.l
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s8
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v74.l, v40.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s8, s3, 0x10007
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v80.l, v40.l
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s8
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s4, s4, 10
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s3, s3
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s8, s5, s20
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s3, s3, 10
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s8, s8, 32
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s47, s3, 0xfffff800
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s3, s20, s6
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v91, 2, v0
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s3, s3, s5
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v98, 2, v89
	.loc	1 181 25                        ; attention_backward.py:181:25
	s_max_i32 s3, s3, 0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v97, 4, v89
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s56, s3, 0x7ffffff0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v96, 6, v89
	v_or_b32_e32 v95, 8, v89
	v_or_b32_e32 v94, 10, v89
	v_or_b32_e32 v92, 12, v89
	v_or_b32_e32 v93, 14, v89
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_and_b32 s4, s4, 0xffffc000
	s_mov_b64 s[24:25], s[30:31]
	s_add_i32 s47, s47, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_or_b32_e32 v99, s47, v91
	v_or_b32_e32 v100, s47, v89
	v_or_b32_e32 v101, s47, v98
	v_or_b32_e32 v102, s47, v97
	v_or_b32_e32 v103, s47, v96
	v_or_b32_e32 v104, s47, v95
	v_or_b32_e32 v105, s47, v94
	v_or_b32_e32 v106, s47, v92
	v_or_b32_e32 v107, s47, v93
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v42.h, v35.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v51.h, v31.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v60.h, v28.l
	v_mov_b16_e32 v61.h, v27.l
	v_mov_b16_e32 v49.h, v32.l
	v_mov_b16_e32 v63.h, v25.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v130, 0xffff0000, v11
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v71.h, v7.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v28, 0xffff0000, v28
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v135, 0xffff0000, v8
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v37, 1, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v64.h, v8.l
	v_mov_b16_e32 v57.h, v11.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v77.h, v17.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v28, v28, v135
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v84, v37, 30, v89
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v31, 0xffff0000, v31
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v131, 0xffff0000, v12
	v_and_b32_e32 v132, 0xffff0000, v5
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v28, v60, v64
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v31, v31, v130 :: v_dual_lshlrev_b32 v84, 2, v84
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v32, 0xffff0000, v32
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v83.h, v1.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v25, 0xffff0000, v25
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v31, v51, v57 :: v_dual_lshlrev_b32 v50, 16, v50
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v32, v32, v131 :: v_dual_and_b32 v41, 56, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v52.h, v30.l
	v_mov_b16_e32 v54.h, v29.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v59.h, v9.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v30, 0xffff0000, v30
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v129, 0xffff0000, v10
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v25, v25, v132 :: v_dual_and_b32 v136, 0xffff0000, v1
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_dual_mul_f32 v111, s9, v50 :: v_dual_and_b32 v50, 0xffff0000, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v41, 1, v41
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v62.h, v26.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v58.h, v10.l
	v_mov_b16_e32 v73.h, v5.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v26, 0xffff0000, v26
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v30, v30, v129 :: v_dual_and_b32 v133, 0xffff0000, v6
	v_mul_f32_e32 v50, v50, v136
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v38, v38, v41, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v44.h, v33.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v30, v52, v58 :: v_dual_and_b32 v33, 0xffff0000, v33
.Ltmp6:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_store_b128 v38, v[13:16]
	ds_store_b128 v38, v[9:12] offset:1024
	ds_store_b128 v38, v[5:8] offset:2048
	ds_store_b128 v38, v[1:4] offset:3072
	v_and_b32_e32 v38, 0xffff0000, v13
	v_and_b32_e32 v126, 0xffff0000, v15
	v_mov_b16_e32 v56.h, v12.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v35, 0xffff0000, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v72.h, v6.l
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v25, v63, v73
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v26, v26, v133 :: v_dual_and_b32 v39, 16, v0
	v_dual_mul_f32 v33, v33, v38 :: v_dual_and_b32 v68, 3, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v40.h, v36.l
	v_mov_b16_e32 v43.h, v34.l
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v26, v62, v72 :: v_dual_and_b32 v29, 0xffff0000, v29
.Ltmp10:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v46.h, v15.l
	v_mov_b16_e32 v48.h, v13.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v34, 0xffff0000, v34
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v127, 0xffff0000, v16
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v32, v49, v56
.Ltmp12:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v35, v35, v126 :: v_dual_lshlrev_b32 v70, 3, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v36, 0xffff0000, v36
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v125, 0xffff0000, v14
	v_mov_b16_e32 v45.h, v16.l
	v_mov_b16_e32 v47.h, v14.l
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v33, v44, v48
	v_dual_fmac_f32 v35, v42, v46 :: v_dual_mul_f32 v36, v36, v127
.Ltmp14:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v34, v34, v125 :: v_dual_lshlrev_b32 v79, 3, v68
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v75.h, v19.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v81.h, v3.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v124, 0xffff0000, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v137, 0xffff0000, v2
	v_lshlrev_b32_e32 v69, 4, v55
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v34, v43, v47 :: v_dual_lshlrev_b32 v55, 6, v66
.Ltmp16:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v139, 0xffff0000, v4
	v_lshlrev_b32_e32 v85, 7, v65
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v36, v40, v45 :: v_dual_and_b32 v123, 0xffff0000, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v33, v33, v34
.Ltmp18:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v76.h, v18.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_or3_b32 v55, v85, v55, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v35, v36
.Ltmp20:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v128, 0xffff0000, v9
	v_mov_b16_e32 v82.h, v2.l
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v31, v32 :: v_dual_and_b32 v27, 0xffff0000, v27
	v_dual_add_f32 v33, v33, v34 :: v_dual_add_nc_u32 v86, 0, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v29, v29, v128 :: v_dual_and_b32 v134, 0xffff0000, v7
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v108, s5, v53
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s5, s8, s7
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s8, s8, 0x800
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v29, v54, v59
.Ltmp24:
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s5, s5, 0x800
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s3, s8, 15
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s5, s5, 15
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_ashr_i32 s8, s3, 31
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v35, v29, v30
.Ltmp26:
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_ashr_i32 s10, s5, 31
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_lshr_b32 s8, s8, 28
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_lshr_b32 s10, s10, 28
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_add_i32 s3, s3, s8
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v35, v36
.Ltmp28:
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_add_i32 s5, s5, s10
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s3, s3, -16
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s5, s5, -16
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v85, 4, v84
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s57, s5, s3
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s5, 0, v39
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v39, v34
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v87, v55, 16, 0
	v_xad_u32 v112, v55, 32, 0
	v_xad_u32 v113, v55, 48, 0
	v_xad_u32 v114, v55, 64, 0
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v115, 0x50, v55, 0
	.loc	1 134 28                        ; attention_backward.py:134:28
	ds_bpermute_b32 v53, v84, v21
	ds_bpermute_b32 v117, v84, v22
	ds_bpermute_b32 v118, v84, v23
	ds_bpermute_b32 v119, v84, v24
	ds_bpermute_b32 v84, v85, v21
	ds_bpermute_b32 v120, v85, v22
	ds_bpermute_b32 v121, v85, v23
	ds_bpermute_b32 v122, v85, v24
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v74.h, v20.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v80.h, v4.l
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v85, 0xffff0000, v18
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v34, v39
.Ltmp34:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v138, 0xffff0000, v3
	ds_load_b128 v[1:4], v86
	ds_load_b128 v[5:8], v87
	ds_load_b128 v[9:12], v112
	ds_load_b128 v[13:16], v113
	ds_load_b128 v[17:20], v114
	ds_load_b128 v[21:24], v115
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v86, v124, v139
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v50, v77, v83 :: v_dual_mov_b32 v39, v34
	v_add_f32_e32 v40, v25, v26
.Ltmp36:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v116, 0x60, v55, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v86, v74, v80
.Ltmp38:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v38, v85, v137 :: v_dual_mul_f32 v85, v123, v138
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v55, 0x70, v55, 0
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s4, s34, v79
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v38, v76, v82
.Ltmp42:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v27, v27, v134 :: v_dual_add_nc_u32 v110, s7, v108
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v85, v75, v81
.Ltmp44:
	.loc	1 241 43                        ; attention_backward.py:241:43
	v_subrev_nc_u32_e32 v109, s6, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v50, v38 :: v_dual_fmac_f32 v27, v61, v71
	v_and_b32_e32 v71, 24, v67
	v_add_f32_e32 v43, v85, v86
.Ltmp46:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v80, v84, v53, s5
	v_cndmask_b32_e64 v82, v53, v84, s5
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v42, v27, v28
.Ltmp48:
	.loc	1 171 28                        ; attention_backward.py:171:28
	ds_load_b128 v[25:28], v116
	ds_load_b128 v[29:32], v55
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v38, v43
	v_dual_add_f32 v43, v34, v39 :: v_dual_mov_b32 v38, v33
	v_add_f32_e32 v35, v40, v42
.Ltmp50:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v81, v120, v117, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v42, v36 :: v_dual_mov_b32 v47, v43
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v40, v35
.Ltmp52:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v83, v117, v120, s5
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v84, v121, v118, s5
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v33, v33, v38
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v86, v118, v121, s5
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v42
.Ltmp59:
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v85, v122, v119, s5
	v_cndmask_b32_e64 v87, v119, v122, s5
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v35, v35, v40
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v45, v36
.Ltmp62:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s56, s57
	s_cselect_b32 s23, -1, 0
	s_cmp_ge_i32 s56, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v45, v45 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v38, v33 :: v_dual_add_f32 v45, v36, v45
	v_mov_b32_e32 v40, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v49, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v42, v33, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v44, v35, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v46, v42
	v_mov_b32_e32 v48, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v46, v46 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mov_b32 v52, v111 :: v_dual_and_b32 v33, 24, v37
	v_xor_b32_e32 v35, v70, v71
	v_dual_mov_b32 v53, v111 :: v_dual_mov_b32 v34, 0xff800000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v51, v65, 5, v33
	v_dual_mov_b32 v54, v111 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v55, 0, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v36, 8, v51
	v_xor_b32_e32 v37, 16, v51
	v_xor_b32_e32 v38, 24, v51
	s_and_b32 s49, s39, 0xffff
	s_mov_b32 s48, s38
	v_add_nc_u32_e32 v56, 0, v36
	v_add_nc_u32_e32 v57, 0, v37
	v_add_nc_u32_e32 v58, 0, v38
	s_and_b32 s53, s37, 0xffff
	s_mov_b32 s52, s36
	s_mov_b32 s26, 0x76543210
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_mov_b32 s27, s56
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v76, v34 :: v_dual_add_nc_u32 v35, s27, v99
	.loc	1 214 33 is_stmt 1              ; attention_backward.py:214:33
	v_add_lshl_u32 v40, v103, s27, 1
	v_add_lshl_u32 v39, v102, s27, 1
	v_add_lshl_u32 v38, v101, s27, 1
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[35:36], null, v35, s34, v[79:80]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v37, v100, s27, 1
	v_add_lshl_u32 v61, v106, s27, 1
	v_add_lshl_u32 v62, v107, s27, 1
	v_add_lshl_u32 v59, v104, s27, 1
	v_add_lshl_u32 v60, v105, s27, 1
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v125, 0, v51
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_min_i32_e32 v126, v108, v110
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v77, s27, v97
	v_or_b32_e32 v120, s27, v96
	v_or_b32_e32 v121, s27, v95
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[35:36], v35, s[48:51], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v122, s27, v94
	v_or_b32_e32 v123, s27, v92
	v_or_b32_e32 v124, s27, v93
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v120, v109
	v_cmp_ge_i32_e64 s3, v77, v109
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s8, v126, v120
	v_cmp_ge_i32_e64 s9, v126, v77
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s12, v124, v109
	v_cmp_ge_i32_e64 s13, v123, v109
	v_cmp_ge_i32_e64 s14, v122, v109
	v_cmp_ge_i32_e64 s15, v121, v109
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s16, v126, v124
	v_cmp_ge_i32_e64 s17, v126, v123
	v_cmp_ge_i32_e64 s18, v126, v122
	v_cmp_ge_i32_e64 s19, v126, v121
	.loc	1 242 17 is_stmt 1              ; attention_backward.py:242:17
	s_and_b32 s30, s8, vcc_lo
	s_and_b32 s3, s9, s3
	s_and_b32 s8, s16, s12
	s_and_b32 s9, s17, s13
	s_and_b32 vcc_lo, s2, s3
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v55, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v63, v40, s[52:55], 0 offen
	buffer_load_u16 v64, v39, s[52:55], 0 offen
	buffer_load_u16 v72, v38, s[52:55], 0 offen
	buffer_load_u16 v73, v37, s[52:55], 0 offen
	buffer_load_u16 v62, v62, s[52:55], 0 offen
	buffer_load_u16 v61, v61, s[52:55], 0 offen
	buffer_load_u16 v74, v60, s[52:55], 0 offen
	buffer_load_u16 v75, v59, s[52:55], 0 offen
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v40, v33
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_or_b32_e32 v59, s27, v89
	v_or_b32_e32 v60, s27, v98
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	v_mov_b32_e32 v119, v40
	v_dual_mov_b32 v115, v36 :: v_dual_mov_b32 v114, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v117, v38 :: v_dual_mov_b32 v116, v37
	v_dual_mov_b32 v118, v39 :: v_dual_mov_b32 v113, v34
	v_mov_b32_e32 v112, v33
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s6, v60, v109
	v_cmp_ge_i32_e64 s7, v59, v109
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s10, v126, v60
	v_cmp_ge_i32_e64 s11, v126, v59
	.loc	1 198 28 is_stmt 1              ; attention_backward.py:198:28
	ds_load_b64 v[34:35], v125
	ds_load_b64 v[36:37], v56
	ds_load_b64 v[38:39], v57
	ds_load_b64 v[59:60], v58
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s27, s27, 16
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s6, s10, s6
	s_and_b32 s7, s11, s7
	s_and_b32 s10, s18, s14
	s_and_b32 s11, s19, s15
	s_and_b32 s3, s2, s6
	s_and_b32 s6, s2, s7
	s_and_b32 s7, s2, s8
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s11
	s_and_b32 s11, s2, s30
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s27, s57
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[34:35], v[80:81], v[112:119] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[36:37], v[84:85], v[112:119] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[38:39], v[82:83], v[112:119] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[112:119], v[59:60], v[86:87], v[112:119] neg_lo:[1,1,0]
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v34, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v35, v113
	v_cvt_f32_i32_e32 v36, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v37, v115
	v_cvt_f32_i32_e32 v38, v116
	v_cvt_f32_i32_e32 v39, v117
	v_cvt_f32_i32_e32 v40, v118
	v_cvt_f32_i32_e32 v59, v119
	v_dual_mul_f32 v37, v54, v37 :: v_dual_mul_f32 v36, v53, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v52, v39
	v_dual_mul_f32 v35, v52, v35 :: v_dual_mul_f32 v34, v111, v34
	v_dual_mul_f32 v38, v111, v38 :: v_dual_mul_f32 v59, v54, v59
	v_mul_f32_e32 v40, v53, v40
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v60, 16, v63
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v63, 16, v64
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v64, 16, v72
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v72, 16, v73
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v37, v37, v60 :: v_dual_lshlrev_b32 v62, 16, v62
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v73, 16, v74
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 223 21                        ; attention_backward.py:223:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v59, v59, v62 :: v_dual_lshlrev_b32 v74, 16, v75
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v37, 0xff800000, v37, s11
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v39, v39, v73
	v_mul_f32_e32 v35, v35, v64
	v_mul_f32_e32 v34, v34, v72
	v_mul_f32_e32 v38, v38, v74
	v_mul_f32_e32 v40, v40, v61
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v59, 0xff800000, v59, s7
	v_cndmask_b32_e64 v35, 0xff800000, v35, s3
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_mul_f32_e32 v36, v36, v63
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v60, 0xff800000, v34, s6
	v_cndmask_b32_e64 v39, 0xff800000, v39, s9
	v_cndmask_b32_e64 v38, 0xff800000, v38, s10
	v_cndmask_b32_e64 v40, 0xff800000, v40, s8
	v_cndmask_b32_e32 v36, 0xff800000, v36, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v61, v37, v38, v39
	v_max_f32_e32 v62, v40, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v34, v60, v35, v36
	v_max3_f32 v34, v34, v61, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v61, v34, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp71:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v34, v76, v34, v61
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v34
	v_sub_f32_e32 v37, v37, v34
	v_sub_f32_e32 v39, v39, v34
	v_sub_f32_e32 v36, v36, v34
	v_sub_f32_e32 v59, v59, v34
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v59, v59
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v35, 0, v35, s3
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v38, v34
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v37, 0, v37, s11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_cndmask_b32_e32 v36, 0, v36, vcc_lo
	v_cndmask_b32_e64 v39, 0, v39, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v59, 0, v59, s7
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v76
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v36, v37
.Ltmp73:
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v38, 0, v38, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58 is_stmt 0              ; attention_backward.py:261:58
	v_dual_sub_f32 v60, v60, v34 :: v_dual_add_f32 v37, v38, v39
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v60, v60
	.loc	1 260 70 is_stmt 1              ; attention_backward.py:260:70
	v_sub_f32_e32 v39, v76, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v60, 0, v60, s6
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v60, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp75:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v40, v40, v34 :: v_dual_add_f32 v35, v35, v36
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s8
.Ltmp76:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v40, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v36, v37, v38
.Ltmp77:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v39
	v_dual_mov_b32 v38, v50 :: v_dual_add_f32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v36, v35, s26, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
.Ltmp79:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_dual_cndmask_b32 v37, 0, v37 :: v_dual_add_f32 v50, v35, v36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v50, v38, v37
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mov_b32_e32 v34, 0xff800000
	v_mov_b32_e32 v50, 0
.LBB0_4:                                ; %Flow141
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v50
	s_load_b32 s48, s[0:1], 0x74
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v73, v42, v46 :: v_dual_and_b32 v36, 31, v0
.Ltmp81:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v37, v65, 2, 0
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v35, 0, 32, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42000000, vcc_lo
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s0, 0, v50
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v35, v50, v35
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v66
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v74, v43, v47 :: v_dual_add_f32 v75, v44, v48
.Ltmp83:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s29, s29, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v35, v35
	v_mov_b32_e32 v40, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	v_lshrrev_b32_e32 v112, 4, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v33, v35, v33 :: v_dual_and_b32 v72, 24, v0
	v_dual_mov_b32 v38, v40 :: v_dual_add_nc_u32 v77, 0, v41
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v76, v45, v49 :: v_dual_mov_b32 v39, v40
.Ltmp85:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v33, v34, v33
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v34, v66, 1, v37
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v48, v40
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v113, 0, v33, s0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v33, v36, 2, 0
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v42, 1, v72
	v_mov_b32_e32 v47, v40
	v_mov_b32_e32 v46, v40
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v34, v113
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v41, v33
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v33, s20, v36
	.loc	1 266 18                        ; attention_backward.py:266:18
	v_or_b32_e32 v34, s22, v36
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v42, 0, v69, v42
	v_mov_b32_e32 v45, v40
	v_mov_b32_e32 v44, v40
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v33
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v33, v34, s20, 2
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v43, v40
	v_mov_b32_e32 v56, v40
	s_and_b32 vcc_lo, vcc_lo, s0
	v_dual_mov_b32 v36, v40 :: v_dual_cndmask_b32 v57, 0x80000000, v33
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v55, v40
	v_mov_b32_e32 v54, v40
	v_mov_b32_e32 v53, v40
	v_mov_b32_e32 v52, v40
	v_mov_b32_e32 v51, v40
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v41, v57, s[28:31], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v77, v[73:76]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v58, v42
	v_mov_b32_e32 v42, v40
	v_mov_b32_e32 v41, v40
	v_mov_b32_e32 v50, v40
	v_mov_b32_e32 v49, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s23
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v58, v57, s[24:27], 0 offen
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v77, v[73:76]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_7
; %bb.5:                                ; %.lr.ph77
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_and_b32_e32 v34, 12, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v33, 4, v67
	v_lshrrev_b32_e32 v35, 2, v66
	v_dual_mov_b32 v57, 0 :: v_dual_lshlrev_b32 v42, 9, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v36, 1, v34
	v_lshl_or_b32 v43, v72, 6, v69
	v_xor_b32_e32 v38, v70, v71
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s37, s37, 0xffff
	v_lshl_or_b32 v114, v65, 5, v36
	v_dual_mov_b32 v36, 0x7632 :: v_dual_add_nc_u32 v33, 0, v33
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s28, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v39, 16, v114
	v_cndmask_b32_e64 v36, 0x3276, v36, s5
	v_add3_u32 v33, v33, v35, v69
	v_mov_b32_e32 v35, 0x5410
	v_xor_b32_e32 v40, 24, v114
	s_mov_b32 s29, s39
	v_lshl_or_b32 v36, v36, 8, v36
	ds_load_b32 v115, v33
	v_cndmask_b32_e64 v35, 0x1054, v35, s5
	v_xor_b32_e32 v33, 8, v114
	v_mov_b32_e32 v49, 0
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	v_lshl_or_b32 v35, v35, 8, v35
	v_add_nc_u32_e32 v120, 0, v33
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s49, 0x76543210
	v_and_b32_e32 v35, 0x540054, v35
	v_mov_b32_e32 v33, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v35, 4, v35
	v_and_b32_e32 v117, 0x5040504, v35
	v_lshlrev_b32_e32 v35, 5, v0
	v_lshl_add_u32 v0, v65, 1, 0
	v_mov_b32_e32 v65, 0
	.loc	1 168 40 is_stmt 1              ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v37, 4, v68
	v_lshlrev_b32_e32 v34, 5, v34
	v_lshlrev_b32_e32 v41, 1, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v61, v65 :: v_dual_and_b32 v36, 0x760076, v36
	v_mov_b32_e32 v59, v65
	v_mov_b32_e32 v60, v65
	v_or3_b32 v116, v34, v42, v37
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e32 vcc_lo, s48, v37
	v_lshl_add_u32 v37, v66, 2, 0
	v_lshl_or_b32 v36, v36, 4, v36
	v_mov_b32_e32 v62, v65
	v_xor_b32_e32 v34, v43, v41
	v_xor_b32_e32 v41, 16, v116
	v_xor_b32_e32 v42, 32, v116
	v_xor_b32_e32 v43, 48, v116
	v_dual_mov_b32 v63, v65 :: v_dual_and_b32 v118, 0x7060706, v36
	v_dual_mov_b32 v54, v65 :: v_dual_add_nc_u32 v119, 0, v38
	v_dual_mov_b32 v56, v65 :: v_dual_add_nc_u32 v121, 0, v39
	v_dual_mov_b32 v51, v65 :: v_dual_add_nc_u32 v122, 0, v40
	v_add_nc_u32_e32 v123, v37, v34
	v_dual_mov_b32 v53, v65 :: v_dual_add_nc_u32 v124, 0, v41
	v_add_nc_u32_e32 v125, 0, v42
	v_mov_b32_e32 v42, v65
	v_dual_mov_b32 v55, v65 :: v_dual_add_nc_u32 v126, 0, v43
	v_mov_b32_e32 v58, v65
	v_mov_b32_e32 v64, v65
	v_mov_b32_e32 v50, v65
	v_dual_mov_b32 v52, v65 :: v_dual_add_nc_u32 v127, 0, v35
	v_dual_mov_b32 v44, v65 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v46, v65
	v_mov_b32_e32 v43, v65
	v_mov_b32_e32 v45, v65
	v_mov_b32_e32 v47, v65
	v_mov_b32_e32 v48, v65
	v_mov_b32_e32 v34, v65
	v_mov_b32_e32 v35, v65
	v_mov_b32_e32 v36, v65
	v_mov_b32_e32 v37, v65
	v_mov_b32_e32 v38, v65
	v_mov_b32_e32 v39, v65
	v_mov_b32_e32 v40, v65
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_add_i32 s0, s56, s47
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v76, v99, s56, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_or_b32_e32 v73, s0, v91
	.loc	1 386 21                        ; attention_backward.py:386:21
	s_mul_i32 s0, s0, s35
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v77, v100, s56, 1
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v131, s0, v78, 1
	v_add_lshl_u32 v132, s0, v90, 1
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[73:74], null, v73, s34, v[79:80]
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v128, v101, s56, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v74, 0x80000000, v131, s21
	v_cndmask_b32_e64 v136, 0x80000000, v132, s21
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v129, v102, s56, 1
	v_add_lshl_u32 v130, v103, s56, 1
	v_add_lshl_u32 v135, v104, s56, 1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v73, 0x80000000, v73, s4
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v142, v105, s56, 1
	v_add_lshl_u32 v143, v106, s56, 1
	v_add_lshl_u32 v144, v107, s56, 1
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v75, 0, v114
	.loc	1 274 28                        ; attention_backward.py:274:28
	buffer_load_b64 v[154:155], v73, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v67, v65 :: v_dual_add_nc_u32 v164, 0, v116
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_mov_b32_e32 v153, v72
	v_dual_mov_b32 v149, v68 :: v_dual_mov_b32 v148, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v151, v70 :: v_dual_mov_b32 v150, v69
	v_dual_mov_b32 v152, v71 :: v_dual_mov_b32 v147, v66
	v_mov_b32_e32 v146, v65
	.loc	1 307 37                        ; attention_backward.py:307:37
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v119, v[154:155]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 385 30                        ; attention_backward.py:385:30
	s_clause 0x1
	buffer_load_b128 v[131:134], v74, s[40:43], 0 offen
	buffer_load_b128 v[138:141], v136, s[40:43], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x8
	buffer_load_u16 v73, v76, s[36:39], 0 offen
	buffer_load_u16 v165, v77, s[36:39], 0 offen
	buffer_load_u16 v166, v128, s[36:39], 0 offen
	buffer_load_u16 v137, v129, s[36:39], 0 offen
	buffer_load_u16 v136, v130, s[36:39], 0 offen
	buffer_load_u16 v130, v135, s[36:39], 0 offen
	buffer_load_u16 v129, v142, s[36:39], 0 offen
	buffer_load_u16 v76, v143, s[36:39], 0 offen
	buffer_load_u16 v74, v144, s[36:39], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	ds_load_b64 v[156:157], v75
	ds_load_b64 v[158:159], v120
	ds_load_b64 v[160:161], v121
	ds_load_b64 v[162:163], v122
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v75, s56, v89
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_min_i32_e32 v77, v108, v110
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v128, s56, v98
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v135, v154, 16, 4
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(10)
	ds_store_b128 v123, v[131:134]
	s_waitcnt vmcnt(9)
	ds_store_b128 v123, v[138:141] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[142:145], v124
	ds_load_b128 v[138:141], v164
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_or_b32_e32 v131, s56, v97
	v_or_b32_e32 v132, s56, v96
	v_or_b32_e32 v133, s56, v95
	v_or_b32_e32 v134, s56, v94
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s19, v75, v109
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s20, v77, v75
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v75, s56, v92
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s3, v128, v109
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s22, v77, v128
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_or_b32_e32 v128, s56, v93
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s17, v77, v131
	v_cmp_ge_i32_e64 s15, v77, v132
	v_cmp_ge_i32_e64 s13, v77, v133
	v_cmp_ge_i32_e64 s11, v77, v134
	.loc	1 329 26 is_stmt 0              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s6, v75, v109
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s7, v77, v75
	v_cmp_ge_i32_e64 s8, v77, v128
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s16, v131, v109
	v_cmp_ge_i32_e64 s14, v132, v109
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[138:145], v[1:8], v[146:153]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[142:145], v126
	ds_load_b128 v[138:141], v125
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[131:132], 24, v[154:155]
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s12, v133, v109
	v_cmp_ge_i32_e64 s10, v134, v109
	v_cmp_ge_i32_e64 s9, v128, v109
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v128.l, v155.l, 15
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v136, 16, v136
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v133.l, v131.l, 15
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v129, 16, v129
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v128.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v128, 24, v155
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v128.h, 4, v155.l
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s25, 7, v133.l
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s19, s20, s19
	s_and_b32 s3, s22, s3
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v133.h, v128.l, 15
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s19, s2, s19
	s_and_b32 s3, s2, s3
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s56, s56, 16
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[138:145], v[9:16], v[146:153]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[138:141], v164 offset:64
	ds_load_b128 v[142:145], v124 offset:64
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v134, 15, v154
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[146:153], v[138:145], v[17:24], v[146:153]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[138:141], v125 offset:64
	ds_load_b128 v[142:145], v126 offset:64
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[146:153], v[138:145], v[25:32], v[146:153]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v77, v146, v115
	v_sub_f32_e32 v75, v147, v115
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[138:145], v[156:157], v[80:81], v[65:72] neg_lo:[1,1,0]
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v72.l, v154.l, 15
	v_and_b16 v72.h, v154.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v147, v154, 0, 8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[138:145], v[158:159], v[84:85], v[138:145] neg_lo:[1,1,0]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v71, v148, v115
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v72.l
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v72.l, v155.h, 15
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v72.h
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[138:145], v[160:161], v[82:83], v[138:145] neg_lo:[1,1,0]
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v69, v150, v115
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v148, 8, v154
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s18, 7, v72.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v72, 8, v155
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[138:145], v[162:163], v[86:87], v[138:145] neg_lo:[1,1,0]
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_alignbit_b32 v150, v155, v154, 24
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v70, v149, v115
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v149.l, v154.h
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v72.h, 4, v154.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v156, v138
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v67, v153, v115
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v153, v154, 8, 4
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v158, v154, 20, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v154, v131, 0, 8
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v138.l, 4, v131.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v131.l, v147.l
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v157, v139
	v_cvt_f32_i32_e32 v140, v140
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v68, v151, v115
	v_sub_f32_e32 v66, v152, v115
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s23, 0, v131.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v131, -16, v134
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v140, v111, v140 :: v_dual_and_b32 v139, 15, v155
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v146, v155, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v151, v155, 0, 8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v147, v134, v131, s0
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v131.l, v148.l, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v152.l, v155.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v159, v155, 8, 4
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v160, v155, 20, 4
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v161, v155, 24, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s0, 7, v131.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v131, -16, v135
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v132.l, v72.l, 15
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v134.l, v151.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v155, v135, v131, s1
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v135, v149, 0, 8
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s1, 7, v132.l
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v132, -16, v146
	v_or_b32_e32 v131, -16, v139
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v137, 16, v137
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s26, 0, v135.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v135, v152, 0, 8
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v132, v146, v132, s18
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s18, 7, v133.h
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v133, -16, v153
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v131, v139, v131, s5
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s27, 0, v135.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v135, v148, 0, 8
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v146, v153, v133, s0
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v133, -16, v159
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s5, 0, v134.l
	v_cmp_gt_i16_e64 s24, 0, v135.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v135, v72, 0, 8
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v134, -16, v161
	.loc	1 306 27 is_stmt 0              ; attention_backward.py:306:27
	v_cndmask_b32_e64 v133, v159, v133, s1
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v137, v140, v137, -v113
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v140, v111, v141
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s1, 0, v135.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v135, v128, 0, 8
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v134, v161, v134, s18
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v151, 16, v165
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v136, v140, v136, -v113
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s0, 0, v135.l
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v135, 15, v150
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v140, v111, v142
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v149, -16, v160
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v139, -16, v135
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v150, v111, v156
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v140, v140, v130, -v113
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v130, v111, v143
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v149, v160, v149, s27
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v135, v135, v139, s25
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e64 v139.l, v154.l
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v150, v150, v151, -v113
	v_fma_f32 v141, v130, v129, -v113
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v129, v111, v144 :: v_dual_lshlrev_b32 v130, 16, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s18, 0, v139.l
	.loc	1 307 52 is_stmt 0              ; attention_backward.py:307:52
	v_or_b32_e32 v139, -16, v158
	.loc	1 299 21 is_stmt 1              ; attention_backward.py:299:21
	v_dual_mul_f32 v151, v111, v157 :: v_dual_lshlrev_b32 v152, 16, v166
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v139, v158, v139, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v151, v151, v152, -v113
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v139, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v139, v139, v130 :: v_dual_lshlrev_b32 v76, 16, v76
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v142, v129, v76, -v113
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v129.l, v72.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_mov_b16_e64 v129.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v76, v111, v145 :: v_dual_cndmask_b32 v139, 0, v139
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v72.h, 4, v148.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v144.h, v129.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v143, v76, v74, -v113
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v74, -16, v129
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v76, v147
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s27, v139, v139
	v_mov_b16_e64 v147.h, v129.h
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v74, v129, v74, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v76, v76, v130
	v_cvt_f32_i32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v76, 0, v76 :: v_dual_mul_f32 v73, v74, v130
	v_mov_b16_e64 v144.l, v76.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s25, v76, v76
	v_dual_cndmask_b32 v73, 0, v73 :: v_dual_and_b32 v144, 1, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v129.l, v73.h
	v_add3_u32 v76, v76, v144, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v144, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s26, v73, v73
	v_and_b32_e32 v74, 1, v129
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v129.l, v72.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v144, v144, v130
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v72.h, v129.h
	v_add3_u32 v73, v73, v74, 0x7fff
	v_mov_b16_e64 v74.h, v129.h
	v_mov_b16_e64 v74.l, v139.h
	v_cndmask_b32_e32 v144, 0, v144, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v74, 1, v74
	v_cmp_o_f32_e64 s23, v144, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v139, v139, v74, 0x7fff
	v_mov_b16_e64 v74.h, v129.h
	v_mov_b16_e64 v74.l, v144.h
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v144, v144, v74, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v73.h, s26
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v73, v146
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v74.l, 0x7fff, v76.h, s25
	v_cndmask_b16 v76.h, 0x7fff, v139.h, s27
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v139, -16, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v73, v73, v130
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v139, v129, v139, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v73, 0, v73, vcc_lo
	v_mov_b16_e64 v129.l, v73.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s25, v73, v73
	v_and_b32_e32 v145, 1, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v73, v73, v145, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v145, v155
	v_mul_f32_e32 v145, v145, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v145, 0, v145, vcc_lo
	v_mov_b16_e64 v129.l, v145.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v146, 1, v129
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v129.l, v138.l, 15
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v138, v150
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_cndmask_b32_e64 v138, 0, v138, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_mul_f32_e32 v77, v138, v77
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v138, v151
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v77, s46, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v138, 0, v138, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s17, s16
	s_and_b32 s3, s2, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v138, v138, v75
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v75, v137
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v137.h, v129.h
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v75, 0, v75, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_and_b32 s3, s2, s3
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v71, v75, v71
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v75, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v71, s46, v71
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v75, 0, v75, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s13, s12
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s12, v145, v145
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s2, s3
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s13, v71, v71
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v136, v75, v70
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v140
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v75, v131
	v_cvt_f32_i32_e32 v131, v132
	v_cvt_f32_i32_e32 v132, v133
	v_cvt_f32_i32_e32 v133, v134
	v_cvt_f32_i32_e32 v134, v135
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v135, v142
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v131, v131, v130
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v142, v143
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v133, v133, v130
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v70, 0, v70, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s11, s10
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v75, v75, v130
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s2, s3
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v149, 0, v133, vcc_lo
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v69, v70, v69
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v70, v141
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v133, v139
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e32 v148, 0, v131, vcc_lo
	v_dual_cndmask_b32 v143, 0, v75 :: v_dual_mul_f32 v136, s46, v136
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v69, s46, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v133, v133, v130
	v_mul_f32_e32 v132, v132, v130
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v139, v71, 16, 1
	v_cmp_o_f32_e64 s14, v136, v136
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v70, 0, v70, s3
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s7, s6
	s_and_b32 s6, s8, s9
	s_and_b32 s10, s2, s3
	s_and_b32 s11, s2, s6
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v68, v70, v68
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v75, 0, v135, s10
	v_cndmask_b32_e64 v131, 0, v142, s11
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v134, v134, v130 :: v_dual_cndmask_b32 v133, 0, v133
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_dual_cndmask_b32 v132, 0, v132 :: v_dual_mul_f32 v135, s46, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v66, v75, v66
	v_dual_mul_f32 v67, v131, v67 :: v_dual_cndmask_b32 v134, 0, v134
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v75.l, 0x7fff, v73.h, s25
	v_add3_u32 v73, v145, v146, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v131, -16, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v68, s46, v68 :: v_dual_mul_f32 v67, s46, v67
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v138, v135, 16, 1
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cndmask_b16 v76.l, 0x7fff, v73.h, s12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v73, v129, v131, s18
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v129.l, v134.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v131, v77, 16, 1
	v_cmp_o_f32_e64 s12, v135, v135
	v_add3_u32 v135, v135, v138, 0x7fff
	v_bfe_u32 v138, v68, 16, 1
	v_cmp_o_f32_e64 s11, v77, v77
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v142, 1, v129
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v77, v77, v131, 0x7fff
	v_bfe_u32 v131, v69, 16, 1
	v_cmp_o_f32_e64 s16, v68, v68
	v_add3_u32 v68, v68, v138, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s9, v134, v134
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s15, v69, v69
	v_add3_u32 v69, v69, v131, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v131, v134, v142, 0x7fff
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v134.h, 0x7fff, v68.h, s16
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v68, v73
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v145, v136, 16, 1
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v70.l, 4, v72.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v72.l, v133.h
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v129.l, v128.h, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v68, v68, v130
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v66, s46, v66
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_add3_u32 v136, v136, v145, 0x7fff
	v_bfe_u32 v145, v67, 16, 1
	v_add3_u32 v71, v71, v139, 0x7fff
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_and_b32_e32 v72, 1, v72
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v139, v66, 16, 1
	v_cmp_o_f32_e64 s18, v67, v67
	v_add3_u32 v67, v67, v145, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v77.h, s11
	v_cndmask_b16 v77.h, 0x7fff, v135.h, s12
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s10, v133, v133
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e64 s17, v66, v66
	v_add3_u32 v66, v66, v139, 0x7fff
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v72, v133, v72, 0x7fff
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s13
	v_cndmask_b16 v71.h, 0x7fff, v136.h, s14
	v_cndmask_b16 v134.l, 0x7fff, v69.h, s15
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v69, -16, v129
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v135.h, 0x7fff, v67.h, s18
	v_permlanex16_b32 v67, v77, s49, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v135.l, 0x7fff, v66.h, s17
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v75.h, 0x7fff, v72.h, s10
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v72, v129, v69, s5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v129.l, v143.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v69, v71, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v67, v77, v117
	v_perm_b32 v67, v67, v77, v118
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v77.l, 0x7fff, v131.h, s9
	v_cndmask_b32_e32 v131, 0, v68, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v68, v69, v71, v117
	v_perm_b32 v69, v69, v71, v118
	v_permlanex16_b32 v71, v134, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v136, 1, v129
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v129.l, v70.l, 15
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v73, v135, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v138, v72
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v137.l, v131.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v70, v71, v134, v117
	v_perm_b32 v71, v71, v134, v118
	v_perm_b32 v72, v73, v135, v117
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v134, -16, v129
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_perm_b32 v73, v73, v135, v118
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v135, v138, v130
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v137, 1, v137
	v_cmp_o_f32_e64 s8, v143, v143
	v_add3_u32 v136, v143, v136, 0x7fff
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v134, v129, v134, s1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v129.l, v132.h
	v_cndmask_b32_e32 v135, 0, v135, vcc_lo
	v_cmp_o_f32_e64 s5, v131, v131
	v_add3_u32 v131, v131, v137, 0x7fff
	v_cndmask_b16 v131.l, 0x7fff, v136.h, s8
	v_and_b32_e32 v136, 1, v129
	v_mov_b16_e64 v147.l, v135.h
	v_mov_b16_e64 v129.l, v148.h
	v_cndmask_b16 v77.h, 0x7fff, v131.h, s5
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s7, v132, v132
	v_and_b32_e32 v137, 1, v147
	v_and_b32_e32 v138, 1, v129
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v129.l, 4, v128.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s1, v135, v135
	v_add3_u32 v128, v132, v136, 0x7fff
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v132, v134, v130
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_store_b128 v127, v[74:77]
	v_add3_u32 v74, v135, v137, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v75, -16, v129
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v140.h, v129.h
	v_cndmask_b32_e32 v77, 0, v132, vcc_lo
	v_mov_b16_e64 v141.h, v129.h
	v_cndmask_b16 v131.h, 0x7fff, v74.h, s1
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v74, v129, v75, s0
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s6, v148, v148
	v_mov_b16_e64 v140.l, v77.h
	v_add3_u32 v76, v148, v138, 0x7fff
	v_cmp_o_f32_e64 s0, v77, v77
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v74, v74
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v129.l, v149.h
	v_and_b32_e32 v75, 1, v140
	v_cndmask_b16 v133.l, 0x7fff, v76.h, s6
	v_cmp_o_f32_e64 s3, v149, v149
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v74, v74, v130
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v76, 1, v129
	v_add3_u32 v75, v77, v75, 0x7fff
	v_cndmask_b16 v133.h, 0x7fff, v144.h, s23
	v_cndmask_b16 v132.l, 0x7fff, v128.h, s7
	v_cndmask_b32_e32 v74, 0, v74, vcc_lo
	v_add3_u32 v76, v149, v76, 0x7fff
	v_cndmask_b16 v132.h, 0x7fff, v75.h, s0
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s56, s57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v141.l, v74.h
	v_cndmask_b16 v134.l, 0x7fff, v76.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v75, 1, v141
	v_cmp_o_f32_e64 s0, v74, v74
	v_add3_u32 v74, v74, v75, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v134.h, 0x7fff, v74.h, s0
	ds_store_b128 v127, v[131:134] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v128, v0
	ds_load_u16_d16 v131, v0 offset:768
	ds_load_u16_d16 v132, v0 offset:1024
	ds_load_u16_d16 v133, v0 offset:1280
	ds_load_u16_d16 v134, v0 offset:1536
	ds_load_u16_d16 v135, v0 offset:1792
	ds_load_u16_d16 v130, v0 offset:512
	ds_load_u16_d16 v129, v0 offset:256
	ds_load_u16_d16 v137, v0 offset:608
	ds_load_u16_d16 v136, v0 offset:352
	ds_load_u16_d16 v145, v0 offset:576
	ds_load_u16_d16 v146, v0 offset:832
	ds_load_u16_d16 v147, v0 offset:1088
	ds_load_u16_d16 v148, v0 offset:1344
	ds_load_u16_d16 v149, v0 offset:1600
	ds_load_u16_d16 v150, v0 offset:1856
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v128, v0 offset:128
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v131, v0 offset:896
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v132, v0 offset:1152
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v133, v0 offset:1408
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v134, v0 offset:1664
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v135, v0 offset:1920
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v130, v0 offset:640
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v129, v0 offset:384
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[128:135], v[66:73], v[57:64]
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v152, v0 offset:288
	ds_load_u16_d16 v151, v0 offset:32
	ds_load_u16_d16 v143, v0 offset:64
	ds_load_u16_d16 v144, v0 offset:320
	ds_load_u16_d16 v135, v0 offset:96
	ds_load_u16_d16 v153, v0 offset:544
	ds_load_u16_d16 v138, v0 offset:864
	ds_load_u16_d16 v139, v0 offset:1120
	ds_load_u16_d16 v140, v0 offset:1376
	ds_load_u16_d16 v141, v0 offset:1632
	ds_load_u16_d16 v154, v0 offset:800
	ds_load_u16_d16 v142, v0 offset:1888
	ds_load_u16_d16 v155, v0 offset:1056
	ds_load_u16_d16 v156, v0 offset:1312
	ds_load_u16_d16 v157, v0 offset:1568
	ds_load_u16_d16 v158, v0 offset:1824
	ds_load_u16_d16_hi v136, v0 offset:480
	ds_load_u16_d16_hi v145, v0 offset:704
	ds_load_u16_d16_hi v146, v0 offset:960
	ds_load_u16_d16_hi v147, v0 offset:1216
	ds_load_u16_d16_hi v148, v0 offset:1472
	ds_load_u16_d16_hi v149, v0 offset:1728
	ds_load_u16_d16_hi v150, v0 offset:1984
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v151, v0 offset:160
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v143, v0 offset:192
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v135, v0 offset:224
	ds_load_u16_d16_hi v152, v0 offset:416
	ds_load_u16_d16_hi v144, v0 offset:448
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v153, v0 offset:672
	ds_load_u16_d16_hi v137, v0 offset:736
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v154, v0 offset:928
	ds_load_u16_d16_hi v138, v0 offset:992
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v155, v0 offset:1184
	ds_load_u16_d16_hi v139, v0 offset:1248
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v156, v0 offset:1440
	ds_load_u16_d16_hi v140, v0 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v157, v0 offset:1696
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v158, v0 offset:1952
	ds_load_u16_d16_hi v141, v0 offset:1760
	ds_load_u16_d16_hi v142, v0 offset:2016
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[143:150], v[66:73], v[41:48]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[151:158], v[66:73], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[135:142], v[66:73], v[33:40]
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %._crit_edge78
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v0, s48, v88
	s_mul_i32 s4, s48, s33
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e32 vcc_lo, s48, v89
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v3, 32, v89
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, s4, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v4, 16, v89
	v_or_b32_e32 v1, 62, v112
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s48, v3
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v2, 48, v89
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v5, v89, 2
	v_add_lshl_u32 v7, v5, v98, 2
	v_add_lshl_u32 v8, v5, v97, 2
	v_add_lshl_u32 v9, v5, v92, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v0, v0, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_add_lshl_u32 v10, v5, v93, 2
	s_clause 0x2
	buffer_store_b32 v57, v6, s[44:47], 0 offen
	buffer_store_b32 v58, v7, s[44:47], 0 offen
	buffer_store_b32 v59, v8, s[44:47], 0 offen
	v_add_lshl_u32 v6, v5, v96, 2
	v_add_lshl_u32 v7, v5, v95, 2
	v_add_lshl_u32 v8, v5, v94, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s0, s48, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	v_add_lshl_u32 v3, v5, v3, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_lshl_u32 v4, v5, v4, 2
	s_clause 0x4
	buffer_store_b32 v60, v6, s[44:47], 0 offen
	buffer_store_b32 v61, v7, s[44:47], 0 offen
	buffer_store_b32 v62, v8, s[44:47], 0 offen
	buffer_store_b32 v63, v9, s[44:47], 0 offen
	buffer_store_b32 v64, v10, s[44:47], 0 offen
	v_add_nc_u32_e32 v6, 0x48, v0
	v_add_nc_u32_e32 v7, 0x50, v0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s0
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v8, 0x58, v0
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_nc_u32_e32 v9, 0x60, v0
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v49, v4, s[44:47], 0 offen
	buffer_store_b32 v50, v6, s[44:47], 0 offen
	buffer_store_b32 v51, v7, s[44:47], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v9, vcc_lo
	v_add_nc_u32_e32 v6, 0x68, v0
	buffer_store_b32 v52, v8, s[44:47], 0 offen
	v_add_nc_u32_e32 v7, 0x70, v0
	v_add_nc_u32_e32 v8, 0x78, v0
	buffer_store_b32 v53, v4, s[44:47], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_add_lshl_u32 v1, v5, v1, 2
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v8
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v54, v4, s[44:47], 0 offen
	v_add_nc_u32_e32 v4, 0x88, v0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x2
	buffer_store_b32 v55, v6, s[44:47], 0 offen
	buffer_store_b32 v56, v7, s[44:47], 0 offen
	buffer_store_b32 v41, v3, s[44:47], 0 offen
	v_add_nc_u32_e32 v3, 0x90, v0
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_nc_u32_e32 v6, 0x98, v0
	v_add_nc_u32_e32 v7, 0xa0, v0
	v_add_nc_u32_e32 v8, 0xa8, v0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	buffer_store_b32 v42, v4, s[44:47], 0 offen
	v_cndmask_b32_e32 v4, 0x80000000, v6, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v7 :: v_dual_cndmask_b32 v7, 0x80000000, v8
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s48, v2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v43, v3, s[44:47], 0 offen
	v_add_nc_u32_e32 v3, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v44, v4, s[44:47], 0 offen
	buffer_store_b32 v45, v6, s[44:47], 0 offen
	buffer_store_b32 v46, v7, s[44:47], 0 offen
	v_add_nc_u32_e32 v4, 0xb8, v0
	v_add_lshl_u32 v2, v5, v2, 2
	v_add_nc_u32_e32 v6, 0xc8, v0
	v_add_nc_u32_e32 v7, 0xd0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, s2, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_clause 0x4
	buffer_store_b32 v47, v3, s[44:47], 0 offen
	buffer_store_b32 v48, v4, s[44:47], 0 offen
	buffer_store_b32 v33, v2, s[44:47], 0 offen
	buffer_store_b32 v34, v6, s[44:47], 0 offen
	buffer_store_b32 v35, v7, s[44:47], 0 offen
	v_add_nc_u32_e32 v2, 0xd8, v0
	v_add_nc_u32_e32 v3, 0xe0, v0
	v_add_nc_u32_e32 v4, 0xe8, v0
	v_add_nc_u32_e32 v0, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v36, v2, s[44:47], 0 offen
	buffer_store_b32 v37, v3, s[44:47], 0 offen
	buffer_store_b32 v38, v4, s[44:47], 0 offen
	buffer_store_b32 v39, v0, s[44:47], 0 offen
	buffer_store_b32 v40, v1, s[44:47], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp86:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 184
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
		.amdhsa_next_free_vgpr 167
		.amdhsa_next_free_sgpr 58
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 167
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9324
; TotalNumSgprs: 60
; NumVgprs: 167
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 60
; NumVGPRsForWavesPerEU: 167
; Occupancy: 9
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
	.quad	.Ltmp69                         ; DW_AT_low_pc
	.long	.Ltmp71-.Ltmp69                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp69                         ; DW_AT_low_pc
	.long	.Ltmp70-.Ltmp69                 ; DW_AT_high_pc
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
        .size:           4
        .value_kind:     by_value
      - .offset:         148
        .size:           1
        .value_kind:     by_value
      - .offset:         149
        .size:           1
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .offset:         160
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         176
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 184
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     167
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
