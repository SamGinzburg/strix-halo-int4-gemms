	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	v_dual_mov_b32 v13, 0 :: v_dual_lshlrev_b32 v12, 2, v0
	v_dual_mov_b32 v15, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v4, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v21, 0 :: v_dual_and_b32 v2, 0x7c, v12
	s_load_b64 s[40:41], s[0:1], 0x20
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v14, 0xe0, v0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s34, 63
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
	s_lshr_b32 s11, s11, 26
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
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s35, v4, v[2:3]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v16, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v17, v0, 4, 1
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s7
	v_and_b32_e32 v33, 0x108, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v18, 1, v14
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v35, 0, v12
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v11, 0x100, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s7, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v19, 4, v11
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
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
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s7, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s8, s9, s7
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s16, s8, 4
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s18, s16
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s17, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v1, 14, v8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v8, 0x37e, v8
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s27, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s18
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s16
	s_add_i32 s5, s10, s5
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s5, s6, s5
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s5, s18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s26, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, s6, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s6, s18
	s_cmp_ge_u32 s6, s18
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s6, s18
	s_cselect_b32 s5, s19, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s6, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s19, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s4, 31
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s19, s17
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s20, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s18, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s6, s5, s16
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v9, s20, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, s18, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s6
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v10, s20, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s16, s21, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s4, s18, v9
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 16, v9
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s5, 7
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s5, s18, v10
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 16, v10
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s6, s16, 5
.Ltmp21:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s2, s34, s18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 31
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s22, s35, s20
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v6, s20, s2, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, vcc_lo, s4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s22, s33, v5
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
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v6, v6, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v5, v5, s[24:27], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_bfe_i32 v7, v0, 6, 1
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v10, 0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s7, s6, -1
	s_mov_b32 s16, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v7, 0x88, v7
	s_mov_b64 s[4:5], s[14:15]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lt_i32 s21, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v7, v7, v8
	v_add_nc_u32_e32 v34, 0, v7
	s_waitcnt vmcnt(1)
	ds_store_b16 v34, v6 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v35, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s14, s20, 16
	v_sub_nc_u32_e32 v37, s18, v4
	v_add_nc_u32_e32 v9, s14, v4
	v_lshl_or_b32 v4, s19, 8, v14
	v_add3_u32 v8, s34, v19, v16
	s_lshl_b32 s0, s17, 8
	s_mov_b32 s20, s16
	v_mul_lo_u32 v9, s35, v9
	v_subrev_nc_u32_e32 v39, s0, v4
	s_lshl_b32 s0, s19, 7
	s_mov_b32 s19, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_lshl_or_b32 v5, v16, 4, v33
	v_add3_u32 v2, v9, s0, v2
	s_lshl_b32 s0, s17, 7
	s_mov_b32 s17, s16
	v_add_nc_u32_e32 v10, 32, v8
	v_add_nc_u32_e32 v3, s34, v3
	v_mul_lo_u32 v8, s6, v8
	v_xor_b32_e32 v7, 8, v5
	v_sub_nc_u32_e32 v36, s18, v1
	v_mul_lo_u32 v10, s6, v10
	v_subrev_nc_u32_e32 v42, s0, v2
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v44, 0, v7
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_lshlrev_b32_e32 v40, 1, v10
	v_mad_u64_u32 v[9:10], null, s18, v3, v[1:2]
	s_mov_b32 s18, s16
	v_add_nc_u32_e32 v6, 0, v16
	v_lshlrev_b32_e32 v41, 1, v8
	v_add_nc_u32_e32 v43, 0, v5
	v_lshlrev_b32_e32 v38, 1, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v45, v6, v18
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v13, 0
	s_and_b32 s29, s13, 0xffff
	s_mov_b32 s28, s12
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	s_max_i32 s15, s7, 1
	s_lshl_b32 s42, s35, 1
	s_lshl_b32 s43, s35, 4
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s14, v36
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v46, s14, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v47, v38, v39
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s14, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s15, s15, -1
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s14, s14, 16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v46, 0x80000000, v46, s0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s1, s3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s15, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v72, v46, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v73, v41, s[28:31], 0 offen
	buffer_load_u16 v74, v40, s[28:31], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v75, v47, s[36:39], 0 offen
	buffer_load_u16 v76, v47, s[36:39], 0 offen offset:4
	buffer_load_u16 v77, v47, s[36:39], 0 offen offset:8
	buffer_load_u16 v78, v47, s[36:39], 0 offen offset:12
	buffer_load_u16 v79, v47, s[36:39], 0 offen offset:16
	buffer_load_u16 v80, v47, s[36:39], 0 offen offset:20
	buffer_load_u16 v81, v47, s[36:39], 0 offen offset:24
	buffer_load_u16 v82, v47, s[36:39], 0 offen offset:28
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v46, 0x80000000, v42, s0
	buffer_load_b32 v83, v46, s[24:27], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v46, v45 offset:640
	ds_load_u8 v47, v45 offset:896
	ds_load_u8 v48, v45 offset:768
	ds_load_u8 v49, v45 offset:512
	ds_load_u8 v50, v45 offset:128
	ds_load_u8 v51, v45 offset:384
	ds_load_u8 v52, v45 offset:256
	ds_load_u8 v53, v45
	ds_load_u8 v54, v45 offset:1664
	ds_load_u8 v55, v45 offset:1920
	ds_load_u8 v56, v45 offset:1792
	ds_load_u8 v57, v45 offset:1536
	ds_load_u8 v58, v45 offset:1152
	ds_load_u8 v59, v45 offset:1280
	ds_load_u8 v68, v45 offset:1024
	ds_load_u8 v69, v45 offset:1408
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[60:63], v43 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[64:67], v44 offset0:4 offset1:5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(11)
	ds_store_b16 v34, v72 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v35, v83
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v46, v49, v46, 0xc0c0004
	v_perm_b32 v47, v48, v47, 0xc0c0004
	v_perm_b32 v48, v53, v50, 0xc0c0004
	v_perm_b32 v49, v52, v51, 0xc0c0004
	v_perm_b32 v50, v57, v54, 0xc0c0004
	v_perm_b32 v51, v56, v55, 0xc0c0004
	v_perm_b32 v52, v68, v58, 0xc0c0004
	v_perm_b32 v53, v59, v69, 0xc0c0004
	v_lshl_or_b32 v69, v47, 16, v46
	v_lshl_or_b32 v68, v49, 16, v48
	v_lshl_or_b32 v71, v51, 16, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v70, v53, 16, v52
	v_wmma_i32_16x16x16_iu4 v[46:53], v[68:69], v[60:61], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[68:69], v[62:63], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[46:53], v[70:71], v[64:65], v[46:53] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[54:61], v[70:71], v[66:67], v[54:61] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v64, 16, v75
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v63, 16, v74
	v_lshlrev_b32_e32 v62, 16, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_mul_f32_e32 v57, v57, v63
	v_dual_mul_f32 v46, v46, v62 :: v_dual_add_nc_u32 v39, s42, v39
	v_dual_mul_f32 v53, v53, v62 :: v_dual_lshlrev_b32 v66, 16, v77
	v_mul_f32_e32 v48, v48, v62
	v_dual_mul_f32 v49, v49, v62 :: v_dual_add_nc_u32 v40, 2, v40
	v_dual_mul_f32 v50, v50, v62 :: v_dual_add_nc_u32 v41, 2, v41
	v_dual_mul_f32 v52, v52, v62 :: v_dual_lshlrev_b32 v65, 16, v76
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v31, v48, v66 :: v_dual_lshlrev_b32 v68, 16, v79
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v47, v47, v62
	v_dual_mul_f32 v51, v51, v62 :: v_dual_fmac_f32 v10, v46, v64
	v_dual_mul_f32 v55, v55, v63 :: v_dual_add_nc_u32 v42, s43, v42
	v_dual_mul_f32 v54, v54, v63 :: v_dual_lshlrev_b32 v67, 16, v78
	v_dual_mul_f32 v56, v56, v63 :: v_dual_lshlrev_b32 v69, 16, v80
	v_dual_mul_f32 v59, v59, v63 :: v_dual_lshlrev_b32 v70, 16, v81
	v_dual_mul_f32 v58, v58, v63 :: v_dual_lshlrev_b32 v71, 16, v82
	v_dual_mul_f32 v60, v60, v63 :: v_dual_fmac_f32 v29, v50, v68
	v_dual_mul_f32 v61, v61, v63 :: v_dual_fmac_f32 v32, v47, v65
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v30, v49, v67 :: v_dual_fmac_f32 v27, v52, v70
	v_dual_fmac_f32 v28, v51, v69 :: v_dual_fmac_f32 v25, v54, v64
	v_dual_fmac_f32 v26, v53, v71 :: v_dual_fmac_f32 v23, v56, v66
	v_dual_fmac_f32 v24, v55, v65 :: v_dual_fmac_f32 v21, v58, v68
	v_dual_fmac_f32 v22, v57, v67 :: v_dual_fmac_f32 v15, v60, v70
	v_dual_fmac_f32 v20, v59, v69 :: v_dual_fmac_f32 v13, v61, v71
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add3_u32 v1, 0, v16, v18
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshl_or_b32 v2, v16, 4, v33
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s16, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v3, v1 offset:640
	ds_load_u8 v4, v1 offset:768
	ds_load_u8 v5, v1 offset:512
	ds_load_u8 v6, v1 offset:896
	ds_load_u8 v7, v1 offset:128
	ds_load_u8 v8, v1 offset:256
	ds_load_u8 v9, v1
	ds_load_u8 v33, v1 offset:384
	ds_load_u8 v51, v1 offset:1664
	ds_load_u8 v52, v1 offset:1920
	ds_load_u8 v53, v1 offset:1792
	ds_load_u8 v54, v1 offset:1536
	ds_load_u8 v55, v1 offset:1152
	ds_load_u8 v56, v1 offset:1408
	ds_load_u8 v57, v1 offset:1280
	ds_load_u8 v1, v1 offset:1024
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v34, 0, v2
	v_xad_u32 v2, v2, 8, 0
	ds_load_2addr_stride64_b64 v[41:44], v34 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[45:48], v2 offset0:4 offset1:5
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v3, v5, v3, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v4, v4, v6, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v2, v9, v7, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v5, v8, v33, 0xc0c0004
	v_dual_mov_b32 v40, s23 :: v_dual_mov_b32 v37, s20
	v_lshl_or_b32 v50, v4, 16, v3
	v_mov_b32_e32 v39, s22
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v49, v5, 16, v2
	v_dual_mov_b32 v38, s21 :: v_dual_mov_b32 v35, s18
	v_dual_mov_b32 v36, s19 :: v_dual_mov_b32 v33, s16
	v_mov_b32_e32 v34, s17
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v54, v51, 0xc0c0004
	v_perm_b32 v51, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v52, v1, v55, 0xc0c0004
	v_perm_b32 v53, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[49:50], v[41:42], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v42, v51, 16, v9
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[43:44], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v41, v53, 16, v52
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[47:48], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
.LBB0_5:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v16, v19, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s7, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v17, v17, v18
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s35
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s34, s6
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v18, 32, v16
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s3, s33, s3
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v16, s6, v16
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v17, s3, v17, 1
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	v_mul_lo_u32 v18, s6, v18
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v19, 4, v17
	v_add_nc_u32_e32 v33, 8, v17
	v_add_nc_u32_e32 v42, 12, v17
	v_add_nc_u32_e32 v43, 16, v17
	v_add_nc_u32_e32 v44, 20, v17
	v_add_nc_u32_e32 v45, 24, v17
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v16, s0, v16, 1
	v_add_lshl_u32 v18, s0, v18, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v41, 0x80000000, v17, s2
	v_add_nc_u32_e32 v17, 28, v17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s13, s13, 0xffff
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x4
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v46, v19, s[4:7], 0 offen
	buffer_load_u16 v47, v33, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v48, v16, s[12:15], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x2
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v49, v17, s[4:7], 0 offen
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v50, v18, s[12:15], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_bfe_i32 v16, v0, 0, 1
	v_and_b32_e32 v12, 0x78, v12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v17, 0x7f, v0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s34, s34, s35
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v33, 7, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v18, 0x840, v16
	v_lshl_or_b32 v12, v14, 3, v12
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v16, s34, s33, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v51, 14, v0
	v_lshrrev_b32_e32 v14, 1, v11
	s_waitcnt lgkmcnt(0)
	v_xor_b32_e32 v12, v12, v18
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[17:18], null, s35, v33, v[16:17]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshlrev_b32_e32 v19, 11, v51
	s_barrier
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or3_b32 v12, v19, v14, v12
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v52, 0, v12
	v_xad_u32 v53, v12, 8, 0
	v_xad_u32 v54, v12, 16, 0
	v_xad_u32 v55, v12, 24, 0
	v_xad_u32 v56, v12, 32, 0
	v_xad_u32 v57, v12, 40, 0
	v_xad_u32 v58, v12, 48, 0
	v_xad_u32 v59, v12, 56, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[18:19], 2, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v14, 16, v46
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v46, 16, v48
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v48, 16, v50
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v1, v1, v46 :: v_dual_lshlrev_b32 v12, 16, v41
	v_mul_f32_e32 v2, v2, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v37, v37, v48 :: v_dual_lshlrev_b32 v42, 16, v42
	v_dual_mul_f32 v9, v9, v48 :: v_dual_mul_f32 v4, v4, v46
	v_dual_mul_f32 v34, v34, v48 :: v_dual_lshlrev_b32 v41, 16, v47
	v_dual_mul_f32 v38, v38, v48 :: v_dual_mul_f32 v3, v3, v46
	v_dual_mul_f32 v6, v6, v46 :: v_dual_mul_f32 v35, v35, v48
	v_dual_mul_f32 v8, v8, v46 :: v_dual_lshlrev_b32 v47, 16, v49
	v_dual_mul_f32 v36, v36, v48 :: v_dual_lshlrev_b32 v43, 16, v43
	v_dual_mul_f32 v40, v40, v48 :: v_dual_mul_f32 v5, v5, v46
	v_mul_f32_e32 v7, v7, v46
	v_mul_f32_e32 v39, v39, v48
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v12, v10
	v_fma_f32 v2, v2, v14, v32
	v_fma_f32 v50, v9, v12, v25
	v_fma_f32 v4, v4, v42, v30
	v_fma_f32 v34, v34, v14, v24
	v_fma_f32 v46, v3, v41, v31
	v_fma_f32 v6, v6, v44, v28
	v_fma_f32 v35, v35, v41, v23
	v_fma_f32 v8, v8, v47, v26
	v_fma_f32 v36, v36, v42, v22
	v_fma_f32 v48, v5, v43, v29
	v_fma_f32 v37, v37, v43, v21
	v_fma_f32 v49, v7, v45, v27
	v_fma_f32 v38, v38, v44, v20
	v_fma_f32 v39, v39, v45, v15
	v_fma_f32 v40, v40, v47, v13
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v10, v1, s2
	v_cndmask_b32_e64 v3, v32, v2, s2
	v_cndmask_b32_e64 v2, v25, v50, s2
	v_cndmask_b32_e64 v7, v30, v4, s2
	v_cndmask_b32_e64 v4, v24, v34, s2
	v_cndmask_b32_e64 v5, v31, v46, s2
	v_cndmask_b32_e64 v28, v28, v6, s2
	v_cndmask_b32_e64 v6, v23, v35, s2
	v_cndmask_b32_e64 v12, v26, v8, s2
	v_cndmask_b32_e64 v8, v22, v36, s2
	v_cndmask_b32_e64 v9, v29, v48, s2
	v_cndmask_b32_e64 v10, v21, v37, s2
	v_cndmask_b32_e64 v14, v27, v49, s2
	v_cndmask_b32_e64 v29, v20, v38, s2
	v_cndmask_b32_e64 v15, v15, v39, s2
	v_cndmask_b32_e64 v13, v13, v40, s2
	ds_store_b64 v52, v[1:2]
	ds_store_b64 v53, v[3:4]
	ds_store_b64 v54, v[5:6]
	ds_store_b64 v55, v[7:8]
	ds_store_b64 v56, v[9:10]
	ds_store_b64 v57, v[28:29]
	ds_store_b64 v58, v[14:15]
	ds_store_b64 v59, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v21, v[18:19], off
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v1, 1, v0
	v_bfe_i32 v2, v0, 7, 1
	v_lshlrev_b32_e32 v0, 4, v0
	v_lshlrev_b32_e32 v3, 2, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v1, 6, v1
	v_and_b32_e32 v2, 0x840, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v0, 0x700, v0
	v_xor_b32_e32 v1, v2, v1
	v_cndmask_b32_e64 v2, 0x1008, 0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v0, v0, v3, v1
	v_xor_b32_e32 v0, v0, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x2010, v0, 0
	v_xad_u32 v3, 0x4020, v0, 0
	v_xad_u32 v0, 0x6030, v0, 0
	ds_load_2addr_b64 v[12:15], v1 offset1:16
	ds_load_2addr_b64 v[8:11], v2 offset1:16
	ds_load_2addr_b64 v[4:7], v3 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_6:                                ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v20, v21, v12
	global_atomic_cmpswap_b32 v20, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v21
	v_mov_b32_e32 v21, v20
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v12, 4, v33
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v12, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_8:                                ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v20, v21, v8
	global_atomic_cmpswap_b32 v12, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v21
	v_mov_b32_e32 v21, v12
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s35, 3, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_10:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v20, v21, v4
	global_atomic_cmpswap_b32 v8, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v21
	v_mov_b32_e32 v21, v8
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v4, 12, v33
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v4, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_12:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v20, v21, v0
	global_atomic_cmpswap_b32 v4, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v21
	v_mov_b32_e32 v21, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s35, 4, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_14:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v14
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 20, v33
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_16:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v10
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, 24, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_18:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v6
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 28, v33
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s40, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_20:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v2
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v18, s35, 5, v17
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v18, vcc_lo, s40, v18
	v_add_co_ci_u32_e64 v19, null, s41, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_22:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 36, v33
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[12:13], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s40, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s41, v13, vcc_lo
	global_load_b32 v19, v[12:13], off
.LBB0_24:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[8:9], null, s35, 40, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s40, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s41, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_26:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 44, v33
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[4:5], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s40, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s41, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_28:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, 48, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_30:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 52, v33
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_32:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, 56, v[17:18]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_34:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 60, v33
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s40, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s41, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_36:                               ; %atomicrmw.start
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
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
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
		.amdhsa_next_free_vgpr 84
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
		.amdhsa_inst_pref_size 43
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.num_vgpr, 84
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5380
; TotalNumSgprs: 46
; NumVgprs: 84
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 84
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     84
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
