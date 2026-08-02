	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x74
.Ltmp0:
	.loc	1 161 44 prologue_end           ; attention_backward.py:161:44
	v_and_b32_e32 v121, 7, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v18, 3, v0
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b64 s[28:29], s[0:1], 0x10
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s16, s2, 5
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshlrev_b32_e32 v17, 3, v121
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_lshl_b32 s17, s3, 11
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s16, v18
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s5, s16, s17
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_clause 0x1
	s_load_b32 s26, s[0:1], 0x7c
	s_load_b64 s[24:25], s[0:1], 0x58
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v124, 32, v0
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v125, 15, v0
	v_dual_mov_b32 v66, 0xff800000 :: v_dual_mov_b32 v65, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[129:130], null, s34, v18, v[17:18]
	s_mul_i32 s33, s34, s5
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s34, v17
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_lshl_b32 s4, s34, 4
	s_mul_i32 s6, s34, 24
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s33, v129
	v_lshl_add_u32 v132, s34, 3, v129
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s12, s35, s5
	v_mul_lo_u32 v18, s35, v18
	v_add_nc_u32_e32 v21, s12, v17
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v3, v132, s33, 1
	v_add_lshl_u32 v4, v1, s4, 1
	v_add_lshl_u32 v1, v1, s6, 1
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_or_b32_e32 v22, 4, v21
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v5, 0x80000000, v3, s4
	v_cndmask_b32_e64 v9, 0x80000000, v4, s4
	v_cndmask_b32_e64 v13, 0x80000000, v1, s4
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[20:23], 0 offen
	buffer_load_b128 v[5:8], v5, s[20:23], 0 offen
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	buffer_load_b128 v[13:16], v13, s[20:23], 0 offen
	s_load_b256 s[4:11], s[0:1], 0x38
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s0, s35, v17
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v24, s35, 4, v18
	v_lshl_add_u32 v23, s35, 3, v18
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s1, s3, 31
	.loc	1 235 27                        ; attention_backward.py:235:27
	s_mul_f32 s36, s26, 0x3fb8aa3b
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v19, 56, v0
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v20, 4, v0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s1, s1, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s1, s3, s1
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v123, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v19, v20, v123
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s5, 0xffff
	s_mov_b32 s20, s4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v133, 0, v19
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[19:20], null, s35, 24, v[18:19]
	v_add_nc_u32_e32 v20, v21, v24
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v24, v22, v24, 2
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s4, s1, 0xfff0
	.loc	1 228 28                        ; attention_backward.py:228:28
	s_lshl_b32 s1, s1, 10
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s4
	.loc	1 228 28                        ; attention_backward.py:228:28
	s_and_b32 s1, s1, 0xffffc000
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v21, v21, v19
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v19, v22, v19, 2
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s4, s3, 0x10007
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v27, 2, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_lshlrev_b32 v26, 2, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v21, 1, v21
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v134, v18, v17
	v_add_nc_u32_e32 v135, v23, v17
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v18, v22, v18, 2
	v_add_lshl_u32 v23, v22, v23, 2
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v17, s12, v134
	v_add_nc_u32_e32 v22, s12, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v122, 4, v121
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v25, 2, v17
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v17, 1, v17
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v28, 2, v22
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v22, 1, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v127, v125, 7, v122
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_i32 s3, s3, 0x80000
	v_xor_b32_e32 v128, 16, v127
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i16 s3, s3
	v_xor_b32_e32 v130, 32, v127
	.loc	1 228 28                        ; attention_backward.py:228:28
	s_lshl_b32 s3, s3, 10
	v_xor_b32_e32 v131, 48, v127
	v_xor_b32_e32 v145, 64, v127
	v_xor_b32_e32 v146, 0x50, v127
	v_xor_b32_e32 v147, 0x60, v127
	v_xor_b32_e32 v148, 0x70, v127
	s_and_b32 s27, s3, 0xfffff800
	s_mov_b64 s[4:5], s[10:11]
	s_mov_b32 s3, 0
	s_add_i32 s27, s27, s1
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(3)
	ds_store_b128 v133, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v133, v[5:8] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v133, v[9:12] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v133, v[13:16] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x7
	buffer_load_b128 v[101:104], v25, s[20:23], 0 offen
	buffer_load_b128 v[97:100], v18, s[20:23], 0 offen
	buffer_load_b128 v[93:96], v28, s[20:23], 0 offen
	buffer_load_b128 v[89:92], v23, s[20:23], 0 offen
	buffer_load_b128 v[85:88], v26, s[20:23], 0 offen
	buffer_load_b128 v[81:84], v24, s[20:23], 0 offen
	buffer_load_b128 v[77:80], v27, s[20:23], 0 offen
	buffer_load_b128 v[73:76], v19, s[20:23], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s20, s6
	s_clause 0x3
	buffer_load_b128 v[117:120], v17, s[20:23], 0 offen
	buffer_load_b128 v[113:116], v22, s[20:23], 0 offen
	buffer_load_b128 v[109:112], v20, s[20:23], 0 offen
	buffer_load_b128 v[105:108], v21, s[20:23], 0 offen
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 1, v124
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v2, v124, 6, v127
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	s_mov_b32 s6, 0x76543210
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v136, v1, v125
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v33, 0, v2
	v_xad_u32 v37, v2, 16, 0
	v_xad_u32 v41, v2, 32, 0
	v_xad_u32 v45, v2, 48, 0
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s16, v136
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xad_u32 v49, v2, 64, 0
	v_xad_u32 v53, 0x50, v2, 0
	v_xad_u32 v57, 0x60, v2, 0
	v_xad_u32 v61, 0x70, v2, 0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	.loc	1 159 29                        ; attention_backward.py:159:29
	ds_load_b128 v[1:4], v33
	ds_load_b128 v[5:8], v37
	ds_load_b128 v[9:12], v41
	ds_load_b128 v[13:16], v45
	ds_load_b128 v[17:20], v49
	ds_load_b128 v[21:24], v53
	ds_load_b128 v[25:28], v57
	ds_load_b128 v[29:32], v61
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v133, v[117:120]
	s_waitcnt vmcnt(2)
	ds_store_b128 v133, v[113:116] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v133, v[109:112] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v133, v[105:108] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[37:40], v37
	ds_load_b128 v[41:44], v41
	ds_load_b128 v[45:48], v45
	ds_load_b128 v[49:52], v49
	ds_load_b128 v[53:56], v53
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 230 21                        ; attention_backward.py:230:21
	s_or_b32 s1, s3, s27
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v137, 0, v127
	.loc	1 230 21                        ; attention_backward.py:230:21
	s_mul_i32 s1, s1, s34
	v_dual_mov_b32 v189, v66 :: v_dual_add_nc_u32 v138, 0, v128
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_lshl_u32 v67, s1, v129, 1
	v_add_lshl_u32 v68, s1, v132, 1
	v_add_nc_u32_e32 v139, 0, v130
	v_add_nc_u32_e32 v140, 0, v131
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v70, v65 :: v_dual_add_nc_u32 v141, 0, v145
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v66, v65
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x1
	buffer_load_b128 v[157:160], v67, s[20:23], 0 offen
	buffer_load_b128 v[161:164], v68, s[20:23], 0 offen
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_dual_mov_b32 v69, v65 :: v_dual_add_nc_u32 v142, 0, v146
	v_dual_mov_b32 v71, v65 :: v_dual_add_nc_u32 v144, 0, v148
	v_dual_mov_b32 v72, v65 :: v_dual_add_nc_u32 v143, 0, v147
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s1, 0xff800000, v189
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v156, v72 :: v_dual_mov_b32 v155, v71
	v_dual_mov_b32 v154, v70 :: v_dual_mov_b32 v153, v69
	v_dual_mov_b32 v152, v68 :: v_dual_mov_b32 v151, v67
	v_dual_mov_b32 v150, v66 :: v_dual_mov_b32 v149, v65
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(1)
	ds_store_b128 v133, v[157:160]
	s_waitcnt vmcnt(0)
	ds_store_b128 v133, v[161:164] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[157:160], v137
	ds_load_b128 v[161:164], v138
	ds_load_b128 v[165:168], v139
	ds_load_b128 v[169:172], v140
	ds_load_b128 v[173:176], v141
	ds_load_b128 v[177:180], v142
	ds_load_b128 v[181:184], v143
	ds_load_b128 v[185:188], v144
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[149:156], v[157:164], v[1:8], v[149:156]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[149:156], v[165:172], v[9:16], v[149:156]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[149:156], v[173:180], v[17:24], v[149:156]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[149:156], v[181:188], v[25:32], v[149:156]
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_dual_mul_f32 v66, s36, v149 :: v_dual_mul_f32 v67, s36, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v68, s36, v151 :: v_dual_mul_f32 v69, s36, v152
	v_dual_mul_f32 v70, s36, v153 :: v_dual_mul_f32 v71, s36, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v72, s36, v155 :: v_dual_mul_f32 v149, s36, v156
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_dual_cndmask_b32 v150, 0xff800000, v66 :: v_dual_cndmask_b32 v67, 0xff800000, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v68, 0xff800000, v68 :: v_dual_cndmask_b32 v69, 0xff800000, v69
	v_dual_cndmask_b32 v70, 0xff800000, v70 :: v_dual_cndmask_b32 v71, 0xff800000, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v72, 0xff800000, v72 :: v_dual_cndmask_b32 v149, 0xff800000, v149
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v66, v150, v67, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v151, v69, v70, v71
	v_max_f32_e32 v152, v72, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v66, v66, v151, v152
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v151, v66, s6, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v66, v189, v66, v151
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v67, v67, v66
	v_sub_f32_e32 v72, v72, v66
	v_sub_f32_e32 v149, v149, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v67, v67
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v68, v68, v66
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v149, v149
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v69, v69, v66
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v71, v71, v66 :: v_dual_add_f32 v68, v68, v69
	v_sub_f32_e32 v150, v150, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v150, v150
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v67, v150, v67
	v_dual_add_f32 v67, v67, v68 :: v_dual_sub_f32 v70, v70, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp5:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v70, v70
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v69, v70, v71 :: v_dual_add_f32 v70, v72, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v68, v69, v70
	v_dual_mov_b32 v70, v126 :: v_dual_sub_f32 v69, v189, v66
	v_add_f32_e32 v67, v67, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v68, v69
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_cndmask_b32_e32 v67, 0, v67, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v69, v67, s6, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v68, 0, v68, s1
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s1, s3, 16
	s_cmpk_lt_u32 s3, 0x7f0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v126, v67, v69
	s_mov_b32 s3, s1
.Ltmp12:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v126, v70, v68
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v67.h, v120.l
	v_and_b32_e32 v72, 0xffff0000, v120
	v_and_b32_e32 v120, 0xffff0000, v117
	v_mov_b16_e32 v67.l, 0
	v_mov_b16_e32 v68.h, v119.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v72, v100, v72 :: v_dual_and_b32 v119, 0xffff0000, v119
	v_mul_f32_e32 v102, v102, v120
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v120, 0xffff0000, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v98, v98, v119 :: v_dual_and_b32 v65, 31, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v119.l, v67.l
	v_mov_b16_e32 v119.h, v113.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v94, v94, v120
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v70.h, v118.l
	v_mov_b16_e32 v117.h, v115.l
	v_mov_b16_e32 v113.h, v112.l
	v_and_b32_e32 v112, 0xffff0000, v112
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v94, v93, v119
.Ltmp14:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v118, 0xffff0000, v118
	v_and_b32_e32 v115, 0xffff0000, v115
	v_mov_b16_e32 v68.l, v67.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v84, v84, v112
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v112.h, v105.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v100, v104, v118
	v_dual_mul_f32 v90, v90, v115 :: v_dual_and_b32 v105, 0xffff0000, v105
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v70.l, v67.l
	v_mov_b16_e32 v71.l, v67.l
	v_mov_b16_e32 v71.h, v117.l
	v_mov_b16_e32 v118.h, v114.l
	v_and_b32_e32 v114, 0xffff0000, v114
	v_mov_b16_e32 v112.l, v67.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v78, v78, v105
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v100, v103, v70
	v_fmac_f32_e32 v98, v97, v68
	v_fmac_f32_e32 v72, v99, v67
.Ltmp16:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v104.h, v116.l
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v78, v77, v112
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v96, v96, v114
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v114.h, v111.l
	v_and_b32_e32 v111, 0xffff0000, v111
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v102, v101, v71
	v_add_f32_e32 v70, v98, v72
.Ltmp20:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v120, 0xffff0000, v109
	v_mov_b16_e32 v109.h, v108.l
	v_and_b32_e32 v108, 0xffff0000, v108
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v68, v102, v100
.Ltmp22:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v115.h, v110.l
	v_mov_b16_e32 v104.l, v67.l
	v_mov_b16_e32 v117.l, v67.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v76, v76, v108
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp24:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v116, 0xffff0000, v116
	v_mov_b16_e32 v118.l, v67.l
	v_mov_b16_e32 v113.l, v67.l
	v_mov_b16_e32 v114.l, v67.l
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v77, v68
.Ltmp26:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v92, v92, v116
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v116.h, v109.l
	v_mov_b16_e32 v109.l, v67.l
	v_mov_b16_e32 v115.l, v67.l
.Ltmp27:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v116.l, v67.l
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v69, s16, v65
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v76, v75, v109
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v110, 0xffff0000, v110
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v68, v68, v77
	v_fmac_f32_e32 v90, v89, v117
.Ltmp32:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s1, 0x800000, v126
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v84, v83, v113
.Ltmp34:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v88, v88, v110
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v77, v68
.Ltmp36:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v110.h, v107.l
	v_and_b32_e32 v107, 0xffff0000, v107
	v_mov_b16_e32 v110.l, v67.l
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v92, v91, v104
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v75, 0, 0x42000000, s1
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v74, v74, v107
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s3, 0, v126
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v68, v68, v77
.Ltmp41:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v82, v82, v111
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v111.h, v106.l
	v_and_b32_e32 v106, 0xffff0000, v106
	v_mov_b16_e32 v111.l, v67.l
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v74, v73, v110 :: v_dual_lshlrev_b32 v77, 2, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v72, v90, v92 :: v_dual_mul_f32 v67, v80, v106
.Ltmp43:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v73, v74, v76
.Ltmp45:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v76, 0, 32, s1
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, 0x800, v69
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v67, v79, v111
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v69, v68 :: v_dual_fmac_f32 v82, v81, v114
.Ltmp48:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v67, v78, v67 :: v_dual_fmac_f32 v96, v95, v118
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_mov_b32 s10, 0x7ffffffe
.Ltmp51:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s5, s5, 0xffff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v67, v67, v73
	v_add_f32_e32 v71, v94, v96
.Ltmp53:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v73, v67 :: v_dual_and_b32 v78, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v70, v71, v72
	v_add_f32_e32 v72, v82, v84
	v_and_b32_e32 v84, 3, v0
	v_mov_b32_e32 v82, 0x5410
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v73, v73 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_mov_b32 s12, 0
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v67, v67, v73 :: v_dual_mul_f32 v86, v86, v120
	v_dual_fmac_f32 v88, v87, v115 :: v_dual_lshlrev_b32 v87, 9, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v73, v67 :: v_dual_lshlrev_b32 v84, 4, v84
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v86, v85, v116
	v_lshlrev_b32_e32 v85, 5, v0
	s_mov_b32 s15, s12
	s_mov_b32 s18, s12
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v73, v73 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v71, v86, v88
	v_and_b32_e32 v85, 0x180, v85
	s_mov_b32 s19, s12
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	v_add_f32_e32 v71, v71, v72
	v_or3_b32 v149, v85, v84, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v74, v71
	v_xor_b32_e32 v84, 16, v149
	v_mov_b32_e32 v72, v70
	v_xor_b32_e32 v85, 32, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_add_nc_u32_e32 v167, 0, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v71, v71, v74 :: v_dual_add_nc_u32 v168, 0, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v70, v70, v72
.Ltmp64:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v72, v126, v76
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v76, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v74, v70
.Ltmp66:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v74, v74 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v71, v71, v76 :: v_dual_add_f32 v70, v70, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_dual_sub_f32 v72, v72, v75 :: v_dual_mov_b32 v75, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v74, v70
.Ltmp71:
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v66, v66, v72
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v72, v125, 2, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v75, v75 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v74, v74 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp73:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v145, 0, v66, s3
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v66, v124, 1, v72
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v72, v67, v73
.Ltmp75:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v67, v65, 2, 0
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v65, s17, v65
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e64 s3, 0, v124
	ds_store_b32 v66, v145
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v73, v67
.Ltmp76:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v76, v72 :: v_dual_add_f32 v67, v70, v74
.Ltmp77:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v65, v65, s16, 2
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v70, 24, v0
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s1, s3, s1
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v66, v68, v69
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v68, v71, v75
.Ltmp81:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e64 v71, 0x80000000, v65, s1
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v65, 1, v70
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v74, 8, v0
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v69, v72, v76 :: v_dual_add_nc_u32 v72, 0, v123
	v_lshlrev_b32_e32 v75, 6, v0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp83:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_add3_u32 v65, 0, v122, v65
	v_lshlrev_b32_e32 v86, 1, v70
	v_lshl_or_b32 v70, v70, 6, v122
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v76, 2, v124
	v_and_b32_e32 v75, 64, v75
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v73, v71, s[8:11], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v72, v[66:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v73, v65
	v_mov_b32_e32 v65, 0
	v_cmp_eq_u32_e64 s1, 0, v78
	v_mov_b32_e32 v78, 0x7632
	v_xor_b32_e32 v70, v70, v86
	v_xor_b32_e32 v86, 48, v149
	v_mov_b32_e32 v89, v65
	v_cndmask_b32_e64 v82, 0x1054, v82, s1
	v_cndmask_b32_e64 v78, 0x3276, v78, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v90, v65 :: v_dual_add_nc_u32 v169, 0, v86
	v_mov_b32_e32 v91, v65
	v_lshl_or_b32 v82, v82, 8, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v78, v78, 8, v78
	v_mov_b32_e32 v92, v65
	v_mov_b32_e32 v93, v65
	v_mov_b32_e32 v94, v65
	v_and_b32_e32 v82, 0x540054, v82
	v_dual_mov_b32 v95, v65 :: v_dual_and_b32 v78, 0x760076, v78
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v73, v71, s[4:7], 0 offen
	v_lshlrev_b32_e32 v73, 1, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v71, 1, v74
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshl_or_b32 v82, v82, 4, v82
	v_and_b32_e32 v73, 60, v73
	v_add_nc_u32_e32 v71, 0, v71
	v_lshl_or_b32 v78, v78, 4, v78
	v_mov_b32_e32 v96, v65
	v_and_b32_e32 v150, 0x5040504, v82
	v_or3_b32 v146, v75, v73, v77
	v_add_nc_u32_e32 v77, 0, v77
	v_dual_mov_b32 v82, v65 :: v_dual_and_b32 v151, 0x7060706, v78
	v_mov_b32_e32 v84, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v73, 0x71c, v146
	v_add_nc_u32_e32 v166, v77, v70
	v_mov_b32_e32 v77, v65
	ds_store_b128 v72, v[66:69]
	v_add3_u32 v66, v71, v76, v122
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v67, 8, v121
	v_lshlrev_b32_e32 v68, 2, v121
	v_lshlrev_b32_e32 v69, 3, v74
	ds_load_b32 v147, v66
	v_xor_b32_e32 v66, 0x104, v146
	v_xor_b32_e32 v71, 0x208, v146
	v_xor_b32_e32 v72, 0x30c, v146
	v_or3_b32 v148, v67, v69, v68
	v_xor_b32_e32 v67, 0x410, v146
	v_xor_b32_e32 v68, 0x514, v146
	v_xor_b32_e32 v69, 0x618, v146
	v_add_nc_u32_e32 v152, 0, v66
	v_xor_b32_e32 v74, 16, v148
	v_xor_b32_e32 v75, 4, v148
	v_xor_b32_e32 v76, 20, v148
	v_xor_b32_e32 v79, 8, v148
	v_xor_b32_e32 v80, 24, v148
	v_xor_b32_e32 v81, 12, v148
	v_xor_b32_e32 v83, 28, v148
	v_add_nc_u32_e32 v153, 0, v71
	v_add_nc_u32_e32 v154, 0, v72
	v_add_nc_u32_e32 v155, 0, v67
	v_add_nc_u32_e32 v156, 0, v68
	v_add_nc_u32_e32 v157, 0, v69
	v_add_nc_u32_e32 v158, 0, v73
	v_add_nc_u32_e32 v159, 0, v74
	v_add_nc_u32_e32 v160, 0, v75
	v_add_nc_u32_e32 v161, 0, v76
	v_add_nc_u32_e32 v162, 0, v79
	v_add_nc_u32_e32 v163, 0, v80
	v_add_nc_u32_e32 v164, 0, v81
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v165, 0, v83
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v81, v65
	v_mov_b32_e32 v83, v65
	v_mov_b32_e32 v85, v65
	v_mov_b32_e32 v86, v65
	v_mov_b32_e32 v87, v65
	v_mov_b32_e32 v88, v65
	v_mov_b32_e32 v73, v65
	v_mov_b32_e32 v74, v65
	v_mov_b32_e32 v75, v65
	v_mov_b32_e32 v76, v65
	v_mov_b32_e32 v78, v65
	v_mov_b32_e32 v79, v65
	v_mov_b32_e32 v80, v65
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s10, 0x76543210
	s_mov_b32 s11, s12
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 43 is_stmt 0                ; attention_backward.py:0:43
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 317 21 is_stmt 1              ; attention_backward.py:317:21
	s_or_b32 s1, s11, s27
	.loc	1 323 31                        ; attention_backward.py:323:31
	v_add_nc_u32_e32 v97, 0, v146
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_mul_i32 s3, s1, s34
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v193, s19 :: v_dual_add_nc_u32 v98, 0, v148
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_lshl_u32 v99, s3, v129, 1
	v_add_lshl_u32 v100, s3, v132, 1
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v192, s18 :: v_dual_mov_b32 v191, s17
	v_mov_b32_e32 v190, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v189, s15 :: v_dual_mov_b32 v188, s14
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_clause 0x1
	buffer_load_b128 v[105:108], v99, s[20:23], 0 offen
	buffer_load_b128 v[170:173], v100, s[20:23], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v187, s13 :: v_dual_mov_b32 v186, s12
	.loc	1 386 21                        ; attention_backward.py:386:21
	s_mul_i32 s1, s1, s35
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v99.l, v105.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v99.h, v170.l
	v_mov_b16_e32 v100.l, v105.h
	v_mov_b16_e64 v100.h, v170.h
	v_mov_b16_e32 v101.l, v106.l
	v_mov_b16_e64 v101.h, v171.l
	v_mov_b16_e32 v102.l, v106.h
	v_mov_b16_e64 v102.h, v171.h
	v_mov_b16_e32 v103.l, v107.l
	v_mov_b16_e64 v103.h, v172.l
	v_mov_b16_e32 v104.l, v107.h
	v_mov_b16_e64 v104.h, v172.h
	v_mov_b16_e32 v109.l, v108.l
	v_mov_b16_e64 v109.h, v173.l
	v_mov_b16_e32 v110.l, v108.h
	v_mov_b16_e64 v110.h, v173.h
	ds_store_b32 v97, v99
	ds_store_b32 v152, v100
	ds_store_b32 v153, v101
	ds_store_b32 v154, v102
	ds_store_b32 v155, v103
	ds_store_b32 v156, v104
	ds_store_b32 v157, v109
	ds_store_b32 v158, v110
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 398 31                        ; attention_backward.py:398:31
	ds_load_2addr_b32 v[113:114], v98 offset1:8
	ds_load_2addr_b32 v[109:110], v159 offset1:8
	ds_load_2addr_b32 v[202:203], v98 offset0:32 offset1:40
	ds_load_2addr_b32 v[111:112], v159 offset0:32 offset1:40
	ds_load_2addr_b32 v[115:116], v160 offset1:8
	ds_load_2addr_b32 v[117:118], v161 offset1:8
	ds_load_2addr_b32 v[119:120], v161 offset0:32 offset1:40
	ds_load_2addr_b32 v[125:126], v163 offset1:8
	ds_load_2addr_b32 v[127:128], v163 offset0:32 offset1:40
	ds_load_2addr_b32 v[101:102], v165 offset1:8
	ds_load_2addr_b32 v[103:104], v165 offset0:32 offset1:40
	ds_load_2addr_b32 v[121:122], v160 offset0:32 offset1:40
	ds_load_2addr_b32 v[123:124], v162 offset1:8
	ds_load_2addr_b32 v[97:98], v162 offset0:32 offset1:40
	ds_load_2addr_b32 v[99:100], v164 offset1:8
	ds_load_2addr_b32 v[130:131], v164 offset0:32 offset1:40
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v133, v[105:108]
	ds_store_b128 v133, v[170:173] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[170:173], v137
	ds_load_b128 v[174:177], v138
	ds_load_b128 v[178:181], v139
	ds_load_b128 v[182:185], v140
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_add_lshl_u32 v105, s1, v134, 1
	v_add_lshl_u32 v106, s1, v135, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[194:201], v[170:177], v[1:8], v[186:193]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[170:173], v141
	ds_load_b128 v[174:177], v142
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[194:201], v[178:185], v[9:16], v[194:201]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[194:201], v[170:177], v[17:24], v[194:201]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[170:173], v143
	ds_load_b128 v[174:177], v144
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[194:201], v[170:177], v[25:32], v[194:201]
	.loc	1 385 30                        ; attention_backward.py:385:30
	v_cndmask_b32_e64 v170, 0x80000000, v106, s0
	s_clause 0x1
	buffer_load_b128 v[105:108], v105, s[28:31], 0 offen
	buffer_load_b128 v[170:173], v170, s[28:31], 0 offen
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v166, v[105:108]
	s_waitcnt vmcnt(0)
	ds_store_b128 v166, v[170:173] offset:256
	v_add_nc_u32_e32 v105, 0, v149
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[174:177], v167
	ds_load_b128 v[170:173], v105
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v106.l, v114.l
	v_mov_b16_e32 v106.h, v110.l
	v_mov_b16_e32 v110.l, v114.h
	v_mov_b16_e32 v114.l, v116.l
	v_mov_b16_e32 v114.h, v118.l
	v_mov_b16_e32 v118.l, v116.h
	v_mov_b16_e32 v116.l, v122.l
	v_mov_b16_e32 v116.h, v120.l
	v_mov_b16_e32 v120.l, v122.h
	v_mov_b16_e32 v122.l, v124.l
	v_mov_b16_e32 v122.h, v126.l
	v_mov_b16_e32 v126.l, v124.h
	v_mov_b16_e32 v124.l, v98.l
	v_mov_b16_e64 v124.h, v128.l
	v_mov_b16_e64 v128.l, v98.h
	v_mov_b16_e32 v98.l, v100.l
	v_mov_b16_e32 v98.h, v102.l
	v_mov_b16_e32 v102.l, v100.h
	v_mov_b16_e64 v100.l, v131.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[178:185], v[170:177], v[33:40], v[186:193]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[174:177], v169
	ds_load_b128 v[170:173], v168
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v100.h, v104.l
	v_mov_b16_e64 v104.l, v131.h
	v_mov_b16_e64 v107.l, v202.l
	v_mov_b16_e32 v107.h, v111.l
	v_mov_b16_e64 v108.l, v203.l
	v_mov_b16_e32 v108.h, v112.l
	v_mov_b16_e64 v111.l, v202.h
	v_mov_b16_e64 v112.l, v203.h
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[178:185], v[170:177], v[41:48], v[178:185]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[170:173], v105 offset:64
	ds_load_b128 v[174:177], v167 offset:64
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v105.l, v113.l
	v_mov_b16_e32 v105.h, v109.l
	v_mov_b16_e32 v109.l, v113.h
	v_mov_b16_e32 v113.l, v115.l
	v_mov_b16_e32 v113.h, v117.l
	v_mov_b16_e32 v117.l, v115.h
	v_mov_b16_e32 v115.l, v121.l
	v_mov_b16_e32 v115.h, v119.l
	v_mov_b16_e32 v119.l, v121.h
	v_mov_b16_e32 v121.l, v123.l
	v_mov_b16_e32 v121.h, v125.l
	v_mov_b16_e32 v125.l, v123.h
	v_mov_b16_e32 v123.l, v97.l
	v_mov_b16_e32 v123.h, v127.l
	v_mov_b16_e32 v127.l, v97.h
	v_mov_b16_e32 v97.l, v99.l
	v_mov_b16_e32 v97.h, v101.l
	v_mov_b16_e32 v101.l, v99.h
	v_mov_b16_e64 v99.l, v130.l
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[178:185], v[170:177], v[49:56], v[178:185]
	.loc	1 393 17                        ; attention_backward.py:393:17
	ds_load_b128 v[170:173], v168 offset:64
	ds_load_b128 v[174:177], v169 offset:64
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v99.h, v103.l
	v_mov_b16_e64 v103.l, v130.h
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[178:185], v[170:177], v[57:64], v[178:185]
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v170, s36, v194, -v145
	v_fma_f32 v171, s36, v195, -v145
	v_fma_f32 v172, s36, v196, -v145
	v_fma_f32 v173, s36, v197, -v145
	v_fma_f32 v174, s36, v198, -v145
	v_fma_f32 v175, s36, v199, -v145
	v_fma_f32 v176, s36, v200, -v145
	v_fma_f32 v177, s36, v201, -v145
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v130, v170
	v_exp_f32_e32 v131, v171
	v_exp_f32_e32 v170, v172
	v_exp_f32_e32 v171, v173
	v_exp_f32_e32 v172, v174
	v_exp_f32_e32 v173, v175
	v_exp_f32_e32 v174, v176
	v_exp_f32_e32 v175, v177
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_sub_f32_e32 v178, v178, v147
	v_dual_sub_f32 v179, v179, v147 :: v_dual_cndmask_b32 v130, 0, v130
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v131, 0, v131, vcc_lo
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v180, v180, v147
	v_sub_f32_e32 v181, v181, v147
	v_dual_sub_f32 v183, v183, v147 :: v_dual_cndmask_b32 v170, 0, v170
	v_dual_sub_f32 v185, v185, v147 :: v_dual_cndmask_b32 v172, 0, v172
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v130, v130, v178 :: v_dual_cndmask_b32 v171, 0, v171
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v182, v182, v147 :: v_dual_cndmask_b32 v173, 0, v173
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_dual_cndmask_b32 v174, 0, v174 :: v_dual_mul_f32 v131, v131, v179
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v170, v170, v180 :: v_dual_cndmask_b32 v175, 0, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43 is_stmt 0              ; attention_backward.py:396:43
	v_dual_sub_f32 v184, v184, v147 :: v_dual_mul_f32 v171, v171, v181
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v172, v172, v182 :: v_dual_mul_f32 v173, v173, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v130, s26, v130 :: v_dual_mul_f32 v175, v175, v185
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v174, v174, v184 :: v_dual_mul_f32 v131, s26, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v170, s26, v170 :: v_dual_mul_f32 v171, s26, v171
	v_dual_mul_f32 v172, s26, v172 :: v_dual_mul_f32 v173, s26, v173
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v174, s26, v174 :: v_dual_mul_f32 v175, s26, v175
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v176, v130, 16, 1
	v_bfe_u32 v177, v131, 16, 1
	v_cmp_o_f32_e64 s1, v130, v130
	v_cmp_o_f32_e64 s3, v131, v131
	v_bfe_u32 v178, v170, 16, 1
	v_bfe_u32 v179, v171, 16, 1
	v_bfe_u32 v180, v172, 16, 1
	v_bfe_u32 v181, v173, 16, 1
	v_add3_u32 v130, v130, v176, 0x7fff
	v_bfe_u32 v176, v174, 16, 1
	v_add3_u32 v131, v131, v177, 0x7fff
	v_bfe_u32 v177, v175, 16, 1
	v_cmp_o_f32_e64 s4, v170, v170
	v_cmp_o_f32_e64 s5, v171, v171
	v_cmp_o_f32_e64 s6, v172, v172
	v_cmp_o_f32_e64 s7, v173, v173
	v_cmp_o_f32_e64 s8, v174, v174
	v_cmp_o_f32_e64 s9, v175, v175
	v_add3_u32 v170, v170, v178, 0x7fff
	v_add3_u32 v171, v171, v179, 0x7fff
	v_add3_u32 v172, v172, v180, 0x7fff
	v_add3_u32 v173, v173, v181, 0x7fff
	v_add3_u32 v174, v174, v176, 0x7fff
	v_add3_u32 v175, v175, v177, 0x7fff
	v_cndmask_b16 v130.l, 0x7fff, v130.h, s1
	v_cndmask_b16 v130.h, 0x7fff, v131.h, s3
	v_cndmask_b16 v131.l, 0x7fff, v170.h, s4
	v_cndmask_b16 v131.h, 0x7fff, v171.h, s5
	v_cndmask_b16 v176.l, 0x7fff, v172.h, s6
	v_cndmask_b16 v176.h, 0x7fff, v173.h, s7
	v_cndmask_b16 v177.l, 0x7fff, v174.h, s8
	v_cndmask_b16 v177.h, 0x7fff, v175.h, s9
	v_permlanex16_b32 v171, v130, s10, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v173, v131, s10, 0xfedcba98 op_sel:[1,0]
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	s_add_i32 s1, s11, 16
	s_cmpk_lt_u32 s11, 0x7f0
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_permlanex16_b32 v178, v177, s10, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v170, v171, v130, v150
	v_perm_b32 v171, v171, v130, v151
	v_permlanex16_b32 v130, v176, s10, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v172, v173, v131, v150
	v_perm_b32 v173, v173, v131, v151
	s_mov_b32 s11, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v174, v130, v176, v150
	v_perm_b32 v175, v130, v176, v151
	v_perm_b32 v176, v178, v177, v150
	v_perm_b32 v177, v178, v177, v151
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[170:177], v[65:72]
	v_wmma_f32_16x16x16_bf16 v[89:96], v[113:120], v[170:177], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[121:128], v[170:177], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[170:177], v[73:80]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc1 .LBB0_3
; %bb.4:
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v2, v0, 4, 1
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_mul_lo_u32 v1, s34, v136
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v3, 48, v2
	v_or_b32_e32 v5, 32, v2
	v_or_b32_e32 v6, 16, v2
	v_cmp_gt_i32_e64 s0, s34, v2
	v_or_b32_e32 v0, 62, v0
	v_cmp_gt_i32_e64 s1, s34, v3
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v3, v1, v3
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s3, s34, v6
	.loc	1 161 22 is_stmt 0              ; attention_backward.py:161:22
	s_and_b32 s0, vcc_lo, s0
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s34, v5
	.loc	1 405 9 is_stmt 1               ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v3, s33, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v4, v1, v2
	v_add_nc_u32_e32 v5, v1, v5
	v_add_nc_u32_e32 v0, v1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v2, v4, s33, 2
	v_add_nc_u32_e32 v4, v1, v6
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v6, 8, v2
	v_add_nc_u32_e32 v7, 16, v2
	v_cndmask_b32_e64 v8, 0x80000000, v2, s0
	v_add_nc_u32_e32 v1, 24, v2
	v_add_nc_u32_e32 v9, 56, v2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	s_clause 0x2
	buffer_store_b32 v65, v8, s[24:27], 0 offen
	buffer_store_b32 v66, v6, s[24:27], 0 offen
	buffer_store_b32 v67, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v6, 32, v2
	v_add_nc_u32_e32 v7, 40, v2
	v_add_nc_u32_e32 v8, 48, v2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	s_clause 0x4
	buffer_store_b32 v68, v1, s[24:27], 0 offen
	buffer_store_b32 v69, v6, s[24:27], 0 offen
	buffer_store_b32 v70, v7, s[24:27], 0 offen
	buffer_store_b32 v71, v8, s[24:27], 0 offen
	buffer_store_b32 v72, v9, s[24:27], 0 offen
	v_add_lshl_u32 v1, v4, s33, 2
	v_add_nc_u32_e32 v4, 0x48, v2
	v_add_nc_u32_e32 v6, 0x50, v2
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s0, vcc_lo, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v7, 0x58, v2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v8, 0x60, v2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	s_clause 0x2
	buffer_store_b32 v89, v1, s[24:27], 0 offen
	buffer_store_b32 v90, v4, s[24:27], 0 offen
	buffer_store_b32 v91, v6, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, 0x68, v2
	v_cndmask_b32_e64 v1, 0x80000000, v8, s0
	buffer_store_b32 v92, v7, s[24:27], 0 offen
	v_add_nc_u32_e32 v6, 0x70, v2
	v_add_nc_u32_e32 v7, 0x78, v2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	buffer_store_b32 v93, v1, s[24:27], 0 offen
	v_add_lshl_u32 v1, v5, s33, 2
	v_cndmask_b32_e64 v5, 0x80000000, v6, s0
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s0, vcc_lo, s2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v94, v4, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, 0x88, v2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_clause 0x2
	buffer_store_b32 v95, v5, s[24:27], 0 offen
	buffer_store_b32 v96, v6, s[24:27], 0 offen
	buffer_store_b32 v81, v1, s[24:27], 0 offen
	v_add_nc_u32_e32 v1, 0x90, v2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v5, 0x98, v2
	v_add_nc_u32_e32 v6, 0xa0, v2
	v_add_nc_u32_e32 v7, 0xa8, v2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v82, v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e64 v5, 0x80000000, v6, s0
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	buffer_store_b32 v83, v1, s[24:27], 0 offen
	v_add_nc_u32_e32 v1, 0xb0, v2
	s_clause 0x2
	buffer_store_b32 v84, v4, s[24:27], 0 offen
	buffer_store_b32 v85, v5, s[24:27], 0 offen
	buffer_store_b32 v86, v6, s[24:27], 0 offen
	v_add_nc_u32_e32 v4, 0xb8, v2
	v_add_nc_u32_e32 v5, 0xc8, v2
	v_add_nc_u32_e32 v6, 0xd0, v2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	s_clause 0x4
	buffer_store_b32 v87, v1, s[24:27], 0 offen
	buffer_store_b32 v88, v4, s[24:27], 0 offen
	buffer_store_b32 v73, v3, s[24:27], 0 offen
	buffer_store_b32 v74, v5, s[24:27], 0 offen
	buffer_store_b32 v75, v6, s[24:27], 0 offen
	v_add_nc_u32_e32 v3, 0xe0, v2
	v_add_nc_u32_e32 v1, 0xd8, v2
	v_add_nc_u32_e32 v4, 0xe8, v2
	v_add_nc_u32_e32 v2, 0xf0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_add_lshl_u32 v0, v0, s33, 2
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v76, v1, s[24:27], 0 offen
	buffer_store_b32 v77, v3, s[24:27], 0 offen
	buffer_store_b32 v78, v4, s[24:27], 0 offen
	buffer_store_b32 v79, v2, s[24:27], 0 offen
	buffer_store_b32 v80, v0, s[24:27], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp84:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 204
		.amdhsa_next_free_sgpr 37
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
		.amdhsa_inst_pref_size 50
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 204
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6308
; TotalNumSgprs: 39
; NumVgprs: 204
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 204
; Occupancy: 7
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	4                               ; Abbrev [4] 0x41:0x2a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp3-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x6b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x78:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x86:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	176                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x92:0xd DW_TAG_inlined_subroutine
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     204
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
