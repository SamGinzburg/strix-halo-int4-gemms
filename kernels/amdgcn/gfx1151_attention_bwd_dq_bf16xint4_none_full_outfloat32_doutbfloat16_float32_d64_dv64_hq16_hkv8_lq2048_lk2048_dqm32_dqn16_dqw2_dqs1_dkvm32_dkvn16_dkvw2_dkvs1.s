	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b64 s[18:19], s[0:1], 0x74
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x10
.Ltmp0:
	.loc	1 161 44 prologue_end           ; attention_backward.py:161:44
	v_and_b32_e32 v121, 7, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v17, 3, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s16, s2, 5
	.loc	1 158 26                        ; attention_backward.py:158:26
	s_lshl_b32 s17, s3, 11
	s_mov_b32 s31, 0x31027000
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_lshlrev_b32_e32 v223, 3, v121
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s16, v17
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_add_i32 s8, s16, s17
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v124, 32, v0
	v_and_b32_e32 v125, 15, v0
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	s_clause 0x2
	s_load_b32 s34, s[0:1], 0x7c
	s_load_b64 s[36:37], s[0:1], 0x58
	s_load_b64 s[44:45], s[0:1], 0x28
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0xff800000
	v_mov_b32_e32 v126, 0
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[190:191], null, s18, v17, v[223:224]
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mul_lo_u32 v17, s19, v17
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_and_b32 s29, s5, 0xffff
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_mul_i32 s5, s19, s8
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_mul_i32 s33, s18, s8
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v20, s5, v223
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s18, v223
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 160 17                        ; attention_backward.py:160:17
	v_add_nc_u32_e32 v1, s33, v190
	v_lshl_add_u32 v208, s18, 3, v190
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v23, s19, 4, v17
	.loc	1 160 17                        ; attention_backward.py:160:17
	s_lshl_b32 s9, s18, 4
	s_mul_i32 s10, s18, 24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_lshl_u32 v4, v1, s9, 1
	v_add_lshl_u32 v3, v208, s33, 1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v25, v20, v23
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_mov_b32 s28, s4
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v22, s19, 3, v17
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e64 v5, 0x80000000, v3, s4
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v27, 2, v25
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s10, 1
	v_cndmask_b32_e64 v9, 0x80000000, v4, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v25, 1, v25
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_or_b32_e32 v21, 4, v20
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v13, 0x80000000, v1, s4
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s4, s19, v223
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v23, v21, v23, 2
	s_load_b256 s[8:15], s[0:1], 0x38
	.loc	1 235 27                        ; attention_backward.py:235:27
	s_mul_f32 s38, s34, 0x3fb8aa3b
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v18, 56, v0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v24, v20, v22
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v19, 4, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v22, v21, v22, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_lshlrev_b32 v26, 2, v24
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v24, 1, v24
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v123, 1, v18
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_dual_cndmask_b32 v22, 0x80000000, v22 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_xor_b32_e32 v18, v19, v123
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v209, 0, v18
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[18:19], null, s19, 24, v[17:18]
	v_add_nc_u32_e32 v20, v20, v18
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v18, v21, v18, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b32_e32 v28, 2, v20
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v20, 1, v20
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v189, v17, v223
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v17, v21, v17, 2
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v19, s5, v189
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s5, s3, 31
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt vmcnt(3)
	ds_store_b128 v209, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v209, v[5:8] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v209, v[9:12] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v209, v[13:16] offset:3072
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v21, 2, v19
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 159 29                        ; attention_backward.py:159:29
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v1, 1, v124
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x7
	buffer_load_b128 v[101:104], v21, s[28:31], 0 offen
	buffer_load_b128 v[97:100], v17, s[28:31], 0 offen
	buffer_load_b128 v[93:96], v26, s[28:31], 0 offen
	buffer_load_b128 v[89:92], v22, s[28:31], 0 offen
	buffer_load_b128 v[85:88], v27, s[28:31], 0 offen
	buffer_load_b128 v[81:84], v23, s[28:31], 0 offen
	buffer_load_b128 v[77:80], v28, s[28:31], 0 offen
	buffer_load_b128 v[73:76], v18, s[28:31], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_and_b32 s29, s11, 0xffff
	s_mov_b32 s28, s10
	s_clause 0x3
	buffer_load_b128 v[117:120], v19, s[28:31], 0 offen
	buffer_load_b128 v[113:116], v24, s[28:31], 0 offen
	buffer_load_b128 v[109:112], v25, s[28:31], 0 offen
	buffer_load_b128 v[105:108], v20, s[28:31], 0 offen
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshlrev_b32_e32 v122, 4, v121
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v1, v1, v125
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s5, s5, 28
	s_and_b32 s29, s7, 0xffff
	s_add_i32 s5, s3, s5
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v127, v125, 7, v122
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v1, s16, v1
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s8, s5, 0xfff0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s1, s5, 4
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_lshl_or_b32 v2, v124, 6, v127
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s3, s3, s8
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s8, s3, 0x10007
	v_xor_b32_e32 v128, 16, v127
	.loc	1 159 29                        ; attention_backward.py:159:29
	v_add_nc_u32_e32 v33, 0, v2
	v_xad_u32 v34, v2, 16, 0
	v_xad_u32 v35, v2, 32, 0
	v_xad_u32 v36, v2, 48, 0
	v_xad_u32 v37, v2, 64, 0
	v_xad_u32 v38, 0x50, v2, 0
	v_xad_u32 v39, 0x60, v2, 0
	v_xad_u32 v40, 0x70, v2, 0
	ds_load_b128 v[1:4], v33
	ds_load_b128 v[5:8], v34
	ds_load_b128 v[9:12], v35
	ds_load_b128 v[13:16], v36
	ds_load_b128 v[17:20], v37
	ds_load_b128 v[21:24], v38
	ds_load_b128 v[228:231], v39
	ds_load_b128 v[232:235], v40
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s3, s3, s8
	v_xor_b32_e32 v129, 32, v127
	s_bfe_i32 s0, s3, 0x80000
	v_xor_b32_e32 v130, 48, v127
	s_sext_i32_i16 s0, s0
	v_xor_b32_e32 v131, 64, v127
	s_ashr_i32 s0, s0, 1
	v_xor_b32_e32 v132, 0x50, v127
	v_xor_b32_e32 v133, 0x60, v127
	v_xor_b32_e32 v134, 0x70, v127
	.loc	1 228 29                        ; attention_backward.py:228:29
	s_lshl3_add_u32 s3, s1, s0
	s_mov_b64 s[8:9], s[14:15]
	s_mov_b32 s1, 0
	.loc	1 228 28 is_stmt 0              ; attention_backward.py:228:28
	s_lshl_b32 s35, s3, 11
	s_mov_b32 s28, s6
	s_mov_b32 s5, 0x76543210
	.loc	1 171 28 is_stmt 1              ; attention_backward.py:171:28
	s_waitcnt vmcnt(3)
	ds_store_b128 v209, v[117:120]
	s_waitcnt vmcnt(2)
	ds_store_b128 v209, v[113:116] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v209, v[109:112] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v209, v[105:108] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[181:184], v33
	ds_load_b128 v[185:188], v34
	ds_load_b128 v[41:44], v35
	ds_load_b128 v[45:48], v36
	ds_load_b128 v[49:52], v37
	ds_load_b128 v[53:56], v38
	ds_load_b128 v[57:60], v39
	ds_load_b128 v[61:64], v40
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 230 21                        ; attention_backward.py:230:21
	s_or_b32 s0, s1, s35
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_nc_u32_e32 v211, 0, v127
	.loc	1 230 21                        ; attention_backward.py:230:21
	s_mul_i32 s0, s0, s18
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v68, v65 :: v_dual_add_nc_u32 v213, 0, v129
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_add_lshl_u32 v33, s0, v190, 1
	v_add_lshl_u32 v34, s0, v208, 1
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v67, v65 :: v_dual_add_nc_u32 v214, 0, v130
	v_dual_mov_b32 v70, v65 :: v_dual_add_nc_u32 v215, 0, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 229 28                        ; attention_backward.py:229:28
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v69, v65 :: v_dual_add_nc_u32 v216, 0, v132
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_clause 0x1
	buffer_load_b128 v[143:146], v33, s[28:31], 0 offen
	buffer_load_b128 v[147:150], v34, s[28:31], 0 offen
	v_dual_mov_b32 v33, v66 :: v_dual_add_nc_u32 v212, 0, v128
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_mov_b32_e32 v66, v65
	v_dual_mov_b32 v71, v65 :: v_dual_add_nc_u32 v218, 0, v134
	v_dual_mov_b32 v72, v65 :: v_dual_add_nc_u32 v217, 0, v133
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s0, 0xff800000, v33
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 234 26                        ; attention_backward.py:234:26
	v_dual_mov_b32 v142, v72 :: v_dual_mov_b32 v141, v71
	v_dual_mov_b32 v140, v70 :: v_dual_mov_b32 v139, v69
	v_dual_mov_b32 v138, v68 :: v_dual_mov_b32 v137, v67
	v_dual_mov_b32 v136, v66 :: v_dual_mov_b32 v135, v65
	.loc	1 229 28                        ; attention_backward.py:229:28
	s_waitcnt vmcnt(1)
	ds_store_b128 v209, v[143:146]
	s_waitcnt vmcnt(0)
	ds_store_b128 v209, v[147:150] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[143:146], v211
	ds_load_b128 v[147:150], v212
	ds_load_b128 v[151:154], v213
	ds_load_b128 v[155:158], v214
	ds_load_b128 v[159:162], v215
	ds_load_b128 v[163:166], v216
	ds_load_b128 v[167:170], v217
	ds_load_b128 v[171:174], v218
	.loc	1 234 26                        ; attention_backward.py:234:26
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[135:142], v[143:150], v[1:8], v[135:142]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[135:142], v[151:158], v[9:16], v[135:142]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[135:142], v[159:166], v[17:24], v[135:142]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[135:142], v[167:174], v[228:235], v[135:142]
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_dual_mul_f32 v34, s38, v135 :: v_dual_mul_f32 v35, s38, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, s38, v137 :: v_dual_mul_f32 v37, s38, v138
	v_dual_mul_f32 v38, s38, v139 :: v_dual_mul_f32 v39, s38, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_dual_cndmask_b32 v34, 0xff800000, v34 :: v_dual_cndmask_b32 v35, 0xff800000, v35
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v40, s38, v141
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_dual_cndmask_b32 v36, 0xff800000, v36 :: v_dual_cndmask_b32 v37, 0xff800000, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v38, 0xff800000, v38 :: v_dual_cndmask_b32 v39, 0xff800000, v39
	v_cndmask_b32_e32 v40, 0xff800000, v40, vcc_lo
	.loc	1 235 17                        ; attention_backward.py:235:17
	v_mul_f32_e32 v66, s38, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v68, v37, v38, v39
.Ltmp2:
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_cndmask_b32_e32 v67, 0xff800000, v66, vcc_lo
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v66, v34, v35, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v40, v67
	v_max3_f32 v66, v66, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v68, v66, s5, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v66, v33, v66, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v35, v35, v66
	v_sub_f32_e32 v36, v36, v66
	v_sub_f32_e32 v40, v40, v66
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v35, v35
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v37, v37, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v37, v37
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v34, v34, v66
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_add_f32 v35, v36, v37
.Ltmp7:
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v39, v39, v66 :: v_dual_add_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v39, v39
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v67, v67, v66
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v38, v38, v66 :: v_dual_add_f32 v37, v40, v67
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v36, v38, v39
	v_dual_add_f32 v35, v36, v37 :: v_dual_sub_f32 v36, v33, v66
	v_mov_b32_e32 v37, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v34, v34, v35
.Ltmp9:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_cndmask_b32_e32 v34, 0, v34, vcc_lo
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v36, v34, s5, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v33, 0, v35, s0
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s0, s1, 16
	s_cmpk_lt_u32 s1, 0x7f0
	s_mov_b32 s1, s0
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v126, v34, v36
.Ltmp14:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v126, v37, v33
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mov_b16_e64 v219.h, 0
	.loc	1 171 28 is_stmt 1              ; attention_backward.py:171:28
	v_mov_b16_e32 v38.h, v117.l
	v_and_b32_e32 v65, 0xffff0000, v118
	v_and_b32_e32 v40, 0xffff0000, v119
	v_mov_b16_e32 v34.h, v120.l
	v_mov_b16_e64 v38.l, v219.h
	v_and_b32_e32 v72, 0xffff0000, v116
	v_and_b32_e32 v67, 0xffff0000, v117
	v_mov_b16_e64 v34.l, v219.h
	v_mov_b16_e64 v36.l, v219.h
	v_mov_b16_e32 v36.h, v119.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v72, v92, v72 :: v_dual_mul_f32 v67, v102, v67
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v102, 0xffff0000, v113
	v_and_b32_e32 v39, 0xffff0000, v120
	v_mov_b16_e64 v37.l, v219.h
	v_mov_b16_e32 v37.h, v118.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v65, v104, v65 :: v_dual_mul_f32 v40, v98, v40
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v98, 0xffff0000, v115
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v94, v94, v102 :: v_dual_mul_f32 v39, v100, v39
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v100, 0xffff0000, v114
	v_mov_b16_e64 v68.l, v219.h
	v_mov_b16_e32 v68.h, v116.l
	v_mov_b16_e64 v69.l, v219.h
	v_mov_b16_e32 v69.h, v115.l
	v_mov_b16_e64 v70.l, v219.h
	v_mov_b16_e32 v70.h, v114.l
	v_mov_b16_e64 v71.l, v219.h
	v_mov_b16_e32 v71.h, v113.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v92, v96, v100
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v39, v99, v34 :: v_dual_and_b32 v104, 0xffff0000, v112
	v_fmac_f32_e32 v67, v101, v38
	v_fmac_f32_e32 v65, v103, v37
.Ltmp16:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v90, v90, v98 :: v_dual_and_b32 v33, 31, v0
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v40, v97, v36
.Ltmp18:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s0, 0x800000, v126
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v96.h, v112.l
	v_mov_b16_e32 v98.h, v111.l
	v_mov_b16_e32 v100.h, v110.l
	v_and_b32_e32 v111, 0xffff0000, v111
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v37, v40, v39 :: v_dual_and_b32 v110, 0xffff0000, v110
	v_fmac_f32_e32 v94, v93, v71
	v_fmac_f32_e32 v92, v95, v70
	v_fmac_f32_e32 v72, v91, v68
	v_add_f32_e32 v36, v67, v65
.Ltmp20:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v67, 0, 0x42000000, s0
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v90, v89, v69
.Ltmp22:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v112, 0xffff0000, v109
	v_mov_b16_e64 v96.l, v219.h
	v_mov_b16_e64 v98.l, v219.h
	v_mov_b16_e64 v100.l, v219.h
	v_mov_b16_e64 v102.l, v219.h
	v_mov_b16_e32 v102.h, v109.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v84, v84, v104
	v_mul_f32_e32 v82, v82, v111
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v94, v92
	v_dual_add_f32 v39, v90, v72 :: v_dual_mul_f32 v88, v88, v110
	v_add_f32_e32 v36, v36, v37
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v86, v86, v112
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v109.h, v107.l
	v_and_b32_e32 v107, 0xffff0000, v107
	v_mov_b16_e32 v111.h, v105.l
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v82, v81, v98 :: v_dual_and_b32 v105, 0xffff0000, v105
	v_dual_fmac_f32 v84, v83, v96 :: v_dual_add_f32 v37, v38, v39
	v_dual_fmac_f32 v88, v87, v100 :: v_dual_mov_b32 v65, v36
	v_fmac_f32_e32 v86, v85, v102
.Ltmp26:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v110.h, v106.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v39, v82, v84 :: v_dual_and_b32 v106, 0xffff0000, v106
.Ltmp28:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v104.h, v108.l
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v86, v88
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v108, 0xffff0000, v108
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v68, 0, 32, s0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v104.l, v219.h
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v38, v38, v39 :: v_dual_mov_b32 v39, v37
.Ltmp34:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v76, v76, v108
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v36, v65
.Ltmp36:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v109.l, v219.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v65, v38
	v_mov_b32_dpp v39, v39 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v110.l, v219.h
	v_mov_b16_e64 v111.l, v219.h
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v74, v74, v107 :: v_dual_mov_b32 v69, v36
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v65, v65 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v37, v37, v39
.Ltmp41:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v39, v126, v68
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v40, v78, v105
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v74, v73, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v38, v38, v65 :: v_dual_mov_b32 v65, v37
.Ltmp43:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v39, v39
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v76, v75, v104
	v_and_b32_e32 v75, 16, v0
.Ltmp45:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v35, s16, v33
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v65, v65 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v34, v80, v106
	.loc	1 264 26                        ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s1, 0, v126
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s0, 0x800, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v37, v37, v65 :: v_dual_fmac_f32 v34, v79, v110
.Ltmp51:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v39, v39, v67
	v_dual_mov_b32 v79, 0x5410 :: v_dual_mov_b32 v68, v38
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v65, v37
.Ltmp53:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_add_f32_e32 v39, v66, v39
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v66, v125, 2, 0
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v65, v65 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v220, 0, v39, s1
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cmp_eq_u32_e64 s1, 0, v124
	v_lshl_add_u32 v39, v124, 1, v66
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v67, v37, v65
	v_dual_fmac_f32 v40, v77, v111 :: v_dual_lshlrev_b32 v37, 1, v0
	v_and_b32_e32 v77, 3, v0
	v_mov_b32_e32 v65, 0
.Ltmp57:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s0, s1, s0
	v_lshlrev_b32_e32 v78, 5, v0
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v40, v34
	v_add_f32_e32 v40, v74, v76
	v_dual_mov_b32 v81, v65 :: v_dual_lshlrev_b32 v80, 9, v77
	v_lshlrev_b32_e32 v77, 4, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v95, v65 :: v_dual_add_f32 v34, v34, v40
	v_dual_mov_b32 v83, v65 :: v_dual_and_b32 v78, 0x180, v78
.Ltmp59:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v39, v220
	s_waitcnt lgkmcnt(0)
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v40, v34
.Ltmp61:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
	v_or3_b32 v210, v78, v77, v80
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v38, v38, v68
.Ltmp63:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s13, s13, 0xffff
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_mov_b32 s15, 0x31027000
	v_xor_b32_e32 v78, 16, v210
	v_mov_b32_e32 v68, v38
	s_mov_b32 s14, 0x7ffffffe
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v34, v40
.Ltmp66:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s14
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_mov_b32 s11, s15
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v40, v34 :: v_dual_and_b32 v37, 60, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v93, v65 :: v_dual_add_f32 v68, v38, v68
	v_lshlrev_b32_e32 v38, 6, v0
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v89, v65
	v_mov_b32_e32 v87, v65
	v_mov_b32_e32 v90, v65
	v_and_b32_e32 v38, 64, v38
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v34, v34, v40
.Ltmp71:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v40, v33, 2, 0
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v33, s17, v33
	v_dual_mov_b32 v92, v65 :: v_dual_add_nc_u32 v243, 0, v78
	v_mov_b32_e32 v94, v65
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_load_b32 v39, v40
	v_add_lshl_u32 v33, v33, s16, 2
.Ltmp72:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v40, v34 :: v_dual_mov_b32 v85, v65
	v_mov_b32_e32 v96, v65
	v_mov_b32_e32 v82, v65
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp73:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	v_cmp_eq_u32_e64 s0, 0, v75
	v_mov_b32_e32 v75, 0x7632
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v84, v65
	v_mov_b32_e32 v86, v65
	v_cndmask_b32_e64 v79, 0x1054, v79, s0
	v_cndmask_b32_e64 v75, 0x3276, v75, s0
	v_mov_b32_e32 v88, v65
	v_mov_b32_e32 v78, v65
	v_mov_b32_e32 v80, v65
	v_lshl_or_b32 v79, v79, 8, v79
	v_lshl_or_b32 v75, v75, 8, v75
	s_mov_b32 s20, 0
.Ltmp75:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v39, v33, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v77, 0x540054, v79
	v_and_b32_e32 v75, 0x760076, v75
	s_barrier
	v_lshlrev_b32_e32 v39, 2, v124
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_lshl_b32 s39, s3, 10
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_lshl_b32 s48, s3, 7
	v_lshl_or_b32 v75, v75, 4, v75
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v36, v36, v69 :: v_dual_add_f32 v69, v34, v40
.Ltmp77:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v34, 24, v0
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_bfe_i32 v40, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v227, 0x7060706, v75
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v35, v36
	v_or3_b32 v221, v38, v37, v39
	v_lshlrev_b32_e32 v76, 1, v34
	v_and_b32_e32 v40, 0x420, v40
	v_lshlrev_b32_e32 v37, 2, v121
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_xor_b32_e32 v38, 0x208, v221
	v_mov_b32_e32 v91, v65
	v_add_nc_u32_e32 v39, 0, v39
	s_and_b32 s41, s41, 0xffff
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v66, v36, v35
.Ltmp80:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_lshrrev_b32_e32 v35, 1, v34
	v_add_nc_u32_e32 v36, 0, v123
	v_lshl_or_b32 v34, v34, 6, v122
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s21, s20
	v_add3_u32 v35, 0, v122, v35
	ds_store_b128 v36, v[66:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v34, v34, v76
	ds_load_b32 v35, v35
	v_dual_mov_b32 v75, v65 :: v_dual_lshlrev_b32 v76, 3, v0
	s_mov_b32 s22, s20
	v_add_nc_u32_e32 v242, v39, v34
	s_mov_b32 s23, s20
	s_delay_alu instid0(VALU_DEP_2)
	v_and_or_b32 v76, 0x180, v76, v122
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s42, s14
	s_mov_b32 s43, s15
	s_mov_b32 s46, s14
	s_mov_b32 s47, s15
	s_mov_b32 s49, 0x76543210
	s_mov_b32 s50, s20
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v35, v33, s[8:11], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v33, 8, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v36, v[66:69]
	v_lshrrev_b32_e32 v36, 2, v124
	v_lshrrev_b32_e32 v35, 1, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, v76, v40
	v_add_nc_u32_e32 v35, 0, v35
	v_lshlrev_b32_e32 v33, 3, v33
	v_xor_b32_e32 v66, 0x30c, v221
	v_lshl_or_b32 v40, v77, 4, v77
	v_mov_b32_e32 v191, v0
	v_add3_u32 v35, v35, v36, v122
	v_xor_b32_e32 v79, 0x210, v0
	v_lshlrev_b32_e32 v36, 8, v121
	v_xor_b32_e32 v77, 48, v210
	v_xor_b32_e32 v67, 0x71c, v221
	ds_load_b32 v222, v35
	v_xor_b32_e32 v35, 0x104, v221
	v_or3_b32 v224, v36, v33, v37
	v_xor_b32_e32 v33, 0x410, v221
	v_xor_b32_e32 v36, 0x514, v221
	v_add_nc_u32_e32 v245, 0, v77
	v_dual_mov_b32 v77, v65 :: v_dual_add_nc_u32 v0, 0, v35
	v_xor_b32_e32 v37, 0x618, v221
	v_add_nc_u32_e32 v246, 0, v79
	v_mov_b32_e32 v79, v65
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v38
	v_xor_b32_e32 v68, 16, v224
	v_xor_b32_e32 v69, 4, v224
	v_xor_b32_e32 v70, 20, v224
	v_xor_b32_e32 v71, 8, v224
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v66
	v_xor_b32_e32 v72, 24, v224
	v_xor_b32_e32 v73, 12, v224
	v_xor_b32_e32 v74, 28, v224
	v_xor_b32_e32 v76, 32, v210
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v33
	v_add_nc_u32_e32 v33, 0, v36
	v_and_b32_e32 v226, 0x5040504, v40
	v_add_nc_u32_e32 v225, 0, v68
	v_add_nc_u32_e32 v236, 0, v69
	v_add_nc_u32_e32 v237, 0, v70
	scratch_store_b32 off, v33, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v37
	v_add_nc_u32_e32 v238, 0, v71
	v_add_nc_u32_e32 v239, 0, v72
	v_add_nc_u32_e32 v240, 0, v73
	v_add_nc_u32_e32 v241, 0, v74
	scratch_store_b32 off, v33, off offset:16 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v33, 0, v67
	v_add_nc_u32_e32 v244, 0, v76
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v67, v65
	v_mov_b32_e32 v68, v65
	v_mov_b32_e32 v69, v65
	v_mov_b32_e32 v70, v65
	v_mov_b32_e32 v71, v65
	v_mov_b32_e32 v72, v65
	v_mov_b32_e32 v73, v65
	v_mov_b32_e32 v74, v65
	v_mov_b32_e32 v76, v65
	scratch_store_b32 off, v33, off offset:20 ; 4-byte Folded Spill
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_or_b32 s0, s50, s35
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v144, s27 :: v_dual_add_nc_u32 v35, 0, v221
	.loc	1 317 21                        ; attention_backward.py:317:21
	s_mul_i32 s0, s0, s18
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v143, s26 :: v_dual_mov_b32 v140, s23
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_add_lshl_u32 v33, s0, v190, 1
	v_add_lshl_u32 v34, s0, v208, 1
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s0, s50, 1
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_dual_mov_b32 v141, s24 :: v_dual_mov_b32 v138, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 316 28                        ; attention_backward.py:316:28
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s0, s0, s39
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_clause 0x1
	buffer_load_b128 v[97:100], v33, s[28:31], 0 offen
	buffer_load_b128 v[105:108], v34, s[28:31], 0 offen
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v32, v24 :: v_dual_add_nc_u32 v247, 0, v210
	v_dual_mov_b32 v31, v23 :: v_dual_mov_b32 v30, v22
	v_dual_mov_b32 v29, v21 :: v_dual_mov_b32 v28, v20
	v_dual_mov_b32 v27, v19 :: v_dual_mov_b32 v26, v18
	v_mov_b32_e32 v25, v17
	.loc	1 364 39                        ; attention_backward.py:364:39
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v142, s25
	.loc	1 323 31                        ; attention_backward.py:323:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v33.l, v97.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v105.l
	v_mov_b16_e32 v34.l, v97.h
	v_mov_b16_e32 v34.h, v105.h
	ds_store_b32 v35, v33
	scratch_load_b32 v35, off, off          ; 4-byte Folded Reload
	v_mov_b16_e32 v33.l, v98.l
	v_mov_b16_e32 v33.h, v106.l
	s_waitcnt vmcnt(0)
	ds_store_b32 v35, v34
	scratch_load_b32 v35, off, off offset:4 ; 4-byte Folded Reload
	v_mov_b16_e32 v34.l, v98.h
	v_mov_b16_e32 v34.h, v106.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v35, v33
	scratch_load_b32 v35, off, off offset:8 ; 4-byte Folded Reload
	v_mov_b16_e32 v33.l, v99.l
	v_mov_b16_e32 v33.h, v107.l
	ds_store_b32 v0, v33
	v_mov_b16_e32 v33.l, v100.l
	v_mov_b16_e32 v33.h, v108.l
	s_waitcnt vmcnt(0)
	ds_store_b32 v35, v34
	scratch_load_b32 v35, off, off offset:12 ; 4-byte Folded Reload
	v_mov_b16_e32 v34.l, v99.h
	v_mov_b16_e32 v34.h, v107.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v35, v34
	scratch_load_b32 v35, off, off offset:16 ; 4-byte Folded Reload
	v_mov_b16_e32 v34.l, v100.h
	v_mov_b16_e32 v34.h, v108.h
	s_waitcnt vmcnt(0)
	ds_store_b32 v35, v33
	scratch_load_b32 v33, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v33, v34
	v_add_nc_u32_e32 v33, 0, v224
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 398 31                        ; attention_backward.py:398:31
	ds_load_2addr_b32 v[206:207], v33 offset1:8
	ds_load_2addr_b32 v[204:205], v33 offset0:32 offset1:40
	ds_load_2addr_b32 v[202:203], v236 offset1:8
	ds_load_2addr_b32 v[200:201], v236 offset0:32 offset1:40
	ds_load_2addr_b32 v[198:199], v238 offset1:8
	ds_load_2addr_b32 v[196:197], v238 offset0:32 offset1:40
	ds_load_2addr_b32 v[194:195], v240 offset1:8
	ds_load_2addr_b32 v[192:193], v240 offset0:32 offset1:40
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_mad_u64_u32 v[33:34], null, s0, s19, v[189:190]
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s0, s50, 4
	.loc	1 398 31                        ; attention_backward.py:398:31
	ds_load_2addr_b32 v[125:126], v225 offset1:8
	ds_load_2addr_b32 v[127:128], v225 offset0:32 offset1:40
	ds_load_2addr_b32 v[117:118], v237 offset1:8
	ds_load_2addr_b32 v[119:120], v237 offset0:32 offset1:40
	ds_load_2addr_b32 v[109:110], v239 offset1:8
	ds_load_2addr_b32 v[111:112], v239 offset0:32 offset1:40
	ds_load_2addr_b32 v[101:102], v241 offset1:8
	ds_load_2addr_b32 v[103:104], v241 offset0:32 offset1:40
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s0, s0, s48
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_waitcnt lgkmcnt(0)
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s0, s0, s19
	.loc	1 316 28                        ; attention_backward.py:316:28
	s_barrier
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v34, s0, v223, 1
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_store_b128 v209, v[97:100]
	ds_store_b128 v209, v[105:108] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[35:36], v33, s[40:43], 0 offen
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[97:100], v34, s[44:47], 0 offen
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[145:148], v211
	ds_load_b128 v[149:152], v212
	ds_load_b128 v[153:156], v213
	ds_load_b128 v[157:160], v214
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v139, s22 :: v_dual_and_b32 v34, 15, v35
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v35.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v40, 8, v35
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v38, v35, 16, 4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v37, -16, v34
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v33.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v33.l, v35.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v39, -16, v38
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v34, v34, v37, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v33.l
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v33.l, v40.l, 15
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v37, v35, 8, 4
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v39, v38, v39, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v33.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_alignbit_b32 v33, v36, v35, 24
	.loc	1 321 26                        ; attention_backward.py:321:26
	v_mov_b32_e32 v137, s20
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v38, -16, v37
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[145:152], v[1:8], v[137:144]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[145:148], v215
	ds_load_b128 v[149:152], v216
	.loc	1 321 26                        ; attention_backward.py:321:26
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[153:160], v[9:16], v[129:136]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[145:152], v[17:24], v[129:136]
	.loc	1 316 28                        ; attention_backward.py:316:28
	ds_load_b128 v[145:148], v217
	ds_load_b128 v[149:152], v218
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v242, v[97:100]
	ds_store_b128 v242, v[97:100] offset:256
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v97, v37, v38, s0
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b64 v[37:38], 24, v[35:36]
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v98, 15, v33
	v_dual_mov_b32 v24, v16 :: v_dual_mov_b32 v23, v15
	v_dual_mov_b32 v22, v14 :: v_dual_mov_b32 v21, v13
	v_mov_b32_e32 v20, v12
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v37.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v38, -16, v98
	v_dual_mov_b32 v19, v11 :: v_dual_mov_b32 v18, v10
	v_dual_mov_b32 v17, v9 :: v_dual_mov_b32 v16, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v33.l
	v_dual_mov_b32 v15, v7 :: v_dual_mov_b32 v14, v6
	.loc	1 321 26 is_stmt 1              ; attention_backward.py:321:26
	v_wmma_f32_16x16x16_bf16 v[129:136], v[145:152], v[228:235], v[129:136]
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v145, v34
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v34, v35, 0, 8
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v33, v98, v38, s0
	v_dual_mov_b32 v13, v5 :: v_dual_mov_b32 v12, v4
	v_dual_mov_b32 v11, v3 :: v_dual_mov_b32 v10, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v34.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v34, v40, 0, 8
	v_mov_b32_e32 v9, v1
	v_dual_mov_b32 v1, v57 :: v_dual_mov_b32 v4, v60
	v_mov_b32_e32 v2, v58
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s1, 0, v34.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e32 v34.l, v35.h
	v_dual_mov_b32 v3, v59 :: v_dual_mov_b32 v6, v62
	v_dual_mov_b32 v5, v61 :: v_dual_mov_b32 v8, v64
	v_dual_mov_b32 v7, v63 :: v_dual_mov_b32 v64, v56
	v_dual_mov_b32 v63, v55 :: v_dual_mov_b32 v62, v54
	v_dual_mov_b32 v61, v53 :: v_dual_mov_b32 v60, v52
	v_dual_mov_b32 v59, v51 :: v_dual_mov_b32 v58, v50
	v_dual_mov_b32 v57, v49 :: v_dual_mov_b32 v56, v48
	v_dual_mov_b32 v55, v47 :: v_dual_mov_b32 v54, v46
	v_dual_mov_b32 v53, v45 :: v_dual_mov_b32 v52, v44
	v_dual_mov_b32 v51, v43 :: v_dual_mov_b32 v50, v42
	v_mov_b32_e32 v49, v41
	v_dual_mov_b32 v41, v181 :: v_dual_mov_b32 v44, v184
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v147, v39
	v_cvt_f32_i32_e32 v146, v97
	v_cvt_f32_i32_e32 v148, v33
	v_dual_mov_b32 v47, v187 :: v_dual_add_nc_u32 v38, 0, v191
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v33.l, 4, v35.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v34, v34, 0, 8
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v35, v35, 20, 4
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v42, v182 :: v_dual_mov_b32 v43, v183
	v_dual_mov_b32 v46, v186 :: v_dual_mov_b32 v45, v185
	v_mov_b32_e32 v48, v188
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[185:188], v247
	ds_load_b128 v[121:124], v247 offset:64
	ds_load_b128 v[173:176], v243
	ds_load_b128 v[113:116], v243 offset:64
	ds_load_b128 v[165:168], v244
	ds_load_b128 v[105:108], v244 offset:64
	ds_load_b128 v[153:156], v245
	ds_load_b128 v[97:100], v245 offset:64
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v38, v[145:148]
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v219.l, v33.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v39, v37, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v33.l, 4, v37.l
	v_lshrrev_b16 v33.h, 4, v40.l
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v146, -16, v35
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v34.l
	.loc	1 362 30 is_stmt 1              ; attention_backward.py:362:30
	v_mov_b16_e64 v145.h, v219.h
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v37, -16, v219
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v145.l, v33.h, 15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v34, v35, v146, s3
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v35.l, v33.l, 15
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v35.h, v219.h
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v33.l, v39.l
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v40, -16, v145
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v147, v34
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v37, v219, v37, s0
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v39, -16, v35
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v33.l
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v33, v145, v40, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v145, v37
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v37, 15, v36
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v34, v35, v39, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v146, v33
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v36.h, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v39, -16, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v148, v34
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v34, v36, 16, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v33.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v36.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v246, v[145:148]
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v35, -16, v34
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v145, v36, 8, 4
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s1, 7, v33.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v34, v34, v35, s0
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v35, 24, v36
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v37, v37, v39, s1
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v39, v36, 24, 4
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v146, -16, v145
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v250, v34
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v35.l, 15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v248, v37
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v40, -16, v39
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v34, v36, 0, 8
	v_mov_b16_e32 v37.l, v36.h
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v39, v39, v40, s0
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v40, 8, v36
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v251, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v33.l, v40.l, 15
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s0, 7, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 363 29 is_stmt 0              ; attention_backward.py:363:29
	v_cndmask_b32_e64 v33, v145, v146, s0
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	ds_load_b128 v[252:255], v247
	ds_load_b128 v[161:164], v247 offset:64
	ds_load_b128 v[181:184], v243
	ds_load_b128 v[157:160], v243 offset:64
	ds_load_b128 v[177:180], v244
	ds_load_b128 v[149:152], v244 offset:64
	ds_load_b128 v[169:172], v245
	ds_load_b128 v[145:148], v245 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cvt_f32_i32_e32 v249, v33
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v33.l, 4, v36.l
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_bfe_u32 v36, v36, 20, 4
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	ds_store_b128 v38, v[248:251]
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v38.l, v33.l, 15
	.loc	1 362 30 is_stmt 0              ; attention_backward.py:362:30
	v_mov_b16_e64 v38.h, v219.h
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e32 v33.l, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v34, -16, v38
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v33.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v33, v37, 0, 8
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v37, -16, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v34, v38, v34, s0
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v33.l
	.loc	1 350 32 is_stmt 1              ; attention_backward.py:350:32
	v_bfe_i32 v33, v35, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v248, v34
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v36, v36, v37, s0
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v37.h, v219.h
	.loc	1 362 32 is_stmt 0              ; attention_backward.py:362:32
	v_lshrrev_b16 v37.l, 4, v35.l
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v33.l
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v33.l, 4, v40.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v250, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v35, -16, v37
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v35, v37, v35, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_and_b16 v37.l, v33.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v33, v40, 0, 8
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v251, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v38, -16, v37
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s0, 0, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v33, v37, v38, s0
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v37, 16, v173
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v249, v33
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v33, 16, v185
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v181, v181, v37
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v37, 0xffff0000, v173
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v246, v[248:251]
	v_dual_mul_f32 v251, v252, v33 :: v_dual_lshlrev_b32 v252, 16, v187
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v33, 0xffff0000, v185
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mul_f32 v182, v182, v37 :: v_dual_lshlrev_b32 v37, 16, v174
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v250, v253, v33 :: v_dual_and_b32 v253, 0xffff0000, v187
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v33, 16, v186
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s0, v251, v251
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v183, v183, v37
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v37, 0xffff0000, v174
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v250, v250
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v249, v254, v33 :: v_dual_lshlrev_b32 v254, 16, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v184, v184, v37 :: v_dual_and_b32 v33, 0xffff0000, v186
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v181, v181
	v_cmp_o_f32_e64 s3, v249, v249
	v_cmp_o_f32_e64 s11, v182, v182
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v248, v255, v33 :: v_dual_and_b32 v255, 0xffff0000, v188
	ds_load_b128 v[185:188], v247
	ds_load_b128 v[33:36], v247 offset:64
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v247, 16, v175
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v183, v183
	v_cmp_o_f32_e64 s5, v248, v248
	v_cmp_o_f32_e64 s13, v184, v184
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v185, v185, v252 :: v_dual_and_b32 v252, 0xffff0000, v175
	v_dual_mul_f32 v186, v186, v253 :: v_dual_mul_f32 v187, v187, v254
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v254, 0xffff0000, v176
	v_lshlrev_b32_e32 v253, 16, v176
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[37:40], v243
	ds_load_b128 v[173:176], v243 offset:64
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v185, v185
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v188, v188, v255
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v186, v186
	v_cmp_o_f32_e64 s8, v187, v187
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_o_f32_e64 s9, v188, v188
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v37, v37, v247
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v247, v251, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v38, v38, v252 :: v_dual_mul_f32 v39, v39, v253
	v_mul_f32_e32 v40, v40, v254
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v37, v37
	v_add3_u32 v247, v251, v247, 0x7fff
	v_bfe_u32 v251, v250, 16, 1
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v250, v250, v251, 0x7fff
	v_bfe_u32 v251, v249, 16, 1
	v_add3_u32 v249, v249, v251, 0x7fff
	v_bfe_u32 v251, v248, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v248, v248, v251, 0x7fff
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
	v_cndmask_b16 v182.l, 0x7fff, v249.h, s3
	v_cndmask_b16 v182.h, 0x7fff, v248.h, s5
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
	v_cndmask_b16 v181.l, 0x7fff, v247.h, s0
	v_cndmask_b16 v181.h, 0x7fff, v250.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v188.h, 0x7fff, v40.h, s17
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[247:254], v[181:188], v[41:48], v[137:144]
	v_dual_mov_b32 v188, v48 :: v_dual_mul_f32 v137, v177, v37
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v37, 0xffff0000, v165
	v_dual_mov_b32 v187, v47 :: v_dual_mov_b32 v186, v46
	v_dual_mov_b32 v185, v45 :: v_dual_mov_b32 v184, v44
	v_dual_mov_b32 v183, v43 :: v_dual_mov_b32 v182, v42
	v_mov_b32_e32 v181, v41
	v_dual_mov_b32 v41, v49 :: v_dual_mov_b32 v42, v50
	v_dual_mov_b32 v43, v51 :: v_dual_mov_b32 v44, v52
	v_dual_mov_b32 v45, v53 :: v_dual_mov_b32 v46, v54
	v_dual_mov_b32 v47, v55 :: v_dual_mov_b32 v48, v56
	v_dual_mov_b32 v49, v57 :: v_dual_mov_b32 v50, v58
	v_dual_mov_b32 v51, v59 :: v_dual_mov_b32 v52, v60
	v_dual_mov_b32 v53, v61 :: v_dual_mov_b32 v54, v62
	v_dual_mov_b32 v55, v63 :: v_dual_mov_b32 v56, v64
	v_dual_mov_b32 v64, v8 :: v_dual_mov_b32 v63, v7
	v_dual_mov_b32 v62, v6 :: v_dual_mov_b32 v61, v5
	v_dual_mov_b32 v60, v4 :: v_dual_mov_b32 v59, v3
	v_dual_mov_b32 v58, v2 :: v_dual_mov_b32 v57, v1
	v_mov_b32_e32 v1, v9
	v_dual_mov_b32 v7, v15 :: v_dual_mul_f32 v138, v178, v37
	v_dual_mov_b32 v2, v10 :: v_dual_lshlrev_b32 v37, 16, v166
	v_dual_mov_b32 v3, v11 :: v_dual_mov_b32 v4, v12
	v_mov_b32_e32 v5, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v139, v179, v37
	v_dual_mov_b32 v6, v14 :: v_dual_and_b32 v37, 0xffff0000, v166
	v_dual_mov_b32 v8, v16 :: v_dual_mov_b32 v9, v17
	v_dual_mov_b32 v11, v19 :: v_dual_and_b32 v142, 0xffff0000, v167
	v_dual_mov_b32 v13, v21 :: v_dual_and_b32 v144, 0xffff0000, v168
	v_dual_mul_f32 v140, v180, v37 :: v_dual_lshlrev_b32 v141, 16, v167
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v143, 16, v168
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[37:40], v244
	ds_load_b128 v[165:168], v244 offset:64
	v_mov_b32_e32 v10, v18
	v_mov_b32_e32 v12, v20
	v_dual_mov_b32 v14, v22 :: v_dual_mov_b32 v15, v23
	v_dual_mov_b32 v16, v24 :: v_dual_mov_b32 v17, v25
	v_dual_mov_b32 v23, v31 :: v_dual_and_b32 v178, 0xffff0000, v155
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v177, 16, v155
	v_lshlrev_b32_e32 v179, 16, v156
	v_and_b32_e32 v180, 0xffff0000, v156
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s0, v137, v137
	v_cmp_o_f32_e64 s1, v138, v138
	v_cmp_o_f32_e64 s3, v139, v139
	v_cmp_o_f32_e64 s5, v140, v140
	v_mov_b32_e32 v18, v26
	v_mov_b32_e32 v20, v28
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v22, v30 :: v_dual_mul_f32 v141, v37, v141
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v142, v38, v142 :: v_dual_lshlrev_b32 v37, 16, v153
	v_dual_mul_f32 v143, v39, v143 :: v_dual_mul_f32 v144, v40, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v141, v141
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v169, v169, v37
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v37, 0xffff0000, v153
	v_mov_b32_e32 v19, v27
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v142, v142
	v_cmp_o_f32_e64 s8, v143, v143
	v_cmp_o_f32_e64 s9, v144, v144
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v170, v170, v37 :: v_dual_lshlrev_b32 v37, 16, v154
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v169, v169
	v_mov_b32_e32 v24, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s11, v170, v170
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v171, v171, v37
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v37, 0xffff0000, v154
	v_mov_b32_e32 v21, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v171, v171
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v172, v172, v37
	ds_load_b128 v[37:40], v245
	ds_load_b128 v[153:156], v245 offset:64
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s13, v172, v172
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
	v_cndmask_b16 v137.l, 0x7fff, v137.h, s0
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v38, v162, v38 :: v_dual_mul_f32 v33, v33, v121
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cndmask_b16 v144.h, 0x7fff, v40.h, s17
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v40, 0xffff0000, v122
	v_and_b32_e32 v122, 0xffff0000, v123
	v_lshlrev_b32_e32 v123, 16, v124
	v_and_b32_e32 v124, 0xffff0000, v124
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[247:254], v[137:144], v[41:48], v[247:254]
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v39, v163, v39 :: v_dual_mul_f32 v40, v164, v40
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s1, v38, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v36, v36, v124
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v124, 16, v116
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v137, v37, 16, 1
	v_cmp_o_f32_e64 s0, v37, v37
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v116, 0xffff0000, v116
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s3, v39, v39
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v34, v34, v122
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v37, v37, v137, 0x7fff
	v_bfe_u32 v137, v38, 16, 1
	v_cmp_o_f32_e64 s5, v40, v40
	v_cmp_o_f32_e64 s6, v33, v33
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v35, v35, v123
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s7, v34, v34
	v_add3_u32 v38, v38, v137, 0x7fff
	v_bfe_u32 v137, v39, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v123, 16, v115
	v_lshlrev_b32_e32 v122, 16, v114
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s9, v36, v36
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v114, 0xffff0000, v114
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v39, v39, v137, 0x7fff
	v_bfe_u32 v137, v40, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v123, v173, v123 :: v_dual_mul_f32 v122, v159, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v114, v160, v114
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v138.l, 0x7fff, v39.h, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v40, v40, v137, 0x7fff
	v_bfe_u32 v137, v33, 16, 1
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v39, 16, v108
	v_and_b32_e32 v115, 0xffff0000, v115
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v122, v122
	v_cndmask_b16 v138.h, 0x7fff, v40.h, s5
	v_add3_u32 v33, v33, v137, 0x7fff
	v_bfe_u32 v137, v34, 16, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v40, 0xffff0000, v108
	v_lshlrev_b32_e32 v108, 16, v100
	v_and_b32_e32 v100, 0xffff0000, v100
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v139.l, 0x7fff, v33.h, s6
	v_add3_u32 v34, v34, v137, 0x7fff
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v33, 16, v105
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v100, v156, v100 :: v_dual_lshlrev_b32 v121, 16, v113
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v113, 0xffff0000, v113
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v139.h, 0x7fff, v34.h, s7
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v34, 0xffff0000, v105
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v137, v35, 16, 1
	v_cmp_o_f32_e64 s8, v35, v35
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v33, v149, v33
	v_mul_f32_e32 v121, v157, v121
	v_mul_f32_e32 v113, v158, v113
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v35, v35, v137, 0x7fff
	v_bfe_u32 v137, v36, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v115, v174, v115
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v121, v121
	v_cmp_o_f32_e64 s13, v114, v114
	v_cndmask_b16 v140.l, 0x7fff, v35.h, s8
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v35, 16, v106
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v36, v36, v137, 0x7fff
	v_bfe_u32 v137, v121, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v124, v175, v124
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s14, v123, v123
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v35, v151, v35
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v140.h, 0x7fff, v36.h, s9
	v_add3_u32 v121, v121, v137, 0x7fff
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v36, 0xffff0000, v106
	v_lshlrev_b32_e32 v106, 16, v98
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v137, v113, 16, 1
	v_cmp_o_f32_e64 s11, v113, v113
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v98, 0xffff0000, v98
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v116, v176, v116
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s15, v115, v115
	v_add3_u32 v113, v113, v137, 0x7fff
	v_bfe_u32 v137, v122, 16, 1
	v_cmp_o_f32_e64 s16, v124, v124
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v34, v150, v34
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s17, v116, v116
	v_cndmask_b16 v141.h, 0x7fff, v113.h, s11
	v_add3_u32 v122, v122, v137, 0x7fff
	v_bfe_u32 v137, v114, 16, 1
	v_bfe_u32 v113, v33, 16, 1
	v_cndmask_b16 v141.l, 0x7fff, v121.h, s10
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v36, v152, v36
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v142.l, 0x7fff, v122.h, s12
	v_add3_u32 v114, v114, v137, 0x7fff
	v_bfe_u32 v137, v123, 16, 1
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s5, v36, v36
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v39, v167, v39
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v142.h, 0x7fff, v114.h, s13
	v_add3_u32 v123, v123, v137, 0x7fff
	v_bfe_u32 v137, v115, 16, 1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v40, v168, v40 :: v_dual_lshlrev_b32 v105, 16, v97
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v97, 0xffff0000, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v143.l, 0x7fff, v123.h, s14
	v_add3_u32 v115, v115, v137, 0x7fff
	v_bfe_u32 v137, v124, 16, 1
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_mul_f32_e32 v105, v145, v105
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s8, v39, v39
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v97, v146, v97
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v143.h, 0x7fff, v115.h, s15
	v_add3_u32 v124, v124, v137, 0x7fff
	v_bfe_u32 v137, v116, 16, 1
	v_cmp_o_f32_e64 s9, v40, v40
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v106, v147, v106
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v105, v105
	v_cndmask_b16 v144.l, 0x7fff, v124.h, s16
	v_add3_u32 v116, v116, v137, 0x7fff
	v_cndmask_b16 v137.l, 0x7fff, v37.h, s0
	v_cmp_o_f32_e64 s0, v33, v33
	v_add3_u32 v33, v33, v113, 0x7fff
	v_bfe_u32 v113, v34, 16, 1
	v_cndmask_b16 v137.h, 0x7fff, v38.h, s1
	v_cndmask_b16 v144.h, 0x7fff, v116.h, s17
	v_cmp_o_f32_e64 s1, v34, v34
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v38, 0xffff0000, v107
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v34, v34, v113, 0x7fff
	v_bfe_u32 v113, v35, 16, 1
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[247:254], v[137:144], v[49:56], v[247:254]
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v98, v148, v98
	v_mul_f32_e32 v38, v166, v38
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cndmask_b16 v137.h, 0x7fff, v34.h, s1
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v34, s38, v130, -v220
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v35, v35, v113, 0x7fff
	v_bfe_u32 v113, v36, 16, 1
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s11, v97, v97
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v34, v34
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v37, 16, v107
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_add3_u32 v36, v36, v113, 0x7fff
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v107, 16, v99
	v_and_b32_e32 v99, 0xffff0000, v99
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s12, v106, v106
	v_cmp_o_f32_e64 s13, v98, v98
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v108, v155, v108 :: v_dual_mul_f32 v107, v153, v107
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v99, v154, v99 :: v_dual_cndmask_b32 v34, 0, v34
	v_mul_f32_e32 v37, v165, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s16, v108, v108
	v_cmp_o_f32_e64 s14, v107, v107
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s15, v99, v99
	v_cmp_o_f32_e64 s17, v100, v100
	v_bfe_u32 v113, v37, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_cndmask_b16 v137.l, 0x7fff, v33.h, s0
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v33, s38, v129, -v220
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v138.l, 0x7fff, v35.h, s3
	v_add3_u32 v37, v37, v113, 0x7fff
	v_bfe_u32 v113, v38, 16, 1
	v_cndmask_b16 v138.h, 0x7fff, v36.h, s5
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v33
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v35, s38, v131, -v220
	.loc	1 382 30 is_stmt 1              ; attention_backward.py:382:30
	v_cndmask_b16 v139.l, 0x7fff, v37.h, s6
	v_add3_u32 v38, v38, v113, 0x7fff
	v_bfe_u32 v113, v39, 16, 1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v36, s38, v132, -v220
	v_fma_f32 v37, s38, v133, -v220
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v121.l, v206.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v139.h, 0x7fff, v38.h, s7
	v_add3_u32 v39, v39, v113, 0x7fff
	v_bfe_u32 v113, v40, 16, 1
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v33, 0, v33, vcc_lo
	.loc	1 345 58 is_stmt 0              ; attention_backward.py:345:58
	v_fma_f32 v38, s38, v134, -v220
	.loc	1 398 31 is_stmt 1              ; attention_backward.py:398:31
	v_mov_b16_e32 v121.h, v125.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v140.l, 0x7fff, v39.h, s8
	v_add3_u32 v40, v40, v113, 0x7fff
	v_bfe_u32 v113, v105, 16, 1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v39, s38, v135, -v220
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v122.l, v207.l
	v_mov_b16_e32 v122.h, v126.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v140.h, 0x7fff, v40.h, s9
	v_add3_u32 v105, v105, v113, 0x7fff
	v_bfe_u32 v113, v97, 16, 1
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v40, s38, v136, -v220
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v125.l, v206.h
	v_mov_b16_e64 v126.l, v207.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v141.l, 0x7fff, v105.h, s10
	v_add3_u32 v97, v97, v113, 0x7fff
	v_bfe_u32 v113, v106, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v123.l, v204.l
	v_mov_b16_e32 v123.h, v127.l
	v_mov_b16_e64 v124.l, v205.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v141.h, 0x7fff, v97.h, s11
	v_add3_u32 v106, v106, v113, 0x7fff
	v_bfe_u32 v113, v98, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v124.h, v128.l
	v_mov_b16_e64 v127.l, v204.h
	v_mov_b16_e64 v128.l, v205.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v142.l, 0x7fff, v106.h, s12
	v_add3_u32 v98, v98, v113, 0x7fff
	v_bfe_u32 v113, v107, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v114.l, v203.l
	v_mov_b16_e32 v114.h, v118.l
	v_mov_b16_e64 v118.l, v203.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v142.h, 0x7fff, v98.h, s13
	v_add3_u32 v107, v107, v113, 0x7fff
	v_bfe_u32 v113, v99, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v115.l, v200.l
	v_mov_b16_e32 v115.h, v119.l
	v_mov_b16_e64 v116.l, v201.l
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v143.l, 0x7fff, v107.h, s14
	v_add3_u32 v99, v99, v113, 0x7fff
	v_bfe_u32 v113, v108, 16, 1
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v116.h, v120.l
	v_mov_b16_e64 v119.l, v200.h
	v_mov_b16_e64 v120.l, v201.h
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v143.h, 0x7fff, v99.h, s15
	v_add3_u32 v108, v108, v113, 0x7fff
	v_bfe_u32 v113, v100, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v144.l, 0x7fff, v108.h, s16
	v_add3_u32 v100, v100, v113, 0x7fff
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v113.l, v202.l
	v_mov_b16_e32 v113.h, v117.l
	v_mov_b16_e64 v117.l, v202.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cndmask_b16 v144.h, 0x7fff, v100.h, s17
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[247:254], v[137:144], v[57:64], v[247:254]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v97, v247, v222
	v_sub_f32_e32 v98, v248, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v99, v249, v222
	v_sub_f32_e32 v100, v250, v222
	v_sub_f32_e32 v105, v251, v222
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_dual_mul_f32 v33, v33, v97 :: v_dual_mul_f32 v34, v34, v98
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v106, v252, v222
	v_sub_f32_e32 v107, v253, v222
	v_dual_sub_f32 v108, v254, v222 :: v_dual_mul_f32 v33, s34, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_mul_f32_e32 v34, s34, v34
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v98.l, v195.l
	v_mov_b16_e32 v98.h, v102.l
	v_mov_b16_e64 v102.l, v195.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v97, v33, 16, 1
	v_cmp_o_f32_e64 s0, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v97, 0x7fff
	v_bfe_u32 v97, v34, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v34, v34, v97, 0x7fff
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v97.l, v194.l
	v_mov_b16_e32 v97.h, v101.l
	v_mov_b16_e64 v101.l, v194.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v129, v34, v33, v226
	v_perm_b32 v130, v34, v33, v227
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v35
	v_exp_f32_e32 v34, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_dual_cndmask_b32 v33, 0, v33 :: v_dual_cndmask_b32 v34, 0, v34
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v33, v33, v99 :: v_dual_mul_f32 v34, v34, v100
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v99.l, v192.l
	v_mov_b16_e32 v99.h, v103.l
	v_mov_b16_e64 v100.l, v193.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v33, s34, v33 :: v_dual_mul_f32 v34, s34, v34
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v100.h, v104.l
	v_mov_b16_e64 v103.l, v192.h
	v_mov_b16_e64 v104.l, v193.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e64 s0, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v35, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v131, v34, v33, v226
	v_perm_b32 v132, v34, v33, v227
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v37
	v_exp_f32_e32 v34, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_dual_cndmask_b32 v33, 0, v33 :: v_dual_cndmask_b32 v34, 0, v34
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v33, v33, v105 :: v_dual_mul_f32 v34, v34, v106
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v105.l, v198.l
	v_mov_b16_e32 v105.h, v109.l
	v_mov_b16_e64 v106.l, v199.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v33, s34, v33 :: v_dual_mul_f32 v34, s34, v34
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v106.h, v110.l
	v_mov_b16_e64 v109.l, v198.h
	v_mov_b16_e64 v110.l, v199.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e64 s0, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v35, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v35, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v133, v34, v33, v226
	v_perm_b32 v134, v34, v33, v227
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v33, v39
	v_exp_f32_e32 v34, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 345 29 is_stmt 0              ; attention_backward.py:345:29
	v_dual_cndmask_b32 v33, 0, v33 :: v_dual_cndmask_b32 v34, 0, v34
	.loc	1 396 26 is_stmt 1              ; attention_backward.py:396:26
	v_dual_mul_f32 v33, v33, v107 :: v_dual_mul_f32 v34, v34, v108
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e64 v107.l, v196.l
	v_mov_b16_e32 v107.h, v111.l
	v_mov_b16_e64 v108.l, v197.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v33, s34, v33 :: v_dual_mul_f32 v34, s34, v34
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_mov_b16_e32 v108.h, v112.l
	v_mov_b16_e64 v111.l, v196.h
	v_mov_b16_e64 v112.l, v197.h
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e64 s0, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v35, 0x7fff
	v_bfe_u32 v35, v34, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_add_i32 s0, s50, 16
	s_cmpk_lt_u32 s50, 0x7f0
	s_mov_b32 s50, s0
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v33, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v135, v34, v33, v226
	v_perm_b32 v136, v34, v33, v227
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 398 31                        ; attention_backward.py:398:31
	v_wmma_f32_16x16x16_bf16 v[65:72], v[121:128], v[129:136], v[65:72]
	v_wmma_f32_16x16x16_bf16 v[89:96], v[113:120], v[129:136], v[89:96]
	v_wmma_f32_16x16x16_bf16 v[81:88], v[105:112], v[129:136], v[81:88]
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[129:136], v[73:80]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc1 .LBB0_3
; %bb.4:
	.loc	1 401 13                        ; attention_backward.py:401:13
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 401 13                        ; attention_backward.py:401:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v1, s18, v0
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 125 21                        ; attention_backward.py:125:21
	s_waitcnt vmcnt(0)
	v_bfe_u32 v2, v0, 4, 1
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_or_b32_e32 v3, 48, v2
	v_or_b32_e32 v5, 32, v2
	v_or_b32_e32 v6, 16, v2
	v_cmp_gt_i32_e64 s0, s18, v2
	v_or_b32_e32 v0, 62, v0
	v_cmp_gt_i32_e64 s1, s18, v3
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v3, v1, v3
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s3, s18, v6
	.loc	1 161 22 is_stmt 0              ; attention_backward.py:161:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 161 44                        ; attention_backward.py:161:44
	v_cmp_gt_i32_e64 s2, s18, v5
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, v1, v5
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v3, v3, s33, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_nc_u32_e32 v4, v1, v2
	v_add_nc_u32_e32 v0, v1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
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
	buffer_store_b32 v65, v8, s[36:39], 0 offen
	buffer_store_b32 v66, v6, s[36:39], 0 offen
	buffer_store_b32 v67, v7, s[36:39], 0 offen
	v_add_nc_u32_e32 v6, 32, v2
	v_add_nc_u32_e32 v7, 40, v2
	v_add_nc_u32_e32 v8, 48, v2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	s_clause 0x4
	buffer_store_b32 v68, v1, s[36:39], 0 offen
	buffer_store_b32 v69, v6, s[36:39], 0 offen
	buffer_store_b32 v70, v7, s[36:39], 0 offen
	buffer_store_b32 v71, v8, s[36:39], 0 offen
	buffer_store_b32 v72, v9, s[36:39], 0 offen
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
	buffer_store_b32 v89, v1, s[36:39], 0 offen
	buffer_store_b32 v90, v4, s[36:39], 0 offen
	buffer_store_b32 v91, v6, s[36:39], 0 offen
	v_add_nc_u32_e32 v4, 0x68, v2
	v_cndmask_b32_e64 v1, 0x80000000, v8, s0
	buffer_store_b32 v92, v7, s[36:39], 0 offen
	v_add_nc_u32_e32 v6, 0x70, v2
	v_add_nc_u32_e32 v7, 0x78, v2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	buffer_store_b32 v93, v1, s[36:39], 0 offen
	v_add_lshl_u32 v1, v5, s33, 2
	v_cndmask_b32_e64 v5, 0x80000000, v6, s0
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	.loc	1 161 22                        ; attention_backward.py:161:22
	s_and_b32 s0, vcc_lo, s2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v94, v4, s[36:39], 0 offen
	v_add_nc_u32_e32 v4, 0x88, v2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_clause 0x2
	buffer_store_b32 v95, v5, s[36:39], 0 offen
	buffer_store_b32 v96, v6, s[36:39], 0 offen
	buffer_store_b32 v81, v1, s[36:39], 0 offen
	v_add_nc_u32_e32 v1, 0x90, v2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v5, 0x98, v2
	v_add_nc_u32_e32 v6, 0xa0, v2
	v_add_nc_u32_e32 v7, 0xa8, v2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v82, v4, s[36:39], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e64 v5, 0x80000000, v6, s0
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	buffer_store_b32 v83, v1, s[36:39], 0 offen
	v_add_nc_u32_e32 v1, 0xb0, v2
	s_clause 0x2
	buffer_store_b32 v84, v4, s[36:39], 0 offen
	buffer_store_b32 v85, v5, s[36:39], 0 offen
	buffer_store_b32 v86, v6, s[36:39], 0 offen
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
	buffer_store_b32 v87, v1, s[36:39], 0 offen
	buffer_store_b32 v88, v4, s[36:39], 0 offen
	buffer_store_b32 v73, v3, s[36:39], 0 offen
	buffer_store_b32 v74, v5, s[36:39], 0 offen
	buffer_store_b32 v75, v6, s[36:39], 0 offen
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
	buffer_store_b32 v76, v1, s[36:39], 0 offen
	buffer_store_b32 v77, v3, s[36:39], 0 offen
	buffer_store_b32 v78, v4, s[36:39], 0 offen
	buffer_store_b32 v79, v2, s[36:39], 0 offen
	buffer_store_b32 v80, v0, s[36:39], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp81:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 36
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 36
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11556
; TotalNumSgprs: 53
; NumVgprs: 256
; ScratchSize: 36
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
	.byte	6                               ; Abbreviation Code
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
	.byte	7                               ; Abbreviation Code
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
	.short	258                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	262                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	176                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 36
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_bf16xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 8
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
