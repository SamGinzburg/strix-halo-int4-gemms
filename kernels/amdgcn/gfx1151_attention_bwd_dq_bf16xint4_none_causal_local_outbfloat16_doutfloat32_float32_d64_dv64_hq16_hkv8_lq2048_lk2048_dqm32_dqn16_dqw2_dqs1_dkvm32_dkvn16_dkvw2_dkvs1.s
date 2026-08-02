	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x74
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v102, 3, v0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_and_b32_e32 v103, 7, v0
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x10
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s42, s2, 5
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_lshl_b32 s47, s3, 11
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s42, v102
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshlrev_b32_e32 v101, 3, v103
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s5, s42, s47
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v17, 56, v0
	s_clause 0x3
	s_load_b256 s[16:23], s[0:1], 0x38
	s_load_b32 s38, s[0:1], 0x7c
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b64 s[44:45], s[0:1], 0x28
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v207, v0, 4, 1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v73, 1, v17
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s34, v102
	s_mul_i32 s33, s34, s5
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s34, v101
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_lshl_b32 s4, s34, 3
	s_lshl_b32 s6, s34, 4
	s_mul_i32 s7, s34, 24
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_and_b32 s29, s25, 0xffff
	s_mov_b32 s28, s24
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add3_u32 v1, v2, v101, s33
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v17, s35, v102
	s_lshl_b32 s39, s35, 3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v3, v1, s4, 1
	v_add_lshl_u32 v4, v1, s6, 1
	v_add_lshl_u32 v1, v1, s7, 1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v22, s39, v17
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
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s4, s35, s5
	v_lshl_add_u32 v23, s35, 4, v17
	v_add_nc_u32_e32 v20, s4, v101
	v_add3_u32 v21, v17, v101, s4
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s4, s35, v101
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s28, s16
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v25, v20, v22
	s_load_b64 s[6:7], s[0:1], 0x94
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v18, 4, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v24, 1, v21
	s_load_b32 s1, s[0:1], 0x9c
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s5, s3, 31
	s_mov_b64 s[48:49], s[22:23]
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v18, v18, v73
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s0, s5, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s3, s0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v206, 0, v18
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[18:19], null, s35, 24, v[17:18]
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v19, 0x80000000, v24, vcc_lo
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s5, s0, 0xfff0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s25, s0, 4
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s5
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
	buffer_load_b128 v[1:4], v19, s[28:31], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v19, v20, v23
	v_or_b32_e32 v13, 4, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v15, 2, v21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s5, s3, 0x10007
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_sub_i32 s0, s42, s6
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v9, 1, v19
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v19, 2, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v24, 1, v25
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_lshl_u32 v17, v13, v17, 2
	v_add_lshl_u32 v21, v13, v23, 2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v5, 0x80000000, v24 :: v_dual_add_nc_u32 v24, v20, v18
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v20, v13, v22, 2
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	v_lshlrev_b32_e32 v14, 1, v24
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	v_add_lshl_u32 v18, v13, v18, 2
	v_cndmask_b32_e32 v22, 0x80000000, v15, vcc_lo
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s5
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 181 39                        ; attention_backward.py:181:39
	s_add_i32 s5, s0, s1
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s3, s3
	.loc	1 181 25                        ; attention_backward.py:181:25
	s_max_i32 s46, s5, 0
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_ashr_i32 s43, s3, 1
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[13:16], v14, s[28:31], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s29, s19, 0xffff
	s_mov_b32 s28, s18
	s_clause 0x3
	buffer_load_b128 v[69:72], v22, s[28:31], 0 offen
	buffer_load_b128 v[65:68], v17, s[28:31], 0 offen
	buffer_load_b128 v[57:60], v20, s[28:31], 0 offen
	buffer_load_b128 v[49:52], v21, s[28:31], 0 offen
	v_lshlrev_b32_e32 v22, 2, v24
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s3, s1, s42
	.loc	1 186 33                        ; attention_backward.py:186:33
	s_and_b32 s19, s46, 0x7ffffff0
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s3, s3, 32
	.loc	1 235 27                        ; attention_backward.py:235:27
	s_mul_f32 s18, s38, 0x3fb8aa3b
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v21.h, v8.l
	v_and_b32_e32 v8, 0xffff0000, v8
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v23, 2, v25
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v27.h, v10.l
	v_and_b32_e32 v10, 0xffff0000, v10
	v_mov_b16_e32 v24.h, v5.l
	v_mov_b16_e32 v25.h, v12.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v17, 0x80000000, v23, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v23.h, v6.l
	v_mov_b16_e32 v26.h, v11.l
	v_and_b32_e32 v11, 0xffff0000, v11
	v_mov_b16_e32 v28.h, v9.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[61:64], v17, s[28:31], 0 offen
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_cndmask_b32_e32 v18, 0x80000000, v22, vcc_lo
	s_clause 0x2
	buffer_load_b128 v[53:56], v19, s[28:31], 0 offen
	buffer_load_b128 v[41:44], v17, s[28:31], 0 offen
	buffer_load_b128 v[45:48], v18, s[28:31], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_mov_b16_e32 v17.l, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v32.h, v13.l
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v105, 32, v0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v20.h, v1.l
	v_mov_b16_e32 v31.h, v14.l
	v_mov_b16_e32 v32.l, v17.l
	v_and_b32_e32 v6, 0xffff0000, v6
	v_mov_b16_e32 v23.l, v17.l
	v_mov_b16_e32 v27.l, v17.l
	v_mov_b16_e32 v26.l, v17.l
	v_and_b32_e32 v12, 0xffff0000, v12
	v_and_b32_e32 v14, 0xffff0000, v14
	v_mov_b16_e32 v25.l, v17.l
	v_mov_b16_e32 v31.l, v17.l
	v_mov_b16_e32 v18.h, v3.l
	v_mov_b16_e32 v18.l, v17.l
	v_mov_b16_e32 v28.l, v17.l
	v_mov_b16_e32 v17.h, v4.l
	v_mov_b16_e32 v19.h, v2.l
	v_mov_b16_e32 v19.l, v17.l
	v_mov_b16_e32 v20.l, v17.l
	v_mov_b16_e32 v24.l, v17.l
	v_mov_b16_e32 v30.h, v15.l
	v_mov_b16_e32 v30.l, v17.l
	v_mov_b16_e32 v29.h, v16.l
	v_mov_b16_e32 v29.l, v17.l
	v_mov_b16_e32 v22.h, v7.l
	v_mov_b16_e32 v22.l, v17.l
	v_mov_b16_e32 v21.l, v17.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v12, v52, v12 :: v_dual_and_b32 v3, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v12, v51, v25 :: v_dual_mul_f32 v3, v66, v3
	v_dual_fmac_f32 v3, v65, v18 :: v_dual_and_b32 v4, 0xffff0000, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v4, v68, v4
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v4, v67, v17
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v6, v64, v6 :: v_dual_and_b32 v1, 0xffff0000, v1
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v10, v56, v10
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v33, 1, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v6, v63, v23 :: v_dual_and_b32 v5, 0xffff0000, v5
.Ltmp6:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v1, v70, v1 :: v_dual_and_b32 v82, 15, v0
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v10, v55, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp8:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v5, v62, v5 :: v_dual_lshlrev_b32 v104, 4, v103
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v154, v33, v82
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v14, v48, v14 :: v_dual_and_b32 v9, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v209, v82, 7, v104
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v1, v69, v20
.Ltmp10:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v33, s42, v154
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v14, v47, v31 :: v_dual_mul_f32 v9, v54, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp12:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v34, v105, 6, v209
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v2, 0xffff0000, v2
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v9, v53, v28 :: v_dual_add_nc_u32 v210, s1, v33
.Ltmp14:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v33, 16, v34
	v_xor_b32_e32 v36, 48, v34
	v_add_nc_u32_e32 v74, 0, v34
	v_xor_b32_e32 v35, 32, v34
	v_xor_b32_e32 v37, 64, v34
	v_add_nc_u32_e32 v77, 0, v33
	v_add_nc_u32_e32 v79, 0, v36
	v_xor_b32_e32 v38, 0x50, v34
	v_xor_b32_e32 v39, 0x60, v34
	v_xor_b32_e32 v34, 0x70, v34
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v2, v72, v2
	.loc	1 184 17                        ; attention_backward.py:184:17
	s_add_i32 s1, s3, s7
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[161:164], v74
	ds_load_b128 v[165:168], v77
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v5, v61, v24 :: v_dual_add_nc_u32 v76, 0, v34
	v_fmac_f32_e32 v2, v71, v19
.Ltmp16:
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s3, s3, 0x800
	.loc	1 182 25                        ; attention_backward.py:182:25
	s_min_i32 s1, s1, 0x800
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s3, s3, 15
	.loc	1 187 35                        ; attention_backward.py:187:35
	s_add_i32 s1, s1, 15
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v1, v1, v2 :: v_dual_add_f32 v2, v3, v4
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v11, v50, v11 :: v_dual_add_nc_u32 v212, s7, v210
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v3, v5, v6
.Ltmp20:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_ashr_i32 s5, s3, 31
	.loc	1 241 43                        ; attention_backward.py:241:43
	v_subrev_nc_u32_e32 v211, s6, v210
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v11, v49, v26
.Ltmp22:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v15, 0xffff0000, v15
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_ashr_i32 s6, s1, 31
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_lshr_b32 s5, s5, 28
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_lshr_b32 s6, s6, 28
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v6, v11, v12
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v15, v42, v15 :: v_dual_add_nc_u32 v80, 0, v37
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v16, 0xffff0000, v16
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_add_i32 s3, s3, s5
	.loc	1 187 34                        ; attention_backward.py:187:34
	s_add_i32 s1, s1, s6
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s3, s3, -16
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v15, v41, v30
.Ltmp26:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v16, v44, v16 :: v_dual_add_nc_u32 v81, 0, v38
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v7, 0xffff0000, v7
	.loc	1 187 33                        ; attention_backward.py:187:33
	s_and_b32 s1, s1, -16
	v_xor_b32_e32 v106, 16, v209
	.loc	1 190 18                        ; attention_backward.py:190:18
	s_min_i32 s52, s1, s3
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v16, v43, v29 :: v_dual_mul_f32 v7, v58, v7
	v_xor_b32_e32 v107, 32, v209
	v_xor_b32_e32 v108, 48, v209
	v_xor_b32_e32 v109, 64, v209
	v_xor_b32_e32 v110, 0x50, v209
	v_dual_fmac_f32 v7, v57, v22 :: v_dual_mul_f32 v8, v60, v8
.Ltmp28:
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v75, 0, v39
	v_xor_b32_e32 v111, 0x60, v209
	v_xor_b32_e32 v112, 0x70, v209
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s19, s52
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v8, v59, v21
.Ltmp30:
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v13, 0xffff0000, v13
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[229:232], v75
	ds_load_b128 v[233:236], v76
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cselect_b32 s53, -1, 0
	s_cmp_ge_i32 s19, s52
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v4, v7, v8
.Ltmp32:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v13, v46, v13 :: v_dual_add_nc_u32 v78, 0, v35
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v8, v15, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v13, v45, v32
	v_add_f32_e32 v7, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v12, v7, v8 :: v_dual_add_f32 v5, v9, v10
	v_dual_add_f32 v10, v3, v4 :: v_dual_add_f32 v9, v1, v2
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v16, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v14, v10 :: v_dual_mov_b32 v13, v9
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v11, v5, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[1:4], v78
	ds_load_b128 v[5:8], v79
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v12, v16 :: v_dual_mov_b32 v15, v11
	v_dual_add_f32 v34, v10, v14 :: v_dual_add_f32 v33, v9, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v40, v36
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v38, v34 :: v_dual_mov_b32 v37, v33
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v35, v11, v15
.Ltmp41:
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[9:12], v80
	ds_load_b128 v[13:16], v81
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v39, v35 :: v_dual_add_f32 v86, v33, v37
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v85, v36, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v83, v34, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v90, v86 :: v_dual_mov_b32 v89, v85
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v84, v35, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v87, v83
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v89, v89 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v88, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v87, v87 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_lshl_b32 s1, s25, 14
	s_lshl_b32 s3, s43, 11
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_add_nc_u32 v93, 0, v107
	s_add_i32 s1, s1, s3
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v92, 0, v106
	v_add3_u32 v35, s1, s19, v102
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v94, 0, v108
	v_add_nc_u32_e32 v95, 0, v109
	v_add_nc_u32_e32 v96, 0, v110
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v36, 8, v35
	v_mul_lo_u32 v35, s34, v35
	v_add_nc_u32_e32 v97, 0, v111
	v_add_nc_u32_e32 v98, 0, v112
	s_and_b32 s29, s27, 0xffff
	v_mul_lo_u32 v36, s34, v36
	s_mov_b32 s28, s26
	s_lshl_b32 s22, s34, 5
	s_mov_b32 s23, 0x76543210
	v_lshl_add_u32 v99, v35, 1, v104
	s_mov_b32 s24, s19
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_add_u32 v100, v36, 1, v104
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 28 is_stmt 1              ; attention_backward.py:229:28
	v_cndmask_b32_e64 v35, 0x80000000, v99, s2
	v_cndmask_b32_e64 v36, 0x80000000, v100, s2
	.loc	1 195 27                        ; attention_backward.py:195:27
	v_add_nc_u32_e32 v129, s24, v207
	v_dual_mov_b32 v153, v34 :: v_dual_add_nc_u32 v130, 0, v209
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x1
	buffer_load_b128 v[121:124], v35, s[28:31], 0 offen
	buffer_load_b128 v[125:128], v36, s[28:31], 0 offen
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v34, v33
	v_dual_mov_b32 v40, v33 :: v_dual_add_nc_u32 v137, 12, v129
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v132, 2, v129
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v133, 4, v129
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v134, 6, v129
	v_dual_mov_b32 v38, v33 :: v_dual_add_nc_u32 v135, 8, v129
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v136, 10, v129
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_min_i32_e32 v131, v210, v212
	.loc	1 230 21                        ; attention_backward.py:230:21
	v_add_nc_u32_e32 v138, 14, v129
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v120, v40 :: v_dual_mov_b32 v117, v37
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v119, v39
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e32 vcc_lo, v129, v211
	.loc	1 241 17 is_stmt 0              ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s1, v131, v129
	.loc	1 241 26                        ; attention_backward.py:241:26
	v_cmp_ge_i32_e64 s3, v132, v211
	v_cmp_ge_i32_e64 s5, v133, v211
	v_cmp_ge_i32_e64 s6, v134, v211
	v_cmp_ge_i32_e64 s7, v135, v211
	v_cmp_ge_i32_e64 s8, v136, v211
	v_cmp_ge_i32_e64 s9, v137, v211
	v_cmp_ge_i32_e64 s10, v138, v211
	.loc	1 241 17                        ; attention_backward.py:241:17
	v_cmp_ge_i32_e64 s11, v131, v132
	v_cmp_ge_i32_e64 s12, v131, v133
	v_cmp_ge_i32_e64 s13, v131, v134
	v_cmp_ge_i32_e64 s14, v131, v135
	v_cmp_ge_i32_e64 s15, v131, v136
	v_cmp_ge_i32_e64 s16, v131, v137
	v_cmp_ge_i32_e64 s17, v131, v138
	.loc	1 234 26 is_stmt 1              ; attention_backward.py:234:26
	v_dual_mov_b32 v118, v38 :: v_dual_mov_b32 v115, v35
	v_dual_mov_b32 v116, v36 :: v_dual_mov_b32 v113, v33
	v_mov_b32_e32 v114, v34
	.loc	1 242 17                        ; attention_backward.py:242:17
	s_and_b32 s50, s1, vcc_lo
	s_and_b32 s1, s11, s3
	s_and_b32 s3, s12, s5
	s_and_b32 s5, s13, s6
	s_and_b32 s6, s14, s7
	s_and_b32 s7, s15, s8
	s_and_b32 s8, s16, s9
	s_and_b32 s9, s17, s10
	s_and_b32 vcc_lo, s0, s1
	s_and_b32 s1, s0, s3
	s_and_b32 s3, s0, s5
	s_and_b32 s5, s0, s6
	s_and_b32 s6, s0, s7
	s_and_b32 s7, s0, s8
	s_and_b32 s8, s0, s9
	s_and_b32 s9, s0, s50
	.loc	1 194 9                         ; attention_backward.py:194:9
	v_add_nc_u32_e32 v99, s22, v99
	s_add_i32 s24, s24, 16
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(1)
	ds_store_b128 v206, v[121:124]
	s_waitcnt vmcnt(0)
	ds_store_b128 v206, v[125:128] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[121:124], v130
	ds_load_b128 v[125:128], v92
	ds_load_b128 v[129:132], v93
	ds_load_b128 v[133:136], v94
	ds_load_b128 v[137:140], v95
	ds_load_b128 v[141:144], v96
	ds_load_b128 v[145:148], v97
	ds_load_b128 v[149:152], v98
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s24, s52
	v_add_nc_u32_e32 v100, s22, v100
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[121:128], v[161:168], v[113:120]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[129:136], v[1:8], v[113:120]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[137:144], v[9:16], v[113:120]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[145:152], v[229:236], v[113:120]
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_dual_mul_f32 v34, s18, v113 :: v_dual_mul_f32 v35, s18, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v38, s18, v117 :: v_dual_mul_f32 v113, s18, v120
	v_dual_mul_f32 v36, s18, v115 :: v_dual_mul_f32 v39, s18, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v37, s18, v116
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v114, 0xff800000, v34, s9
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v113, 0xff800000, v113, s8
	v_cndmask_b32_e32 v35, 0xff800000, v35, vcc_lo
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v40, s18, v119
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v36, 0xff800000, v36, s1
	v_cndmask_b32_e64 v37, 0xff800000, v37, s3
	v_cndmask_b32_e64 v38, 0xff800000, v38, s5
	v_cndmask_b32_e64 v39, 0xff800000, v39, s6
	v_cndmask_b32_e64 v40, 0xff800000, v40, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v115, v37, v38, v39
	v_max_f32_e32 v116, v40, v113
	v_max3_f32 v34, v114, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v34, v34, v115, v116
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v115, v34, s23, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v34, v153, v34, v115
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v34
	v_sub_f32_e32 v40, v40, v34
	v_sub_f32_e32 v113, v113, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v114, v114, v34
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v113, v113
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e32 v35, 0, v35, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v114, v114
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v40, 0, v40, s7
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v113, 0, v113, s8
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v37, v37, v34
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v153
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v114, 0, v114, s9
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v36, v36, v34 :: v_dual_add_f32 v35, v114, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v36, v36
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v37, 0, v37, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v36, 0, v36, s1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v39, v39, v34 :: v_dual_add_f32 v36, v36, v37
	v_sub_f32_e32 v38, v38, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v39, v39
.Ltmp53:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp54:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v39, 0, v39, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v38, 0, v38, s5
.Ltmp55:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v37, v38, v39 :: v_dual_add_f32 v38, v40, v113
.Ltmp56:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v39, v153, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v37, v38
.Ltmp58:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v38, v91 :: v_dual_cndmask_b32 v37, 0, v37
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v36, v35, s23, 0xfedcba98 op_sel:[1,0]
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v91, v35, v36
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp62:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v91, v38, v37
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_mov_b32 v91, 0
.LBB0_4:                                ; %Flow163
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v91
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v97, v86, v90 :: v_dual_and_b32 v36, 31, v0
.Ltmp64:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v37, v82, 2, 0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s1, 0, v91
	.loc	1 264 43 is_stmt 0              ; attention_backward.py:264:43
	v_cndmask_b32_e64 v35, 0, 32, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42000000, vcc_lo
	.loc	1 124 21 is_stmt 1              ; attention_backward.py:124:21
	v_or_b32_e32 v38, s42, v36
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v105
	s_waitcnt lgkmcnt(0)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v35, v91, v35
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s7, 0x800, v38
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v100, v85, v89 :: v_dual_and_b32 v113, 24, v0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp66:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v35, v35
	v_mov_b32_e32 v40, 0
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, vcc_lo, s7
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v98, v83, v87 :: v_dual_add_f32 v99, v84, v88
.Ltmp68:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s3, v69, v69
	v_cmp_o_f32_e64 s5, v72, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v33, v35, v33
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add_nc_u32_e32 v114, 0, v73
	v_lshrrev_b32_e32 v73, 1, v113
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v35.l, v69.h
	v_mov_b16_e32 v39.l, v65.h
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v33, v34, v33
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v34, v105, 1, v37
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v73, 0, v104, v73
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v37.h, 0
	v_mov_b16_e32 v37.l, v70.h
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v214, 0, v33, s1
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v33, v36, 2, 0
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v36, s47, v36
	.loc	1 392 17 is_stmt 1              ; attention_backward.py:392:17
	v_mov_b16_e32 v35.h, v37.h
	v_and_b32_e32 v82, 1, v37
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v34, v214
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v33
	v_add_lshl_u32 v36, v36, s42, 2
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v37.l, v72.h
	v_cmp_o_f32_e64 s1, v70, v70
	v_mov_b16_e32 v34.l, v71.h
	v_mov_b16_e32 v34.h, v37.h
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v38.l, v67.h
	v_mov_b16_e32 v39.h, v37.h
	v_mov_b16_e32 v38.h, v37.h
	v_and_b32_e32 v34, 1, v34
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s50, s22
	s_mov_b32 s51, s23
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s6, v71, v71
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v71, v71, v34, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_lshrrev_b32_e32 v115, 4, v0
	v_mov_b32_e32 v86, v40
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v33, v36, s[20:23], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v114, v[97:100]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v73, v73
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v33, 1, v35
	v_add3_u32 v35, v70, v82, 0x7fff
	v_and_b32_e32 v70, 1, v37
	v_mov_b16_e32 v37.l, v66.h
	v_add3_u32 v39, v65, v39, 0x7fff
	v_add3_u32 v69, v69, v33, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s1
	v_add3_u32 v35, v72, v70, 0x7fff
	v_and_b32_e32 v70, 1, v37
	v_mov_b16_e32 v37.l, v68.h
	v_cndmask_b16 v33.l, 0x7fff, v69.h, s3
	v_cmp_o_f32_e64 s3, v67, v67
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s5
	v_add3_u32 v35, v66, v70, 0x7fff
	v_cmp_o_f32_e64 s1, v68, v68
	v_cndmask_b16 v34.l, 0x7fff, v71.h, s6
	v_cmp_o_f32_e64 s5, v44, v44
	v_cmp_o_f32_e64 s6, v43, v43
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v73, v36, s[48:51], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v36, 1, v38
	v_and_b32_e32 v38, 1, v37
	v_mov_b16_e32 v37.l, v62.h
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_mov_b32_e32 v73, v40
	v_add3_u32 v65, v67, v36, 0x7fff
	v_add3_u32 v36, v68, v38, 0x7fff
	v_mov_b16_e32 v38.l, v61.h
	v_mov_b16_e32 v38.h, v37.h
	v_and_b32_e32 v66, 1, v37
	v_cndmask_b16 v35.l, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_mov_b16_e32 v37.l, v64.h
	v_dual_mov_b32 v95, v40 :: v_dual_and_b32 v38, 1, v38
	v_add3_u32 v39, v62, v66, 0x7fff
	v_mov_b16_e32 v62.l, v63.h
	v_mov_b16_e32 v62.h, v37.h
	v_cndmask_b16 v36.l, 0x7fff, v65.h, s3
	v_add3_u32 v38, v61, v38, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_and_b32_e32 v39, 1, v37
	v_and_b32_e32 v61, 1, v62
	v_mov_b16_e32 v62.l, v57.h
	v_mov_b16_e32 v37.l, v58.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s1
	v_add3_u32 v39, v64, v39, 0x7fff
	v_cmp_o_f32_e64 s1, v64, v64
	v_cndmask_b16 v65.l, 0x7fff, v38.h, vcc_lo
	v_dual_mov_b32 v93, v40 :: v_dual_and_b32 v38, 1, v62
	v_dual_mov_b32 v91, v40 :: v_dual_and_b32 v62, 1, v37
	v_mov_b16_e32 v37.l, v60.h
	v_add3_u32 v61, v63, v61, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v39.h, s1
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_add3_u32 v38, v57, v38, 0x7fff
	v_add3_u32 v39, v58, v62, 0x7fff
	v_cmp_o_f32_e64 s1, v58, v58
	v_cmp_o_f32_e64 s3, v57, v57
	v_mov_b16_e32 v57.l, v59.h
	v_mov_b16_e32 v57.h, v37.h
	v_dual_mov_b32 v89, v40 :: v_dual_and_b32 v58, 1, v37
	v_cndmask_b16 v66.l, 0x7fff, v61.h, vcc_lo
	v_cndmask_b16 v67.h, 0x7fff, v39.h, s1
	v_cndmask_b16 v67.l, 0x7fff, v38.h, s3
	v_dual_mov_b32 v87, v40 :: v_dual_and_b32 v38, 1, v57
	v_add3_u32 v39, v60, v58, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_mov_b16_e32 v37.l, v54.h
	v_mov_b16_e32 v57.l, v53.h
	v_add3_u32 v38, v59, v38, 0x7fff
	v_mov_b16_e32 v58.l, v55.h
	v_cndmask_b16 v68.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_and_b32_e32 v39, 1, v37
	v_mov_b16_e32 v58.h, v37.h
	v_mov_b16_e32 v37.l, v56.h
	v_and_b32_e32 v57, 1, v57
	v_cmp_o_f32_e64 s1, v54, v54
	v_add3_u32 v39, v54, v39, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v38.h, vcc_lo
	v_dual_mov_b32 v85, v40 :: v_dual_and_b32 v38, 1, v58
	v_dual_mov_b32 v83, v40 :: v_dual_and_b32 v58, 1, v37
	v_mov_b16_e32 v37.l, v50.h
	v_add3_u32 v57, v53, v57, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v39.h, s1
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_add3_u32 v38, v55, v38, 0x7fff
	v_add3_u32 v39, v56, v58, 0x7fff
	v_cmp_o_f32_e64 s1, v56, v56
	v_cmp_o_f32_e64 s3, v55, v55
	v_mov_b16_e32 v53.l, v49.h
	v_mov_b16_e32 v53.h, v37.h
	v_and_b32_e32 v56, 1, v37
	v_cndmask_b16 v54.l, 0x7fff, v57.h, vcc_lo
	v_cndmask_b16 v55.h, 0x7fff, v39.h, s1
	v_cndmask_b16 v55.l, 0x7fff, v38.h, s3
	v_and_b32_e32 v38, 1, v53
	v_add3_u32 v39, v50, v56, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_mov_b16_e32 v37.l, v52.h
	v_mov_b16_e32 v50.l, v51.h
	v_mov_b16_e32 v50.h, v37.h
	v_add3_u32 v38, v49, v38, 0x7fff
	v_cndmask_b16 v56.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_and_b32_e32 v39, 1, v37
	v_dual_mov_b32 v96, v40 :: v_dual_and_b32 v49, 1, v50
	v_mov_b16_e32 v50.l, v45.h
	v_mov_b16_e32 v37.l, v46.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v39, v52, v39, 0x7fff
	v_cmp_o_f32_e64 s1, v52, v52
	v_cndmask_b16 v56.l, 0x7fff, v38.h, vcc_lo
	v_and_b32_e32 v38, 1, v50
	v_and_b32_e32 v50, 1, v37
	v_mov_b16_e32 v37.l, v48.h
	v_cndmask_b16 v57.h, 0x7fff, v39.h, s1
	v_cmp_o_f32_e64 s1, v46, v46
	v_add3_u32 v49, v51, v49, 0x7fff
	v_add3_u32 v39, v46, v50, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_add3_u32 v38, v45, v38, 0x7fff
	v_cmp_o_f32_e64 s3, v45, v45
	v_mov_b16_e32 v46.l, v47.h
	v_mov_b16_e32 v46.h, v37.h
	v_cndmask_b16 v45.h, 0x7fff, v39.h, s1
	v_dual_mov_b32 v94, v40 :: v_dual_and_b32 v39, 1, v37
	v_mov_b16_e32 v37.l, v42.h
	v_cndmask_b16 v57.l, 0x7fff, v49.h, vcc_lo
	v_cndmask_b16 v45.l, 0x7fff, v38.h, s3
	v_and_b32_e32 v38, 1, v46
	v_mov_b16_e32 v46.l, v41.h
	v_add3_u32 v39, v48, v39, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_and_b32_e32 v48, 1, v37
	v_mov_b16_e32 v50.l, v43.h
	v_mov_b16_e32 v50.h, v37.h
	v_mov_b16_e32 v37.l, v44.h
	v_add3_u32 v38, v47, v38, 0x7fff
	v_dual_mov_b32 v92, v40 :: v_dual_and_b32 v49, 1, v46
	v_cndmask_b16 v46.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_dual_mov_b32 v90, v40 :: v_dual_and_b32 v47, 1, v50
	v_dual_mov_b32 v88, v40 :: v_dual_and_b32 v37, 1, v37
	v_add3_u32 v39, v41, v49, 0x7fff
	v_add3_u32 v48, v42, v48, 0x7fff
	v_cmp_o_f32_e64 s1, v42, v42
	v_cmp_o_f32_e64 s3, v41, v41
	v_add3_u32 v41, v43, v47, 0x7fff
	v_add3_u32 v37, v44, v37, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v47.h, 0x7fff, v48.h, s1
	v_cndmask_b16 v47.l, 0x7fff, v39.h, s3
	v_cndmask_b16 v48.l, 0x7fff, v41.h, s6
	v_cndmask_b16 v48.h, 0x7fff, v37.h, s5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v206, v[33:36]
	ds_store_b128 v206, v[65:68] offset:1024
	ds_store_b128 v206, v[54:57] offset:2048
	ds_store_b128 v206, v[45:48] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v74
	ds_load_b128 v[45:48], v77
	ds_load_b128 v[49:52], v78
	ds_load_b128 v[53:56], v79
	ds_load_b128 v[57:60], v80
	ds_load_b128 v[61:64], v81
	ds_load_b128 v[65:68], v75
	ds_load_b128 v[69:72], v76
	v_mov_b32_e32 v39, v40
	v_mov_b32_e32 v38, v40
	v_mov_b32_e32 v37, v40
	v_mov_b32_e32 v36, v40
	v_mov_b32_e32 v35, v40
	v_mov_b32_e32 v34, v40
	v_mov_b32_e32 v33, v40
	v_mov_b32_e32 v80, v40
	v_mov_b32_e32 v79, v40
	v_mov_b32_e32 v78, v40
	v_mov_b32_e32 v77, v40
	v_mov_b32_e32 v76, v40
	v_mov_b32_e32 v75, v40
	v_mov_b32_e32 v74, v40
	v_mov_b32_e32 v84, v40
	v_mov_b32_e32 v82, v40
	v_mov_b32_e32 v81, v40
	s_mov_b32 s24, 0
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s53
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v114, v[97:100]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_8
; %bb.5:                                ; %.lr.ph102
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_and_b32_e32 v76, 16, v0
	v_dual_mov_b32 v77, 0x5410 :: v_dual_lshlrev_b32 v34, 1, v0
	v_lshl_or_b32 v78, v113, 6, v104
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v36, 2, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v76
	v_and_b32_e32 v33, 8, v0
	v_and_b32_e32 v34, 60, v34
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	s_lshl_b32 s1, s25, 14
	s_lshl_b32 s3, s43, 11
	v_cndmask_b32_e32 v76, 0x1054, v77, vcc_lo
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v38, 1, v33
	v_dual_mov_b32 v77, 0x7632 :: v_dual_lshlrev_b32 v40, 2, v103
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s1, s1, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v38, 0, v38
	v_lshlrev_b32_e32 v35, 6, v0
	v_lshlrev_b32_e32 v37, 2, v105
	v_dual_mov_b32 v92, v81 :: v_dual_lshlrev_b32 v73, 1, v113
	v_dual_mov_b32 v83, v81 :: v_dual_and_b32 v74, 3, v0
	v_dual_mov_b32 v94, v81 :: v_dual_lshlrev_b32 v75, 5, v0
	v_dual_mov_b32 v82, v81 :: v_dual_and_b32 v35, 64, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v86, v81 :: v_dual_lshlrev_b32 v79, 9, v74
	v_dual_mov_b32 v96, v81 :: v_dual_and_b32 v75, 0x180, v75
	v_dual_mov_b32 v87, v81 :: v_dual_lshlrev_b32 v74, 4, v74
	v_xor_b32_e32 v73, v78, v73
	v_dual_mov_b32 v89, v81 :: v_dual_lshlrev_b32 v78, 3, v0
	v_lshl_or_b32 v76, v76, 8, v76
	v_dual_cndmask_b32 v77, 0x3276, v77 :: v_dual_mov_b32 v84, v81
	v_or3_b32 v215, v35, v34, v37
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_bfe_i32 v34, v0, 3, 1
	v_or3_b32 v32, v75, v74, v79
	v_and_or_b32 v74, 0x180, v78, v104
	v_and_b32_e32 v75, 0x540054, v76
	v_lshl_or_b32 v76, v77, 8, v77
	v_dual_mov_b32 v91, v81 :: v_dual_and_b32 v34, 0x420, v34
	v_dual_mov_b32 v88, v81 :: v_dual_lshlrev_b32 v39, 8, v103
	v_dual_mov_b32 v90, v81 :: v_dual_lshlrev_b32 v33, 3, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v0, v74, v34
	v_dual_mov_b32 v93, v81 :: v_dual_and_b32 v74, 0x760076, v76
	v_xor_b32_e32 v76, 48, v32
	v_or3_b32 v216, v39, v33, v40
	v_xor_b32_e32 v33, 0x104, v215
	v_add3_u32 v35, v38, v36, v104
	v_xor_b32_e32 v36, 0x208, v215
	v_add_nc_u32_e32 v248, 0, v76
	v_mov_b32_e32 v76, v81
	v_lshl_or_b32 v34, v75, 4, v75
	v_add_nc_u32_e32 v37, 0, v37
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_xor_b32_e32 v78, 0x210, v0
	v_add_nc_u32_e32 v0, 0, v33
	v_and_b32_e32 v219, 0x5040504, v34
	v_lshl_or_b32 v34, v74, 4, v74
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add3_u32 v74, s1, s19, v102
	v_xor_b32_e32 v38, 0x30c, v215
	v_xor_b32_e32 v75, 32, v32
	v_add_nc_u32_e32 v249, 0, v78
	v_mov_b32_e32 v78, v81
	v_add_nc_u32_e32 v245, v37, v73
	v_mov_b32_e32 v73, v81
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v36
	v_add_nc_u32_e32 v79, 8, v74
	.loc	1 396 43                        ; attention_backward.py:396:43
	ds_load_b32 v217, v35
	v_xor_b32_e32 v35, 0x410, v215
	v_xor_b32_e32 v77, 16, v32
	v_add_nc_u32_e32 v247, 0, v75
	v_mov_b32_e32 v75, v81
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v38
	v_dual_mov_b32 v95, v81 :: v_dual_and_b32 v220, 0x7060706, v34
	v_mov_b32_e32 v34, v81
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_mul_lo_u32 v79, s34, v79
	v_xor_b32_e32 v39, 0x514, v215
	v_add_nc_u32_e32 v246, 0, v77
	v_mov_b32_e32 v77, v81
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v35
	v_xor_b32_e32 v40, 0x618, v215
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[41:44], off
	scratch_store_b128 off, v[45:48], off offset:16
	v_lshl_add_u32 v222, v79, 1, v104
	v_mov_b32_e32 v79, v81
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_dual_mov_b32 v33, v81 :: v_dual_add_nc_u32 v0, 0, v39
	v_xor_b32_e32 v41, 0x71c, v215
	v_mov_b32_e32 v35, v81
	v_mov_b32_e32 v37, v81
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v40
	s_lshr_b32 s5, s46, 4
	s_lshl_b32 s3, s25, 10
	s_lshl_b32 s6, s25, 13
	s_lshl_b32 s7, s43, 10
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v41
	s_add_i32 s1, s5, s3
	s_lshl_b32 s3, s43, 7
	s_add_i32 s6, s6, s7
	s_add_i32 s1, s1, s3
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v106
	s_lshl3_add_u32 s3, s5, s6
	v_mul_lo_u32 v74, s34, v74
	v_or_b32_e32 v80, s3, v102
	v_xor_b32_e32 v42, 16, v216
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v107
	v_xor_b32_e32 v43, 4, v216
	v_xor_b32_e32 v44, 20, v216
	v_xor_b32_e32 v45, 8, v216
	v_xor_b32_e32 v46, 24, v216
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v108
	v_xor_b32_e32 v47, 12, v216
	v_xor_b32_e32 v48, 28, v216
	v_mad_u64_u32 v[189:190], null, s35, v80, v[101:102]
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v109
	s_mul_i32 s1, s35, s1
	v_lshl_add_u32 v223, v74, 1, v104
	v_lshl_add_u32 v221, s1, 1, v104
	v_dual_mov_b32 v39, v81 :: v_dual_add_nc_u32 v238, 0, v42
	v_dual_mov_b32 v36, v81 :: v_dual_add_nc_u32 v239, 0, v43
	v_add_nc_u32_e32 v240, 0, v44
	v_add_nc_u32_e32 v218, 0, v45
	v_dual_mov_b32 v38, v81 :: v_dual_add_nc_u32 v241, 0, v46
	v_add_nc_u32_e32 v242, 0, v47
	v_dual_mov_b32 v40, v81 :: v_dual_add_nc_u32 v237, 0, v48
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v110
	v_add_nc_u32_e32 v243, 0, v111
	v_dual_mov_b32 v85, v81 :: v_dual_add_nc_u32 v244, 0, v112
	v_mov_b32_e32 v74, v81
	v_mov_b32_e32 v80, v81
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
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v115, off offset:88
	scratch_store_b32 off, v154, off offset:84
	scratch_store_b32 off, v0, off offset:80
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v41, 0x80000000, v223, s2
	v_cndmask_b32_e64 v45, 0x80000000, v222, s2
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v144, s31 :: v_dual_add_nc_u32 v99, 0, v215
	v_dual_mov_b32 v143, s30 :: v_dual_mov_b32 v138, s25
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_clause 0x1
	buffer_load_b128 v[41:44], v41, s[20:23], 0 offen
	buffer_load_b128 v[45:48], v45, s[20:23], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v139, s26
	v_mov_b32_e32 v137, s24
	v_dual_mov_b32 v31, v16 :: v_dual_mov_b32 v28, v13
	v_dual_mov_b32 v29, v14 :: v_dual_mov_b32 v26, v11
	v_dual_mov_b32 v27, v12 :: v_dual_mov_b32 v24, v9
	v_mov_b32_e32 v25, v10
	.loc	1 323 31                        ; attention_backward.py:323:31
	v_mov_b16_e64 v213.h, 0
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v223, s35, v223
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v142, s29
	v_mov_b32_e32 v140, s27
	v_mov_b32_e32 v30, v15
	.loc	1 393 17                        ; attention_backward.py:393:17
	v_add_nc_u32_e32 v250, 0, v32
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v222, s35, v222
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v97.l, v41.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v97.h, v45.l
	v_mov_b16_e32 v98.l, v41.h
	v_mov_b16_e32 v98.h, v45.h
	ds_store_b32 v99, v97
	v_mov_b16_e32 v97.l, v42.l
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v98
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	v_mov_b16_e32 v97.h, v46.l
	v_mov_b16_e32 v98.l, v42.h
	v_mov_b16_e32 v98.h, v46.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v97
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	v_mov_b16_e32 v97.l, v43.l
	v_mov_b16_e32 v97.h, v47.l
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v98
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	v_mov_b16_e32 v98.l, v43.h
	v_mov_b16_e32 v98.h, v47.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v97
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	v_mov_b16_e32 v97.l, v44.l
	v_mov_b16_e32 v97.h, v48.l
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v98
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	v_mov_b16_e32 v98.l, v44.h
	v_mov_b16_e32 v98.h, v48.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v97
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v97, 0, v216
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 398 31                        ; attention_backward.py:398:31
	ds_load_2addr_b32 v[125:126], v238 offset1:8
	ds_load_2addr_b32 v[127:128], v238 offset0:32 offset1:40
	ds_load_2addr_b32 v[117:118], v240 offset1:8
	ds_load_2addr_b32 v[119:120], v240 offset0:32 offset1:40
	ds_load_2addr_b32 v[109:110], v241 offset1:8
	ds_load_2addr_b32 v[111:112], v241 offset0:32 offset1:40
	ds_load_2addr_b32 v[101:102], v237 offset1:8
	ds_load_2addr_b32 v[103:104], v237 offset0:32 offset1:40
	ds_load_2addr_b32 v[204:205], v97 offset1:8
	ds_load_2addr_b32 v[202:203], v97 offset0:32 offset1:40
	ds_load_2addr_b32 v[200:201], v239 offset1:8
	ds_load_2addr_b32 v[198:199], v239 offset0:32 offset1:40
	ds_load_2addr_b32 v[196:197], v218 offset1:8
	ds_load_2addr_b32 v[194:195], v218 offset0:32 offset1:40
	ds_load_2addr_b32 v[192:193], v242 offset1:8
	ds_load_2addr_b32 v[190:191], v242 offset0:32 offset1:40
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v206, v[41:44]
	ds_store_b128 v206, v[45:48] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v41, 0, v209
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v42, 0x80000000, v221, s4
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v221, s48, v221
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[145:148], v41
	s_waitcnt vmcnt(0)
	ds_load_b128 v[149:152], v0
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v41, 0x80000000, v189, s4
	buffer_load_b64 v[224:225], v41, s[40:43], 0 offen
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[41:44], v42, s[44:47], 0 offen
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v141, s28
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_add_nc_u32_e32 v189, s39, v189
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[145:152], v[161:168], v[137:144]
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(2)
	ds_load_b128 v[153:156], v0
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 350 32                        ; attention_backward.py:350:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b32_e32 v226, 8, v225
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[157:160], v0
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[153:160], v[1:8], v[129:136]
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt vmcnt(0)
	ds_load_b128 v[145:148], v0
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[149:152], v0
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[145:152], v[9:16], v[129:136]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[145:148], v243
	ds_load_b128 v[149:152], v244
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v245, v[41:44]
	ds_store_b128 v245, v[41:44] offset:256
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v42, 15, v224
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v41.l, v224.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v44, v224, 16, 4
	v_dual_mov_b32 v23, v8 :: v_dual_mov_b32 v20, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v43, -16, v42
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v41.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v41.l, v224.h, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v45, -16, v44
	v_dual_mov_b32 v22, v7 :: v_dual_mov_b32 v21, v6
	v_mov_b32_e32 v18, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v41.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v42, v42, v43, vcc_lo
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_bfe_u32 v43, v224, 8, 4
	v_dual_mov_b32 v19, v4 :: v_dual_mov_b32 v16, v1
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_wmma_f32_16x16x16_bf16 v[129:136], v[145:152], v[229:236], v[129:136]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v147, 8, v224
	v_lshrrev_b64 v[145:146], 24, v[224:225]
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v44, v44, v45, s1
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v45, -16, v43
	v_dual_mov_b32 v17, v2 :: v_dual_mov_b32 v8, v161
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v41.l, v147.l, 15
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v9, v162 :: v_dual_mov_b32 v10, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v41.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_alignbit_b32 v41, v225, v224, 24
	v_dual_mov_b32 v11, v164 :: v_dual_mov_b32 v12, v165
	v_dual_mov_b32 v13, v166 :: v_dual_mov_b32 v14, v167
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v45, v43, v45, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v43, 15, v41
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v41.l, v145.l, 15
	v_mov_b32_e32 v15, v168
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[165:168], v247
	ds_load_b128 v[105:108], v247 offset:64
	ds_load_b128 v[153:156], v248
	ds_load_b128 v[97:100], v248 offset:64
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v46, -16, v43
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v41.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v41, v42
	v_cvt_f32_i32_e32 v42, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v46, v43, v46, vcc_lo
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v43, v44
	v_cvt_f32_i32_e32 v44, v46
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[45:48], v250
	ds_load_b128 v[121:124], v250 offset:64
	ds_load_b128 v[173:176], v246
	ds_load_b128 v[113:116], v246 offset:64
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v208, 0, v0
	v_mov_b32_e32 v0, v65
	v_dual_mov_b32 v2, v67 :: v_dual_mov_b32 v1, v66
	v_mov_b32_e32 v3, v68
	ds_store_b128 v208, v[41:44]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v42, v224, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v41.h, 4, v224.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v43, v145, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v41.l, 4, v145.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v145.h, v213.h
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v42, v147, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v213.l, v41.h, 15
	v_lshrrev_b16 v41.h, 4, v147.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_bfe_u32 v147, v224, 20, 4
	v_mov_b32_e32 v4, v69
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v42.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e64 v42.l, v224.h
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v145.l, v41.h, 15
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v148, -16, v147
	v_or_b32_e32 v44, -16, v213
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v224, 24, v225
	v_bfe_i32 v42, v42, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v146, -16, v145
	v_dual_mov_b32 v5, v70 :: v_dual_mov_b32 v6, v71
	v_mov_b32_e32 v7, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v42.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v145, v145, v146, s1
	v_dual_mov_b32 v72, v64 :: v_dual_mov_b32 v71, v63
	v_mov_b32_e32 v70, v62
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v42, v147, v148, s3
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v147.l, v41.l, 15
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v147.h, v213.h
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v41.l, v43.l
	v_mov_b32_e32 v69, v61
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v43, v42
	v_cvt_f32_i32_e32 v42, v145
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v148, -16, v147
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v41.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v41, v213, v44, vcc_lo
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v213.l, 4, v224.l
	v_dual_mov_b32 v68, v60 :: v_dual_mov_b32 v67, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v44, v147, v148, s3
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v41, v41
	v_dual_mov_b32 v66, v58 :: v_dual_mov_b32 v65, v57
	v_mov_b32_e32 v64, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v44
	v_mov_b32_e32 v62, v54
	v_mov_b32_e32 v60, v52
	v_dual_mov_b32 v58, v50 :: v_dual_mov_b32 v63, v55
	ds_store_b128 v249, v[41:44]
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v42, v225, 16, 4
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v41.l, v225.h, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v44, 15, v225
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v43, -16, v42
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v41.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v41.l, v225.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v145, -16, v44
	v_mov_b32_e32 v61, v53
	v_dual_mov_b32 v59, v51 :: v_dual_cndmask_b32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v41.l
	.loc	1 361 29 is_stmt 1              ; attention_backward.py:361:29
	v_bfe_u32 v43, v225, 24, 4
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v41.l, v224.l, 15
	v_mov_b32_e32 v57, v49
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v44, v44, v145, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v145, -16, v43
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v41.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v41.l, v226.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e32 v145, v43, v145, vcc_lo
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v43, v225, 8, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e32 vcc_lo, 7, v41.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v41, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v44, v145
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v146, -16, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e32 v146, v43, v146, vcc_lo
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v43, v42
	v_cvt_f32_i32_e32 v42, v146
	ds_load_b128 v[185:188], v250
	ds_load_b128 v[161:164], v250 offset:64
	ds_load_b128 v[181:184], v246
	ds_load_b128 v[157:160], v246 offset:64
	ds_load_b128 v[177:180], v247
	ds_load_b128 v[149:152], v247 offset:64
	ds_load_b128 v[169:172], v248
	ds_load_b128 v[145:148], v248 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v208, v[41:44]
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v41.l, 4, v225.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v42, v225, 0, 8
	v_mov_b16_e64 v43.l, v225.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v208.h, v213.h
	v_bfe_u32 v44, v225, 20, 4
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_and_b16 v208.l, v41.l, 15
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v41.l, v42.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v42, -16, v208
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v41.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v41, v43, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v43, -16, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v42, v208, v42, vcc_lo
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v41.l
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v41.l, 4, v226.l
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v208, -16, v213
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e32 v43, v44, v43, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v44.l, v41.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v41, v224, 0, 8
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v44.h, v213.h
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v224, 0xffff0000, v48
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v41.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v41, v226, 0, 8
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v208, v213, v208, vcc_lo
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v213, -16, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e32 vcc_lo, 0, v41.l
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v41, v42
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e32 v213, v44, v213, vcc_lo
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v44, v208
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v208, 16, v48
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v42, v213
	ds_store_b128 v249, v[41:44]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v41, 16, v45
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off
	scratch_load_b128 v[53:56], off, off offset:16
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v254, v185, v41
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v41, 0xffff0000, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v253, v186, v41
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v41, 16, v46
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v254, v254
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v253, v253
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v252, v187, v41 :: v_dual_and_b32 v41, 0xffff0000, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v252, v252
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v251, v188, v41
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v41, 16, v173
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[185:188], v250
	ds_load_b128 v[225:228], v250 offset:64
	v_mul_f32_e32 v181, v181, v41
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v41, 0xffff0000, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v182, v182, v41 :: v_dual_and_b32 v213, 0xffff0000, v47
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v41, 16, v174
	v_lshlrev_b32_e32 v255, 16, v47
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v182, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v183, v183, v41
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v46, v186, v213 :: v_dual_and_b32 v41, 0xffff0000, v174
	v_mul_f32_e32 v45, v185, v255
	v_dual_mul_f32 v47, v187, v208 :: v_dual_mul_f32 v184, v184, v41
	v_dual_mul_f32 v48, v188, v224 :: v_dual_lshlrev_b32 v185, 16, v175
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v186, 0xffff0000, v175
	v_lshlrev_b32_e32 v187, 16, v176
	v_and_b32_e32 v188, 0xffff0000, v176
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[41:44], v246
	ds_load_b128 v[173:176], v246 offset:64
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v208, v45, 16, 1
	v_cmp_o_f32_e64 s6, v45, v45
	v_cmp_o_f32_e64 s7, v46, v46
	v_cmp_o_f32_e64 s8, v47, v47
	v_cmp_o_f32_e64 s9, v48, v48
	v_add3_u32 v45, v45, v208, 0x7fff
	v_bfe_u32 v208, v46, 16, 1
	v_cmp_o_f32_e64 s10, v181, v181
	v_cmp_o_f32_e64 s5, v251, v251
	v_cmp_o_f32_e64 s12, v183, v183
	v_cmp_o_f32_e64 s13, v184, v184
	v_add3_u32 v46, v46, v208, 0x7fff
	v_bfe_u32 v208, v47, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v47, v47, v208, 0x7fff
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v41, v41, v185
	v_mul_f32_e32 v43, v43, v187
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v208, v48, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v42, v42, v186
	v_mul_f32_e32 v44, v44, v188
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v41, v41
	v_bfe_u32 v185, v254, 16, 1
	v_add3_u32 v48, v48, v208, 0x7fff
	v_bfe_u32 v208, v181, 16, 1
	v_cmp_o_f32_e64 s15, v42, v42
	v_bfe_u32 v186, v253, 16, 1
	v_bfe_u32 v187, v252, 16, 1
	v_bfe_u32 v188, v251, 16, 1
	v_add3_u32 v208, v181, v208, 0x7fff
	v_bfe_u32 v181, v182, 16, 1
	v_cmp_o_f32_e64 s16, v43, v43
	v_add3_u32 v185, v254, v185, 0x7fff
	v_add3_u32 v186, v253, v186, 0x7fff
	v_add3_u32 v187, v252, v187, 0x7fff
	v_add3_u32 v213, v182, v181, 0x7fff
	v_bfe_u32 v181, v183, 16, 1
	v_add3_u32 v188, v251, v188, 0x7fff
	v_cmp_o_f32_e64 s17, v44, v44
	v_cndmask_b16 v182.l, 0x7fff, v187.h, s3
	v_cndmask_b16 v185.l, 0x7fff, v208.h, s10
	v_add3_u32 v224, v183, v181, 0x7fff
	v_bfe_u32 v181, v184, 16, 1
	v_cndmask_b16 v182.h, 0x7fff, v188.h, s5
	v_cndmask_b16 v183.l, 0x7fff, v45.h, s6
	v_cndmask_b16 v183.h, 0x7fff, v46.h, s7
	v_cndmask_b16 v186.l, 0x7fff, v224.h, s12
	v_add3_u32 v250, v184, v181, 0x7fff
	v_bfe_u32 v181, v41, 16, 1
	v_cndmask_b16 v184.l, 0x7fff, v47.h, s8
	v_cndmask_b16 v184.h, 0x7fff, v48.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v41, v181, 0x7fff
	v_bfe_u32 v181, v42, 16, 1
	v_cndmask_b16 v187.l, 0x7fff, v41.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v42, v42, v181, 0x7fff
	v_bfe_u32 v181, v43, 16, 1
	v_cndmask_b16 v187.h, 0x7fff, v42.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v43, v43, v181, 0x7fff
	v_bfe_u32 v181, v44, 16, 1
	v_cndmask_b16 v188.l, 0x7fff, v43.h, s16
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v44, v44, v181, 0x7fff
	v_cndmask_b16 v181.l, 0x7fff, v185.h, vcc_lo
	v_cndmask_b16 v181.h, 0x7fff, v186.h, s1
	v_cndmask_b16 v185.h, 0x7fff, v213.h, s11
	v_cndmask_b16 v186.h, 0x7fff, v250.h, s13
	v_cndmask_b16 v188.h, 0x7fff, v44.h, s17
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[181:188], v[49:56], v[137:144]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v181, 16, v155
	v_and_b32_e32 v182, 0xffff0000, v155
	v_lshlrev_b32_e32 v137, 16, v165
	v_dual_mov_b32 v49, v57 :: v_dual_and_b32 v184, 0xffff0000, v156
	v_mov_b32_e32 v56, v64
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v50, v58 :: v_dual_mul_f32 v141, v177, v137
	v_and_b32_e32 v137, 0xffff0000, v165
	v_dual_mov_b32 v51, v59 :: v_dual_mov_b32 v52, v60
	v_dual_mov_b32 v53, v61 :: v_dual_mov_b32 v54, v62
	v_mov_b32_e32 v55, v63
	v_mov_b32_e32 v57, v65
	v_dual_mov_b32 v59, v67 :: v_dual_mul_f32 v142, v178, v137
	v_dual_mov_b32 v58, v66 :: v_dual_lshlrev_b32 v137, 16, v166
	v_mov_b32_e32 v60, v68
	v_dual_mov_b32 v62, v70 :: v_dual_mov_b32 v63, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v143, v179, v137 :: v_dual_and_b32 v178, 0xffff0000, v167
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v137, 0xffff0000, v166
	v_dual_mov_b32 v61, v69 :: v_dual_mov_b32 v64, v72
	v_dual_mov_b32 v72, v7 :: v_dual_mov_b32 v71, v6
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v144, v180, v137 :: v_dual_lshlrev_b32 v177, 16, v167
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v179, 16, v168
	v_and_b32_e32 v180, 0xffff0000, v168
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[137:140], v247
	ds_load_b128 v[165:168], v247 offset:64
	v_mov_b32_e32 v69, v4
	v_mov_b32_e32 v67, v2
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v183, 16, v156
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v141, v141
	v_cmp_o_f32_e64 s1, v142, v142
	v_cmp_o_f32_e64 s3, v143, v143
	v_cmp_o_f32_e64 s5, v144, v144
	v_mov_b32_e32 v70, v5
	v_mov_b32_e32 v66, v1
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v68, v3 :: v_dual_mul_f32 v177, v137, v177
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v178, v138, v178 :: v_dual_lshlrev_b32 v137, 16, v153
	v_dual_mul_f32 v179, v139, v179 :: v_dual_mul_f32 v180, v140, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v177, v177
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v169, v169, v137
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v137, 0xffff0000, v153
	v_mov_b32_e32 v65, v0
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v178, v178
	v_cmp_o_f32_e64 s8, v179, v179
	v_cmp_o_f32_e64 s9, v180, v180
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v170, v170, v137 :: v_dual_lshlrev_b32 v137, 16, v154
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v169, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s11, v170, v170
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v171, v171, v137
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v137, 0xffff0000, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v171, v171
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v172, v172, v137
	ds_load_b128 v[137:140], v248
	ds_load_b128 v[153:156], v248 offset:64
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v172, v172
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v137, v137, v181
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v181, v141, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v138, v138, v182 :: v_dual_mul_f32 v139, v139, v183
	v_mul_f32_e32 v140, v140, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v137, v137
	v_add3_u32 v141, v141, v181, 0x7fff
	v_bfe_u32 v181, v142, 16, 1
	v_cmp_o_f32_e64 s15, v138, v138
	v_cmp_o_f32_e64 s16, v139, v139
	v_cmp_o_f32_e64 s17, v140, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v142, v142, v181, 0x7fff
	v_bfe_u32 v181, v143, 16, 1
	v_add3_u32 v143, v143, v181, 0x7fff
	v_bfe_u32 v181, v144, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v144, v144, v181, 0x7fff
	v_bfe_u32 v181, v177, 16, 1
	v_add3_u32 v177, v177, v181, 0x7fff
	v_bfe_u32 v181, v178, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v178, v178, v181, 0x7fff
	v_bfe_u32 v181, v179, 16, 1
	v_add3_u32 v179, v179, v181, 0x7fff
	v_bfe_u32 v181, v180, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v180, v180, v181, 0x7fff
	v_bfe_u32 v181, v169, 16, 1
	v_add3_u32 v169, v169, v181, 0x7fff
	v_bfe_u32 v181, v170, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v141.l, 0x7fff, v169.h, s10
	v_add3_u32 v170, v170, v181, 0x7fff
	v_bfe_u32 v181, v171, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v171, v171, v181, 0x7fff
	v_bfe_u32 v181, v172, 16, 1
	v_cndmask_b16 v142.l, 0x7fff, v171.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v172, v172, v181, 0x7fff
	v_bfe_u32 v181, v137, 16, 1
	v_add3_u32 v181, v137, v181, 0x7fff
	v_bfe_u32 v137, v138, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v143.l, 0x7fff, v181.h, s14
	v_add3_u32 v182, v138, v137, 0x7fff
	v_bfe_u32 v137, v139, 16, 1
	v_cndmask_b16 v138.l, 0x7fff, v143.h, s3
	v_cndmask_b16 v138.h, 0x7fff, v144.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v143.h, 0x7fff, v182.h, s15
	v_add3_u32 v183, v139, v137, 0x7fff
	v_bfe_u32 v137, v140, 16, 1
	v_cndmask_b16 v139.l, 0x7fff, v177.h, s6
	v_cndmask_b16 v139.h, 0x7fff, v178.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v144.l, 0x7fff, v183.h, s16
	v_add3_u32 v184, v140, v137, 0x7fff
	v_cndmask_b16 v137.l, 0x7fff, v141.h, vcc_lo
	v_cndmask_b16 v137.h, 0x7fff, v142.h, s1
	v_cndmask_b16 v140.l, 0x7fff, v179.h, s8
	v_cndmask_b16 v140.h, 0x7fff, v180.h, s9
	v_cndmask_b16 v141.h, 0x7fff, v170.h, s11
	v_cndmask_b16 v142.h, 0x7fff, v172.h, s13
	v_cndmask_b16 v144.h, 0x7fff, v184.h, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[41:48], v[137:144], v[49:56], v[41:48]
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v137, 16, v121
	v_and_b32_e32 v121, 0xffff0000, v121
	v_lshlrev_b32_e32 v141, 16, v113
	v_lshlrev_b32_e32 v138, 16, v122
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v137, v161, v137 :: v_dual_lshlrev_b32 v142, 16, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v121, v162, v121 :: v_dual_and_b32 v114, 0xffff0000, v114
	v_dual_mul_f32 v141, v157, v141 :: v_dual_lshlrev_b32 v144, 16, v116
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v157, v137, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v138, v163, v138
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v122, 0xffff0000, v122
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v139, 16, v123
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v137, v137, v157, 0x7fff
	v_bfe_u32 v157, v121, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v122, v164, v122
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v121, v121
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v123, 0xffff0000, v123
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v139, v225, v139 :: v_dual_and_b32 v116, 0xffff0000, v116
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_add3_u32 v121, v121, v157, 0x7fff
	v_bfe_u32 v157, v138, 16, 1
	v_cmp_o_f32_e64 s3, v138, v138
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v123, v226, v123 :: v_dual_lshlrev_b32 v140, 16, v124
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v122, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v138, v138, v157, 0x7fff
	v_bfe_u32 v157, v122, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v124, 0xffff0000, v124
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v140, v227, v140
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v139, v139
	v_cmp_o_f32_e64 s7, v123, v123
	v_add3_u32 v122, v122, v157, 0x7fff
	v_bfe_u32 v157, v139, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v124, v228, v124 :: v_dual_and_b32 v113, 0xffff0000, v113
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v140, v140
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v142, v159, v142
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v139, v139, v157, 0x7fff
	v_bfe_u32 v157, v123, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v113, v158, v113
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v124, v124
	v_cmp_o_f32_e64 s10, v141, v141
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v114, v160, v114
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v123, v123, v157, 0x7fff
	v_bfe_u32 v157, v140, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v143, 16, v115
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s11, v113, v113
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v115, 0xffff0000, v115
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v142, v142
	v_add3_u32 v140, v140, v157, 0x7fff
	v_bfe_u32 v157, v124, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v143, v173, v143
	v_mul_f32_e32 v115, v174, v115
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v114, v114
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v144, v175, v144
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v124, v124, v157, 0x7fff
	v_bfe_u32 v157, v141, 16, 1
	v_cmp_o_f32_e64 s14, v143, v143
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v116, v176, v116
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v115, v115
	v_cmp_o_f32_e64 s16, v144, v144
	v_add3_u32 v141, v141, v157, 0x7fff
	v_bfe_u32 v157, v113, 16, 1
	v_cmp_o_f32_e64 s17, v116, v116
	v_cndmask_b16 v138.l, 0x7fff, v138.h, s3
	v_cndmask_b16 v138.h, 0x7fff, v122.h, s5
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v122, 16, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v113, v113, v157, 0x7fff
	v_bfe_u32 v157, v142, 16, 1
	v_cndmask_b16 v141.l, 0x7fff, v141.h, s10
	v_cndmask_b16 v140.l, 0x7fff, v140.h, s8
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v122, v147, v122
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v141.h, 0x7fff, v113.h, s11
	v_add3_u32 v142, v142, v157, 0x7fff
	v_bfe_u32 v157, v114, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v113, 16, v105
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v140.h, 0x7fff, v124.h, s9
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v98, 0xffff0000, v98
	v_lshlrev_b32_e32 v124, 16, v100
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v114, v114, v157, 0x7fff
	v_bfe_u32 v157, v143, 16, 1
	v_cndmask_b16 v137.l, 0x7fff, v137.h, vcc_lo
	v_cndmask_b16 v137.h, 0x7fff, v121.h, s1
	v_cndmask_b16 v139.l, 0x7fff, v139.h, s6
	v_cndmask_b16 v139.h, 0x7fff, v123.h, s7
	v_add3_u32 v143, v143, v157, 0x7fff
	v_bfe_u32 v157, v115, 16, 1
	v_cndmask_b16 v142.l, 0x7fff, v142.h, s12
	v_cndmask_b16 v142.h, 0x7fff, v114.h, s13
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v105, 0xffff0000, v105
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v143.l, 0x7fff, v143.h, s14
	v_add3_u32 v115, v115, v157, 0x7fff
	v_bfe_u32 v157, v144, 16, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v100, 0xffff0000, v100
	v_lshlrev_b32_e32 v114, 16, v106
	v_and_b32_e32 v106, 0xffff0000, v106
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v143.h, 0x7fff, v115.h, s15
	v_add3_u32 v144, v144, v157, 0x7fff
	v_bfe_u32 v157, v116, 16, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v115, 16, v107
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v114, v151, v114 :: v_dual_and_b32 v107, 0xffff0000, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cndmask_b16 v144.l, 0x7fff, v144.h, s16
	v_add3_u32 v116, v116, v157, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v115, v165, v115
	v_dual_mul_f32 v107, v166, v107 :: v_dual_mul_f32 v106, v152, v106
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v114, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v144.h, 0x7fff, v116.h, s17
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v116, 16, v108
	v_and_b32_e32 v108, 0xffff0000, v108
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s5, v106, v106
	v_cmp_o_f32_e64 s6, v115, v115
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[41:48], v[137:144], v[57:64], v[41:48]
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v116, v167, v116
	v_mul_f32_e32 v108, v168, v108
	v_dual_mov_b32 v168, v15 :: v_dual_mov_b32 v167, v14
	v_mul_f32_e32 v98, v148, v98
	v_dual_mov_b32 v166, v13 :: v_dual_mov_b32 v165, v12
	v_dual_mov_b32 v164, v11 :: v_dual_mov_b32 v163, v10
	v_dual_mov_b32 v162, v9 :: v_dual_mov_b32 v161, v8
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v124, v155, v124 :: v_dual_mov_b32 v1, v16
	v_dual_mov_b32 v8, v23 :: v_dual_mul_f32 v113, v149, v113
	v_dual_mov_b32 v2, v17 :: v_dual_mov_b32 v3, v18
	v_mul_f32_e32 v100, v156, v100
	v_dual_mov_b32 v4, v19 :: v_dual_mov_b32 v5, v20
	v_dual_mov_b32 v6, v21 :: v_dual_mov_b32 v7, v22
	v_dual_mov_b32 v9, v24 :: v_dual_mov_b32 v10, v25
	v_dual_mul_f32 v105, v150, v105 :: v_dual_mov_b32 v14, v29
	v_mov_b32_e32 v12, v27
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v137, v113, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v105, v105
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v121, 16, v97
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v107, v107
	v_add3_u32 v113, v113, v137, 0x7fff
	v_bfe_u32 v137, v105, 16, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v97, 0xffff0000, v97
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v121, v145, v121
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v116, v116
	v_cmp_o_f32_e64 s9, v108, v108
	v_add3_u32 v105, v105, v137, 0x7fff
	v_bfe_u32 v137, v114, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v97, v146, v97
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v121, v121
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v123, 16, v99
	v_and_b32_e32 v99, 0xffff0000, v99
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v114, v114, v137, 0x7fff
	v_bfe_u32 v137, v106, 16, 1
	v_cmp_o_f32_e64 s11, v97, v97
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v123, v153, v123
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v122, v122
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v99, v154, v99
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v106, v106, v137, 0x7fff
	v_bfe_u32 v137, v115, 16, 1
	v_cmp_o_f32_e64 s13, v98, v98
	v_cmp_o_f32_e64 s14, v123, v123
	v_cmp_o_f32_e64 s15, v99, v99
	v_cmp_o_f32_e64 s16, v124, v124
	v_add3_u32 v115, v115, v137, 0x7fff
	v_bfe_u32 v137, v107, 16, 1
	v_cmp_o_f32_e64 s17, v100, v100
	v_cndmask_b16 v138.l, 0x7fff, v114.h, s3
	v_cndmask_b16 v138.h, 0x7fff, v106.h, s5
	v_cndmask_b16 v139.l, 0x7fff, v115.h, s6
	v_add3_u32 v107, v107, v137, 0x7fff
	v_bfe_u32 v137, v116, 16, 1
	.loc	1 329 17 is_stmt 1              ; attention_backward.py:329:17
	v_min_i32_e32 v115, v210, v212
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v106, s18, v134, -v214
	v_mov_b32_e32 v16, v31
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v139.h, 0x7fff, v107.h, s7
	v_add3_u32 v116, v116, v137, 0x7fff
	v_bfe_u32 v137, v108, 16, 1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v107, s18, v135, -v214
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v116.l, v199.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v140.l, 0x7fff, v116.h, s8
	v_add3_u32 v108, v108, v137, 0x7fff
	v_bfe_u32 v137, v121, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v116.h, v120.l
	v_mov_b16_e64 v120.l, v199.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v140.h, 0x7fff, v108.h, s9
	v_add3_u32 v121, v121, v137, 0x7fff
	v_bfe_u32 v137, v97, 16, 1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v108, s18, v136, -v214
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v121.l, v204.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v141.l, 0x7fff, v121.h, s10
	v_add3_u32 v97, v97, v137, 0x7fff
	v_bfe_u32 v137, v122, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v121.h, v125.l
	v_mov_b16_e64 v125.l, v204.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v141.h, 0x7fff, v97.h, s11
	v_add3_u32 v122, v122, v137, 0x7fff
	v_bfe_u32 v137, v98, 16, 1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v97, s18, v129, -v214
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v122.l, v205.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v142.l, 0x7fff, v122.h, s12
	v_add3_u32 v98, v98, v137, 0x7fff
	v_bfe_u32 v137, v123, 16, 1
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v97, v97
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v122.h, v126.l
	v_mov_b16_e64 v126.l, v205.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v142.h, 0x7fff, v98.h, s13
	v_add3_u32 v123, v123, v137, 0x7fff
	v_bfe_u32 v137, v99, 16, 1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v98, s18, v130, -v214
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v123.l, v202.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v143.l, 0x7fff, v123.h, s14
	v_add3_u32 v99, v99, v137, 0x7fff
	v_bfe_u32 v137, v124, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v123.h, v127.l
	v_mov_b16_e64 v127.l, v202.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v143.h, 0x7fff, v99.h, s15
	v_add3_u32 v124, v124, v137, 0x7fff
	v_bfe_u32 v137, v100, 16, 1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v99, s18, v131, -v214
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v124.l, v203.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v144.l, 0x7fff, v124.h, s16
	v_add3_u32 v100, v100, v137, 0x7fff
	v_cndmask_b16 v137.l, 0x7fff, v113.h, vcc_lo
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v113, s19, v207
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v137.h, 0x7fff, v105.h, s1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v105, s18, v133, -v214
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v144.h, 0x7fff, v100.h, s17
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v100, s18, v132, -v214
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s3, v113, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s5, v115, v113
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v114, 2, v113
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[41:48], v[137:144], v[65:72], v[41:48]
	v_mov_b32_e32 v11, v26
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v124.h, v128.l
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s5, s3
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v114, v211
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s3, s0, s3
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v41, v41, v217
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e64 v97, 0, v97, s3
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s1, v115, v114
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v42, v42, v217
	v_sub_f32_e32 v43, v43, v217
	v_sub_f32_e32 v44, v44, v217
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v41, v97, v41
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v97, v98
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s1, vcc_lo
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v45, v45, v217
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v41, s38, v41
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v46, v46, v217
	v_sub_f32_e32 v47, v47, v217
	v_sub_f32_e32 v48, v48, v217
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v128.l, v203.h
	v_mov_b16_e64 v114.l, v201.l
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v97, 0, v97, vcc_lo
	v_mov_b32_e32 v13, v28
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v114.h, v118.l
	v_mov_b16_e64 v118.l, v201.h
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v42, v97, v42 :: v_dual_mov_b32 v15, v30
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v97, v41, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v98.l, v193.l
	v_mov_b16_e32 v98.h, v102.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v42, s38, v42
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v102.l, v193.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v41, v41, v97, 0x7fff
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s19, s19, 16
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v97, v42, 16, 1
	v_cmp_o_f32_e64 s1, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v42, v42, v97, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v97, v42, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v97, v42, v219
	v_perm_b32 v42, v97, v42, v220
	.loc	1 271 27                        ; attention_backward.py:271:27
	v_add_nc_u32_e32 v97, 4, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v97, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s1, v115, v97
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v97, 6, v113
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s1, vcc_lo
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s3, v97, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s5, v115, v97
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v97, v99
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v99.l, v190.l
	v_mov_b16_e32 v99.h, v103.l
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s5, s3
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v103.l, v190.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v97, 0, v97, vcc_lo
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v43, v97, v43
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v97, v100
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v100.l, v191.l
	v_mov_b16_e32 v100.h, v104.l
	v_mov_b16_e64 v104.l, v191.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v43, s38, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v97, 0, v97, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v44, v97, v44
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v97, v43, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v44, s38, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v43, v43, v97, 0x7fff
	v_bfe_u32 v97, v44, 16, 1
	v_cmp_o_f32_e64 s1, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v44, v44, v97, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v43.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s1
	v_permlanex16_b32 v97, v44, s49, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v97, v44, v219
	v_perm_b32 v44, v97, v44, v220
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v97, 8, v113
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v97, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s1, v115, v97
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v97, 10, v113
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s1, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s3, v97, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s5, v115, v97
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v97, v105
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v105.l, v196.l
	v_mov_b16_e32 v105.h, v109.l
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s5, s3
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v109.l, v196.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v97, 0, v97, vcc_lo
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v45, v97, v45
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v97, v106
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v106.l, v197.l
	v_mov_b16_e32 v106.h, v110.l
	v_mov_b16_e64 v110.l, v197.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v45, s38, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v97, 0, v97, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v46, v97, v46
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v97, v45, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v46, s38, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v45, v45, v97, 0x7fff
	v_bfe_u32 v97, v46, 16, 1
	v_cmp_o_f32_e64 s1, v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v46, v97, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v45.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s1
	v_permlanex16_b32 v97, v46, s49, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v45, v97, v46, v219
	v_perm_b32 v46, v97, v46, v220
	.loc	1 271 27 is_stmt 1              ; attention_backward.py:271:27
	v_add_nc_u32_e32 v97, 12, v113
	.loc	1 329 26                        ; attention_backward.py:329:26
	v_cmp_ge_i32_e32 vcc_lo, v97, v211
	.loc	1 329 17 is_stmt 0              ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s1, v115, v97
	.loc	1 317 21 is_stmt 1              ; attention_backward.py:317:21
	v_add_nc_u32_e32 v97, 14, v113
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v113.l, v200.l
	v_mov_b16_e32 v113.h, v117.l
	v_mov_b16_e64 v117.l, v200.h
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s1, vcc_lo
	.loc	1 329 17                        ; attention_backward.py:329:17
	v_cmp_ge_i32_e64 s3, v115, v97
	.loc	1 329 26 is_stmt 0              ; attention_backward.py:329:26
	v_cmp_ge_i32_e64 s5, v97, v211
	.loc	1 345 45 is_stmt 1              ; attention_backward.py:345:45
	v_exp_f32_e32 v97, v107
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v115.l, v198.l
	v_mov_b16_e32 v115.h, v119.l
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 s1, s3, s5
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v119.l, v198.h
	v_mov_b16_e64 v107.l, v194.l
	v_mov_b16_e32 v107.h, v111.l
	v_mov_b16_e64 v111.l, v194.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v97, 0, v97, vcc_lo
	.loc	1 330 17                        ; attention_backward.py:330:17
	s_and_b32 vcc_lo, s0, s1
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cmp_lt_i32 s19, s52
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v47, v97, v47
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v97, v108
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v108.l, v195.l
	v_mov_b16_e32 v108.h, v112.l
	v_mov_b16_e64 v112.l, v195.h
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_mul_f32_e32 v47, s38, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v97, 0, v97, vcc_lo
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v48, v97, v48
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v97, v47, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v48, s38, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v47, v47, v97, 0x7fff
	v_bfe_u32 v97, v48, 16, 1
	v_cmp_o_f32_e64 s1, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v48, v48, v97, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v47.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s1
	v_permlanex16_b32 v97, v48, s49, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_perm_b32 v47, v97, v48, v219
	v_perm_b32 v48, v97, v48, v220
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_mov_b16_e64 v97.l, v192.l
	v_mov_b16_e32 v97.h, v101.l
	v_mov_b16_e64 v101.l, v192.h
	v_wmma_f32_16x16x16_bf16 v[81:88], v[121:128], v[41:48], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[89:96], v[113:120], v[41:48], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[41:48], v[73:80]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[97:104], v[41:48], v[33:40]
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ; %Flow
	.loc	1 0 31 is_stmt 0                ; attention_backward.py:0:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v154, off, off offset:84
	scratch_load_b32 v115, off, off offset:88
.LBB0_8:                                ; %._crit_edge103
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v0, s34, v154
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e32 vcc_lo, s34, v207
	v_or_b32_e32 v1, 48, v207
	v_or_b32_e32 v2, 32, v207
	v_or_b32_e32 v3, 16, v207
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v4, 62, v115
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
	buffer_store_b32 v33, v1, s[36:39], 0 offen
	buffer_store_b32 v34, v4, s[36:39], 0 offen
	buffer_store_b32 v35, v6, s[36:39], 0 offen
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
	buffer_store_b32 v36, v1, s[36:39], 0 offen
	buffer_store_b32 v37, v2, s[36:39], 0 offen
	buffer_store_b32 v38, v3, s[36:39], 0 offen
	buffer_store_b32 v39, v4, s[36:39], 0 offen
	buffer_store_b32 v40, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp69:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 96
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 96
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13680
; TotalNumSgprs: 56
; NumVgprs: 256
; ScratchSize: 96
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
	.quad	.Ltmp50                         ; DW_AT_low_pc
	.long	.Ltmp52-.Ltmp50                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp50                         ; DW_AT_low_pc
	.long	.Ltmp51-.Ltmp50                 ; DW_AT_high_pc
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 96
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 23
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
