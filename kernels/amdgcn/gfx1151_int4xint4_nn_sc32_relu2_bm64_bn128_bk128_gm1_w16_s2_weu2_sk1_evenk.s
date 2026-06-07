	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s10, s2
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v4, 5, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v8, 2, v0
	v_dual_mov_b32 v12, 0 :: v_dual_lshlrev_b32 v9, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 3, v0
	v_lshrrev_b32_e32 v29, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v26, 1, v0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s8, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s12, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s8, s8, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s12, s12, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s6, s6, s12
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s6, s6, 6
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s5
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v27, 15, v0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v28, v0, 4, 1
	v_and_b32_e32 v31, 0x108, v0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v29, 16, v29
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v30, 0x70, v26
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s11, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s11
	s_xor_b32 s11, s2, s5
	s_mul_hi_u32 s9, s10, s9
	s_ashr_i32 s11, s11, 31
	s_mul_i32 s12, s9, s8
	s_sub_i32 s10, s10, s12
	s_add_i32 s12, s9, 1
	s_sub_i32 s13, s10, s8
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s9, s12, s9
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s9, 1
	s_cmp_ge_u32 s10, s8
	s_cselect_b32 s8, s12, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s8, s11
	s_sub_i32 s16, s8, s11
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s6, s16
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s16, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s6, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s18, s6
	s_abs_i32 s19, s2
	s_cvt_f32_u32 s17, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	v_readfirstlane_b32 s17, v1
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v1, 14, v9
	s_mov_b32 s11, 0x31027000
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v9, 0x37e, v9
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s18
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s6
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s19, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s20, s5, s18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s26, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s19, s19, s20
	s_add_i32 s20, s5, 1
	s_sub_i32 s21, s19, s18
	s_cmp_ge_u32 s19, s18
	s_cselect_b32 s5, s20, s5
	s_cselect_b32 s19, s21, s19
	s_add_i32 s20, s5, 1
	s_cmp_ge_u32 s19, s18
	s_cselect_b32 s5, s20, s5
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s20, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s18, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s4, 31
.Ltmp13:
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v11, s20, v4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s19, s5, s17
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s18
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s19, s17
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s18, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s23, s5, s6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s6, s5, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s27, s21, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s18, v11
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 16, v11
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v2, 0x7c, v8
	.loc	1 155 22 is_stmt 1              ; generate_amdgcn.py:155:22
	v_or_b32_e32 v10, s20, v1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s23
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s27, 5
.Ltmp21:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s7, v4, v[2:3]
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, s18, v3, v[1:2]
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s18, v10
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 16, v10
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 31
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s2, s33, s18
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s22, s7, s20
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v6, s20, s2, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s22, s6, v5
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s5, s3, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s4, s2, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s27, s11
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	s_and_b32 s25, s25, 0xffff
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v5, v5, s[24:27], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x20
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_bfe_i32 v7, v0, 6, 1
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v33, 0, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s35, s34, -1
	s_mov_b32 s16, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v7, 0x88, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lt_i32 s21, 64
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v7, v7, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v32, 0, v7
	s_waitcnt vmcnt(1)
	ds_store_b16 v32, v6 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v33, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s41, s20, 16
	v_and_b32_e32 v9, 0xe0, v0
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v10, s41, v4
	v_sub_nc_u32_e32 v35, s18, v4
	v_lshl_or_b32 v4, s19, 8, v9
	v_add3_u32 v8, s33, v29, v27
	s_lshl_b32 s0, s17, 8
	v_mul_lo_u32 v9, s7, v10
	v_lshl_or_b32 v5, v27, 4, v31
	v_subrev_nc_u32_e32 v37, s0, v4
	s_lshl_b32 s0, s19, 7
	s_mov_b32 s19, s16
	v_sub_nc_u32_e32 v34, s18, v1
	v_xor_b32_e32 v7, 8, v5
	v_mov_b32_e32 v25, 0
	v_add3_u32 v2, v9, s0, v2
	s_lshl_b32 s0, s17, 7
	s_mov_b32 s17, s16
	v_add_nc_u32_e32 v11, 32, v8
	v_add_nc_u32_e32 v3, s33, v3
	v_mul_lo_u32 v8, s34, v8
	v_subrev_nc_u32_e32 v40, s0, v2
	v_add_nc_u32_e32 v42, 0, v7
	v_mul_lo_u32 v10, s34, v11
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v24, 0
	v_lshlrev_b32_e32 v38, 1, v10
	v_mad_u64_u32 v[9:10], null, s18, v3, v[1:2]
	s_mov_b32 s18, s16
	v_add_nc_u32_e32 v6, 0, v27
	v_lshlrev_b32_e32 v39, 1, v8
	v_add_nc_u32_e32 v41, 0, v5
	v_lshlrev_b32_e32 v36, 1, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v43, v6, v30
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_mov_b32_e32 v11, 0
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s15, 0xffff
	s_mov_b32 s36, s14
	s_max_i32 s40, s35, 1
	s_lshl_b32 s42, s7, 1
	s_lshl_b32 s43, s7, 4
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s41, v34
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v44, s41, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v45, v36, v37
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s41, v35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s40, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s41, s41, 16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s1, s3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s40, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v70, v44, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v71, v39, s[28:31], 0 offen
	buffer_load_u16 v72, v38, s[28:31], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v73, v45, s[36:39], 0 offen
	buffer_load_u16 v74, v45, s[36:39], 0 offen offset:4
	buffer_load_u16 v75, v45, s[36:39], 0 offen offset:8
	buffer_load_u16 v76, v45, s[36:39], 0 offen offset:12
	buffer_load_u16 v77, v45, s[36:39], 0 offen offset:16
	buffer_load_u16 v78, v45, s[36:39], 0 offen offset:20
	buffer_load_u16 v79, v45, s[36:39], 0 offen offset:24
	buffer_load_u16 v80, v45, s[36:39], 0 offen offset:28
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v44, 0x80000000, v40, s0
	buffer_load_b32 v81, v44, s[24:27], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v44, v43 offset:640
	ds_load_u8 v45, v43 offset:896
	ds_load_u8 v46, v43 offset:768
	ds_load_u8 v47, v43 offset:512
	ds_load_u8 v48, v43 offset:128
	ds_load_u8 v49, v43 offset:384
	ds_load_u8 v50, v43 offset:256
	ds_load_u8 v51, v43
	ds_load_u8 v52, v43 offset:1664
	ds_load_u8 v53, v43 offset:1920
	ds_load_u8 v54, v43 offset:1792
	ds_load_u8 v55, v43 offset:1536
	ds_load_u8 v56, v43 offset:1152
	ds_load_u8 v57, v43 offset:1280
	ds_load_u8 v66, v43 offset:1024
	ds_load_u8 v67, v43 offset:1408
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[58:61], v41 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[62:65], v42 offset0:4 offset1:5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(11)
	ds_store_b16 v32, v70 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v33, v81
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v44, v47, v44, 0xc0c0004
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_perm_b32 v46, v51, v48, 0xc0c0004
	v_perm_b32 v47, v50, v49, 0xc0c0004
	v_perm_b32 v48, v55, v52, 0xc0c0004
	v_perm_b32 v49, v54, v53, 0xc0c0004
	v_perm_b32 v50, v66, v56, 0xc0c0004
	v_perm_b32 v51, v57, v67, 0xc0c0004
	v_lshl_or_b32 v67, v45, 16, v44
	v_lshl_or_b32 v66, v47, 16, v46
	v_lshl_or_b32 v69, v49, 16, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v68, v51, 16, v50
	v_wmma_i32_16x16x16_iu4 v[44:51], v[66:67], v[58:59], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[52:59], v[66:67], v[60:61], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[44:51], v[68:69], v[62:63], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[52:59], v[68:69], v[64:65], v[52:59] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v62, 16, v73
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v61, 16, v72
	v_lshlrev_b32_e32 v60, 16, v71
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_mul_f32_e32 v55, v55, v61
	v_dual_mul_f32 v44, v44, v60 :: v_dual_add_nc_u32 v37, s42, v37
	v_dual_mul_f32 v47, v47, v60 :: v_dual_add_nc_u32 v38, 2, v38
	v_dual_mul_f32 v48, v48, v60 :: v_dual_add_nc_u32 v39, 2, v39
	v_dual_mul_f32 v50, v50, v60 :: v_dual_lshlrev_b32 v63, 16, v74
	v_dual_mul_f32 v51, v51, v60 :: v_dual_lshlrev_b32 v64, 16, v75
	v_dual_mul_f32 v45, v45, v60 :: v_dual_lshlrev_b32 v66, 16, v77
	v_mul_f32_e32 v46, v46, v60
	v_dual_mul_f32 v49, v49, v60 :: v_dual_fmac_f32 v10, v44, v62
	v_dual_mul_f32 v53, v53, v61 :: v_dual_add_nc_u32 v40, s43, v40
	v_dual_mul_f32 v52, v52, v61 :: v_dual_lshlrev_b32 v65, 16, v76
	v_dual_mul_f32 v54, v54, v61 :: v_dual_lshlrev_b32 v67, 16, v78
	v_dual_mul_f32 v57, v57, v61 :: v_dual_lshlrev_b32 v68, 16, v79
	v_dual_mul_f32 v56, v56, v61 :: v_dual_lshlrev_b32 v69, 16, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v58, v58, v61 :: v_dual_fmac_f32 v21, v49, v67
	v_dual_mul_f32 v59, v59, v61 :: v_dual_fmac_f32 v24, v46, v64
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v25, v45, v63
	v_dual_fmac_f32 v23, v47, v65 :: v_dual_fmac_f32 v22, v48, v66
	v_dual_fmac_f32 v20, v50, v68 :: v_dual_fmac_f32 v19, v51, v69
	v_dual_fmac_f32 v18, v52, v62 :: v_dual_fmac_f32 v17, v53, v63
	v_dual_fmac_f32 v16, v54, v64 :: v_dual_fmac_f32 v15, v55, v65
	v_dual_fmac_f32 v14, v56, v66 :: v_dual_fmac_f32 v13, v57, v67
	v_dual_fmac_f32 v12, v58, v68 :: v_dual_fmac_f32 v11, v59, v69
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v38, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add3_u32 v1, 0, v27, v30
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshl_or_b32 v2, v27, 4, v31
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s16, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v5, v1 offset:640
	ds_load_u8 v6, v1 offset:768
	ds_load_u8 v7, v1 offset:512
	ds_load_u8 v8, v1 offset:896
	ds_load_u8 v9, v1 offset:128
	ds_load_u8 v31, v1 offset:256
	ds_load_u8 v32, v1
	ds_load_u8 v33, v1 offset:384
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xad_u32 v38, v2, 8, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v34, v1 offset:1664
	ds_load_u8 v35, v1 offset:1920
	ds_load_u8 v36, v1 offset:1792
	ds_load_u8 v37, v1 offset:1536
	ds_load_u8 v46, v1 offset:1152
	ds_load_u8 v47, v1 offset:1408
	ds_load_u8 v48, v1 offset:1280
	ds_load_u8 v49, v1 offset:1024
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v3, 0, v2
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v39, v7, v5, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v40, v6, v8, 0xc0c0004
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[5:8], v38 offset0:4 offset1:5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v32, v9, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v31, v31, v33, 0xc0c0004
	v_lshl_or_b32 v32, v40, 16, v39
	v_dual_mov_b32 v45, s23 :: v_dual_mov_b32 v42, s20
	v_mov_b32_e32 v44, s22
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[1:4], v3 offset0:4 offset1:5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v31, v31, 16, v9
	v_dual_mov_b32 v43, s21 :: v_dual_mov_b32 v40, s18
	v_dual_mov_b32 v41, s19 :: v_dual_mov_b32 v38, s16
	v_mov_b32_e32 v39, s17
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v37, v34, 0xc0c0004
	v_perm_b32 v33, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v49, v46, 0xc0c0004
	v_perm_b32 v35, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[31:32], v[1:2], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v2, v33, 16, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v1, v35, 16, v34
	v_wmma_i32_16x16x16_iu4 v[38:45], v[31:32], v[3:4], v[38:45] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[46:53], v[1:2], v[5:6], v[46:53] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[38:45], v[1:2], v[7:8], v[38:45] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v47
	v_cvt_f32_i32_e32 v4, v48
	v_cvt_f32_i32_e32 v6, v49
	v_cvt_f32_i32_e32 v9, v50
	v_cvt_f32_i32_e32 v33, v51
	v_cvt_f32_i32_e32 v35, v52
	v_cvt_f32_i32_e32 v37, v53
	v_cvt_f32_i32_e32 v3, v38
	v_cvt_f32_i32_e32 v5, v39
	v_cvt_f32_i32_e32 v7, v40
	v_cvt_f32_i32_e32 v8, v41
	v_cvt_f32_i32_e32 v32, v42
	v_cvt_f32_i32_e32 v34, v43
	v_cvt_f32_i32_e32 v36, v44
	v_cvt_f32_i32_e32 v38, v45
.LBB0_5:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v27, v29, v27
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v28, v28, v30
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s33, s34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s35, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s9, s13, 0xffff
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v29, 32, v27
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v30, s34, v27
	s_add_i32 s0, s0, s1
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	v_mul_lo_u32 v31, s34, v29
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	s_mov_b32 s8, s12
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v47, 0x5410
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v30, s0, v30, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s3, s6, s3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v48, 0x7632
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v28, s3, v28, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v31, s0, v31, 1
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.h, 0
	s_mov_b32 s0, 0x76543210
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v40, 4, v28
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v31, 0x80000000, v31, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v41, 8, v28
	v_cndmask_b32_e64 v39, 0x80000000, v28, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.h, v46.h
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v30, v30, s[8:11], 0 offen
	buffer_load_u16 v31, v31, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.h, v46.h
	v_mov_b16_e32 v51.h, v46.h
	v_mov_b16_e32 v52.h, v46.h
	v_mov_b16_e32 v53.h, v46.h
	v_mov_b16_e32 v54.h, v46.h
	v_mov_b16_e32 v56.h, v46.h
	v_mov_b16_e32 v55.h, v46.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v27, s7, v27
	s_mul_i32 s33, s33, s7
	v_mul_lo_u32 v29, s7, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s7, s11
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v31, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v5, v31 :: v_dual_lshlrev_b32 v30, 16, v30
	v_dual_mul_f32 v1, v1, v30 :: v_dual_add_nc_u32 v42, 12, v28
	v_dual_mul_f32 v2, v2, v30 :: v_dual_add_nc_u32 v43, 16, v28
	v_dual_mul_f32 v9, v9, v30 :: v_dual_add_nc_u32 v44, 20, v28
	v_dual_mul_f32 v4, v4, v30 :: v_dual_add_nc_u32 v45, 24, v28
	v_dual_mul_f32 v33, v33, v30 :: v_dual_add_nc_u32 v28, 28, v28
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	s_clause 0x7
	buffer_load_u16 v39, v39, s[8:11], 0 offen
	buffer_load_u16 v40, v40, s[8:11], 0 offen
	buffer_load_u16 v41, v41, s[8:11], 0 offen
	buffer_load_u16 v42, v42, s[8:11], 0 offen
	buffer_load_u16 v43, v43, s[8:11], 0 offen
	buffer_load_u16 v44, v44, s[8:11], 0 offen
	buffer_load_u16 v45, v45, s[8:11], 0 offen
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v35, v35, v30 :: v_dual_and_b32 v0, 16, v0
	v_mul_f32_e32 v6, v6, v30
	v_mul_f32_e32 v30, v37, v30
	v_dual_mul_f32 v3, v3, v31 :: v_dual_and_b32 v26, 0x78, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v31
	v_mul_f32_e32 v7, v7, v31
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v26, s33, s6, v26
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_mov_b32 s6, s10
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v32, v32, v31
	v_mul_f32_e32 v34, v34, v31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_lshl_u32 v27, v26, v27, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v37, 16, v39
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v39, 16, v40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v40, 16, v41
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v41, 16, v42
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v37, v10
	v_fma_f32 v2, v2, v39, v25
	v_fma_f32 v5, v5, v39, v17
	v_fma_f32 v4, v4, v40, v24
	v_fma_f32 v6, v6, v41, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v10, v1, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v42, 16, v43
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v44
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v44, 16, v45
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v3, v3, v37, v18
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v1, v1, v1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v42, v22
	v_fma_f32 v8, v8, v41, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v25, v2, s2
	v_cndmask_b32_e64 v5, v17, v5, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v36, v36, v31
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v22, v9, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v31, v38, v31 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v35, v35, v44, v20
	v_fma_f32 v33, v33, v43, v21
	.loc	1 187 19 is_stmt 1              ; generate_amdgcn.py:187:19
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v30, v28, v19
	v_fma_f32 v7, v7, v40, v16
	v_fma_f32 v28, v31, v28, v11
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v24, v4, s2
	v_cndmask_b32_e64 v6, v23, v6, s2
	v_cndmask_b32_e64 v20, v20, v35, s2
	v_cndmask_b32_e64 v19, v19, v30, s2
	v_cndmask_b32_e64 v3, v18, v3, s2
	v_cndmask_b32_e64 v8, v15, v8, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v15, v20, v20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v34, v34, v43, v13
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v10, v21, v33, s2
	v_cndmask_b32_e64 v7, v16, v7, s2
	v_cndmask_b32_e64 v11, v11, v28, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	v_dual_max_f32 v16, v19, v19 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v32, v32, v42, v14
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v13, v34, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v5, v5, v5
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v36, v44, v12
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v14, v32, s2
	v_cndmask_b32_e64 v12, v12, v36, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v10, 0, v10
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.l, v1.h
	v_mov_b16_e32 v49.l, v2.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v13, 0, v13 :: v_dual_mul_f32 v4, v4, v4
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v5, v5, v5 :: v_dual_mul_f32 v10, v10, v10
	v_dual_mul_f32 v8, v8, v8 :: v_dual_and_b32 v17, 1, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v18, 1, v46
	v_mov_b16_e32 v46.l, v6.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v9, v9, v9
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v15, v15, v15
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v13, v13, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.l, v4.h
	v_add3_u32 v2, v2, v17, 0x7fff
	v_and_b32_e32 v17, 1, v46
	v_mov_b16_e32 v46.l, v10.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v16, v16, v16 :: v_dual_mul_f32 v11, v11, v11
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v19, 1, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.l, v9.h
	v_add3_u32 v1, v1, v18, 0x7fff
	v_and_b32_e32 v18, 1, v46
	v_mov_b16_e32 v52.l, v15.h
	v_add3_u32 v4, v4, v19, 0x7fff
	v_mov_b16_e32 v46.l, v16.h
	v_mov_b16_e32 v2.l, v1.h
	v_add3_u32 v1, v6, v17, 0x7fff
	v_add3_u32 v6, v10, v18, 0x7fff
	v_and_b32_e32 v20, 1, v51
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v21, 1, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v53.l, v3.h
	v_mov_b16_e32 v1.l, v4.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v9, v9, v20, 0x7fff
	v_and_b32_e32 v4, 1, v46
	v_mov_b16_e32 v46.l, v5.h
	v_mov_b16_e32 v54.l, v7.h
	v_mov_b16_e32 v56.l, v12.h
	v_and_b32_e32 v22, 1, v53
	v_add3_u32 v15, v15, v21, 0x7fff
	v_mov_b16_e32 v6.l, v9.h
	v_add3_u32 v0, v16, v4, 0x7fff
	v_and_b32_e32 v4, 1, v46
	v_mov_b16_e32 v46.l, v8.h
	v_and_b32_e32 v23, 1, v54
	v_and_b32_e32 v25, 1, v56
	v_add3_u32 v3, v3, v22, 0x7fff
	v_mov_b16_e32 v0.l, v15.h
	v_cndmask_b32_e32 v9, v6, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v6, vcc_lo
	v_cndmask_b32_e32 v6, 0x1054, v47, vcc_lo
	v_cndmask_b32_e32 v10, 0x3276, v48, vcc_lo
	v_add3_u32 v4, v5, v4, 0x7fff
	v_and_b32_e32 v5, 1, v46
	v_mov_b16_e32 v46.l, v13.h
	v_mov_b16_e32 v55.l, v14.h
	v_add3_u32 v7, v7, v23, 0x7fff
	v_mov_b16_e32 v4.l, v3.h
	v_dual_cndmask_b32 v3, v0, v1 :: v_dual_cndmask_b32 v0, v1, v0
	v_permlanex16_b32 v1, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v6, 8, v6
	v_lshl_or_b32 v6, v10, 8, v10
	v_add3_u32 v5, v8, v5, 0x7fff
	v_and_b32_e32 v8, 1, v46
	v_mov_b16_e32 v46.l, v11.h
	v_and_b32_e32 v24, 1, v55
	v_mov_b16_e32 v5.l, v7.h
	v_permlanex16_b32 v7, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x540054, v2
	v_and_b32_e32 v2, 0x760076, v6
	v_and_b32_e32 v6, 1, v46
	v_add3_u32 v14, v14, v24, 0x7fff
	v_add3_u32 v12, v12, v25, 0x7fff
	v_add3_u32 v8, v13, v8, 0x7fff
	v_lshl_or_b32 v0, v0, 4, v0
	v_add3_u32 v6, v11, v6, 0x7fff
	v_mov_b16_e32 v8.l, v14.h
	v_lshl_or_b32 v2, v2, 4, v2
	v_mov_b16_e32 v6.l, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v10, v8, v4 :: v_dual_and_b32 v11, 0x7060706, v2
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo
	v_and_b32_e32 v8, 0x5040504, v0
	v_cndmask_b32_e32 v2, v5, v6, vcc_lo
	v_cndmask_b32_e32 v12, v6, v5, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v5, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v9, v8
	v_perm_b32 v1, v1, v9, v11
	v_permlanex16_b32 v9, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v7, v3, v8
	v_perm_b32 v3, v7, v3, v11
	v_perm_b32 v4, v5, v10, v8
	v_perm_b32 v5, v5, v10, v11
	v_perm_b32 v6, v9, v12, v8
	v_perm_b32 v7, v9, v12, v11
	v_add_lshl_u32 v8, v26, v29, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v27, s[4:7], 0 offen
	buffer_store_b128 v[4:7], v8, s[4:7], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 82
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 33
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 82
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4220
; TotalNumSgprs: 46
; NumVgprs: 82
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 82
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_relu2_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     82
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
