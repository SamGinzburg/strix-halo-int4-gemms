	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	v_dual_mov_b32 v15, 0 :: v_dual_and_b32 v14, 15, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 4, v0
	v_mov_b32_e32 v17, 0
	s_load_b64 s[30:31], s[0:1], 0x20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 3, v14
	v_dual_mov_b32 v20, 0 :: v_dual_lshlrev_b32 v25, 1, v0
	v_dual_mov_b32 v21, 0 :: v_dual_lshlrev_b32 v12, 3, v0
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v11, 0x100, v0
	v_mov_b32_e32 v19, 0
	v_bfe_u32 v22, v0, 4, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v27, 0, v12
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v23, 4, v11
	v_mov_b32_e32 v16, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s28, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 5
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[4:5], null, s29, v3, v[2:3]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s7, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s9, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 1
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s7, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s18, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_f32_u32 s16, s18
	s_xor_b32 s20, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s22, s20, 31
	v_rcp_iflag_f32_e32 v1, s16
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s16, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 1, v14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s19, s16, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_cvt_u32_f32 s10, s19
	s_sub_i32 s19, 0, s18
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s19, s10
	s_mul_hi_u32 s5, s10, s19
	s_abs_i32 s19, s2
	s_add_i32 s5, s10, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_hi_u32 s5, s19, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s21, s5, s18
	s_add_i32 s20, s5, 1
	s_sub_i32 s19, s19, s21
	s_sub_i32 s21, s19, s18
	s_cmp_ge_u32 s19, s18
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s19, s21, s19
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s19, s18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s18, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s5, s20, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s19, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s26, s5, s22
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 63
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s19
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s26, s22
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s27, s3, 5
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s23, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s6, s5, s6
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v7, s27, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 26
.Ltmp17:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[5:6], null, s23, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s6
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s27, v3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s7
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s28, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s23, v7
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 32, v7
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s6, s21, 6
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 63
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s23, v8
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 32, v8
	.loc	1 162 34 is_stmt 1              ; generate_amdgcn.py:162:34
	s_mul_i32 s7, s33, s23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s20, 64
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s19, s29, s27
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v5, s27, s7, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s34, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v4, s19, s28, v4
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s19, s11
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_and_b32 s17, s17, 0xffff
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v6, v5, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b64 v[4:5], v4, s[16:19], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshrrev_b32_e32 v7, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v8, 1, v0
	v_mov_b32_e32 v13, 0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s7, s6, -1
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v7, 24, v7
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v24, 0x70, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s20, 0x80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v7, v25, v7
	v_add_nc_u32_e32 v26, 0, v7
	s_waitcnt vmcnt(1)
	ds_store_b16 v26, v6 offset:4096
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v27, v[4:5]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s14, s27, 32
	v_add3_u32 v13, s33, v23, v14
	v_add_nc_u32_e32 v9, s14, v3
	v_and_b32_e32 v10, 0xe0, v0
	s_lshl_b32 s1, s26, 7
	v_and_b32_e32 v4, 0x218, v25
	v_mul_lo_u32 v13, s6, v13
	v_mul_lo_u32 v9, s29, v9
	v_sub_nc_u32_e32 v29, s23, v3
	v_lshl_or_b32 v10, s26, 8, v10
	v_add_nc_u32_e32 v3, s33, v3
	s_lshl_b32 s0, s22, 8
	v_sub_nc_u32_e32 v28, s23, v1
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_add3_u32 v2, v9, s1, v2
	v_subrev_nc_u32_e32 v31, s0, v10
	s_lshl_b32 s0, s22, 7
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[9:10], null, s23, v3, v[1:2]
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v32, 1, v13
	v_mov_b32_e32 v13, 0
	v_lshl_or_b32 v4, v14, 5, v4
	v_add_nc_u32_e32 v5, 0, v14
	v_dual_mov_b32 v3, v1 :: v_dual_lshlrev_b32 v30, 1, v22
	v_subrev_nc_u32_e32 v33, s0, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_add_nc_u32_e32 v10, 0, v4
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v34, 0, v6
	v_add_nc_u32_e32 v35, 0, v7
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v36, 0, v8
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v37, v5, v24
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	s_and_b32 s25, s5, 0xffff
	s_mov_b32 s24, s4
	s_max_i32 s15, s7, 1
	s_lshl_b32 s35, s29, 1
	s_lshl_b32 s36, s29, 5
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s14, v28
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v38, s14, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v39, v30, v31
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s14, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s15, s15, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s14, s14, 32
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v38, 0x80000000, v38, s0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s1, s3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s15, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v64, v38, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v65, v32, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v66, v39, s[24:27], 0 offen
	buffer_load_u16 v67, v39, s[24:27], 0 offen offset:4
	buffer_load_u16 v68, v39, s[24:27], 0 offen offset:8
	buffer_load_u16 v69, v39, s[24:27], 0 offen offset:12
	buffer_load_u16 v70, v39, s[24:27], 0 offen offset:16
	buffer_load_u16 v71, v39, s[24:27], 0 offen offset:20
	buffer_load_u16 v72, v39, s[24:27], 0 offen offset:24
	buffer_load_u16 v73, v39, s[24:27], 0 offen offset:28
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v38, 0x80000000, v33, s0
	buffer_load_b64 v[46:47], v38, s[16:19], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v38, v37 offset:640
	ds_load_u8 v39, v37 offset:896
	ds_load_u8 v40, v37 offset:768
	ds_load_u8 v41, v37 offset:512
	ds_load_u8 v42, v37 offset:128
	ds_load_u8 v43, v37 offset:384
	ds_load_u8 v44, v37 offset:256
	ds_load_u8 v45, v37
	ds_load_u8 v56, v37 offset:1664
	ds_load_u8 v57, v37 offset:1920
	ds_load_u8 v58, v37 offset:1792
	ds_load_u8 v59, v37 offset:1536
	ds_load_u8 v60, v37 offset:1152
	ds_load_u8 v61, v37 offset:1408
	ds_load_u8 v62, v37 offset:1280
	ds_load_u8 v63, v37 offset:1024
	ds_load_u8 v74, v37 offset:2688
	ds_load_u8 v75, v37 offset:2944
	ds_load_u8 v76, v37 offset:2816
	ds_load_u8 v77, v37 offset:2560
	ds_load_u8 v78, v37 offset:2176
	ds_load_u8 v79, v37 offset:2432
	ds_load_u8 v80, v37 offset:2304
	ds_load_u8 v81, v37 offset:2048
	ds_load_u8 v82, v37 offset:3712
	ds_load_u8 v83, v37 offset:3968
	ds_load_u8 v84, v37 offset:3840
	ds_load_u8 v85, v37 offset:3584
	ds_load_u8 v86, v37 offset:3200
	ds_load_u8 v87, v37 offset:3456
	ds_load_u8 v88, v37 offset:3328
	ds_load_u8 v89, v37 offset:3072
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[48:49], v10 offset:4096
	ds_load_b64 v[50:51], v34 offset:4096
	ds_load_b64 v[52:53], v35 offset:4096
	ds_load_b64 v[54:55], v36 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v40, v45, v42, 0xc0c0004
	v_perm_b32 v41, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v42, v59, v56, 0xc0c0004
	v_perm_b32 v43, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v44, v63, v60, 0xc0c0004
	v_perm_b32 v45, v62, v61, 0xc0c0004
	v_lshl_or_b32 v57, v39, 16, v38
	v_lshl_or_b32 v56, v41, 16, v40
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v60, v77, v74, 0xc0c0004
	v_perm_b32 v61, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v62, v81, v78, 0xc0c0004
	v_perm_b32 v63, v80, v79, 0xc0c0004
	v_lshl_or_b32 v59, v43, 16, v42
	v_lshl_or_b32 v58, v45, 16, v44
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[38:45], v[56:57], v[48:49], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v74, v85, v82, 0xc0c0004
	v_perm_b32 v75, v84, v83, 0xc0c0004
	v_perm_b32 v76, v89, v86, 0xc0c0004
	v_perm_b32 v77, v88, v87, 0xc0c0004
	v_lshl_or_b32 v61, v61, 16, v60
	v_lshl_or_b32 v60, v63, 16, v62
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[38:45], v[58:59], v[50:51], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v75, 16, v74
	v_lshl_or_b32 v62, v77, 16, v76
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[38:45], v[60:61], v[52:53], v[38:45] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(10)
	ds_store_b16 v26, v64 offset:4096
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v27, v[46:47]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[38:45], v[62:63], v[54:55], v[38:45] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v55, 16, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v50, 16, v67
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v48, 16, v65
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_mul_f32_e32 v39, v39, v48
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v21, v39, v50
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v38, v38, v48 :: v_dual_add_nc_u32 v31, s35, v31
	v_dual_mul_f32 v42, v42, v48 :: v_dual_add_nc_u32 v33, s36, v33
	v_dual_mul_f32 v44, v44, v48 :: v_dual_lshlrev_b32 v49, 16, v66
	v_dual_mul_f32 v43, v43, v48 :: v_dual_lshlrev_b32 v52, 16, v69
	v_dual_mul_f32 v45, v45, v48 :: v_dual_lshlrev_b32 v54, 16, v71
	v_dual_mul_f32 v40, v40, v48 :: v_dual_lshlrev_b32 v53, 16, v70
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v51, 16, v68
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v41, v41, v48 :: v_dual_lshlrev_b32 v56, 16, v73
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v13, v38, v49 :: v_dual_add_nc_u32 v32, 2, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, v42, v53
	v_dual_fmac_f32 v20, v40, v51 :: v_dual_fmac_f32 v19, v41, v52
	v_dual_fmac_f32 v17, v43, v54 :: v_dual_fmac_f32 v16, v44, v55
	v_fmac_f32_e32 v15, v45, v56
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow132
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_and_b32_e32 v3, 16, v0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s34
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:                                ; %._crit_edge._crit_edge
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v4, 1, v0
	s_mov_b32 s0, 0
	s_branch .LBB0_6
.LBB0_5:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s0, -1
                                        ; implicit-def: $vgpr4
.LBB0_6:                                ; %Flow
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	s_and_not1_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 166 26 is_stmt 1              ; generate_amdgcn.py:166:26
	v_add3_u32 v8, 0, v14, v24
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v27, 0x218, v25
	ds_load_u8 v1, v8 offset:640
	ds_load_u8 v2, v8 offset:896
	ds_load_u8 v4, v8 offset:768
	ds_load_u8 v5, v8 offset:512
	ds_load_u8 v6, v8 offset:128
	ds_load_u8 v7, v8 offset:256
	ds_load_u8 v9, v8
	ds_load_u8 v10, v8 offset:384
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshl_or_b32 v31, v14, 5, v27
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v34, v8 offset:1664
	ds_load_u8 v35, v8 offset:1792
	ds_load_u8 v36, v8 offset:1536
	v_mov_b32_e32 v28, v26
	ds_load_u8 v42, v8 offset:2688
	ds_load_u8 v43, v8 offset:2944
	ds_load_u8 v44, v8 offset:2816
	ds_load_u8 v45, v8 offset:2560
	ds_load_u8 v46, v8 offset:2176
	ds_load_u8 v47, v8 offset:2432
	ds_load_u8 v48, v8 offset:2304
	ds_load_u8 v49, v8 offset:2048
	ds_load_u8 v50, v8 offset:3712
	ds_load_u8 v51, v8 offset:3968
	ds_load_u8 v52, v8 offset:3840
	ds_load_u8 v53, v8 offset:3584
	ds_load_u8 v54, v8 offset:3200
	ds_load_u8 v55, v8 offset:3456
	ds_load_u8 v56, v8 offset:3328
	ds_load_u8 v57, v8 offset:3072
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v32, v31, 8, 0
	v_add_nc_u32_e32 v33, 0, v31
	v_xad_u32 v37, v31, 24, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v27, v26
	v_mov_b32_e32 v29, v26
	v_mov_b32_e32 v30, v26
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v39, v4, v2, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v38, v5, v1, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[1:2], v32 offset:4096
	ds_load_b64 v[4:5], v33 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_mov_b32_e32 v32, v26
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v6, v9, v6, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v9, v7, v10, 0xc0c0004
	v_lshl_or_b32 v7, v39, 16, v38
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v10, v31, 16, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v36, v36, v34, 0xc0c0004
	v_mov_b32_e32 v31, v26
	v_lshl_or_b32 v6, v9, 16, v6
	ds_load_u8 v9, v8 offset:1920
	ds_load_u8 v38, v8 offset:1152
	ds_load_u8 v39, v8 offset:1408
	ds_load_u8 v40, v8 offset:1280
	ds_load_u8 v41, v8 offset:1024
	v_mov_b32_e32 v33, v26
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[6:7], v[4:5], v[26:33] neg_lo:[1,1,0]
	v_perm_b32 v6, v45, v42, 0xc0c0004
	v_perm_b32 v7, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v58, v35, v9, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[8:9], v10 offset:4096
	ds_load_b64 v[34:35], v37 offset:4096
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v10, v49, v46, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v41, v38, 0xc0c0004
	v_lshl_or_b32 v5, v58, 16, v36
	v_perm_b32 v36, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v4, v39, 16, v38
	v_wmma_i32_16x16x16_iu4 v[26:33], v[4:5], v[1:2], v[26:33] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v7, 16, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v1, v36, 16, v10
	v_perm_b32 v4, v53, v50, 0xc0c0004
	v_perm_b32 v5, v52, v51, 0xc0c0004
	v_perm_b32 v6, v57, v54, 0xc0c0004
	v_perm_b32 v7, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[1:2], v[8:9], v[26:33] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v5, 16, v4
	v_mov_b32_e32 v4, v25
	v_lshl_or_b32 v1, v7, 16, v6
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[1:2], v[34:35], v[26:33] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v5, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v7, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v8, v29
	v_cvt_f32_i32_e32 v9, v30
	v_cvt_f32_i32_e32 v26, v31
	v_cvt_f32_i32_e32 v27, v32
	v_cvt_f32_i32_e32 v28, v33
.LBB0_8:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s7, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v1, v23, v14
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v2, v22, v24
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s29
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s33, s6
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s3, s28, s3
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v1, s6, v1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v2, s3, v2, 1
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s5, s5, 0xffff
	v_add_nc_u32_e32 v10, 4, v2
	v_add_nc_u32_e32 v14, 8, v2
	v_add_nc_u32_e32 v22, 12, v2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v1, s0, v1, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v23, 0x80000000, v2, s2
	v_add_nc_u32_e32 v24, 16, v2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_add_nc_u32_e32 v25, 20, v2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_add_nc_u32_e32 v29, 24, v2
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_add_nc_u32_e32 v2, 28, v2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v30, v10, s[4:7], 0 offen
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v24, s2
	v_cndmask_b32_e64 v24, 0x80000000, v25, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s13, s13, 0xffff
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v29, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v29, v1, s[12:15], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x3
	buffer_load_u16 v31, v10, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v32, v2, s[4:7], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v10, 0x60, v4
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v33, 7, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_bfe_i32 v2, v0, 3, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v34, 0x7f, v0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s33, s29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshrrev_b32_e32 v11, 1, v11
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_add_i32 s0, s0, s28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v2, 0x2040, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v4, 28, v4
	v_lshlrev_b32_e32 v3, 2, v3
	s_delay_alu instid0(VALU_DEP_2)
	v_and_or_b32 v4, 0xf00, v12, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v30, 16, v30
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v1, 2, v0
	v_lshlrev_b32_e32 v35, 10, v0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v31, 16, v31
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_or_b32 v1, 0x31c, v1, v10
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v10, s29, v33
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v26, v26, v29 :: v_dual_and_b32 v33, 0x1c00, v35
	v_mul_f32_e32 v28, v28, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_xor_b32_e32 v2, v1, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v6, v6, v29
	v_mul_f32_e32 v7, v7, v29
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v1, s0, v34, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or3_b32 v33, v33, v11, v2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v9, v9, v29
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v27, v27, v29
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v23, v13
	v_fma_f32 v6, v6, v30, v21
	v_fma_f32 v7, v7, v14, v20
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[10:11], 2, v[1:2]
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v8, v8, v22, v19
	v_fma_f32 v9, v9, v31, v18
	v_fma_f32 v14, v26, v24, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v34, 0, v33
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v22, v27, v25, v16
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v10, vcc_lo, s30, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s31, v11, vcc_lo
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v23, v28, v32, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v13, v5, s2
	v_xad_u32 v35, v33, 4, 0
	v_cndmask_b32_e64 v6, v21, v6, s2
	v_xad_u32 v36, v33, 8, 0
	v_cndmask_b32_e64 v7, v20, v7, s2
	v_xad_u32 v37, v33, 12, 0
	v_cndmask_b32_e64 v8, v19, v8, s2
	v_xad_u32 v38, v33, 16, 0
	v_cndmask_b32_e64 v9, v18, v9, s2
	v_cndmask_b32_e64 v13, v17, v14, s2
	v_xad_u32 v39, v33, 20, 0
	v_xad_u32 v2, v33, 24, 0
	v_xad_u32 v33, v33, 28, 0
	v_cndmask_b32_e64 v14, v16, v22, s2
	v_cndmask_b32_e64 v15, v15, v23, s2
	ds_store_b32 v34, v5
	ds_store_b32 v35, v6
	ds_store_b32 v36, v7
	ds_store_b32 v37, v8
	ds_store_b32 v38, v9
	ds_store_b32 v39, v13
	ds_store_b32 v2, v14
	ds_store_b32 v33, v15
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v13, v[10:11], off
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v2, 0x180, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v0, 5, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshrrev_b32_e32 v2, 5, v2
	v_and_b32_e32 v0, 32, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v2, v4, v2
	v_or3_b32 v0, v0, v3, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x1010, v0, 0
	v_xad_u32 v4, 0x2040, v0, 0
	v_xad_u32 v0, 0x3050, v0, 0
	ds_load_2addr_b32 v[8:9], v2 offset1:32
	ds_load_2addr_b32 v[6:7], v3 offset1:32
	ds_load_2addr_b32 v[4:5], v4 offset1:32
	ds_load_2addr_b32 v[2:3], v0 offset1:32
.LBB0_9:                                ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v12, v13, v8
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end37
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v10, s29, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v10, vcc_lo, s30, v10
	v_add_co_ci_u32_e64 v11, null, s31, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_11:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v12, v13, v6
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v10, s29, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v10, vcc_lo, s30, v10
	v_add_co_ci_u32_e64 v11, null, s31, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_13:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v12, v13, v4
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[10:11], null, s29, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s30, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s31, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_15:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v2
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v10, s29, 4, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v10, vcc_lo, s30, v10
	v_add_co_ci_u32_e64 v11, null, s31, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_17:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[8:9], null, s29, 20, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s30, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s31, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_19:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[6:7], null, s29, 24, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s30, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s31, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_21:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s29, 28, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_23:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 90
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
		.amdhsa_inst_pref_size 37
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.num_vgpr, 90
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4616
; TotalNumSgprs: 39
; NumVgprs: 90
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 90
; Occupancy: 16
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
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc64_none_bm32_bn128_bk128_gm1_w16_s2_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     90
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
