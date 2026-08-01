	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 60 0                          ; attention_backward.py:60:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[76:79], s[0:1], 0x74
.Ltmp0:
	.loc	1 124 31 prologue_end           ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 119 19                        ; attention_backward.py:119:19
	s_lshl_b32 s5, s2, 5
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v11, 7, v0
	.loc	1 133 26                        ; attention_backward.py:133:26
	s_lshl_b32 s6, s3, 11
	v_mov_b32_e32 v33, 0
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v6, s5, v5
	.loc	1 135 17                        ; attention_backward.py:135:17
	s_add_i32 s74, s5, s6
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v176, 3, v11
	s_clause 0x3
	s_load_b64 s[72:73], s[0:1], 0x58
	s_load_b256 s[64:71], s[0:1], 0x0
	s_load_b256 s[8:15], s[0:1], 0x38
	s_load_b128 s[84:87], s[0:1], 0x20
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v9, 1, v0
	v_and_b32_e32 v90, 32, v0
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s4, 0x800, v6
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v4, s5, v9
	.loc	1 124 31 is_stmt 0              ; attention_backward.py:124:31
	v_lshrrev_b32_e32 v2, 1, v90
	.loc	1 135 17 is_stmt 1              ; attention_backward.py:135:17
	v_or_b32_e32 v3, s74, v9
	.loc	1 167 13                        ; attention_backward.py:167:13
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v5, s78, v5
	s_mul_i32 s7, s78, s74
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v12, s7, v176
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_bfe_u32 v27, v0, 4, 1
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v92, 4, v11
	v_lshlrev_b32_e32 v93, 3, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_and_b32_e32 v91, 3, v0
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v177, v5, v176
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_and_b32 s81, s65, 0xffff
	s_mov_b32 s80, s64
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_or_b32_e32 v16, 4, v12
	v_lshl_add_u32 v13, s78, 3, v5
	v_add_nc_u32_e32 v15, s7, v177
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s7, s3, 31
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_lshl_add_u32 v14, s78, 4, v5
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_lshr_b32 s0, s7, 28
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_lshlrev_b32_e32 v178, 3, v91
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_add_i32 s0, s3, s0
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_lshlrev_b32_e32 v17, 2, v15
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 121 23                        ; attention_backward.py:121:23
	s_ashr_i32 s0, s0, 4
	.loc	1 122 22                        ; attention_backward.py:122:22
	s_sub_i32 s1, s3, s1
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v18, v12, v14
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_u32 s3, s1, 0x10007
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v14, v16, v14, 2
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_add_i32 s1, s1, s3
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v29, 2, v27
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v28, 4, v27
	.loc	1 123 19                        ; attention_backward.py:123:19
	s_sext_i32_i16 s1, s1
	s_mov_b64 s[88:89], s[86:87]
	s_ashr_i32 s1, s1, 1
	s_and_b32 s85, s85, 0xffff
	.loc	1 197 29                        ; attention_backward.py:197:29
	s_lshl3_add_u32 s7, s0, s1
	.loc	1 220 21                        ; attention_backward.py:220:21
	s_mul_f32 s1, s79, 0x3fb8aa3b
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_lshlrev_b32_e32 v8, 4, v0
	.loc	1 200 27                        ; attention_backward.py:200:27
	v_cmp_gt_i32_e64 s0, s77, v178
	v_mov_b32_e32 v96, 0
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	.loc	1 139 44                        ; attention_backward.py:139:44
	v_and_b32_e32 v1, 16, v8
	v_mov_b32_e32 v97, 0xff800000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_gt_i32_e64 s2, s77, v1
	.loc	1 139 22 is_stmt 0              ; attention_backward.py:139:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 124 31 is_stmt 1              ; attention_backward.py:124:31
	v_and_b32_e32 v89, 15, v0
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_cmp_gt_i32_e64 s2, s78, v176
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_or_b32_e32 v7, v2, v89
	.loc	1 135 17                        ; attention_backward.py:135:17
	v_mad_u64_u32 v[2:3], null, s77, v3, v[1:2]
	.loc	1 168 18                        ; attention_backward.py:168:18
	s_and_b32 s4, s4, s2
	.loc	1 143 17                        ; attention_backward.py:143:17
	v_or_b32_e32 v1, s74, v7
	scratch_store_b32 off, v7, off offset:136 ; 4-byte Folded Spill
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v7, s5, v7
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 142 31                        ; attention_backward.py:142:31
	v_lshlrev_b32_e32 v10, 1, v1
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v14, 0x80000000, v14, s4
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v7
	v_lshlrev_b32_e32 v94, 5, v89
	.loc	1 134 28                        ; attention_backward.py:134:28
	buffer_load_b128 v[1:4], v2, s[80:83], 0 offen
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_and_b32 s81, s71, 0xffff
	s_mov_b32 s80, s70
	v_cndmask_b32_e32 v7, 0x80000000, v10, vcc_lo
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v11, 6, v90
	.loc	1 142 31                        ; attention_backward.py:142:31
	buffer_load_u16 v10, v7, s[80:83], 0 offen
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_mad_u64_u32 v[6:7], null, s78, 24, v[5:6]
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_add_lshl_u32 v5, v16, v5, 2
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v7, v12, v13
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	v_add_lshl_u32 v13, v16, v13, 2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_lshlrev_b32_e32 v19, 2, v7
	.loc	1 167 13                        ; attention_backward.py:167:13
	v_add_nc_u32_e32 v12, v12, v6
	.loc	1 166 23                        ; attention_backward.py:166:23
	s_clause 0x1
	buffer_load_b128 v[61:64], v17, s[80:83], 0 offen
	buffer_load_b128 v[53:56], v5, s[80:83], 0 offen
	v_lshlrev_b32_e32 v17, 2, v18
	v_cndmask_b32_e64 v5, 0x80000000, v19, s4
	v_lshlrev_b32_e32 v19, 2, v12
	v_add_lshl_u32 v6, v16, v6, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s4
	v_cndmask_b32_e64 v16, 0x80000000, v17, s4
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v12, 1, v12
	.loc	1 166 23                        ; attention_backward.py:166:23
	v_cndmask_b32_e64 v17, 0x80000000, v19, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	s_clause 0x5
	buffer_load_b128 v[69:72], v5, s[80:83], 0 offen
	buffer_load_b128 v[65:68], v13, s[80:83], 0 offen
	buffer_load_b128 v[57:60], v16, s[80:83], 0 offen
	buffer_load_b128 v[49:52], v14, s[80:83], 0 offen
	buffer_load_b128 v[45:48], v17, s[80:83], 0 offen
	buffer_load_b128 v[41:44], v6, s[80:83], 0 offen
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v5, 1, v15
	v_lshlrev_b32_e32 v6, 1, v7
	v_lshlrev_b32_e32 v7, 1, v18
	s_and_b32 s81, s11, 0xffff
	s_mov_b32 s80, s10
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v12, 0x80000000, v12, s4
	s_clause 0x3
	buffer_load_b128 v[85:88], v5, s[80:83], 0 offen
	buffer_load_b128 v[81:84], v6, s[80:83], 0 offen
	buffer_load_b128 v[77:80], v7, s[80:83], 0 offen
	buffer_load_b128 v[73:76], v12, s[80:83], 0 offen
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v13, 4, v0
	.loc	1 124 31                        ; attention_backward.py:124:31
	v_and_b32_e32 v6, 56, v0
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v14, 7, v89
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_b32_e32 v7, 16, v0
	v_and_or_b32 v98, v5, 24, v94
	.loc	1 122 22                        ; attention_backward.py:122:22
	scratch_store_b32 off, v13, off offset:152 ; 4-byte Folded Spill
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_and_or_b32 v13, v5, 30, v27
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_lshlrev_b32_e32 v95, 1, v6
	v_and_b32_e32 v6, 24, v9
	v_or3_b32 v11, v14, v11, v92
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cmp_eq_u32_e64 s3, 0, v7
	v_lshlrev_b32_e32 v9, 2, v13
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_lshrrev_b32_e32 v12, 2, v0
	v_xor_b32_e32 v6, v93, v6
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_add_nc_u32_e32 v13, 0, v11
	v_xad_u32 v14, v11, 16, 0
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_xor_b32_e32 v5, 4, v9
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v15, v11, 32, 0
	v_xad_u32 v16, v11, 48, 0
	v_xad_u32 v17, v11, 64, 0
	v_xad_u32 v21, 0x50, v11, 0
	v_xad_u32 v25, 0x60, v11, 0
	v_xad_u32 v11, 0x70, v11, 0
	v_add_nc_u32_e32 v99, 0, v6
	v_xor_b32_e32 v6, 8, v98
	v_xor_b32_e32 v18, 16, v98
	v_xor_b32_e32 v19, 24, v98
	.loc	1 197 28                        ; attention_backward.py:197:28
	s_lshl_b32 s11, s7, 11
	s_mov_b32 s4, 0
	v_add_nc_u32_e32 v100, 0, v6
	v_add_nc_u32_e32 v101, 0, v18
	v_add_nc_u32_e32 v102, 0, v19
	v_or_b32_e32 v179, s11, v12
	v_or_b32_e32 v146, s11, v27
	v_or_b32_e32 v170, s11, v29
	v_or_b32_e32 v158, s11, v28
	s_mov_b32 s10, 0x76543210
	s_mov_b64 s[8:9], s[14:15]
	s_and_b32 s81, s67, 0xffff
	s_mov_b32 s80, s66
	.loc	1 134 28                        ; attention_backward.py:134:28
	s_waitcnt vmcnt(13)
	ds_bpermute_b32 v20, v9, v1
	ds_bpermute_b32 v1, v5, v1
	ds_bpermute_b32 v22, v9, v2
	ds_bpermute_b32 v2, v5, v2
	ds_bpermute_b32 v23, v9, v3
	ds_bpermute_b32 v3, v5, v3
	ds_bpermute_b32 v9, v9, v4
	ds_bpermute_b32 v4, v5, v4
	.loc	1 142 31                        ; attention_backward.py:142:31
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v5, 16, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 219 37                        ; attention_backward.py:219:37
	v_mul_f32_e32 v159, s1, v5
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_xad_u32 v8, v8, v95, 0
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v5, 6, v27
	.loc	1 171 28                        ; attention_backward.py:171:28
	s_waitcnt vmcnt(3)
	ds_store_b128 v8, v[85:88]
	s_waitcnt vmcnt(2)
	ds_store_b128 v8, v[81:84] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v8, v[77:80] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v8, v[73:76] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[160:163], v13
	ds_load_b128 v[164:167], v14
	ds_load_b128 v[121:124], v15
	ds_load_b128 v[125:128], v16
	ds_load_b128 v[131:134], v17
	ds_load_b128 v[135:138], v21
	ds_load_b128 v[147:150], v25
	ds_load_b128 v[151:154], v11
	.loc	1 134 28                        ; attention_backward.py:134:28
	v_cndmask_b32_e64 v184, v1, v20, s3
	v_cndmask_b32_e64 v172, v20, v1, s3
	v_cndmask_b32_e64 v185, v2, v22, s3
	v_cndmask_b32_e64 v173, v22, v2, s3
	v_cndmask_b32_e64 v22, v3, v23, s3
	v_cndmask_b32_e64 v129, v23, v3, s3
	v_cndmask_b32_e64 v23, v4, v9, s3
	v_cndmask_b32_e64 v130, v9, v4, s3
	.loc	1 125 21                        ; attention_backward.py:125:21
	v_or_b32_e32 v4, 8, v27
	v_or_b32_e32 v3, 10, v27
	v_or_b32_e32 v2, 12, v27
	v_or_b32_e32 v1, 14, v27
	v_or_b32_e32 v180, s11, v5
	v_or_b32_e32 v181, s11, v4
	v_or_b32_e32 v112, s11, v3
	v_or_b32_e32 v175, s11, v2
	v_or_b32_e32 v139, s11, v1
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v27, off offset:140
	scratch_store_b32 off, v29, off offset:148
	scratch_store_b32 off, v28, off offset:144
	scratch_store_b32 off, v5, off offset:172
	scratch_store_b32 off, v4, off offset:168
	scratch_store_b32 off, v3, off offset:164
	scratch_store_b32 off, v2, off offset:160
	scratch_store_b32 off, v1, off offset:156
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v1, s4, v179
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v3, s4, v146, 1
	v_add_lshl_u32 v4, s4, v170, 1
	v_add_lshl_u32 v5, s4, v158, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 199 21                        ; attention_backward.py:199:21
	v_mad_u64_u32 v[1:2], null, v1, s77, v[178:179]
	.loc	1 214 33                        ; attention_backward.py:214:33
	v_add_lshl_u32 v6, s4, v180, 1
	v_add_lshl_u32 v7, s4, v181, 1
	v_add_lshl_u32 v9, s4, v175, 1
	v_add_lshl_u32 v10, s4, v139, 1
	v_add_lshl_u32 v8, s4, v112, 1
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v36, v33
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	.loc	1 198 28                        ; attention_backward.py:198:28
	buffer_load_b64 v[1:2], v1, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_mov_b32_e32 v39, v33
	.loc	1 198 28                        ; attention_backward.py:198:28
	s_waitcnt vmcnt(0)
	ds_store_b64 v99, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_clause 0x7
	buffer_load_u16 v11, v3, s[84:87], 0 offen
	buffer_load_u16 v12, v4, s[84:87], 0 offen
	buffer_load_u16 v13, v5, s[84:87], 0 offen
	buffer_load_u16 v14, v6, s[84:87], 0 offen
	buffer_load_u16 v15, v7, s[84:87], 0 offen
	buffer_load_u16 v16, v8, s[84:87], 0 offen
	buffer_load_u16 v9, v9, s[84:87], 0 offen
	buffer_load_u16 v10, v10, s[84:87], 0 offen
	.loc	1 198 28                        ; attention_backward.py:198:28
	v_add_nc_u32_e32 v1, 0, v98
	ds_load_b64 v[1:2], v1
	ds_load_b64 v[3:4], v100
	ds_load_b64 v[5:6], v101
	ds_load_b64 v[7:8], v102
	v_dual_mov_b32 v111, v97 :: v_dual_mov_b32 v110, v40
	.loc	1 204 29                        ; attention_backward.py:204:29
	v_dual_mov_b32 v109, v39 :: v_dual_mov_b32 v108, v38
	v_dual_mov_b32 v107, v37 :: v_dual_mov_b32 v106, v36
	v_dual_mov_b32 v105, v35 :: v_dual_mov_b32 v104, v34
	v_mov_b32_e32 v103, v33
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cmp_neq_f32_e64 s1, 0xff800000, v111
	.loc	1 204 29                        ; attention_backward.py:204:29
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[103:110], v[1:2], v[184:185], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[103:110], v[3:4], v[22:23], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[103:110], v[5:6], v[172:173], v[103:110] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[103:110], v[7:8], v[129:130], v[103:110] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_cvt_f32_i32_e32 v1, v103
	v_cvt_f32_i32_e32 v2, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v105
	v_cvt_f32_i32_e32 v4, v106
	v_cvt_f32_i32_e32 v5, v107
	v_cvt_f32_i32_e32 v7, v109
	v_cvt_f32_i32_e32 v6, v108
	v_cvt_f32_i32_e32 v8, v110
	v_mul_f32_e32 v1, v159, v1
	v_mul_f32_e32 v2, v159, v2
	v_mul_f32_e32 v3, v159, v3
	v_mul_f32_e32 v4, v159, v4
	v_mul_f32_e32 v5, v159, v5
	v_mul_f32_e32 v7, v159, v7
	v_mul_f32_e32 v6, v159, v6
	v_mul_f32_e32 v8, v159, v8
	.loc	1 214 33                        ; attention_backward.py:214:33
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v12, 16, v12
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 223 21                        ; attention_backward.py:223:21
	v_dual_mul_f32 v2, v2, v12 :: v_dual_lshlrev_b32 v13, 16, v13
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v1, v1, v11 :: v_dual_lshlrev_b32 v16, 16, v16
	v_dual_mul_f32 v4, v4, v14 :: v_dual_lshlrev_b32 v15, 16, v15
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v3, v13 :: v_dual_lshlrev_b32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v6, v6, v16 :: v_dual_lshlrev_b32 v9, 16, v9
	v_dual_mul_f32 v5, v5, v15 :: v_dual_cndmask_b32 v2, 0xff800000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v8, v8, v10 :: v_dual_mul_f32 v7, v7, v9
	.loc	1 257 22                        ; attention_backward.py:257:22
	v_dual_cndmask_b32 v4, 0xff800000, v4 :: v_dual_cndmask_b32 v1, 0xff800000, v1
	v_dual_cndmask_b32 v6, 0xff800000, v6 :: v_dual_cndmask_b32 v3, 0xff800000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0xff800000, v8 :: v_dual_cndmask_b32 v5, 0xff800000, v5
	v_cndmask_b32_e32 v7, 0xff800000, v7, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention_backward.py:258:25 ] ]
	v_max3_f32 v9, v1, v2, v3
	v_max3_f32 v10, v4, v5, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v7, v8
	v_max3_f32 v9, v9, v10, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention_backward.py:258:25 ]
	v_permlanex16_b32 v10, v9, s10, 0xfedcba98 op_sel:[1,0]
.Ltmp3:
	.loc	1 259 20                        ; attention_backward.py:259:20
	v_max3_f32 v97, v111, v9, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v2, v2, v97
	v_sub_f32_e32 v7, v7, v97
	v_sub_f32_e32 v8, v8, v97
	v_sub_f32_e32 v3, v3, v97
	v_sub_f32_e32 v4, v4, v97
	.loc	1 261 45 is_stmt 0              ; attention_backward.py:261:45
	v_exp_f32_e32 v2, v2
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v8, v8
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_sub_f32_e32 v1, v1, v97
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v3, v3
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v1, v1
	.loc	1 261 58                        ; attention_backward.py:261:58
	v_dual_sub_f32 v6, v6, v97 :: v_dual_add_f32 v1, v1, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp4:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v2, v3, v4
	v_dual_add_f32 v4, v7, v8 :: v_dual_sub_f32 v5, v5, v97
.Ltmp5:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v1, v1, v2
.Ltmp7:
	.loc	1 261 45                        ; attention_backward.py:261:45
	v_exp_f32_e32 v5, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v3, v5, v6
	v_add_f32_e32 v2, v3, v4
	v_dual_mov_b32 v4, v96 :: v_dual_sub_f32 v3, v111, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v1, v1, v2
.Ltmp9:
	.loc	1 260 57                        ; attention_backward.py:260:57
	v_exp_f32_e32 v2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
.Ltmp11:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:262:33 ]
	v_permlanex16_b32 v3, v1, s10, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp12:
	.loc	1 260 21                        ; attention_backward.py:260:21
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_add_i32 s1, s4, 16
	s_cmpk_lt_u32 s4, 0x7f0
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:262:33 ] ]
	v_add_f32_e32 v96, v1, v3
	s_mov_b32 s4, s1
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp14:
	.loc	1 262 19                        ; attention_backward.py:262:19
	v_fmac_f32_e32 v96, v4, v2
	.loc	1 194 9                         ; attention_backward.py:194:9
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 0 9 is_stmt 0                 ; attention_backward.py:0:9
	v_mov_b16_e64 v168.h, 0
	.loc	1 171 28 is_stmt 1              ; attention_backward.py:171:28
	v_and_b32_e32 v9, 0xffff0000, v86
	v_and_b32_e32 v8, 0xffff0000, v87
	v_mov_b16_e32 v5.h, v86.l
	v_and_b32_e32 v33, 0xffff0000, v82
	v_mov_b16_e64 v5.l, v168.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v9, v64, v9 :: v_dual_mul_f32 v8, v54, v8
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v40, 0xffff0000, v79
	v_and_b32_e32 v54, 0xffff0000, v78
	v_and_b32_e32 v15, 0xffff0000, v84
	v_mov_b16_e64 v13.l, v168.h
	v_mov_b16_e32 v13.h, v82.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v33, v72, v33 :: v_dual_and_b32 v16, 0xffff0000, v83
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v9, v63, v5 :: v_dual_mul_f32 v40, v50, v40
.Ltmp16:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v50, v60, v54
	v_dual_mul_f32 v15, v68, v15 :: v_dual_and_b32 v34, 0xffff0000, v81
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v7, 0xffff0000, v88
	v_mov_b16_e32 v2.h, v88.l
	v_mov_b16_e64 v2.l, v168.h
	v_mov_b16_e64 v4.l, v168.h
	v_mov_b16_e32 v4.h, v87.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v34, v70, v34
	v_dual_mul_f32 v7, v56, v7 :: v_dual_and_b32 v10, 0xffff0000, v85
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v56, 0xffff0000, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v8, v53, v4
.Ltmp18:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v10, v62, v10 :: v_dual_and_b32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v7, v55, v2
.Ltmp20:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v11.l, v168.h
	v_mov_b16_e32 v11.h, v84.l
	v_mov_b16_e64 v12.l, v168.h
	v_mov_b16_e32 v12.h, v83.l
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v16, v66, v16
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v5, v8, v7 :: v_dual_and_b32 v62, 0xffff0000, v76
.Ltmp22:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v39, 0xffff0000, v80
	v_mov_b16_e64 v6.l, v168.h
	v_mov_b16_e32 v6.h, v85.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v44, v44, v62
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v16, v65, v12 :: v_dual_mul_f32 v39, v52, v39
.Ltmp24:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_dual_mul_f32 v52, v58, v56 :: v_dual_fmac_f32 v15, v67, v11
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v14.l, v168.h
	v_mov_b16_e32 v14.h, v81.l
	v_and_b32_e32 v66, 0xffff0000, v73
	v_mov_b16_e64 v35.l, v168.h
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v7, v16, v15 :: v_dual_fmac_f32 v10, v61, v6
.Ltmp26:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e32 v35.h, v80.l
	v_mov_b16_e64 v36.l, v168.h
	v_mov_b16_e32 v36.h, v79.l
	v_mov_b16_e64 v37.l, v168.h
	v_mov_b16_e32 v37.h, v78.l
	v_mov_b16_e64 v38.l, v168.h
	v_mov_b16_e32 v38.h, v77.l
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v34, v69, v14 :: v_dual_fmac_f32 v33, v71, v13
	v_add_f32_e32 v4, v10, v9
.Ltmp28:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cmp_gt_f32_e64 s1, 0x800000, v96
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v39, v51, v35 :: v_dual_and_b32 v68, 0xffff0000, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v6, v34, v33
	v_fmac_f32_e32 v52, v57, v38
	v_fmac_f32_e32 v50, v59, v37
	v_add_f32_e32 v4, v4, v5
.Ltmp30:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_and_b32_e32 v64, 0xffff0000, v75
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v10, 0, 0x42000000, s1
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v40, v49, v36 :: v_dual_add_f32 v5, v6, v7
	v_add_f32_e32 v6, v52, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v9, v4 :: v_dual_mul_f32 v42, v42, v64
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v7, v40, v39
.Ltmp34:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v2, v48, v68
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_cndmask_b32_e64 v11, 0, 32, s1
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 124 21                        ; attention_backward.py:124:21
	v_or_b32_e32 v3, s5, v1
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v6, v6, v7 :: v_dual_mov_b32 v7, v5
.Ltmp38:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v54.l, v168.h
	v_mov_b16_e32 v54.h, v76.l
	v_mov_b16_e64 v56.l, v168.h
	v_mov_b16_e32 v56.h, v75.l
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 171 28                        ; attention_backward.py:171:28
	v_mov_b16_e64 v58.l, v168.h
	v_mov_b16_e32 v58.h, v74.l
	v_mov_b16_e64 v60.l, v168.h
	v_mov_b16_e32 v60.h, v73.l
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v7
.Ltmp42:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_ldexp_f32 v7, v96, v11
	.loc	1 128 21                        ; attention_backward.py:128:21
	v_cmp_gt_i32_e64 s1, 0x800, v3
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_fmac_f32 v42, v41, v56 :: v_dual_mov_b32 v41, 0
	v_fmac_f32_e32 v44, v43, v54
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp44:
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_log_f32_e32 v7, v7
	.loc	1 264 26 is_stmt 0              ; attention_backward.py:264:26
	v_cmp_lt_f32_e64 s4, 0, v96
	.loc	1 266 9 is_stmt 1               ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
	.loc	1 264 43                        ; attention_backward.py:264:43
	v_sub_f32_e32 v7, v7, v10
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v10, v89, 2, 0
	v_mov_b32_e32 v63, v41
	v_mov_b32_e32 v68, v41
	v_mov_b32_e32 v70, v41
	.loc	1 264 37                        ; attention_backward.py:264:37
	v_dual_add_f32 v7, v97, v7 :: v_dual_add_f32 v4, v4, v9
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v9, v6
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v72, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	1 264 17                        ; attention_backward.py:264:17
	v_cndmask_b32_e64 v169, 0, v7, s4
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v12, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v7, v90, 1, v10
	v_cmp_eq_u32_e64 s4, 0, v90
	v_lshlrev_b32_e32 v13, 9, v91
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v6, v6, v9 :: v_dual_mov_b32 v9, v5
.Ltmp51:
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_store_b32 v7, v169
	s_waitcnt lgkmcnt(0)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v4, v4, v12 :: v_dual_mov_b32 v11, v6
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 176 24                        ; attention_backward.py:176:24
	v_mul_f32_e32 v8, v46, v66
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_barrier
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v3, v4
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v5, v5, v9
.Ltmp57:
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_and_b32 s1, s4, s1
	v_mov_b32_e32 v10, 0x5410
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v6, v6, v11
	v_fmac_f32_e32 v8, v45, v60
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v9, v5
	v_cndmask_b32_e64 v10, 0x1054, v10, s3
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v33, v4, v3
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_dual_mov_b32 v11, v6 :: v_dual_add_nc_u32 v4, 0, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v59, v41
	v_lshl_or_b32 v10, v10, 8, v10
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_fmac_f32_e32 v2, v47, v58
	v_mov_b32_e32 v66, v41
	v_mov_b32_e32 v58, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v60, v41 :: v_dual_add_f32 v35, v6, v11
	v_dual_add_f32 v2, v8, v2 :: v_dual_mov_b32 v11, 0x7632
	v_dual_add_f32 v8, v42, v44 :: v_dual_mov_b32 v65, 0
.Ltmp64:
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_and_b32_e32 v6, 8, v0
	v_mov_b32_e32 v62, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v11, 0x3276, v11, s3
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v67, v41
	v_mov_b32_e32 v64, v41
	v_mov_b32_e32 v50, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v11, v11, 8, v11
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v8, v2
	v_mov_b32_e32 v52, v41
	v_mov_b32_e32 v54, v41
	v_mov_b32_e32 v56, v41
	v_mov_b32_e32 v38, v41
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v71, v41
	v_mov_b32_e32 v69, v41
	v_mov_b32_e32 v40, v41
	s_mov_b32 s93, 0
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v2, v2, v8 :: v_dual_mov_b32 v49, 0
.Ltmp68:
	.loc	1 349 30                        ; attention_backward.py:349:30
	s_lshl_b32 s75, s7, 10
	.loc	1 371 21                        ; attention_backward.py:371:21
	s_lshl_b32 s92, s7, 7
	s_and_b32 s69, s69, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v8, v2
	s_and_b32 s89, s89, 0xffff
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	s_mov_b32 s70, s14
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_mov_b32 s71, s15
	s_mov_b32 s90, s14
	s_mov_b32 s91, s15
	s_mov_b32 s94, 0x76543210
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v2, v2, v8
.Ltmp71:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_lshl_add_u32 v8, v1, 2, 0
	.loc	1 266 18 is_stmt 0              ; attention_backward.py:266:18
	v_or_b32_e32 v1, s6, v1
	v_mov_b32_e32 v37, v41
	v_mov_b32_e32 v61, v41
	v_mov_b32_e32 v51, v41
	.loc	1 266 9                         ; attention_backward.py:266:9
	ds_load_b32 v7, v8
.Ltmp72:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_e32 v8, v2
.Ltmp73:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_add_lshl_u32 v1, v1, s5, 2
	v_mov_b32_e32 v53, v41
	v_mov_b32_e32 v55, v41
	v_mov_b32_e32 v39, v41
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention_backward.py:176:17 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	1 266 9                         ; attention_backward.py:266:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_add_f32_e32 v36, v2, v8
.Ltmp77:
	.loc	1 267 9                         ; attention_backward.py:267:9
	v_and_b32_e32 v2, 24, v0
	v_lshrrev_b32_e32 v3, 1, v2
	v_lshlrev_b32_e32 v12, 1, v2
	v_lshl_or_b32 v2, v2, 6, v92
	.loc	1 266 9                         ; attention_backward.py:266:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v7, v1, s[12:15], 0 offen
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v3, 0, v92, v3
	s_barrier
	v_xor_b32_e32 v2, v2, v12
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention_backward.py:176:17 ] ]
	v_dual_add_f32 v34, v5, v9 :: v_dual_and_b32 v7, 12, v0
.Ltmp79:
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_lshlrev_b32_e32 v5, 4, v91
	.loc	1 267 9                         ; attention_backward.py:267:9
	ds_store_b128 v4, v[33:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v3, v3
	v_lshl_or_b32 v9, v7, 1, v94
	v_lshlrev_b32_e32 v7, 5, v7
	.loc	1 310 21                        ; attention_backward.py:310:21
	v_cmp_gt_i32_e64 s1, s76, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v8, 16, v9
	v_or3_b32 v12, v7, v13, v5
	v_and_b32_e32 v7, 0x760076, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v11, 16, v12
	v_add_nc_u32_e32 v174, 0, v11
	.loc	1 267 9                         ; attention_backward.py:267:9
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v3, v1, s[8:11], 0 offen
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_lshrrev_b32_e32 v1, 1, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshrrev_b32_e32 v3, 2, v90
	v_and_b32_e32 v6, 48, v0
	v_add_nc_u32_e32 v1, 0, v1
	ds_store_b128 v4, v[33:36]
	v_bfe_i32 v4, v0, 3, 1
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v5, v6, 3, v92
	v_add3_u32 v1, v1, v3, v92
	v_lshrrev_b32_e32 v3, 1, v6
	v_and_b32_e32 v4, 0x420, v4
	v_and_b32_e32 v6, 0x540054, v10
	s_barrier
	ds_load_b32 v171, v1
	v_xor_b32_e32 v1, v93, v3
	v_xor_b32_e32 v13, v5, v4
	v_lshl_or_b32 v4, v6, 4, v6
	v_xor_b32_e32 v3, 8, v9
	v_lshl_or_b32 v5, v7, 4, v7
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v9, off offset:88
	scratch_store_b32 off, v12, off offset:92
	v_and_b32_e32 v4, 0x5040504, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v13, off offset:96
	scratch_store_b32 off, v1, off offset:108
	v_add_nc_u32_e32 v1, 0, v3
	v_xor_b32_e32 v9, 24, v9
	scratch_store_b32 off, v4, off offset:100 ; 4-byte Folded Spill
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v4, 0x7060706, v5
	scratch_store_b32 off, v1, off offset:112 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	v_lshl_add_u32 v10, v90, 2, 0
	scratch_store_b32 off, v4, off offset:104 ; 4-byte Folded Spill
	v_xor_b32_e32 v6, 32, v12
	v_xor_b32_e32 v7, 48, v12
	scratch_store_b32 off, v1, off offset:116 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v9
	v_xor_b32_e32 v12, 0x210, v13
	v_dual_mov_b32 v35, v41 :: v_dual_lshlrev_b32 v4, 5, v0
	v_lshl_add_u32 v0, v89, 1, 0
	scratch_store_b32 off, v1, off offset:120 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, v10, v2
	v_add_nc_u32_e32 v182, 0, v6
	v_dual_mov_b32 v34, v41 :: v_dual_add_nc_u32 v183, 0, v7
	v_mov_b32_e32 v36, v41
	scratch_store_b32 off, v1, off offset:124 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v12
	s_clause 0x6                            ; 60-byte Folded Spill
	scratch_store_b64 off, v[22:23], off offset:32
	scratch_store_b128 off, v[147:150], off offset:40
	scratch_store_b128 off, v[151:154], off offset:56
	scratch_store_b64 off, v[129:130], off offset:72
	scratch_store_b32 off, v112, off offset:80
	scratch_store_b32 off, v139, off offset:84
	scratch_store_b32 off, v1, off offset:128
	v_add_nc_u32_e32 v1, 0, v4
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 274 28                        ; attention_backward.py:274:28
	scratch_load_b32 v1, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v42, v41 :: v_dual_add_nc_u32 v73, s93, v179
	.loc	1 347 36                        ; attention_backward.py:347:36
	s_lshr_b32 s3, s93, 1
	.loc	1 376 24                        ; attention_backward.py:376:24
	s_lshr_b32 s4, s93, 4
	.loc	1 351 21                        ; attention_backward.py:351:21
	s_add_i32 s3, s3, s75
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_add_i32 s4, s4, s92
	.loc	1 275 21                        ; attention_backward.py:275:21
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[33:36], off
	scratch_store_b128 off, v[37:40], off offset:16
	.loc	1 374 21                        ; attention_backward.py:374:21
	s_mul_i32 s4, s4, s78
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_mov_b32_e32 v46, v41
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_add_lshl_u32 v4, s4, v176, 1
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v75, s93, v146, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v80, s93, v112, 1
	v_add_lshl_u32 v76, s93, v170, 1
	v_add_lshl_u32 v77, s93, v158, 1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_cndmask_b32_e64 v6, 0x80000000, v4, s2
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_add_lshl_u32 v78, s93, v180, 1
	v_add_lshl_u32 v79, s93, v181, 1
	v_add_lshl_u32 v81, s93, v175, 1
	v_add_lshl_u32 v82, s93, v139, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v16.h, v168.h
	v_dual_mov_b32 v33, v131 :: v_dual_mov_b32 v38, v136
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v47, v41 :: v_dual_mov_b32 v34, v132
	v_dual_mov_b32 v35, v133 :: v_dual_mov_b32 v40, v138
	v_mov_b32_e32 v37, v135
	v_mov_b32_e32 v39, v137
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v91.h, v168.h
	v_mov_b16_e64 v97.h, v168.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v99.h, v168.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v95.h, v168.h
	v_mov_b16_e64 v96.h, v168.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v98.h, v168.h
	v_mov_b16_e64 v93.h, v168.h
	v_mov_b16_e64 v92.h, v168.h
	v_mov_b16_e64 v109.h, v168.h
	v_mov_b16_e64 v110.h, v168.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_mov_b16_e64 v94.h, v168.h
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v108.h, v168.h
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_dual_mov_b32 v43, v41 :: v_dual_mov_b32 v36, v134
	v_dual_mov_b32 v145, v128 :: v_dual_mov_b32 v140, v123
	v_dual_mov_b32 v144, v127 :: v_dual_mov_b32 v143, v126
	v_mov_b32_e32 v138, v121
	v_mov_b32_e32 v142, v125
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, 0, v1
	.loc	1 393 17                        ; attention_backward.py:393:17
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v44, v41 :: v_dual_add_nc_u32 v89, 0, v1
	.loc	1 382 31                        ; attention_backward.py:382:31
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v45, v41 :: v_dual_add_nc_u32 v90, 0, v1
	.loc	1 351 21                        ; attention_backward.py:351:21
	v_mad_u64_u32 v[1:2], null, s3, s78, v[177:178]
	.loc	1 275 21                        ; attention_backward.py:275:21
	v_mad_u64_u32 v[2:3], null, v73, s77, v[178:179]
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v3, 1, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	buffer_load_b64 v[4:5], v2, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v48, v41 :: v_dual_and_b32 v9, 15, v5
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v8, v4, 16, 4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v113, 24, v5
	s_waitcnt vmcnt(0)
	ds_store_b64 v2, v[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 32                        ; attention_backward.py:350:32
	buffer_load_b64 v[10:11], v1, s[68:71], 0 offen
	.loc	1 373 36                        ; attention_backward.py:373:36
	buffer_load_b128 v[83:86], v6, s[88:91], 0 offen
	.loc	1 290 33                        ; attention_backward.py:290:33
	buffer_load_u16 v114, v3, s[84:87], 0 offen
	.loc	1 274 28                        ; attention_backward.py:274:28
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
	ds_load_b64 v[12:13], v74
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_clause 0x7
	buffer_load_u16 v107, v75, s[84:87], 0 offen
	buffer_load_u16 v106, v76, s[84:87], 0 offen
	buffer_load_u16 v105, v77, s[84:87], 0 offen
	buffer_load_u16 v104, v78, s[84:87], 0 offen
	buffer_load_u16 v103, v79, s[84:87], 0 offen
	buffer_load_u16 v102, v80, s[84:87], 0 offen
	buffer_load_u16 v100, v81, s[84:87], 0 offen
	buffer_load_u16 v101, v82, s[84:87], 0 offen
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v2.l, v5.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_bfe_u32 v75, v4, 8, 4
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_lshrrev_b32_e32 v76, 8, v5
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v116, -16, v8
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_lshrrev_b64 v[6:7], 24, v[4:5]
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v2.h, v5.h, 15
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v7, v4, 0, 8
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_bfe_u32 v77, v5, 8, 4
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v117, -16, v9
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s4, 7, v2.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v119, -16, v75
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v2.l, v76.l, 15
	.loc	1 304 27 is_stmt 0              ; attention_backward.py:304:27
	v_bfe_u32 v73, v5, 16, 4
	v_bfe_u32 v78, v5, 24, 4
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_alignbit_b32 v79, v5, v4, 24
	v_mov_b16_e32 v16.l, v4.h
	.loc	1 304 27                        ; attention_backward.py:304:27
	v_and_b32_e32 v81, 15, v4
	.loc	1 304 28 is_stmt 0              ; attention_backward.py:304:28
	v_and_b16 v3.h, v4.l, 15
	.loc	1 305 28 is_stmt 1              ; attention_backward.py:305:28
	v_bfe_u32 v82, v4, 20, 4
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s5, 7, v2.h
	.loc	1 306 50 is_stmt 0              ; attention_backward.py:306:50
	v_or_b32_e32 v120, -16, v77
	.loc	1 304 28 is_stmt 1              ; attention_backward.py:304:28
	v_and_b16 v2.h, v113.l, 15
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v117, v9, v117, s4
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v80, v5, 0, 8
	v_mov_b16_e32 v91.l, v5.h
	.loc	1 305 28                        ; attention_backward.py:305:28
	v_bfe_u32 v115, v5, 20, 4
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v118, -16, v73
	v_mov_b32_e32 v141, v124
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v5.h, v6.l, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v132, v117
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v3.l, 4, v5.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v73, v73, v118, s5
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v5.l, v80.l
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v80, -16, v81
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s6, 7, v3.h
	.loc	1 305 30 is_stmt 1              ; attention_backward.py:305:30
	v_lshrrev_b16 v3.h, 4, v6.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v133, v73
	.loc	1 361 29                        ; attention_backward.py:361:29
	s_waitcnt vmcnt(11)
	v_bfe_u32 v156, v10, 8, 4
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v157, v10, 20, 4
	.loc	1 290 33                        ; attention_backward.py:290:33
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v114, 16, v114
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(8)
	ds_load_b64 v[14:15], v1
	scratch_load_b32 v1, off, off offset:116 ; 4-byte Folded Reload
	v_lshrrev_b32_e32 v74, 8, v4
	v_mov_b32_e32 v139, v122
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v121, -16, v78
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v132, v132, v114 :: v_dual_and_b32 v79, 15, v79
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v122, v16, 0, 8
	v_bfe_i32 v124, v91, 0, 8
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v123, -16, v82
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 306 50                        ; attention_backward.py:306:50
	v_or_b32_e32 v118, -16, v79
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v125, -16, v115
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v126, v6, 0, 8
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e32 v16.l, v10.h
	v_bfe_i32 v198, v11, 0, 8
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v192, v11, 16, 4
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v6.h, v11.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v9.l, v126.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v194, 24, v11
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v195, v11, 24, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v196, 8, v11
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v197, v11, 8, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_mov_b16_e32 v91.l, v11.h
	.loc	1 362 30                        ; attention_backward.py:362:30
	v_bfe_u32 v199, v11, 20, 4
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v202, v16, 0, 8
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v201, -16, v156
	v_or_b32_e32 v204, -16, v192
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v203, -16, v157
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v206, -16, v195
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v96.l, 4, v194.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v212, 0, v132, s1
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v207, -16, v197
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v208, -16, v199
	.loc	1 274 28                        ; attention_backward.py:274:28
	s_waitcnt vmcnt(0)
	ds_load_b64 v[87:88], v1
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[111:112], v1
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v1.h, v4.h, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v1.l, 4, v4.l
	v_lshrrev_b16 v4.l, 4, v74.l
	v_lshrrev_b16 v4.h, 4, v76.l
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt lgkmcnt(0)
	.loc	1 306 36                        ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v1.h
	.loc	1 304 28                        ; attention_backward.py:304:28
	v_and_b16 v1.h, v74.l, 15
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v168.l, v1.l, 15
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v1.l, v7.l
	.loc	1 274 28                        ; attention_backward.py:274:28
	v_bfe_i32 v7, v74, 0, 8
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v116, v8, v116, s3
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v1.h
	.loc	1 274 28 is_stmt 1              ; attention_backward.py:274:28
	v_bfe_i32 v74, v76, 0, 8
	v_bfe_i32 v76, v113, 0, 8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s7, 0, v1.l
	v_mov_b16_e32 v1.l, v7.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v75, v75, v119, s3
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v2.l
	.loc	1 307 37 is_stmt 1              ; attention_backward.py:307:37
	v_mov_b16_e32 v7.l, v76.l
	v_mov_b16_e32 v8.l, v122.l
	v_mov_b16_e32 v2.l, v124.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v131, v116
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v76, v77, v120, s3
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v2.h
	.loc	1 393 17 is_stmt 1              ; attention_backward.py:393:17
	s_barrier
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_mov_b16_e32 v6.l, v74.l
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v74, v81, v80, s6
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v135, v75
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v77, v78, v121, s3
	.loc	1 306 36 is_stmt 0              ; attention_backward.py:306:36
	v_cmp_lt_u16_e64 s3, 7, v5.h
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v136, v76
	v_cvt_f32_i32_e32 v134, v74
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v127, -16, v168
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v150, v77
	.loc	1 306 27                        ; attention_backward.py:306:27
	v_cndmask_b32_e64 v116, v79, v118, s3
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v8.l
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[12:13], v[184:185], v[41:48] neg_lo:[1,1,0]
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v81, v168, v127, s7
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b64 v[12:13], 24, v[10:11]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v8, v82, v123, s3
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s3, 0, v2.l
	.loc	1 280 29 is_stmt 1              ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[14:15], v[22:23], v[73:80] neg_lo:[1,1,0]
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v151, v81
	v_cvt_f32_i32_e32 v152, v116
	v_cvt_f32_i32_e32 v153, v8
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v2, v115, v125, s3
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[87:88], v[172:173], v[73:80] neg_lo:[1,1,0]
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_lshrrev_b32_e32 v14, 8, v10
	v_alignbit_b32 v15, v11, v10, 24
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v1.h, v10.h, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v154, v2
	scratch_load_b32 v2, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 280 29                        ; attention_backward.py:280:29
	v_wmma_i32_16x16x16_iu4 v[73:80], v[111:112], v[129:130], v[73:80] neg_lo:[1,1,0]
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_bfe_u32 v13, v10, 16, 4
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v7.h, 4, v11.l
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v5.h, v11.h, 15
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v136, v136, v114 :: v_dual_and_b32 v193, 15, v11
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_cvt_f32_i32_e32 v191, v73
	v_cvt_f32_i32_e32 v190, v74
	v_cvt_f32_i32_e32 v189, v75
	v_cvt_f32_i32_e32 v188, v76
	v_cvt_f32_i32_e32 v187, v77
	v_cvt_f32_i32_e32 v186, v78
	v_cvt_f32_i32_e32 v111, v79
	v_cvt_f32_i32_e32 v112, v80
	.loc	1 361 29                        ; attention_backward.py:361:29
	v_and_b32_e32 v155, 15, v10
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v8.l, v14.l, 15
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v11, -16, v13
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s3, 7, v1.h
	.loc	1 362 32 is_stmt 1              ; attention_backward.py:362:32
	v_lshrrev_b16 v1.h, 4, v14.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v14, v14, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v97.l, v7.h, 15
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s5, 7, v5.h
	.loc	1 363 54 is_stmt 0              ; attention_backward.py:363:54
	v_or_b32_e32 v205, -16, v193
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s6, 7, v6.h
	.loc	1 360 76 is_stmt 1              ; attention_backward.py:360:76
	v_and_b16 v5.h, v194.l, 15
	v_and_b16 v6.h, v196.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v7.h, 4, v196.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v196, v196, 0, 8
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v8.h, v12.l, 15
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v209, v12, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v9.h, 4, v12.l
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v210, v13, v11, s3
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e32 v11.l, v14.l
	v_mov_b16_e64 v12.l, v202.l
	.loc	1 364 56 is_stmt 0              ; attention_backward.py:364:56
	v_or_b32_e32 v202, -16, v97
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_mul_f32_e32 v151, v151, v114
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v194, v194, 0, 8
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v132, v193, v205, s6
	v_cndmask_b32_e64 v193, v192, v204, s5
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v95.l, v7.h, 15
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v14.l, v196.l
	v_cmp_gt_i16_e64 s15, 0, v11.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v150, v150, v114 :: v_dual_and_b32 v15, 15, v15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v151, 0, v151, s1
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v13.l, v194.l
	v_cmp_gt_i16_e64 s16, 0, v14.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v194, v193
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v94.l, v1.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v168.l, v151.h
	v_cmp_o_f32_e64 s11, v151, v151
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v152, v152, v114
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v136, 0, v136, s1
	v_cmp_o_f32_e64 s6, v212, v212
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v192, v132
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v150, 0, v150, s1
	v_cndmask_b32_e64 v152, 0, v152, s1
	v_cmp_o_f32_e64 s5, v136, v136
	.loc	1 393 17                        ; attention_backward.py:393:17
	s_waitcnt vmcnt(0)
	ds_store_b128 v2, v[83:86]
	ds_store_b128 v2, v[83:86] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 36                        ; attention_backward.py:373:36
	ds_load_b128 v[119:122], v174
	ds_load_b128 v[81:84], v174 offset:64
	ds_load_b128 v[123:126], v182
	ds_load_b128 v[77:80], v182 offset:64
	ds_load_b128 v[127:130], v183
	ds_load_b128 v[73:76], v183 offset:64
	ds_load_b128 v[115:118], v89
	ds_load_b128 v[85:88], v89 offset:64
	.loc	1 360 76                        ; attention_backward.py:360:76
	v_and_b16 v2.l, v10.l, 15
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_lshrrev_b16 v2.h, 4, v10.l
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v10, v10, 0, 8
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v153, v153, v114
	v_mul_f32_e32 v154, v154, v114
	.loc	1 363 38                        ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v2.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v131, v131, v114
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e32 v2.l, v10.l
	v_mov_b16_e64 v10.l, v198.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v153, 0, v153, s1
	.loc	1 350 32                        ; attention_backward.py:350:32
	v_bfe_i32 v198, v91, 0, 8
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v91.l, v9.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v211, 0, v131, s1
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt lgkmcnt(7)
	v_and_b32_e32 v228, 0xffff0000, v120
	v_and_b32_e32 v255, 0xffff0000, v121
	v_and_b32_e32 v218, 0xffff0000, v119
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v229, 0xffff0000, v78
	s_waitcnt lgkmcnt(3)
	v_lshlrev_b32_e32 v25, 16, v128
	v_and_b32_e32 v28, 0xffff0000, v129
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v234, 16, v73
	v_and_b32_e32 v235, 0xffff0000, v73
	v_lshlrev_b32_e32 v236, 16, v74
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v73, v159, v191 :: v_dual_and_b32 v238, 0xffff0000, v74
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v74, 16, v107
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v30, 0xffff0000, v130
	v_lshlrev_b32_e32 v239, 16, v75
	v_and_b32_e32 v240, 0xffff0000, v75
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v75, 16, v106
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v73, v73, v74, -v169
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v74, v159, v190 :: v_dual_lshlrev_b32 v241, 16, v76
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v242, 0xffff0000, v76
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v76, 16, v105
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v10.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v74, v74, v75, -v169
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v75, v159, v189
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v99.l, v153.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v134, v134, v114
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_mov_b16_e64 v10.l, v198.l
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v11, v97, v202, s3
	.loc	1 345 58 is_stmt 1              ; attention_backward.py:345:58
	v_fma_f32 v75, v75, v76, -v169
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v76, v159, v188
	.loc	1 363 54                        ; attention_backward.py:363:54
	v_or_b32_e32 v200, -16, v155
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v12.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v99, 1, v99
	v_cndmask_b32_e64 v204, 0, v134, s1
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v97, -16, v95
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v155, v155, v200, s4
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v8.l
	.loc	1 364 30 is_stmt 1              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v12, v157, v203, s3
	.loc	1 364 39 is_stmt 0              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v10.l
	.loc	1 363 54 is_stmt 1              ; attention_backward.py:363:54
	v_or_b32_e32 v200, -16, v15
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v198, -16, v96
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v134, v156, v201, s4
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v5.h
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_mov_b16_e64 v8.l, v209.l
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v10, v199, v208, s3
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s3, 0, v13.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_mov_b16_e64 v98.l, v204.h
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v156, v195, v206, s4
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v6.h
	.loc	1 364 39 is_stmt 1              ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s14, 0, v8.l
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v13, v96, v198, s3
	.loc	1 382 31 is_stmt 1              ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v202, v12
	v_cvt_f32_i32_e32 v195, v156
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v196, v197, v207, s4
	.loc	1 363 38 is_stmt 0              ; attention_backward.py:363:38
	v_cmp_lt_u16_e64 s4, 7, v8.h
	.loc	1 364 30 is_stmt 1              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v156, v95, v97, s16
	.loc	1 373 36                        ; attention_backward.py:373:36
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v95, 0xffff0000, v115
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v154, 0, v154, s1
	v_and_b32_e32 v8, 1, v168
	.loc	1 363 29                        ; attention_backward.py:363:29
	v_cndmask_b32_e64 v14, v15, v200, s4
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v15, -16, v91
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v168.l, v4.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v16.l, v154.h
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v135, v135, v114
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v193, v196
	v_cvt_f32_i32_e32 v196, v11
	v_cvt_f32_i32_e32 v198, v10
	v_cvt_f32_i32_e32 v199, v13
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v10, 1, v16
	v_cndmask_b32_e64 v135, 0, v135, s1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v13, 16, v117
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v11, 1, v98
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v12, v91, v15, s14
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v15, -16, v168
	.loc	1 307 37 is_stmt 0              ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s14, 0, v1.l
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s10, v204, v204
	v_add3_u32 v1, v204, v11, 0x7fff
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v203, v12
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v133, v133, v114 :: v_dual_lshlrev_b32 v96, 16, v116
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v12, v168, v15, s14
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v168.l, v135.h
	v_cmp_o_f32_e64 s13, v154, v154
	v_add3_u32 v8, v151, v8, 0x7fff
	v_add3_u32 v10, v154, v10, 0x7fff
	v_cndmask_b16 v204.l, 0x7fff, v1.h, s10
	v_and_b32_e32 v1, 1, v168
	v_mov_b16_e64 v168.l, v211.h
	v_cndmask_b32_e64 v213, 0, v133, s1
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v133, v210
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s12, v153, v153
	v_cmp_o_f32_e64 s9, v135, v135
	v_add3_u32 v11, v153, v99, 0x7fff
	v_cndmask_b16 v204.h, 0x7fff, v8.h, s11
	v_cndmask_b16 v210.h, 0x7fff, v10.h, s13
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v8, v12
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v10, 1, v168
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v168.l, v3.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v1, v135, v1, 0x7fff
	v_cndmask_b16 v206.h, 0x7fff, v11.h, s12
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v8, v8, v114
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s8, v211, v211
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v11, -16, v168
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v205.l, 0x7fff, v1.h, s9
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s9, 0, v9.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v1, 0, v8, s1
	v_add3_u32 v10, v211, v10, 0x7fff
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v147, 16, v122
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s7, v152, v152
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v8, v168, v11, s9
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v168.l, v152.h
	v_mov_b16_e32 v93.l, v1.h
	v_cndmask_b16 v206.l, 0x7fff, v10.h, s8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s9, 0, v5.l
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v217, 16, v119
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s8, v1, v1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v149, 0xffff0000, v122
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v8, v8, v114 :: v_dual_lshlrev_b32 v19, 16, v125
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v9, 1, v168
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v168.l, v3.l, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v3, 1, v93
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v224, 16, v77
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v225, 0xffff0000, v77
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v10, -16, v168
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v1, v1, v3, 0x7fff
	v_add3_u32 v3, v152, v9, 0x7fff
	v_mov_b16_e32 v92.l, v8.h
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v77, 16, v104
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v5, v168, v10, s9
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v168.l, v212.h
	v_cndmask_b16 v205.h, 0x7fff, v1.h, s8
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s8, 0, v6.l
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v207.l, 0x7fff, v3.h, s7
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v3, v5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v1, 1, v168
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_and_b16 v168.l, v4.h, 15
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v5, 1, v92
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v16, 16, v118
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s7, v8, v8
	v_add3_u32 v1, v212, v1, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v4, -16, v168
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v5, v8, v5, 0x7fff
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v226, 16, v78
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v76, v76, v77, -v169
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v208.l, 0x7fff, v1.h, s6
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v4, v168, v4, s8
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v168.l, v136.h
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_mul_f32_e32 v77, v159, v187
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v78, 16, v103
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v137, 16, v123
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v1, 1, v168
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v227, 16, v120
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e64 v168.l, v213.h
	v_cndmask_b16 v207.h, 0x7fff, v5.h, s7
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_mul_f32_e32 v4, v4, v114
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v1, v136, v1, 0x7fff
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v77, v77, v78, -v169
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v78, v159, v186 :: v_dual_and_b32 v5, 1, v168
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cmp_o_f32_e64 s4, v213, v213
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v209.l, 0x7fff, v1.h, s5
	v_cndmask_b32_e64 v1, 0, v4, s1
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(0)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v5, v213, v5, 0x7fff
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_barrier
	v_cvt_f32_i32_e32 v132, v134
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v109.l, v1.h
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v134, v14
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v210.l, 0x7fff, v5.h, s4
	v_cmp_o_f32_e64 s4, v1, v1
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v3, v3, v114 :: v_dual_and_b32 v14, 0xffff0000, v117
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v5, 1, v109
	.loc	1 305 30                        ; attention_backward.py:305:30
	v_lshrrev_b16 v168.l, 4, v113.l
	.loc	1 307 37                        ; attention_backward.py:307:37
	v_cmp_gt_i16_e64 s5, 0, v7.l
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v131, v155
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_add3_u32 v1, v1, v5, 0x7fff
	.loc	1 307 52                        ; attention_backward.py:307:52
	v_or_b32_e32 v8, -16, v168
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v155, -16, v94
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v197, v156
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_mov_b16_e32 v110.l, v3.h
	v_cndmask_b16 v209.h, 0x7fff, v1.h, s4
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s6, v3, v3
	.loc	1 307 28                        ; attention_backward.py:307:28
	v_cndmask_b32_e64 v4, v168, v8, s5
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_and_b32_e32 v6, 1, v110
	v_mov_b16_e64 v168.l, v150.h
	.loc	1 364 39                        ; attention_backward.py:364:39
	v_cmp_gt_i16_e64 s5, 0, v2.l
	.loc	1 364 30 is_stmt 0              ; attention_backward.py:364:30
	v_cndmask_b32_e64 v155, v94, v155, s15
	.loc	1 311 21 is_stmt 1              ; attention_backward.py:311:21
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v3, v3, v6, 0x7fff
	v_cmp_o_f32_e64 s3, v150, v150
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v94, 16, v115
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v201, v155
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v98, 0xffff0000, v116
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v208.h, 0x7fff, v3.h, s6
	v_and_b32_e32 v3, 1, v168
	.loc	1 362 32                        ; attention_backward.py:362:32
	v_and_b16 v168.l, v2.h, 15
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v215, 0xffff0000, v118
	.loc	1 311 21                        ; attention_backward.py:311:21
	v_dual_mul_f32 v4, v4, v114 :: v_dual_lshlrev_b32 v237, 16, v121
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v148, 0xffff0000, v123
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 364 56                        ; attention_backward.py:364:56
	v_or_b32_e32 v6, -16, v168
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v17, 16, v124
	v_and_b32_e32 v18, 0xffff0000, v124
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_store_b128 v90, v[131:134]
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v3, v150, v3, 0x7fff
	.loc	1 364 30                        ; attention_backward.py:364:30
	v_cndmask_b32_e64 v2, v168, v6, s5
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v21, 16, v126
	v_lshlrev_b32_e32 v23, 16, v127
	v_and_b32_e32 v26, 0xffff0000, v128
	v_lshlrev_b32_e32 v29, 16, v130
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_cvt_f32_i32_e32 v200, v2
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b32_e64 v15, 0, v4, s1
	v_cndmask_b16 v211.l, 0x7fff, v3.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v108.l, v15.h
	v_cmp_o_f32_e64 s3, v15, v15
	.loc	1 382 31                        ; attention_backward.py:382:31
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[200:203]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[200:203], v89
	ds_load_b128 v[243:246], v89 offset:64
	ds_load_b128 v[247:250], v174
	ds_load_b128 v[121:124], v174 offset:64
	ds_load_b128 v[251:254], v182
	ds_load_b128 v[117:120], v182 offset:64
	ds_load_b128 v[150:153], v183
	ds_load_b128 v[113:116], v183 offset:64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v90, v[192:195]
	ds_store_b128 v1, v[196:199]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[90:93], v89
	ds_load_b128 v[154:157], v89 offset:64
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v20, 0xffff0000, v125
	v_and_b32_e32 v24, 0xffff0000, v127
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v198, v200, v94 :: v_dual_and_b32 v31, 1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_add3_u32 v15, v15, v31, 0x7fff
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v195, v201, v95
	v_mul_f32_e32 v193, v202, v96
	v_dual_mul_f32 v191, v203, v98 :: v_dual_mul_f32 v202, v250, v228
	.loc	1 309 31                        ; attention_backward.py:309:31
	v_cndmask_b16 v211.h, 0x7fff, v15.h, s3
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v220, 16, v83
	v_lshlrev_b32_e32 v222, 16, v84
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s33, v198, v198
	v_cmp_o_f32_e64 s34, v195, v195
	v_cmp_o_f32_e64 s35, v193, v193
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v190, v90, v13
	v_dual_mul_f32 v188, v92, v16 :: v_dual_mul_f32 v13, v159, v111
	.loc	1 290 33 is_stmt 1              ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v16, 16, v100
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v187, v93, v215 :: v_dual_and_b32 v22, 0xffff0000, v126
	ds_load_b128 v[125:128], v183 offset:64
	v_mul_f32_e32 v189, v91, v14
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v13, v13, v16, -v169
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v16, v73
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v27, 16, v129
	.loc	1 382 31                        ; attention_backward.py:382:31
	ds_load_b128 v[1:4], v174
	ds_load_b128 v[133:136], v174 offset:64
	ds_load_b128 v[5:8], v182
	ds_load_b128 v[129:132], v182 offset:64
	ds_load_b128 v[9:12], v183
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v89, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v216, 16, v82
	.loc	1 299 21                        ; attention_backward.py:299:21
	v_dual_mul_f32 v14, v159, v112 :: v_dual_lshlrev_b32 v15, 16, v86
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v228, v151, v24
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v13, v13
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v232, 16, v80
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s36, v191, v191
	v_cmp_o_f32_e64 s37, v190, v190
	v_cmp_o_f32_e64 s3, v189, v189
	v_cmp_o_f32_e64 s4, v188, v188
	v_cmp_o_f32_e64 s5, v187, v187
	v_cmp_o_f32_e64 s9, v202, v202
	.loc	1 382 31 is_stmt 0              ; attention_backward.py:382:31
	v_dual_mul_f32 v197, v2, v255 :: v_dual_mul_f32 v200, v1, v237
	v_dual_mul_f32 v196, v8, v22 :: v_dual_mul_f32 v201, v6, v20
	v_mul_f32_e32 v237, v150, v23
	v_mul_f32_e32 v23, v131, v232
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s10, v200, v200
	v_cmp_o_f32_e64 s11, v197, v197
	v_cmp_o_f32_e64 s19, v201, v201
	v_cmp_o_f32_e64 s21, v196, v196
	v_cmp_o_f32_e64 s22, v237, v237
	v_cmp_o_f32_e64 s23, v228, v228
	.loc	1 309 31 is_stmt 1              ; attention_backward.py:309:31
	s_waitcnt vmcnt(0)
	ds_store_b128 v89, v[204:207]
	ds_store_b128 v89, v[208:211] offset:16
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_dual_mov_b32 v96, v48 :: v_dual_mov_b32 v95, v47
	v_dual_mov_b32 v94, v46 :: v_dual_mov_b32 v93, v45
	v_dual_mov_b32 v92, v44 :: v_dual_mov_b32 v91, v43
	v_dual_mov_b32 v90, v42 :: v_dual_mov_b32 v89, v41
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v44, v75
	.loc	1 290 33                        ; attention_backward.py:290:33
	v_lshlrev_b32_e32 v42, 16, v101
	.loc	1 345 45                        ; attention_backward.py:345:45
	v_exp_f32_e32 v43, v74
	v_exp_f32_e32 v45, v76
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v32, 16, v87
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v206, v248, v218
	v_dual_mul_f32 v199, v7, v21 :: v_dual_lshlrev_b32 v230, 16, v79
	v_dual_mul_f32 v211, v12, v30 :: v_dual_mul_f32 v30, v126, v240
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_dual_cndmask_b32 v44, 0, v44 :: v_dual_and_b32 v31, 0xffff0000, v86
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v212, v11, v29
	v_mul_f32_e32 v11, v123, v216
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v14, v14, v42, -v169
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v209, v252, v148 :: v_dual_and_b32 v86, 0xffff0000, v87
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v43, 0, v43, vcc_lo
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v46, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v14, v14
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_lshlrev_b32_e32 v97, 16, v85
	v_and_b32_e32 v85, 0xffff0000, v85
	v_lshlrev_b32_e32 v87, 16, v88
	v_and_b32_e32 v88, 0xffff0000, v88
	v_and_b32_e32 v219, 0xffff0000, v82
	v_lshlrev_b32_e32 v213, 16, v81
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v6, v155, v86 :: v_dual_and_b32 v221, 0xffff0000, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v8, v157, v88
	v_mul_f32_e32 v12, v124, v219
	.loc	1 373 36                        ; attention_backward.py:373:36
	v_and_b32_e32 v231, 0xffff0000, v79
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v208, v247, v217 :: v_dual_lshlrev_b32 v79, 16, v102
	v_mul_f32_e32 v204, v249, v227
	v_mul_f32_e32 v194, v3, v147
	v_mul_f32_e32 v192, v4, v149
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 345 58                        ; attention_backward.py:345:58
	v_fma_f32 v78, v78, v79, -v169
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v215, v10, v28
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v42, 0, v16, vcc_lo
	v_cndmask_b32_e32 v46, 0, v46, vcc_lo
	v_cndmask_b32_e32 v186, 0, v14, vcc_lo
	.loc	1 345 45 is_stmt 0              ; attention_backward.py:345:45
	v_exp_f32_e32 v47, v78
	.loc	1 373 36 is_stmt 1              ; attention_backward.py:373:36
	v_and_b32_e32 v214, 0xffff0000, v81
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v210, v251, v137
	v_mul_f32_e32 v207, v253, v17
	v_mul_f32_e32 v205, v254, v18
	v_mul_f32_e32 v203, v5, v19
	v_dual_mul_f32 v227, v152, v25 :: v_dual_mul_f32 v218, v153, v26
	v_mul_f32_e32 v217, v9, v27
	v_mul_f32_e32 v1, v243, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 345 29                        ; attention_backward.py:345:29
	v_cndmask_b32_e32 v47, 0, v47, vcc_lo
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_dual_mul_f32 v10, v122, v214 :: v_dual_and_b32 v223, 0xffff0000, v84
	v_dual_mul_f32 v4, v246, v31 :: v_dual_and_b32 v233, 0xffff0000, v80
	v_mul_f32_e32 v9, v121, v213
	v_mul_f32_e32 v14, v134, v221
	v_dual_mul_f32 v16, v136, v223 :: v_dual_mul_f32 v17, v117, v224
	v_dual_mul_f32 v18, v118, v225 :: v_dual_mul_f32 v19, v119, v226
	v_mul_f32_e32 v20, v120, v229
	v_mul_f32_e32 v22, v130, v231
	v_dual_mul_f32 v24, v132, v233 :: v_dual_mul_f32 v25, v113, v234
	v_dual_mul_f32 v26, v114, v235 :: v_dual_mul_f32 v27, v115, v236
	v_dual_mul_f32 v28, v116, v238 :: v_dual_mul_f32 v29, v125, v239
	v_mul_f32_e32 v31, v127, v241
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v97, v198, 16, 1
	v_bfe_u32 v113, v195, 16, 1
	v_bfe_u32 v114, v193, 16, 1
	v_bfe_u32 v115, v191, 16, 1
	v_bfe_u32 v116, v190, 16, 1
	v_bfe_u32 v117, v189, 16, 1
	v_bfe_u32 v118, v188, 16, 1
	v_bfe_u32 v119, v187, 16, 1
	v_bfe_u32 v120, v208, 16, 1
	v_bfe_u32 v121, v206, 16, 1
	v_bfe_u32 v122, v204, 16, 1
	v_bfe_u32 v123, v202, 16, 1
	v_bfe_u32 v124, v200, 16, 1
	v_bfe_u32 v125, v197, 16, 1
	v_bfe_u32 v126, v194, 16, 1
	v_bfe_u32 v127, v192, 16, 1
	.loc	1 345 29 is_stmt 1              ; attention_backward.py:345:29
	v_cndmask_b32_e32 v45, 0, v45, vcc_lo
	v_dual_cndmask_b32 v48, 0, v13 :: v_dual_mul_f32 v3, v245, v15
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v5, v154, v32
	v_dual_mul_f32 v13, v133, v220 :: v_dual_mul_f32 v32, v128, v242
	v_mul_f32_e32 v15, v135, v222
	v_mul_f32_e32 v21, v129, v230
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s6, v208, v208
	v_cmp_o_f32_e64 s7, v206, v206
	v_cmp_o_f32_e64 s8, v204, v204
	v_cmp_o_f32_e64 s12, v194, v194
	v_cmp_o_f32_e64 s13, v192, v192
	v_bfe_u32 v128, v210, 16, 1
	v_bfe_u32 v129, v209, 16, 1
	v_bfe_u32 v130, v207, 16, 1
	v_bfe_u32 v131, v205, 16, 1
	v_bfe_u32 v132, v203, 16, 1
	v_bfe_u32 v133, v201, 16, 1
	v_bfe_u32 v134, v199, 16, 1
	v_bfe_u32 v135, v196, 16, 1
	v_bfe_u32 v136, v237, 16, 1
	v_bfe_u32 v137, v228, 16, 1
	v_add3_u32 v97, v198, v97, 0x7fff
	v_bfe_u32 v147, v227, 16, 1
	v_add3_u32 v113, v195, v113, 0x7fff
	v_bfe_u32 v148, v218, 16, 1
	v_add3_u32 v114, v193, v114, 0x7fff
	v_bfe_u32 v149, v217, 16, 1
	v_add3_u32 v115, v191, v115, 0x7fff
	v_bfe_u32 v150, v215, 16, 1
	v_add3_u32 v116, v190, v116, 0x7fff
	v_bfe_u32 v151, v212, 16, 1
	v_add3_u32 v117, v189, v117, 0x7fff
	v_bfe_u32 v152, v211, 16, 1
	v_add3_u32 v118, v188, v118, 0x7fff
	v_add3_u32 v119, v187, v119, 0x7fff
	v_add3_u32 v120, v208, v120, 0x7fff
	v_add3_u32 v121, v206, v121, 0x7fff
	v_add3_u32 v122, v204, v122, 0x7fff
	v_add3_u32 v123, v202, v123, 0x7fff
	v_add3_u32 v124, v200, v124, 0x7fff
	v_add3_u32 v125, v197, v125, 0x7fff
	v_add3_u32 v126, v194, v126, 0x7fff
	v_add3_u32 v127, v192, v127, 0x7fff
	v_cmp_o_f32_e64 s14, v210, v210
	v_cmp_o_f32_e64 s15, v209, v209
	v_cmp_o_f32_e64 s16, v207, v207
	v_cmp_o_f32_e64 s17, v205, v205
	v_cmp_o_f32_e64 s18, v203, v203
	v_cmp_o_f32_e64 s20, v199, v199
	v_cmp_o_f32_e64 s24, v227, v227
	v_cmp_o_f32_e64 s25, v218, v218
	v_cmp_o_f32_e64 s26, v217, v217
	v_cmp_o_f32_e64 s27, v215, v215
	v_cmp_o_f32_e64 s28, v212, v212
	v_cmp_o_f32_e64 s29, v211, v211
	v_add3_u32 v128, v210, v128, 0x7fff
	v_add3_u32 v129, v209, v129, 0x7fff
	v_add3_u32 v130, v207, v130, 0x7fff
	v_add3_u32 v131, v205, v131, 0x7fff
	v_add3_u32 v132, v203, v132, 0x7fff
	v_add3_u32 v133, v201, v133, 0x7fff
	v_add3_u32 v134, v199, v134, 0x7fff
	v_add3_u32 v135, v196, v135, 0x7fff
	v_add3_u32 v136, v237, v136, 0x7fff
	v_add3_u32 v137, v228, v137, 0x7fff
	v_add3_u32 v147, v227, v147, 0x7fff
	v_add3_u32 v148, v218, v148, 0x7fff
	v_add3_u32 v149, v217, v149, 0x7fff
	v_add3_u32 v150, v215, v150, 0x7fff
	v_add3_u32 v151, v212, v151, 0x7fff
	v_add3_u32 v152, v211, v152, 0x7fff
	v_cndmask_b16 v113.l, 0x7fff, v97.h, s33
	v_cndmask_b16 v113.h, 0x7fff, v113.h, s34
	v_cndmask_b16 v114.l, 0x7fff, v114.h, s35
	v_cndmask_b16 v114.h, 0x7fff, v115.h, s36
	v_cndmask_b16 v115.l, 0x7fff, v116.h, s37
	v_cndmask_b16 v115.h, 0x7fff, v117.h, s3
	v_cndmask_b16 v116.l, 0x7fff, v118.h, s4
	v_cndmask_b16 v116.h, 0x7fff, v119.h, s5
	v_cndmask_b16 v117.l, 0x7fff, v120.h, s6
	v_cndmask_b16 v117.h, 0x7fff, v121.h, s7
	v_cndmask_b16 v118.l, 0x7fff, v122.h, s8
	v_cndmask_b16 v118.h, 0x7fff, v123.h, s9
	v_cndmask_b16 v119.l, 0x7fff, v124.h, s10
	v_cndmask_b16 v119.h, 0x7fff, v125.h, s11
	v_cndmask_b16 v120.l, 0x7fff, v126.h, s12
	v_cndmask_b16 v120.h, 0x7fff, v127.h, s13
	v_cndmask_b16 v121.l, 0x7fff, v128.h, s14
	v_cndmask_b16 v121.h, 0x7fff, v129.h, s15
	v_cndmask_b16 v122.l, 0x7fff, v130.h, s16
	v_cndmask_b16 v122.h, 0x7fff, v131.h, s17
	v_cndmask_b16 v123.l, 0x7fff, v132.h, s18
	v_cndmask_b16 v123.h, 0x7fff, v133.h, s19
	v_cndmask_b16 v124.l, 0x7fff, v134.h, s20
	v_cndmask_b16 v124.h, 0x7fff, v135.h, s21
	v_cndmask_b16 v125.l, 0x7fff, v136.h, s22
	v_cndmask_b16 v125.h, 0x7fff, v137.h, s23
	v_cndmask_b16 v126.l, 0x7fff, v147.h, s24
	v_cndmask_b16 v126.h, 0x7fff, v148.h, s25
	v_cndmask_b16 v127.l, 0x7fff, v149.h, s26
	v_cndmask_b16 v127.h, 0x7fff, v150.h, s27
	v_cndmask_b16 v128.l, 0x7fff, v151.h, s28
	v_cndmask_b16 v128.h, 0x7fff, v152.h, s29
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[89:96], v[113:120], v[160:167], v[89:96]
	.loc	1 382 31                        ; attention_backward.py:382:31
	v_mul_f32_e32 v2, v244, v85
	v_mul_f32_e32 v7, v156, v87
	.loc	1 382 30 is_stmt 0              ; attention_backward.py:382:30
	v_bfe_u32 v153, v1, 16, 1
	v_bfe_u32 v155, v3, 16, 1
	.loc	1 391 32 is_stmt 1              ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[89:96], v[121:128], v[138:145], v[89:96]
	v_mov_b32_e32 v121, v138
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v154, v2, 16, 1
	v_bfe_u32 v156, v4, 16, 1
	v_bfe_u32 v157, v5, 16, 1
	v_bfe_u32 v187, v6, 16, 1
	v_bfe_u32 v188, v7, 16, 1
	v_bfe_u32 v189, v8, 16, 1
	v_bfe_u32 v190, v9, 16, 1
	v_bfe_u32 v191, v10, 16, 1
	v_bfe_u32 v192, v11, 16, 1
	v_bfe_u32 v193, v12, 16, 1
	v_bfe_u32 v194, v13, 16, 1
	v_bfe_u32 v195, v14, 16, 1
	v_bfe_u32 v198, v16, 16, 1
	v_mov_b32_e32 v124, v141
	v_bfe_u32 v197, v15, 16, 1
	v_cmp_o_f32_e64 s30, v1, v1
	v_cmp_o_f32_e64 s31, v2, v2
	v_cmp_o_f32_e64 s38, v3, v3
	v_cmp_o_f32_e64 s39, v4, v4
	v_cmp_o_f32_e64 s40, v5, v5
	v_cmp_o_f32_e64 s41, v6, v6
	v_cmp_o_f32_e64 s42, v7, v7
	v_cmp_o_f32_e64 s43, v8, v8
	v_cmp_o_f32_e64 s44, v9, v9
	v_cmp_o_f32_e64 s45, v10, v10
	v_cmp_o_f32_e64 s46, v11, v11
	v_cmp_o_f32_e64 s47, v12, v12
	v_cmp_o_f32_e64 s48, v13, v13
	v_cmp_o_f32_e64 s49, v14, v14
	v_cmp_o_f32_e64 s50, v15, v15
	v_cmp_o_f32_e64 s51, v16, v16
	v_add3_u32 v1, v1, v153, 0x7fff
	v_add3_u32 v2, v2, v154, 0x7fff
	v_add3_u32 v3, v3, v155, 0x7fff
	v_add3_u32 v4, v4, v156, 0x7fff
	v_add3_u32 v5, v5, v157, 0x7fff
	v_add3_u32 v6, v6, v187, 0x7fff
	v_add3_u32 v7, v7, v188, 0x7fff
	v_add3_u32 v8, v8, v189, 0x7fff
	v_add3_u32 v9, v9, v190, 0x7fff
	v_add3_u32 v10, v10, v191, 0x7fff
	v_add3_u32 v11, v11, v192, 0x7fff
	v_add3_u32 v12, v12, v193, 0x7fff
	v_add3_u32 v13, v13, v194, 0x7fff
	v_add3_u32 v14, v14, v195, 0x7fff
	v_add3_u32 v15, v15, v197, 0x7fff
	v_add3_u32 v16, v16, v198, 0x7fff
	v_cndmask_b16 v129.l, 0x7fff, v1.h, s30
	v_cndmask_b16 v129.h, 0x7fff, v2.h, s31
	v_cndmask_b16 v130.l, 0x7fff, v3.h, s38
	v_cndmask_b16 v130.h, 0x7fff, v4.h, s39
	v_cndmask_b16 v131.l, 0x7fff, v5.h, s40
	v_cndmask_b16 v131.h, 0x7fff, v6.h, s41
	v_cndmask_b16 v132.l, 0x7fff, v7.h, s42
	v_cndmask_b16 v132.h, 0x7fff, v8.h, s43
	v_cndmask_b16 v133.l, 0x7fff, v9.h, s44
	v_cndmask_b16 v133.h, 0x7fff, v10.h, s45
	v_cndmask_b16 v134.l, 0x7fff, v11.h, s46
	v_cndmask_b16 v134.h, 0x7fff, v12.h, s47
	v_cndmask_b16 v135.l, 0x7fff, v13.h, s48
	v_cndmask_b16 v135.h, 0x7fff, v14.h, s49
	v_cndmask_b16 v136.l, 0x7fff, v15.h, s50
	v_cndmask_b16 v136.h, 0x7fff, v16.h, s51
	v_dual_mov_b32 v122, v139 :: v_dual_mov_b32 v123, v140
	v_dual_mov_b32 v125, v142 :: v_dual_mov_b32 v126, v143
	v_dual_mov_b32 v127, v144 :: v_dual_mov_b32 v128, v145
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 391 32                        ; attention_backward.py:391:32
	v_wmma_f32_16x16x16_bf16 v[89:96], v[129:136], v[33:40], v[89:96]
	v_mov_b32_e32 v138, v40
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_bfe_u32 v154, v28, 16, 1
	v_mov_b32_e32 v134, v36
	v_bfe_u32 v153, v27, 16, 1
	.loc	1 309 31                        ; attention_backward.py:309:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 382 30                        ; attention_backward.py:382:30
	v_cmp_o_f32_e64 s62, v27, v27
	v_cmp_o_f32_e64 s63, v28, v28
	v_add3_u32 v27, v27, v153, 0x7fff
	v_add3_u32 v28, v28, v154, 0x7fff
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[147:150], off, off offset:40
	scratch_load_b128 v[151:154], off, off offset:56
	v_bfe_u32 v199, v17, 16, 1
	v_bfe_u32 v196, v18, 16, 1
	v_bfe_u32 v200, v19, 16, 1
	v_bfe_u32 v201, v20, 16, 1
	v_bfe_u32 v202, v21, 16, 1
	v_bfe_u32 v203, v22, 16, 1
	v_bfe_u32 v204, v23, 16, 1
	v_bfe_u32 v205, v24, 16, 1
	v_bfe_u32 v207, v26, 16, 1
	v_bfe_u32 v156, v30, 16, 1
	v_bfe_u32 v157, v31, 16, 1
	v_bfe_u32 v187, v32, 16, 1
	v_mov_b32_e32 v136, v38
	v_bfe_u32 v206, v25, 16, 1
	v_mov_b32_e32 v132, v34
	v_bfe_u32 v155, v29, 16, 1
	v_cmp_o_f32_e64 s52, v17, v17
	v_cmp_o_f32_e64 s53, v18, v18
	v_cmp_o_f32_e64 s54, v19, v19
	v_cmp_o_f32_e64 s55, v20, v20
	v_cmp_o_f32_e64 s56, v21, v21
	v_cmp_o_f32_e64 s57, v22, v22
	v_cmp_o_f32_e64 s58, v23, v23
	v_cmp_o_f32_e64 s59, v24, v24
	v_cmp_o_f32_e64 s60, v25, v25
	v_cmp_o_f32_e64 s61, v26, v26
	v_cmp_o_f32_e64 s64, v29, v29
	v_cmp_o_f32_e64 s65, v30, v30
	v_cmp_o_f32_e64 s66, v31, v31
	v_cmp_o_f32_e64 s67, v32, v32
	v_add3_u32 v17, v17, v199, 0x7fff
	v_add3_u32 v18, v18, v196, 0x7fff
	v_add3_u32 v19, v19, v200, 0x7fff
	v_add3_u32 v20, v20, v201, 0x7fff
	v_add3_u32 v21, v21, v202, 0x7fff
	v_add3_u32 v22, v22, v203, 0x7fff
	v_add3_u32 v23, v23, v204, 0x7fff
	v_add3_u32 v24, v24, v205, 0x7fff
	v_add3_u32 v25, v25, v206, 0x7fff
	v_add3_u32 v26, v26, v207, 0x7fff
	v_add3_u32 v29, v29, v155, 0x7fff
	v_add3_u32 v30, v30, v156, 0x7fff
	v_add3_u32 v31, v31, v157, 0x7fff
	v_add3_u32 v32, v32, v187, 0x7fff
	v_cndmask_b16 v187.l, 0x7fff, v17.h, s52
	v_cndmask_b16 v187.h, 0x7fff, v18.h, s53
	v_cndmask_b16 v188.l, 0x7fff, v19.h, s54
	v_cndmask_b16 v188.h, 0x7fff, v20.h, s55
	v_cndmask_b16 v189.l, 0x7fff, v21.h, s56
	v_cndmask_b16 v189.h, 0x7fff, v22.h, s57
	v_cndmask_b16 v190.l, 0x7fff, v23.h, s58
	v_cndmask_b16 v190.h, 0x7fff, v24.h, s59
	v_cndmask_b16 v191.l, 0x7fff, v25.h, s60
	v_cndmask_b16 v191.h, 0x7fff, v26.h, s61
	v_cndmask_b16 v192.l, 0x7fff, v27.h, s62
	v_cndmask_b16 v192.h, 0x7fff, v28.h, s63
	v_cndmask_b16 v193.l, 0x7fff, v29.h, s64
	v_cndmask_b16 v193.h, 0x7fff, v30.h, s65
	v_cndmask_b16 v194.l, 0x7fff, v31.h, s66
	v_cndmask_b16 v194.h, 0x7fff, v32.h, s67
	scratch_load_b32 v139, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 309 31                        ; attention_backward.py:309:31
	ds_load_u16_d16 v99, v0 offset:608
	ds_load_u16_d16 v98, v0 offset:352
	ds_load_u16_d16 v107, v0 offset:576
	ds_load_u16_d16 v73, v0
	ds_load_u16_d16 v81, v0 offset:32
	ds_load_u16_d16 v74, v0 offset:256
	ds_load_u16_d16 v105, v0 offset:64
	ds_load_u16_d16 v106, v0 offset:320
	ds_load_u16_d16 v76, v0 offset:768
	ds_load_u16_d16 v108, v0 offset:832
	ds_load_u16_d16 v83, v0 offset:544
	ds_load_u16_d16 v77, v0 offset:1024
	ds_load_u16_d16 v84, v0 offset:800
	ds_load_u16_d16 v109, v0 offset:1088
	ds_load_u16_d16 v100, v0 offset:864
	ds_load_u16_d16 v78, v0 offset:1280
	ds_load_u16_d16 v85, v0 offset:1056
	ds_load_u16_d16 v110, v0 offset:1344
	ds_load_u16_d16 v101, v0 offset:1120
	ds_load_u16_d16 v79, v0 offset:1536
	ds_load_u16_d16 v86, v0 offset:1312
	ds_load_u16_d16 v111, v0 offset:1600
	ds_load_u16_d16 v102, v0 offset:1376
	ds_load_u16_d16 v80, v0 offset:1792
	ds_load_u16_d16 v87, v0 offset:1568
	ds_load_u16_d16 v112, v0 offset:1856
	ds_load_u16_d16 v103, v0 offset:1632
	ds_load_u16_d16 v88, v0 offset:1824
	ds_load_u16_d16 v104, v0 offset:1888
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v98, v0 offset:480
	ds_load_u16_d16 v97, v0 offset:96
	ds_load_u16_d16 v75, v0 offset:512
	ds_load_u16_d16 v82, v0 offset:288
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v107, v0 offset:704
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v76, v0 offset:896
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v108, v0 offset:960
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v77, v0 offset:1152
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v109, v0 offset:1216
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v78, v0 offset:1408
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v110, v0 offset:1472
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v79, v0 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v111, v0 offset:1728
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v80, v0 offset:1920
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v112, v0 offset:1984
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v75, v0 offset:640
	ds_load_u16_d16_hi v74, v0 offset:384
	ds_load_u16_d16_hi v73, v0 offset:128
	ds_load_u16_d16_hi v81, v0 offset:160
	ds_load_u16_d16_hi v105, v0 offset:192
	ds_load_u16_d16_hi v97, v0 offset:224
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v82, v0 offset:416
	ds_load_u16_d16_hi v106, v0 offset:448
	ds_load_u16_d16_hi v83, v0 offset:672
	ds_load_u16_d16_hi v99, v0 offset:736
	ds_load_u16_d16_hi v84, v0 offset:928
	ds_load_u16_d16_hi v100, v0 offset:992
	ds_load_u16_d16_hi v85, v0 offset:1184
	ds_load_u16_d16_hi v101, v0 offset:1248
	ds_load_u16_d16_hi v86, v0 offset:1440
	ds_load_u16_d16_hi v102, v0 offset:1504
	ds_load_u16_d16_hi v87, v0 offset:1696
	ds_load_u16_d16_hi v103, v0 offset:1760
	ds_load_u16_d16_hi v88, v0 offset:1952
	ds_load_u16_d16_hi v104, v0 offset:2016
	.loc	1 391 32                        ; attention_backward.py:391:32
	s_waitcnt vmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[187:194], v[147:154], v[89:96]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v4, v92, v171 :: v_dual_mov_b32 v137, v39
	v_sub_f32_e32 v2, v90, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v6, v94, v171
	v_sub_f32_e32 v8, v96, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 26 is_stmt 0              ; attention_backward.py:396:26
	v_mul_f32_e32 v4, v45, v4
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_dual_sub_f32 v1, v89, v171 :: v_dual_mul_f32 v2, v43, v2
	v_mov_b32_e32 v131, v33
	v_dual_mov_b32 v135, v37 :: v_dual_mul_f32 v6, v47, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 397 34 is_stmt 1              ; attention_backward.py:397:34
	v_dual_mul_f32 v4, s79, v4 :: v_dual_mul_f32 v1, v42, v1
	v_dual_mul_f32 v2, s79, v2 :: v_dual_mov_b32 v133, v35
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_dual_mul_f32 v8, v186, v8 :: v_dual_sub_f32 v3, v91, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 397 34                        ; attention_backward.py:397:34
	v_dual_mul_f32 v6, s79, v6 :: v_dual_mul_f32 v1, s79, v1
	.loc	1 397 33 is_stmt 0              ; attention_backward.py:397:33
	v_bfe_u32 v10, v2, 16, 1
	v_cmp_o_f32_e64 s4, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 396 43 is_stmt 1              ; attention_backward.py:396:43
	v_dual_sub_f32 v5, v93, v171 :: v_dual_mul_f32 v8, s79, v8
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v9, v1, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v2, v2, v10, 0x7fff
	scratch_load_b32 v10, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 396 43                        ; attention_backward.py:396:43
	v_sub_f32_e32 v7, v95, v171
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_add3_u32 v1, v1, v9, 0x7fff
	scratch_load_b32 v9, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 396 26                        ; attention_backward.py:396:26
	v_mul_f32_e32 v3, v44, v3
	v_mul_f32_e32 v5, v46, v5
	v_mul_f32_e32 v7, v48, v7
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v12, v4, 16, 1
	v_bfe_u32 v14, v6, 16, 1
	.loc	1 397 34 is_stmt 0              ; attention_backward.py:397:34
	v_mul_f32_e32 v3, s79, v3
	v_mul_f32_e32 v5, s79, v5
	v_mul_f32_e32 v7, s79, v7
	.loc	1 397 33                        ; attention_backward.py:397:33
	v_bfe_u32 v16, v8, 16, 1
	v_cmp_o_f32_e64 s6, v4, v4
	v_bfe_u32 v11, v3, 16, 1
	v_bfe_u32 v13, v5, 16, 1
	v_bfe_u32 v15, v7, 16, 1
	v_cmp_o_f32_e64 s5, v3, v3
	v_cmp_o_f32_e64 s7, v5, v5
	v_cmp_o_f32_e64 s8, v6, v6
	v_cmp_o_f32_e64 s9, v7, v7
	v_cmp_o_f32_e64 s10, v8, v8
	v_add3_u32 v3, v3, v11, 0x7fff
	v_add3_u32 v4, v4, v12, 0x7fff
	v_add3_u32 v5, v5, v13, 0x7fff
	v_add3_u32 v6, v6, v14, 0x7fff
	v_add3_u32 v7, v7, v15, 0x7fff
	v_add3_u32 v8, v8, v16, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s3
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s4
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s5
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.l, 0x7fff, v7.h, s9
	v_cndmask_b16 v4.h, 0x7fff, v8.h, s10
	v_permlanex16_b32 v5, v1, s94, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v2, s94, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v3, s94, 0xfedcba98 op_sel:[1,0]
	s_clause 0x3                            ; 48-byte Folded Reload
	scratch_load_b128 v[33:36], off, off
	scratch_load_b128 v[37:40], off, off offset:16
	scratch_load_b64 v[129:130], off, off offset:72
	scratch_load_b64 v[22:23], off, off offset:32
	v_permlanex16_b32 v8, v4, s94, 0xfedcba98 op_sel:[1,0]
	.loc	1 270 9 is_stmt 1               ; attention_backward.py:270:9
	s_add_i32 s3, s93, 16
	s_cmpk_lt_u32 s93, 0x7f0
	s_mov_b32 s93, s3
	.loc	1 397 33                        ; attention_backward.py:397:33
	s_waitcnt vmcnt(5)
	v_perm_b32 v90, v5, v1, v10
	v_perm_b32 v92, v6, v2, v10
	v_perm_b32 v94, v7, v3, v10
	s_waitcnt vmcnt(4)
	v_perm_b32 v89, v5, v1, v9
	v_perm_b32 v91, v6, v2, v9
	v_perm_b32 v93, v7, v3, v9
	v_perm_b32 v95, v8, v4, v9
	v_perm_b32 v96, v8, v4, v10
	.loc	1 398 31                        ; attention_backward.py:398:31
	s_waitcnt lgkmcnt(12)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[105:112], v[89:96], v[49:56]
	scratch_load_b32 v112, off, off offset:80 ; 4-byte Folded Reload
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[89:96], v[65:72]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[81:88], v[89:96], v[57:64]
	s_waitcnt vmcnt(3) lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[97:104], v[89:96], v[33:40]
	.loc	1 270 9                         ; attention_backward.py:270:9
	s_cbranch_scc1 .LBB0_3
; %bb.4:
	.loc	1 401 13                        ; attention_backward.py:401:13
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v0, off, off offset:136
	scratch_load_b32 v9, off, off offset:140
	scratch_load_b32 v1, off, off offset:152
	scratch_load_b32 v10, off, off offset:156
	scratch_load_b32 v7, off, off offset:148
	scratch_load_b32 v8, off, off offset:144
	s_mul_i32 s4, s76, s74
	.loc	1 405 9                         ; attention_backward.py:405:9
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s75, 0x31027000
	s_mov_b32 s74, 0x7ffffffe
	.loc	1 401 13                        ; attention_backward.py:401:13
	s_waitcnt vmcnt(5)
	v_mul_lo_u32 v0, s76, v0
	.loc	1 408 40                        ; attention_backward.py:408:40
	s_waitcnt vmcnt(4)
	v_cmp_gt_i32_e64 s0, s76, v9
	.loc	1 168 40                        ; attention_backward.py:168:40
	v_or_b32_e32 v2, 48, v9
	v_or_b32_e32 v3, 32, v9
	v_or_b32_e32 v4, 16, v9
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v1, 62, v1
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s0
	.loc	1 408 40 is_stmt 0              ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s3, s76, v2
	.loc	1 401 13 is_stmt 1              ; attention_backward.py:401:13
	v_add_nc_u32_e32 v5, s4, v0
	v_add_nc_u32_e32 v0, v0, v9
	.loc	1 408 40                        ; attention_backward.py:408:40
	v_cmp_gt_i32_e64 s1, s76, v4
	v_cmp_gt_i32_e64 s2, s76, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_lshl_u32 v6, v5, v9, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v7, v5, v7, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v8, v5, v8, 2
	v_add_lshl_u32 v10, v5, v10, 2
	.loc	1 401 13                        ; attention_backward.py:401:13
	v_add_lshl_u32 v0, v0, s4, 2
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_add_lshl_u32 v4, v5, v4, 2
	s_clause 0x2
	buffer_store_b32 v65, v6, s[72:75], 0 offen
	buffer_store_b32 v66, v7, s[72:75], 0 offen
	buffer_store_b32 v67, v8, s[72:75], 0 offen
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v6, off, off offset:172
	scratch_load_b32 v7, off, off offset:168
	scratch_load_b32 v8, off, off offset:164
	scratch_load_b32 v9, off, off offset:160
	v_add_lshl_u32 v3, v5, v3, 2
	v_add_lshl_u32 v2, v5, v2, 2
	v_add_lshl_u32 v1, v5, v1, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v6, v5, v6, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v7, v5, v7, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v8, v5, v8, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, v5, v9, 2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	s_clause 0x4
	buffer_store_b32 v68, v6, s[72:75], 0 offen
	buffer_store_b32 v69, v7, s[72:75], 0 offen
	buffer_store_b32 v70, v8, s[72:75], 0 offen
	buffer_store_b32 v71, v9, s[72:75], 0 offen
	buffer_store_b32 v72, v10, s[72:75], 0 offen
	v_add_nc_u32_e32 v6, 0x48, v0
	v_add_nc_u32_e32 v7, 0x50, v0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s1
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_add_nc_u32_e32 v8, 0x58, v0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v9, 0x60, v0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	s_clause 0x2
	buffer_store_b32 v57, v4, s[72:75], 0 offen
	buffer_store_b32 v58, v6, s[72:75], 0 offen
	buffer_store_b32 v59, v7, s[72:75], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v9, s0
	v_add_nc_u32_e32 v6, 0x68, v0
	buffer_store_b32 v60, v8, s[72:75], 0 offen
	v_add_nc_u32_e32 v7, 0x70, v0
	v_add_nc_u32_e32 v8, 0x78, v0
	buffer_store_b32 v61, v4, s[72:75], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s0
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	v_cndmask_b32_e64 v7, 0x80000000, v8, s0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 s0, vcc_lo, s2
	.loc	1 405 9                         ; attention_backward.py:405:9
	buffer_store_b32 v62, v4, s[72:75], 0 offen
	v_add_nc_u32_e32 v4, 0x88, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	s_clause 0x2
	buffer_store_b32 v63, v6, s[72:75], 0 offen
	buffer_store_b32 v64, v7, s[72:75], 0 offen
	buffer_store_b32 v49, v3, s[72:75], 0 offen
	v_add_nc_u32_e32 v3, 0x90, v0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_nc_u32_e32 v6, 0x98, v0
	v_add_nc_u32_e32 v7, 0xa0, v0
	v_add_nc_u32_e32 v8, 0xa8, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	buffer_store_b32 v50, v4, s[72:75], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s0
	v_cndmask_b32_e64 v6, 0x80000000, v7, s0
	v_cndmask_b32_e64 v7, 0x80000000, v8, s0
	buffer_store_b32 v51, v3, s[72:75], 0 offen
	v_add_nc_u32_e32 v3, 0xb0, v0
	s_clause 0x2
	buffer_store_b32 v52, v4, s[72:75], 0 offen
	buffer_store_b32 v53, v6, s[72:75], 0 offen
	buffer_store_b32 v54, v7, s[72:75], 0 offen
	v_add_nc_u32_e32 v4, 0xb8, v0
	v_add_nc_u32_e32 v6, 0xc8, v0
	v_add_nc_u32_e32 v7, 0xd0, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 408 18                        ; attention_backward.py:408:18
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 405 9                         ; attention_backward.py:405:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_dual_cndmask_b32 v6, 0x80000000, v6 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x4
	buffer_store_b32 v55, v3, s[72:75], 0 offen
	buffer_store_b32 v56, v4, s[72:75], 0 offen
	buffer_store_b32 v33, v2, s[72:75], 0 offen
	buffer_store_b32 v34, v6, s[72:75], 0 offen
	buffer_store_b32 v35, v7, s[72:75], 0 offen
	v_add_nc_u32_e32 v2, 0xd8, v0
	v_add_nc_u32_e32 v3, 0xe0, v0
	v_add_nc_u32_e32 v4, 0xe8, v0
	v_add_nc_u32_e32 v0, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v36, v2, s[72:75], 0 offen
	buffer_store_b32 v37, v3, s[72:75], 0 offen
	buffer_store_b32 v38, v4, s[72:75], 0 offen
	buffer_store_b32 v39, v0, s[72:75], 0 offen
	buffer_store_b32 v40, v1, s[72:75], 0 offen
	.loc	1 60 5                          ; attention_backward.py:60:5
	s_endpgm
.Ltmp80:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 180
		.amdhsa_kernarg_size 184
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
		.amdhsa_next_free_sgpr 95
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 95
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 180
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13504
; TotalNumSgprs: 97
; NumVgprs: 256
; ScratchSize: 180
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 97
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
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
.Ldebug_ranges2:
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
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
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1"                        ; string offset=97 ; amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 180
    .sgpr_count:     97
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dq_int4xint4_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 44
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
