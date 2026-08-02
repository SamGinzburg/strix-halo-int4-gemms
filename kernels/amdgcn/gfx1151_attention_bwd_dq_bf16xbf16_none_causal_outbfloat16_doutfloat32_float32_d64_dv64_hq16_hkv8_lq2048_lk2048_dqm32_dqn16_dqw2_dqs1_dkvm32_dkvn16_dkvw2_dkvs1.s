	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_and_b32_e32 v101, 7, v0
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
	v_lshlrev_b32_e32 v19, 3, v101
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
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v82, 15, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s0, s0, 28
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v103, 32, v0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s34, v1
	s_mul_i32 s33, s34, s5
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s34, v19
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_lshl_b32 s4, s34, 3
	s_lshl_b32 s6, s34, 4
	s_mul_i32 s7, s34, 24
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s20, s16
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add3_u32 v2, v3, v19, s33
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s5, s35, s5
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s0, s3, s0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v23, s5, v19
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v129, v0, 4, 1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v3, 1, v2
	v_add_lshl_u32 v4, v2, s4, 1
	v_add_lshl_u32 v5, v2, s6, 1
	v_add_lshl_u32 v2, v2, s7, 1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s4, vcc_lo, s2
	s_mov_b32 s16, 0
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
	v_cmp_gt_i32_e64 s4, s35, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_mov_b64 s[36:37], s[14:15]
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v18, 56, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v20, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v74, 1, v18
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v18, s35, v1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v20, v20, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add3_u32 v21, v18, v19, s5
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v130, 0, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v22, s35, 3, v18
	v_lshl_add_u32 v24, s35, 4, v18
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(3)
	ds_store_b128 v130, v[2:5]
	s_waitcnt vmcnt(2)
	ds_store_b128 v130, v[6:9] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v130, v[10:13] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v130, v[14:17] offset:3072
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_or_b32_e32 v14, 4, v23
	v_add3_u32 v26, v22, v19, s5
	v_mad_u64_u32 v[19:20], null, s35, 24, v[18:19]
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_lshl_u32 v18, v14, v18, 2
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v25, 1, v21
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_barrier
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s5, s0, 0xfff0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v16, 2, v21
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v20, 0x80000000, v25, vcc_lo
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v102, 4, v101
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_lshl_u32 v21, v14, v22, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s5, s3, 0x10007
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[2:5], v20, s[20:23], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v132, v82, 7, v102
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s5
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, v23, v24
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i8 s3, s3
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_lshl_u32 v22, v14, v24, 2
	v_lshlrev_b32_e32 v24, 2, v26
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v25, 1, v26
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v35, v103, 6, v132
	.loc	1 228 28                        ; attention_backward.py:228:28
	s_lshl_b32 s0, s0, 10
	s_lshl_b32 s3, s3, 10
	s_and_b32 s0, s0, 0xffffc000
	s_and_b32 s3, s3, 0xfffff800
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v6, 0x80000000, v25 :: v_dual_add_nc_u32 v25, v23, v19
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	v_add3_u32 v112, s0, s3, v1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v1, 16, v35
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v23, 0x80000000, v16, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	buffer_load_b128 v[6:9], v6, s[20:23], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_lshl_u32 v19, v14, v19, 2
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v76, 0, v1
	v_xor_b32_e32 v36, 48, v35
	v_xor_b32_e32 v37, 64, v35
	v_xor_b32_e32 v38, 0x50, v35
	v_xor_b32_e32 v39, 0x60, v35
	.loc	1 189 48                        ; attention_backward.py:189:48
	s_add_i32 s5, s27, s1
	v_mul_lo_u32 v111, s34, v112
	s_add_i32 s5, s5, 32
	v_xor_b32_e32 v104, 16, v132
	v_xor_b32_e32 v105, 32, v132
	v_xor_b32_e32 v106, 48, v132
	v_xor_b32_e32 v107, 64, v132
	v_xor_b32_e32 v108, 0x50, v132
	v_xor_b32_e32 v109, 0x60, v132
	v_xor_b32_e32 v110, 0x70, v132
	v_add_nc_u32_e32 v113, 8, v112
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v1, 0xffff0000, v2
	v_lshlrev_b32_e32 v10, 1, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v20, 2, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_lshlrev_b32 v15, 1, v25
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v20, 0x80000000, v20 :: v_dual_cndmask_b32 v15, 0x80000000, v15
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1
	buffer_load_b128 v[10:13], v10, s[20:23], 0 offen
	buffer_load_b128 v[14:17], v15, s[20:23], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
	s_clause 0x1
	buffer_load_b128 v[69:72], v23, s[20:23], 0 offen
	buffer_load_b128 v[65:68], v18, s[20:23], 0 offen
	v_dual_cndmask_b32 v18, 0x80000000, v24 :: v_dual_lshlrev_b32 v23, 2, v25
	s_clause 0x1
	buffer_load_b128 v[57:60], v21, s[20:23], 0 offen
	buffer_load_b128 v[49:52], v22, s[20:23], 0 offen
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v22.h, v9.l
	.loc	1 171 28                        ; attention_backward.py:171:28
	buffer_load_b128 v[61:64], v18, s[20:23], 0 offen
	v_cndmask_b32_e32 v18, 0x80000000, v19, vcc_lo
	v_cndmask_b32_e32 v19, 0x80000000, v23, vcc_lo
	s_clause 0x2
	buffer_load_b128 v[53:56], v20, s[20:23], 0 offen
	buffer_load_b128 v[41:44], v18, s[20:23], 0 offen
	buffer_load_b128 v[45:48], v19, s[20:23], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_mov_b16_e32 v18.l, 0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v18.h, v5.l
	v_mov_b16_e32 v19.h, v4.l
	v_mov_b16_e32 v20.h, v3.l
	v_mov_b16_e32 v21.h, v2.l
	v_mov_b16_e32 v22.l, v18.l
	v_mov_b16_e32 v23.l, v18.l
	v_mov_b16_e32 v24.l, v18.l
	v_mov_b16_e32 v25.l, v18.l
	v_mov_b16_e32 v27.l, v18.l
	v_mov_b16_e32 v28.l, v18.l
	v_mov_b16_e32 v29.l, v18.l
	v_mov_b16_e32 v31.l, v18.l
	v_mov_b16_e32 v32.l, v18.l
	v_mov_b16_e32 v33.l, v18.l
	v_mov_b16_e32 v23.h, v8.l
	v_mov_b16_e32 v24.h, v7.l
	v_mov_b16_e32 v25.h, v6.l
	v_and_b32_e32 v2, 0xffff0000, v3
	v_and_b32_e32 v3, 0xffff0000, v4
	v_and_b32_e32 v4, 0xffff0000, v5
	v_and_b32_e32 v5, 0xffff0000, v6
	v_mov_b16_e32 v20.l, v18.l
	v_mov_b16_e32 v26.l, v18.l
	v_mov_b16_e32 v19.l, v18.l
	v_mov_b16_e32 v21.l, v18.l
	v_mov_b16_e32 v30.l, v18.l
	.loc	1 235 27                        ; attention_backward.py:235:27
	s_mul_f32 s10, s26, 0x3fb8aa3b
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v26.h, v13.l
	v_mov_b16_e32 v27.h, v12.l
	v_mov_b16_e32 v28.h, v11.l
	v_mov_b16_e32 v29.h, v10.l
	v_and_b32_e32 v6, 0xffff0000, v7
	v_and_b32_e32 v7, 0xffff0000, v8
	v_and_b32_e32 v8, 0xffff0000, v9
	v_and_b32_e32 v9, 0xffff0000, v10
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v31.h, v16.l
	v_mov_b16_e32 v32.h, v15.l
	v_mov_b16_e32 v33.h, v14.l
	v_and_b32_e32 v10, 0xffff0000, v11
	v_and_b32_e32 v11, 0xffff0000, v12
	v_and_b32_e32 v12, 0xffff0000, v13
	v_and_b32_e32 v13, 0xffff0000, v14
	v_and_b32_e32 v14, 0xffff0000, v15
	v_and_b32_e32 v15, 0xffff0000, v16
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v7, v58, v7
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v11, v50, v11
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_mov_b16_e32 v30.h, v17.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v14, v48, v14 :: v_dual_mul_f32 v3, v66, v3
	v_mul_f32_e32 v15, v42, v15
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v7, v57, v23 :: v_dual_mul_f32 v4, v68, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v14, v47, v32
.Ltmp2:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v13, v46, v13 :: v_dual_add_nc_u32 v78, 0, v36
.Ltmp3:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v11, v49, v27 :: v_dual_mul_f32 v8, v60, v8
	v_dual_fmac_f32 v3, v65, v19 :: v_dual_fmac_f32 v4, v67, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v45, v33
.Ltmp4:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v10, v56, v10 :: v_dual_add_nc_u32 v79, 0, v37
.Ltmp5:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v15, v41, v31 :: v_dual_mul_f32 v12, v52, v12
	v_fmac_f32_e32 v8, v59, v22
	v_dual_fmac_f32 v10, v55, v28 :: v_dual_mul_f32 v9, v54, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v12, v51, v26 :: v_dual_fmac_f32 v9, v53, v29
.Ltmp6:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v6, v64, v6 :: v_dual_add_nc_u32 v73, 0, v35
.Ltmp7:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v6, v63, v24 :: v_dual_mul_f32 v5, v62, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v5, v61, v25 :: v_dual_mul_f32 v2, v72, v2
.Ltmp8:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v34, 1, v103
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_and_b32_e32 v16, 0xffff0000, v17
.Ltmp9:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v2, v71, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp10:
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v131, v34, v82
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v1, v70, v1 :: v_dual_add_nc_u32 v80, 0, v38
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v34, s27, v131
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v1, v69, v21
.Ltmp12:
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[17:20], v79
	ds_load_b128 v[21:24], v80
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v34
	.loc	1 129 27                        ; attention_backward.py:129:27
	v_add_nc_u32_e32 v133, s1, v34
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v34, 32, v35
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v1, v1, v2 :: v_dual_add_f32 v2, v3, v4
	v_add_f32_e32 v3, v5, v6
.Ltmp14:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v16, v44, v16 :: v_dual_add_nc_u32 v75, 0, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v77, 0, v34
	v_xor_b32_e32 v35, 0x70, v35
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v4, v7, v8 :: v_dual_add_f32 v7, v13, v14
	v_fmac_f32_e32 v16, v43, v30
	v_dual_add_f32 v5, v9, v10 :: v_dual_add_f32 v6, v11, v12
	v_add_f32_e32 v9, v1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v8, v15, v16 :: v_dual_add_nc_u32 v81, 0, v35
	v_dual_add_f32 v10, v3, v4 :: v_dual_add_f32 v11, v5, v6
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v13, v9
.Ltmp17:
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[25:28], v75
	ds_load_b128 v[29:32], v81
	.loc	1 189 25                        ; attention_backward.py:189:25
	s_min_i32 s1, s5, 0x800
.Ltmp18:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v14, v10 :: v_dual_mov_b32 v15, v11
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v12, v7, v8
.Ltmp20:
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[1:4], v73
	ds_load_b128 v[5:8], v76
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v33, v9, v13 :: v_dual_mov_b32 v16, v12
.Ltmp23:
	.loc	1 190 35                        ; attention_backward.py:190:35
	s_add_i32 s1, s1, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v34, v10, v14 :: v_dual_add_f32 v35, v11, v15
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v37, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_ashr_i32 s3, s1, 31
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v12, v16
.Ltmp29:
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[9:12], v77
	ds_load_b128 v[13:16], v78
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_lshr_b32 s3, s3, 28
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 190 34                        ; attention_backward.py:190:34
	s_add_i32 s1, s1, s3
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v40, v36
.Ltmp33:
	.loc	1 190 33                        ; attention_backward.py:190:33
	s_and_b32 s11, s1, -16
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_gt_i32 s5, 0
	s_cselect_b32 s17, -1, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v38, v34
.Ltmp35:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s5, 1
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v85, v36, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v84, v35, v39 :: v_dual_mov_b32 v89, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v83, v34, v38 :: v_dual_add_f32 v86, v33, v37
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v88, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v89, v89 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v87, v83 :: v_dual_mov_b32 v90, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v87, v87 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_mul_lo_u32 v35, s34, v113
	v_lshl_add_u32 v92, v111, 1, v102
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_mov_b32 v33, 0
	v_add_nc_u32_e32 v93, 0, v104
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v94, 0, v105
	v_add_nc_u32_e32 v95, 0, v106
	v_lshl_add_u32 v96, v35, 1, v102
	v_add_nc_u32_e32 v97, 0, v107
	v_add_nc_u32_e32 v98, 0, v108
	v_add_nc_u32_e32 v99, 0, v109
	v_add_nc_u32_e32 v100, 0, v110
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	s_lshl_b32 s14, s34, 5
	s_mov_b32 s15, 0x76543210
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v35, 0x80000000, v92, s2
	v_cndmask_b32_e64 v36, 0x80000000, v96, s2
	v_dual_mov_b32 v126, v34 :: v_dual_add_nc_u32 v127, s16, v129
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v40, v33
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x1
	buffer_load_b128 v[122:125], v35, s[20:23], 0 offen
	buffer_load_b128 v[134:137], v36, s[20:23], 0 offen
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v128, 0, v132
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v139, 4, v127
	v_dual_mov_b32 v36, v33 :: v_dual_add_nc_u32 v141, 8, v127
	v_dual_mov_b32 v37, v33 :: v_dual_add_nc_u32 v138, 2, v127
	v_dual_mov_b32 v38, v33 :: v_dual_add_nc_u32 v143, 12, v127
	v_dual_mov_b32 v39, v33 :: v_dual_add_nc_u32 v140, 6, v127
	v_dual_mov_b32 v121, v40 :: v_dual_add_nc_u32 v142, 10, v127
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v119, v38 :: v_dual_add_nc_u32 v144, 14, v127
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e64 s1, v138, v133
	v_cmp_le_i32_e64 s3, v139, v133
	v_cmp_le_i32_e64 s5, v140, v133
	v_cmp_le_i32_e64 s6, v141, v133
	v_cmp_le_i32_e64 s7, v142, v133
	v_cmp_le_i32_e64 s8, v143, v133
	v_cmp_le_i32_e64 s9, v144, v133
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v120, v39 :: v_dual_mov_b32 v117, v36
	v_dual_mov_b32 v118, v37 :: v_dual_mov_b32 v115, v34
	v_mov_b32_e32 v116, v35
	v_mov_b32_e32 v114, v33
	.loc	1 239 26                        ; attention_backward.py:239:26
	v_cmp_le_i32_e32 vcc_lo, v127, v133
	.loc	1 239 17 is_stmt 0              ; attention_backward.py:239:17
	s_and_b32 s1, s0, s1
	s_and_b32 s8, s0, s8
	s_and_b32 s9, s0, s9
	s_and_b32 s3, s0, s3
	s_and_b32 vcc_lo, s0, vcc_lo
	s_and_b32 s5, s0, s5
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s0, s7
	.loc	1 194 9 is_stmt 1               ; attention_backward.py:194:9
	s_add_i32 s16, s16, 16
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(1)
	ds_store_b128 v130, v[122:125]
	s_waitcnt vmcnt(0)
	ds_store_b128 v130, v[134:137] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[134:137], v128
	ds_load_b128 v[138:141], v93
	ds_load_b128 v[142:145], v94
	ds_load_b128 v[146:149], v95
	ds_load_b128 v[150:153], v97
	ds_load_b128 v[154:157], v98
	ds_load_b128 v[158:161], v99
	ds_load_b128 v[162:165], v100
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cmp_lt_i32 s16, s11
	v_add_nc_u32_e32 v96, s14, v96
	v_add_nc_u32_e32 v92, s14, v92
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[114:121], v[134:141], v[1:8], v[114:121]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[114:121], v[142:149], v[9:16], v[114:121]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[114:121], v[150:157], v[17:24], v[114:121]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[114:121], v[158:165], v[25:32], v[114:121]
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_dual_mul_f32 v34, s10, v114 :: v_dual_mul_f32 v35, s10, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v37, s10, v117 :: v_dual_mul_f32 v38, s10, v118
	v_mul_f32_e32 v39, s10, v119
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e32 v115, 0xff800000, v34, vcc_lo
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v40, s10, v120
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v35, 0xff800000, v35, s1
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v114, s10, v121
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v37, 0xff800000, v37, s5
	v_cndmask_b32_e64 v38, 0xff800000, v38, s6
	v_cndmask_b32_e64 v40, 0xff800000, v40, s8
	v_cndmask_b32_e64 v39, 0xff800000, v39, s7
	v_cndmask_b32_e64 v114, 0xff800000, v114, s9
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v36, s10, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v116, v37, v38, v39
	v_max_f32_e32 v117, v40, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e64 v36, 0xff800000, v36, s3
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v34, v115, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v34, v34, v116, v117
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v116, v34, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v34, v126, v34, v116
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v38, v38, v34
	v_sub_f32_e32 v39, v39, v34
	v_sub_f32_e32 v37, v37, v34
	v_sub_f32_e32 v35, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v35, v35
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v38, 0, v38, s6
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v39, 0, v39, s7
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v36, v36, v34
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v37, 0, v37, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v35, 0, v35, s1
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 29                        ; attention_backward.py:261:29
	v_cndmask_b32_e64 v36, 0, v36, s3
.Ltmp46:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v36, v36, v37 :: v_dual_sub_f32 v115, v115, v34
	v_add_f32_e32 v37, v38, v39
.Ltmp47:
	.loc	1 260 70                        ; attention_backward.py:260:70
	v_sub_f32_e32 v39, v126, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v115, v115
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e32 v115, 0, v115, vcc_lo
	.loc	1 260 21 is_stmt 1              ; attention_backward.py:260:21
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v114, v114, v34 :: v_dual_add_f32 v35, v115, v35
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v114, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v35, v35, v36 :: v_dual_sub_f32 v40, v40, v34
.Ltmp49:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 261 29 is_stmt 0              ; attention_backward.py:261:29
	v_cndmask_b32_e64 v114, 0, v114, s9
	v_cndmask_b32_e64 v40, 0, v40, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v38, v40, v114
	v_add_f32_e32 v36, v37, v38
.Ltmp51:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v37, v39
	v_mov_b32_e32 v38, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v36, v35, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e32 v37, 0, v37, vcc_lo
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v91, v35, v36
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp56:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v91, v38, v37
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_dual_mov_b32 v34, 0xff800000 :: v_dual_mov_b32 v91, 0
.LBB0_4:                                ; %Flow161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 264 43 is_stmt 1              ; attention_backward.py:264:43
	v_cmp_gt_f32_e32 vcc_lo, 0x800000, v91
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v97, v86, v90 :: v_dual_and_b32 v36, 31, v0
.Ltmp58:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v37, v82, 2, 0
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s1, 0, v91
	.loc	1 264 43 is_stmt 0              ; attention_backward.py:264:43
	v_cndmask_b32_e64 v35, 0, 32, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42000000, vcc_lo
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v38, s27, v36
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v35, v91, v35
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v103
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v100, v85, v89 :: v_dual_add_nc_u32 v115, 0, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp60:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s7, 0x800, v38
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v35, v35
	v_mov_b32_e32 v40, 0
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v98, v83, v87 :: v_dual_add_f32 v99, v84, v88
.Ltmp62:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 vcc_lo, vcc_lo, s7
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_cmp_o_f32_e64 s3, v69, v69
	v_cmp_o_f32_e64 s5, v72, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v33, v35, v33
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v35.l, v69.h
	v_mov_b16_e32 v39.l, v65.h
	v_mov_b16_e32 v38.l, v67.h
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s37, s37, 0xffff
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v33, v34, v33 :: v_dual_and_b32 v114, 24, v0
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v34, v103, 1, v37
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v37.h, 0
	v_mov_b16_e32 v37.l, v70.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v135, 0, v33, s1
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v33, v36, 2, 0
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v36, s30, v36
	.loc	1 267 9 is_stmt 1               ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v74, 1, v114
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v35.h, v37.h
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v34, v135
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v33
	v_add_lshl_u32 v36, v36, s27, 2
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v74, 0, v102, v74
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v82, 1, v37
	v_mov_b16_e32 v37.l, v72.h
	v_cmp_o_f32_e64 s1, v70, v70
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_mov_b16_e32 v34.l, v71.h
	v_mov_b16_e32 v34.h, v37.h
	v_mov_b16_e32 v39.h, v37.h
	v_mov_b16_e32 v38.h, v37.h
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s38, s14
	s_mov_b32 s39, s15
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v34, 1, v34
	v_cmp_o_f32_e64 s6, v71, v71
	v_and_b32_e32 v39, 1, v39
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_lshrrev_b32_e32 v134, 4, v0
	v_add3_u32 v71, v71, v34, 0x7fff
	v_mov_b32_e32 v88, v40
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v33, v36, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v115, v[97:100]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v74, v74
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
	buffer_store_b32 v74, v36, s[36:39], 0 offen
	.loc	1 392 17                        ; attention_backward.py:392:17
	v_and_b32_e32 v36, 1, v38
	v_and_b32_e32 v38, 1, v37
	v_mov_b16_e32 v37.l, v62.h
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v65, v67, v36, 0x7fff
	v_add3_u32 v36, v68, v38, 0x7fff
	v_mov_b16_e32 v38.l, v61.h
	v_mov_b16_e32 v38.h, v37.h
	v_and_b32_e32 v66, 1, v37
	v_cndmask_b16 v35.l, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_mov_b16_e32 v37.l, v64.h
	v_and_b32_e32 v38, 1, v38
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
	v_dual_mov_b32 v95, v40 :: v_dual_and_b32 v38, 1, v62
	v_dual_mov_b32 v93, v40 :: v_dual_and_b32 v62, 1, v37
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
	v_dual_mov_b32 v91, v40 :: v_dual_and_b32 v58, 1, v37
	v_cndmask_b16 v66.l, 0x7fff, v61.h, vcc_lo
	v_cndmask_b16 v67.h, 0x7fff, v39.h, s1
	v_cndmask_b16 v67.l, 0x7fff, v38.h, s3
	v_dual_mov_b32 v89, v40 :: v_dual_and_b32 v38, 1, v57
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
	v_dual_mov_b32 v87, v40 :: v_dual_and_b32 v38, 1, v58
	v_dual_mov_b32 v85, v40 :: v_dual_and_b32 v58, 1, v37
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
	v_dual_mov_b32 v83, v40 :: v_dual_and_b32 v56, 1, v37
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
	v_dual_mov_b32 v74, v40 :: v_dual_and_b32 v49, 1, v50
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
	v_dual_mov_b32 v96, v40 :: v_dual_and_b32 v39, 1, v37
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
	v_dual_mov_b32 v94, v40 :: v_dual_and_b32 v49, 1, v46
	v_cndmask_b16 v46.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_dual_mov_b32 v92, v40 :: v_dual_and_b32 v47, 1, v50
	v_dual_mov_b32 v90, v40 :: v_dual_and_b32 v37, 1, v37
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
	s_barrier
	ds_store_b128 v130, v[33:36]
	ds_store_b128 v130, v[65:68] offset:1024
	ds_store_b128 v130, v[54:57] offset:2048
	ds_store_b128 v130, v[45:48] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v73
	ds_load_b128 v[45:48], v76
	ds_load_b128 v[49:52], v77
	ds_load_b128 v[53:56], v78
	ds_load_b128 v[57:60], v79
	ds_load_b128 v[61:64], v80
	ds_load_b128 v[65:68], v75
	ds_load_b128 v[69:72], v81
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
	v_mov_b32_e32 v73, v40
	v_mov_b32_e32 v86, v40
	v_mov_b32_e32 v84, v40
	v_mov_b32_e32 v82, v40
	v_mov_b32_e32 v81, v40
	s_mov_b32 s16, 0
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_and_not1_b32 vcc_lo, exec_lo, s17
	.loc	1 396 43                        ; attention_backward.py:396:43
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v115, v[97:100]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_7
; %bb.5:                                ; %.lr.ph38
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	v_and_b32_e32 v78, 16, v0
	v_dual_mov_b32 v82, 0x5410 :: v_dual_and_b32 v33, 8, v0
	v_lshlrev_b32_e32 v35, 6, v0
	v_lshlrev_b32_e32 v34, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v78
	v_dual_mov_b32 v78, 0x7632 :: v_dual_and_b32 v81, 3, v0
	v_and_b32_e32 v35, 64, v35
	v_lshlrev_b32_e32 v0, 5, v0
	v_cndmask_b32_e32 v82, 0x1054, v82, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v84, 9, v81
	v_lshlrev_b32_e32 v81, 4, v81
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	v_mul_lo_u32 v86, s34, v113
	v_and_b32_e32 v0, 0x180, v0
	v_lshl_or_b32 v82, v82, 8, v82
	v_lshl_or_b32 v85, v114, 6, v102
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v37, 1, v33
	v_lshrrev_b32_e32 v36, 2, v103
	v_or3_b32 v0, v0, v81, v84
	v_and_b32_e32 v81, 0x540054, v82
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshl_add_u32 v143, v86, 1, v102
	v_mul_lo_u32 v84, s35, v113
	v_dual_cndmask_b32 v78, 0x3276, v78 :: v_dual_lshlrev_b32 v39, 8, v101
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v81, v81, 4, v81
	v_xor_b32_e32 v87, 32, v0
	v_xor_b32_e32 v88, 48, v0
	v_lshl_add_u32 v144, v111, 1, v102
	v_lshl_or_b32 v78, v78, 8, v78
	v_and_b32_e32 v139, 0x5040504, v81
	v_mov_b32_e32 v81, 0
	v_lshlrev_b32_e32 v83, 1, v114
	v_and_b32_e32 v34, 60, v34
	v_lshlrev_b32_e32 v38, 2, v103
	v_lshlrev_b32_e32 v40, 2, v101
	v_mov_b32_e32 v86, v81
	v_xor_b32_e32 v82, v85, v83
	v_mul_lo_u32 v85, s35, v112
	v_xor_b32_e32 v83, 16, v0
	v_lshlrev_b32_e32 v33, 3, v33
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add_nc_u32_e32 v37, 0, v37
	.loc	1 270 9                         ; attention_backward.py:270:9
	v_lshl_add_u32 v141, v84, 1, v102
	v_add_nc_u32_e32 v168, 0, v87
	v_add_nc_u32_e32 v167, 0, v83
	v_mov_b32_e32 v83, v81
	v_lshl_add_u32 v142, v85, 1, v102
	v_mov_b32_e32 v85, v81
	v_or3_b32 v136, v35, v34, v38
	v_add_nc_u32_e32 v38, 0, v38
	v_mov_b32_e32 v84, v81
	v_dual_mov_b32 v87, v81 :: v_dual_and_b32 v78, 0x760076, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v34, 0x104, v136
	v_add_nc_u32_e32 v166, v38, v82
	v_mov_b32_e32 v82, v81
	v_or3_b32 v137, v39, v33, v40
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_add3_u32 v33, v37, v36, v102
	v_xor_b32_e32 v35, 0x208, v136
	v_xor_b32_e32 v36, 0x30c, v136
	v_xor_b32_e32 v37, 0x410, v136
	v_xor_b32_e32 v73, 16, v137
	ds_load_b32 v138, v33
	v_xor_b32_e32 v33, 0x514, v136
	v_xor_b32_e32 v39, 0x618, v136
	v_xor_b32_e32 v40, 0x71c, v136
	v_xor_b32_e32 v74, 4, v137
	v_xor_b32_e32 v75, 20, v137
	v_xor_b32_e32 v76, 8, v137
	v_xor_b32_e32 v77, 24, v137
	v_xor_b32_e32 v79, 12, v137
	v_xor_b32_e32 v80, 28, v137
	v_add_nc_u32_e32 v152, 0, v73
	v_mov_b32_e32 v73, v81
	v_lshl_or_b32 v78, v78, 4, v78
	v_dual_mov_b32 v90, v81 :: v_dual_add_nc_u32 v145, 0, v34
	v_add_nc_u32_e32 v146, 0, v35
	v_dual_mov_b32 v92, v81 :: v_dual_add_nc_u32 v147, 0, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v140, 0x7060706, v78
	v_add_nc_u32_e32 v148, 0, v37
	v_dual_mov_b32 v94, v81 :: v_dual_add_nc_u32 v149, 0, v33
	v_dual_mov_b32 v35, v81 :: v_dual_add_nc_u32 v150, 0, v39
	v_dual_mov_b32 v96, v81 :: v_dual_add_nc_u32 v151, 0, v40
	v_add_nc_u32_e32 v153, 0, v74
	v_mov_b32_e32 v74, v81
	v_dual_mov_b32 v39, v81 :: v_dual_add_nc_u32 v154, 0, v75
	v_add_nc_u32_e32 v155, 0, v76
	v_mov_b32_e32 v76, v81
	v_add_nc_u32_e32 v156, 0, v77
	v_dual_mov_b32 v78, v81 :: v_dual_add_nc_u32 v157, 0, v79
	v_add_nc_u32_e32 v158, 0, v80
	v_dual_mov_b32 v80, v81 :: v_dual_add_nc_u32 v159, 0, v104
	v_add_nc_u32_e32 v160, 0, v105
	v_dual_mov_b32 v34, v81 :: v_dual_add_nc_u32 v161, 0, v106
	v_add_nc_u32_e32 v162, 0, v107
	v_dual_mov_b32 v36, v81 :: v_dual_add_nc_u32 v163, 0, v108
	v_add_nc_u32_e32 v164, 0, v109
	v_dual_mov_b32 v38, v81 :: v_dual_add_nc_u32 v165, 0, v110
	v_add_nc_u32_e32 v169, 0, v88
	v_mov_b32_e32 v88, v81
	v_mov_b32_e32 v89, v81
	v_mov_b32_e32 v91, v81
	v_mov_b32_e32 v93, v81
	v_mov_b32_e32 v95, v81
	v_mov_b32_e32 v75, v81
	v_mov_b32_e32 v77, v81
	v_mov_b32_e32 v79, v81
	v_mov_b32_e32 v33, v81
	v_mov_b32_e32 v37, v81
	v_mov_b32_e32 v40, v81
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
	v_wmma_f32_16x16x16_bf16 v[202:209], v[170:177], v[41:48], v[186:193]
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
	v_wmma_f32_16x16x16_bf16 v[202:209], v[170:177], v[49:56], v[202:209]
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
	v_wmma_f32_16x16x16_bf16 v[202:209], v[170:177], v[57:64], v[202:209]
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
	v_wmma_f32_16x16x16_bf16 v[202:209], v[170:177], v[65:72], v[202:209]
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
	v_wmma_f32_16x16x16_bf16 v[33:40], v[121:128], v[170:177], v[33:40]
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
	buffer_store_b32 v33, v1, s[24:27], 0 offen
	buffer_store_b32 v34, v4, s[24:27], 0 offen
	buffer_store_b32 v35, v6, s[24:27], 0 offen
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
	buffer_store_b32 v36, v1, s[24:27], 0 offen
	buffer_store_b32 v37, v2, s[24:27], 0 offen
	buffer_store_b32 v38, v3, s[24:27], 0 offen
	buffer_store_b32 v39, v4, s[24:27], 0 offen
	buffer_store_b32 v40, v0, s[24:27], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp63:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 218
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8156
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
