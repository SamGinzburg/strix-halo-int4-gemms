	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v2, 7, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_lshlrev_b32_e32 v12, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v62, 1, v0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v67, 0, v12
	v_and_b32_e32 v63, 0x70, v62
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s13, s4, 2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v64, v0, 4, 1
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v68, v67, v12
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s17, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s13
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s17
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s15, s18
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s16, s15
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 4, v2
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s7, 0, s15
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[4:5], null, s22, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s16
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s23, v3, v[2:3]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s16, s14, s6
	s_xor_b32 s6, s2, s18
	s_mul_i32 s19, s16, s15
	s_ashr_i32 s13, s6, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s16, 1
	s_sub_i32 s20, s14, s15
	s_cmp_ge_u32 s14, s15
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s16, s19, s16
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s16, 1
	s_cmp_ge_u32 s14, s15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s27, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s14, s19, s16
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s16, s12, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s14, s14, s13
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s15, s3, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s19, s12, 0x7f
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s16
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s26, s14, s13
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s15, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s16, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s26, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s16, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 64, v6
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s17
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s20, s22, s15
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s26, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s35, s18, 7
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 6
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s21, s23, s15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v4, s20, s34, v4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s21, s33, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, vcc_lo, s3
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s3, s2, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s26, s6
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_and_b32 s25, s25, 0xffff
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b64 v[10:11], v4, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[6:9], v5, s[24:27], 0 offen
	s_load_b64 s[20:21], s[0:1], 0x20
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v5, 4, v0
	v_and_b32_e32 v4, 15, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s35, -1
	s_mov_b32 s12, 0
	s_cmpk_lt_i32 s19, 0x100
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v5, 16, v5
	v_add3_u32 v66, 0, v4, v63
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v67, v[10:11] offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v68, v[6:9]
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v61, v5, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v65, 0, v61
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s3, s15, 64
	v_add3_u32 v4, s34, v5, v4
	v_dual_mov_b32 v46, 0 :: v_dual_and_b32 v5, 0xe0, v0
	v_sub_nc_u32_e32 v69, s16, v3
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v6, s3, v3
	v_lshl_or_b32 v3, s14, 8, v5
	s_lshl_b32 s0, s13, 8
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v5, s23, v6
	v_subrev_nc_u32_e32 v71, s0, v3
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	v_mul_lo_u32 v3, s22, v6
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_add3_u32 v2, v5, s0, v2
	s_lshl_b32 s0, s13, 7
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v7, 32, v4
	v_mul_lo_u32 v4, s35, v4
	v_lshlrev_b32_e32 v70, 1, v64
	v_subrev_nc_u32_e32 v74, s0, v2
	v_add3_u32 v75, v3, s34, v1
	v_mul_lo_u32 v7, s35, v7
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_mov_b32_e32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_lshlrev_b32 v73, 1, v4
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_lshlrev_b32 v72, 1, v7
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_max_i32 s40, s1, 1
	s_lshl_b32 s41, s23, 1
	s_lshl_b32 s42, s23, 6
	s_lshl_b32 s22, s22, 6
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s3, v69
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s40, -1
	s_add_i32 s3, s3, 64
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s40, 0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v75, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v75, s22, v75
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b64 v[29:30], v9, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v74, s0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v74, s42, v74
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[25:28], v9, s[24:27], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v65 offset:8512
	ds_load_u8 v10, v65 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v65 offset:8640
	ds_load_u8 v11, v65 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v9, v65 offset:8256
	ds_load_u8 v10, v65 offset:8192
	ds_load_u8 v19, v65 offset:8224
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v65 offset:8384
	ds_load_u8 v11, v65 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v10, 16, v9
	ds_load_u8 v9, v66 offset:640
	ds_load_u8 v10, v66 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v66 offset:896
	ds_load_u8 v11, v66 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v10, 16, v9
	ds_load_u8 v9, v66 offset:128
	ds_load_u8 v10, v66
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v66 offset:384
	ds_load_u8 v11, v66 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[17:18], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:9024
	ds_load_u8 v18, v65 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:9152
	ds_load_u8 v20, v65 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:8768
	ds_load_u8 v20, v65 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v65 offset:8896
	ds_load_u8 v21, v65 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v66 offset:1664
	ds_load_u8 v21, v66 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:1920
	ds_load_u8 v22, v66 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v21, 16, v20
	ds_load_u8 v20, v66 offset:1152
	ds_load_u8 v21, v66 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:1408
	ds_load_u8 v22, v66 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:9536
	ds_load_u8 v18, v65 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:9664
	ds_load_u8 v20, v65 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:9280
	ds_load_u8 v20, v65 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v65 offset:9408
	ds_load_u8 v21, v65 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v66 offset:2688
	ds_load_u8 v21, v66 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:2944
	ds_load_u8 v22, v66 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v21, 16, v20
	ds_load_u8 v20, v66 offset:2176
	ds_load_u8 v21, v66 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:2432
	ds_load_u8 v22, v66 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:10048
	ds_load_u8 v18, v65 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:10176
	ds_load_u8 v20, v65 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:9792
	ds_load_u8 v20, v65 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v65 offset:9920
	ds_load_u8 v21, v65 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v66 offset:3712
	ds_load_u8 v21, v66 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:3968
	ds_load_u8 v22, v66 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v21, 16, v20
	ds_load_u8 v20, v66 offset:3200
	ds_load_u8 v21, v66 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:3456
	ds_load_u8 v22, v66 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:10560
	ds_load_u8 v18, v65 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:10688
	ds_load_u8 v20, v65 offset:10624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:10304
	ds_load_u8 v20, v65 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v65 offset:10432
	ds_load_u8 v21, v65 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v66 offset:4736
	ds_load_u8 v21, v66 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:4992
	ds_load_u8 v22, v66 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v21, 16, v20
	ds_load_u8 v20, v66 offset:4224
	ds_load_u8 v21, v66 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:4480
	ds_load_u8 v22, v66 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:11072
	ds_load_u8 v18, v65 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:11200
	ds_load_u8 v20, v65 offset:11136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:10816
	ds_load_u8 v20, v65 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v65 offset:10944
	ds_load_u8 v21, v65 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v66 offset:5760
	ds_load_u8 v21, v66 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:6016
	ds_load_u8 v22, v66 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v21, 16, v20
	ds_load_u8 v20, v66 offset:5248
	ds_load_u8 v21, v66 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:5504
	ds_load_u8 v22, v66 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:11584
	ds_load_u8 v18, v65 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:11712
	ds_load_u8 v20, v65 offset:11648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:11328
	ds_load_u8 v20, v65 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v65 offset:11456
	ds_load_u8 v21, v65 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v66 offset:6784
	ds_load_u8 v21, v66 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:7040
	ds_load_u8 v22, v66 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v21, 16, v20
	ds_load_u8 v20, v66 offset:6272
	ds_load_u8 v21, v66 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:6528
	ds_load_u8 v22, v66 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:12096
	ds_load_u8 v18, v65 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:12224
	ds_load_u8 v20, v65 offset:12160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:11840
	ds_load_u8 v20, v65 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v65 offset:11968
	ds_load_u8 v21, v65 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v66 offset:7808
	ds_load_u8 v21, v66 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:8064
	ds_load_u8 v22, v66 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v21, 16, v20
	ds_load_u8 v20, v66 offset:7296
	ds_load_u8 v21, v66 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v66 offset:7552
	ds_load_u8 v22, v66 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:8544
	ds_load_u8 v18, v65 offset:8480
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:8672
	ds_load_u8 v20, v65 offset:8608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v18, 16, v17
	ds_load_u8 v17, v65 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:8416
	ds_load_u8 v19, v65 offset:8352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[78:79], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v76, v65 offset:9056
	ds_load_u8 v77, v65 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v65 offset:9184
	ds_load_u8 v78, v65 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v77, 16, v76
	ds_load_u8 v76, v65 offset:8800
	ds_load_u8 v78, v65 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v78, v76, 0xc0c0004
	ds_load_u8 v78, v65 offset:8928
	ds_load_u8 v79, v65 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v78, 16, v76
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[76:77], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v43, v65 offset:9568
	ds_load_u8 v44, v65 offset:9504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v65 offset:9696
	ds_load_u8 v76, v65 offset:9632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v76, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v65 offset:9312
	ds_load_u8 v76, v65 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v76, v43, 0xc0c0004
	ds_load_u8 v76, v65 offset:9440
	ds_load_u8 v77, v65 offset:9376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v76, 16, v43
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[43:44], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v41, v65 offset:10080
	ds_load_u8 v42, v65 offset:10016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v65 offset:10208
	ds_load_u8 v43, v65 offset:10144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v65 offset:9824
	ds_load_u8 v43, v65 offset:9760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v65 offset:9952
	ds_load_u8 v44, v65 offset:9888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[41:42], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v39, v65 offset:10592
	ds_load_u8 v40, v65 offset:10528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v65 offset:10720
	ds_load_u8 v41, v65 offset:10656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v65 offset:10336
	ds_load_u8 v41, v65 offset:10272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v65 offset:10464
	ds_load_u8 v42, v65 offset:10400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v41, 16, v39
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[39:40], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v37, v65 offset:11104
	ds_load_u8 v38, v65 offset:11040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v65 offset:11232
	ds_load_u8 v39, v65 offset:11168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v65 offset:10848
	ds_load_u8 v39, v65 offset:10784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v39, v37, 0xc0c0004
	ds_load_u8 v39, v65 offset:10976
	ds_load_u8 v40, v65 offset:10912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v39, 16, v37
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[37:38], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v35, v65 offset:11616
	ds_load_u8 v36, v65 offset:11552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v65 offset:11744
	ds_load_u8 v37, v65 offset:11680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v36, 16, v35
	ds_load_u8 v35, v65 offset:11360
	ds_load_u8 v37, v65 offset:11296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v37, v35, 0xc0c0004
	ds_load_u8 v37, v65 offset:11488
	ds_load_u8 v38, v65 offset:11424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v37, 16, v35
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[35:36], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v65 offset:12128
	ds_load_u8 v34, v65 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v65 offset:12256
	ds_load_u8 v35, v65 offset:12192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v65 offset:11872
	ds_load_u8 v35, v65 offset:11808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v65 offset:12000
	ds_load_u8 v36, v65 offset:11936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[31:32], v[33:34], v[17:24] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v31, v73, s[28:31], 0 offen
	buffer_load_u16 v32, v72, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v72, 2, v72
	v_add_nc_u32_e32 v73, 2, v73
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v18, v32, v18 :: v_dual_lshlrev_b32 v31, 16, v31
	v_mul_f32_e32 v9, v9, v31
	v_dual_mul_f32 v20, v32, v20 :: v_dual_add_nc_u32 v33, v70, v71
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v34, v33, s[36:39], 0 offen
	buffer_load_u16 v35, v33, s[36:39], 0 offen offset:4
	buffer_load_u16 v36, v33, s[36:39], 0 offen offset:8
	buffer_load_u16 v37, v33, s[36:39], 0 offen offset:12
	buffer_load_u16 v38, v33, s[36:39], 0 offen offset:16
	buffer_load_u16 v39, v33, s[36:39], 0 offen offset:20
	buffer_load_u16 v40, v33, s[36:39], 0 offen offset:24
	buffer_load_u16 v33, v33, s[36:39], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v10, v10, v31 :: v_dual_mul_f32 v17, v32, v17
	v_mul_f32_e32 v11, v11, v31
	v_mul_f32_e32 v12, v12, v31
	v_mul_f32_e32 v13, v13, v31
	v_dual_mul_f32 v14, v14, v31 :: v_dual_mul_f32 v21, v32, v21
	v_mul_f32_e32 v15, v15, v31
	v_mul_f32_e32 v16, v16, v31
	v_mul_f32_e32 v22, v32, v22
	v_dual_mul_f32 v24, v32, v24 :: v_dual_add_nc_u32 v71, s41, v71
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v67, v[29:30] offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b128 v68, v[25:28]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v31, 16, v35
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v35, 16, v37
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v19, v32, v19 :: v_dual_fmac_f32 v46, v9, v34
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v37, 16, v39
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v60, v10, v31 :: v_dual_lshlrev_b32 v39, 16, v40
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v23, v32, v23 :: v_dual_fmac_f32 v56, v14, v37
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v59, v11, v36 :: v_dual_fmac_f32 v58, v12, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v57, v13, v38 :: v_dual_fmac_f32 v54, v16, v33
	v_dual_fmac_f32 v55, v15, v39 :: v_dual_fmac_f32 v52, v17, v34
	v_fmac_f32_e32 v53, v18, v31
	v_dual_fmac_f32 v51, v19, v36 :: v_dual_fmac_f32 v50, v20, v35
	v_dual_fmac_f32 v49, v21, v38 :: v_dual_fmac_f32 v48, v22, v37
	v_fmac_f32_e32 v47, v23, v39
	v_fmac_f32_e32 v45, v24, v33
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v1, v65 offset:8512
	ds_load_u8 v2, v65 offset:8448
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v65 offset:8640
	ds_load_u8 v3, v65 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v2, 16, v1
	ds_load_u8 v1, v65 offset:8256
	ds_load_u8 v2, v65 offset:8192
	ds_load_u8 v35, v65 offset:8224
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v65 offset:8384
	ds_load_u8 v3, v65 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v2, 16, v1
	ds_load_u8 v1, v66 offset:640
	ds_load_u8 v2, v66 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v66 offset:896
	ds_load_u8 v3, v66 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v2, 16, v1
	ds_load_u8 v1, v66 offset:128
	ds_load_u8 v2, v66
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v66 offset:384
	ds_load_u8 v3, v66 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:9024
	ds_load_u8 v18, v65 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:9152
	ds_load_u8 v19, v65 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:8768
	ds_load_u8 v19, v65 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v65 offset:8896
	ds_load_u8 v20, v65 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v66 offset:1664
	ds_load_u8 v20, v66 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:1920
	ds_load_u8 v21, v66 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v20, 16, v19
	ds_load_u8 v19, v66 offset:1152
	ds_load_u8 v20, v66 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:1408
	ds_load_u8 v21, v66 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:9536
	ds_load_u8 v18, v65 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:9664
	ds_load_u8 v19, v65 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:9280
	ds_load_u8 v19, v65 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v65 offset:9408
	ds_load_u8 v20, v65 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v66 offset:2688
	ds_load_u8 v20, v66 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:2944
	ds_load_u8 v21, v66 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v20, 16, v19
	ds_load_u8 v19, v66 offset:2176
	ds_load_u8 v20, v66 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:2432
	ds_load_u8 v21, v66 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:10048
	ds_load_u8 v18, v65 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:10176
	ds_load_u8 v19, v65 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:9792
	ds_load_u8 v19, v65 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v65 offset:9920
	ds_load_u8 v20, v65 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v66 offset:3712
	ds_load_u8 v20, v66 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:3968
	ds_load_u8 v21, v66 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v20, 16, v19
	ds_load_u8 v19, v66 offset:3200
	ds_load_u8 v20, v66 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:3456
	ds_load_u8 v21, v66 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:10560
	ds_load_u8 v18, v65 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:10688
	ds_load_u8 v19, v65 offset:10624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:10304
	ds_load_u8 v19, v65 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v65 offset:10432
	ds_load_u8 v20, v65 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v66 offset:4736
	ds_load_u8 v20, v66 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:4992
	ds_load_u8 v21, v66 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v20, 16, v19
	ds_load_u8 v19, v66 offset:4224
	ds_load_u8 v20, v66 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:4480
	ds_load_u8 v21, v66 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:11072
	ds_load_u8 v18, v65 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:11200
	ds_load_u8 v19, v65 offset:11136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:10816
	ds_load_u8 v19, v65 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v65 offset:10944
	ds_load_u8 v20, v65 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v66 offset:5760
	ds_load_u8 v20, v66 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:6016
	ds_load_u8 v21, v66 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v20, 16, v19
	ds_load_u8 v19, v66 offset:5248
	ds_load_u8 v20, v66 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:5504
	ds_load_u8 v21, v66 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:11584
	ds_load_u8 v18, v65 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:11712
	ds_load_u8 v19, v65 offset:11648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v65 offset:11328
	ds_load_u8 v19, v65 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v65 offset:11456
	ds_load_u8 v20, v65 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v66 offset:6784
	ds_load_u8 v20, v66 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:7040
	ds_load_u8 v33, v66 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v33, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v20, 16, v19
	ds_load_u8 v19, v66 offset:6272
	ds_load_u8 v33, v66 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v33, v19, 0xc0c0004
	ds_load_u8 v33, v66 offset:6528
	ds_load_u8 v34, v66 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v33, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v65 offset:12096
	ds_load_u8 v18, v65 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:12224
	ds_load_u8 v33, v65 offset:12160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v33, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v65 offset:11840
	ds_load_u8 v18, v65 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v65 offset:11968
	ds_load_u8 v33, v65 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v33, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v66 offset:7808
	ds_load_u8 v18, v66 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:8064
	ds_load_u8 v36, v66 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v36, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:7296
	ds_load_u8 v36, v66 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v36, v17, 0xc0c0004
	ds_load_u8 v36, v66 offset:7552
	ds_load_u8 v37, v66 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v36, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[33:34], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v33, v65 offset:8544
	ds_load_u8 v34, v65 offset:8480
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v65 offset:8672
	ds_load_u8 v36, v65 offset:8608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v36, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v65 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v65 offset:8416
	ds_load_u8 v36, v65 offset:8352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[33:34], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v31, v65 offset:9056
	ds_load_u8 v32, v65 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v65 offset:9184
	ds_load_u8 v33, v65 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v32, 16, v31
	ds_load_u8 v31, v65 offset:8800
	ds_load_u8 v33, v65 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v33, v31, 0xc0c0004
	ds_load_u8 v33, v65 offset:8928
	ds_load_u8 v34, v65 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v33, 16, v31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[31:32], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v65 offset:9568
	ds_load_u8 v30, v65 offset:9504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v65 offset:9696
	ds_load_u8 v31, v65 offset:9632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v65 offset:9312
	ds_load_u8 v31, v65 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v31, v29, 0xc0c0004
	ds_load_u8 v31, v65 offset:9440
	ds_load_u8 v32, v65 offset:9376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v31, 16, v29
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v27, v65 offset:10080
	ds_load_u8 v28, v65 offset:10016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v65 offset:10208
	ds_load_u8 v29, v65 offset:10144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v28, 16, v27
	ds_load_u8 v27, v65 offset:9824
	ds_load_u8 v29, v65 offset:9760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v29, v27, 0xc0c0004
	ds_load_u8 v29, v65 offset:9952
	ds_load_u8 v30, v65 offset:9888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v29, 16, v27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[27:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v65 offset:10592
	ds_load_u8 v26, v65 offset:10528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v65 offset:10720
	ds_load_u8 v27, v65 offset:10656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v65 offset:10336
	ds_load_u8 v27, v65 offset:10272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v65 offset:10464
	ds_load_u8 v28, v65 offset:10400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[25:26], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v23, v65 offset:11104
	ds_load_u8 v24, v65 offset:11040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v65 offset:11232
	ds_load_u8 v25, v65 offset:11168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v24, 16, v23
	ds_load_u8 v23, v65 offset:10848
	ds_load_u8 v25, v65 offset:10784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v25, v23, 0xc0c0004
	ds_load_u8 v25, v65 offset:10976
	ds_load_u8 v26, v65 offset:10912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v25, 16, v23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v21, v65 offset:11616
	ds_load_u8 v22, v65 offset:11552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v65 offset:11744
	ds_load_u8 v23, v65 offset:11680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v22, 16, v21
	ds_load_u8 v21, v65 offset:11360
	ds_load_u8 v23, v65 offset:11296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v23, v21, 0xc0c0004
	ds_load_u8 v23, v65 offset:11488
	ds_load_u8 v24, v65 offset:11424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v23, 16, v21
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v19, v65 offset:12128
	ds_load_u8 v20, v65 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v65 offset:12256
	ds_load_u8 v21, v65 offset:12192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v20, 16, v19
	ds_load_u8 v19, v65 offset:11872
	ds_load_u8 v21, v65 offset:11808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v21, v19, 0xc0c0004
	ds_load_u8 v21, v65 offset:12000
	ds_load_u8 v22, v65 offset:11936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v21, 16, v19
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[19:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v17, v14
	v_cvt_f32_i32_e32 v18, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v14, v3
	v_cvt_f32_i32_e32 v15, v4
	v_cvt_f32_i32_e32 v3, v5
	v_cvt_f32_i32_e32 v4, v6
	v_cvt_f32_i32_e32 v5, v7
	v_cvt_f32_i32_e32 v6, v8
.LBB0_5:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v7, 32, v61
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v19, s35, v61
	s_mul_i32 s0, s34, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s17, s9, 0xffff
	.loc	1 178 26 is_stmt 0              ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v20, s35, v7
	s_add_i32 s0, s0, s1
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v19, s0, v19, 1
	s_mov_b32 s16, s8
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_or_b32_e32 v8, v64, v63
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s23
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v20, s0, v20, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s33, s3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v31, 0x5410
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v8, s1, v8, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v32, 0x7632
	v_mov_b16_e32 v30.h, 0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v33, s23, v7
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	buffer_load_u16 v20, v20, s[16:19], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v22, 8, v8
	v_add_nc_u32_e32 v21, 4, v8
	v_cndmask_b32_e64 v23, 0x80000000, v8, s2
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.h, v30.h
	v_mov_b16_e32 v36.h, v30.h
	v_mov_b16_e32 v34.h, v30.h
	v_mov_b16_e32 v35.h, v30.h
	s_mov_b32 s15, 0x76543210
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v29, s23, v61
	s_mul_i32 s34, s34, s23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v2, v2, v20 :: v_dual_lshlrev_b32 v19, 16, v19
	v_dual_mul_f32 v9, v9, v19 :: v_dual_add_nc_u32 v24, 12, v8
	v_dual_mul_f32 v10, v10, v19 :: v_dual_add_nc_u32 v25, 16, v8
	v_dual_mul_f32 v11, v11, v19 :: v_dual_add_nc_u32 v26, 20, v8
	v_dual_mul_f32 v12, v12, v19 :: v_dual_add_nc_u32 v27, 24, v8
	v_dual_mul_f32 v13, v13, v19 :: v_dual_add_nc_u32 v8, 28, v8
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_clause 0x7
	buffer_load_u16 v21, v21, s[16:19], 0 offen
	buffer_load_u16 v23, v23, s[16:19], 0 offen
	buffer_load_u16 v24, v24, s[16:19], 0 offen
	buffer_load_u16 v22, v22, s[16:19], 0 offen
	buffer_load_u16 v26, v26, s[16:19], 0 offen
	buffer_load_u16 v25, v25, s[16:19], 0 offen
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	buffer_load_u16 v27, v27, s[16:19], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v17, v17, v19 :: v_dual_and_b32 v28, 0x78, v62
	v_mul_f32_e32 v18, v18, v19
	v_mul_f32_e32 v16, v16, v19
	v_mul_f32_e32 v14, v14, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v28, s34, s33, v28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v1, v1, v20
	v_mul_f32_e32 v15, v15, v20
	v_mul_f32_e32 v4, v4, v20
	v_mul_f32_e32 v3, v3, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_lshl_u32 v29, v28, v29, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v19, 16, v21
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v23, 16, v24
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v24, 16, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v19, v53
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v21, v46
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v53, v2, s2
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v21, v52
	v_fma_f32 v10, v10, v19, v60
	v_fma_f32 v11, v11, v22, v59
	v_fma_f32 v12, v12, v23, v58
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.l, v2.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v6, v20
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v13, v13, v25, v57
	v_fma_f32 v17, v17, v24, v56
	v_fma_f32 v18, v18, v26, v55
	v_fma_f32 v16, v16, v8, v54
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v52, v1, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v7, 1, v7
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v8, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v8, v46, v9, s2
	v_cndmask_b32_e64 v9, v60, v10, s2
	v_cndmask_b32_e64 v10, v59, v11, s2
	v_cndmask_b32_e64 v11, v58, v12, s2
	v_cndmask_b32_e64 v12, v57, v13, s2
	v_cndmask_b32_e64 v13, v56, v17, s2
	v_cndmask_b32_e64 v17, v55, v18, s2
	v_cndmask_b32_e64 v16, v54, v16, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v18, v8, 16, 1
	v_mov_b16_e32 v30.l, v1.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v5, v20
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v15, v15, v23, v50
	v_fma_f32 v14, v14, v22, v51
	v_fma_f32 v4, v4, v24, v48
	v_fma_f32 v3, v3, v25, v49
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_bfe_u32 v19, v9, 16, 1
	v_bfe_u32 v20, v10, 16, 1
	v_bfe_u32 v21, v11, 16, 1
	v_bfe_u32 v24, v17, 16, 1
	v_bfe_u32 v25, v16, 16, 1
	v_add3_u32 v8, v8, v18, 0x7fff
	v_and_b32_e32 v18, 1, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v26, v47
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v51, v14, s2
	v_cndmask_b32_e64 v15, v50, v15, s2
	v_cndmask_b32_e64 v3, v49, v3, s2
	v_cndmask_b32_e64 v4, v48, v4, s2
	v_cndmask_b32_e64 v5, v47, v5, s2
	v_cndmask_b32_e64 v6, v45, v6, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v9, v9
	v_cmp_o_f32_e64 s1, v10, v10
	v_cmp_o_f32_e64 s2, v11, v11
	v_bfe_u32 v22, v12, 16, 1
	v_bfe_u32 v23, v13, 16, 1
	v_cmp_o_f32_e64 s5, v17, v17
	v_cmp_o_f32_e64 s6, v16, v16
	v_add3_u32 v9, v9, v19, 0x7fff
	v_add3_u32 v10, v10, v20, 0x7fff
	v_add3_u32 v11, v11, v21, 0x7fff
	v_add3_u32 v17, v17, v24, 0x7fff
	v_add3_u32 v16, v16, v25, 0x7fff
	v_cmp_o_f32_e64 s3, v12, v12
	v_cmp_o_f32_e64 s4, v13, v13
	v_mov_b16_e32 v36.l, v5.h
	v_add3_u32 v12, v12, v22, 0x7fff
	v_add3_u32 v13, v13, v23, 0x7fff
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v9.h, s0
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s2
	v_cndmask_b16 v11.l, 0x7fff, v17.h, s5
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s6
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v34.l, v14.h
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s3
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s4
	v_cmp_o_f32_e64 s14, v5, v5
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v21, 1, v36
	v_mov_b16_e32 v30.l, v15.h
	v_and_b32_e32 v19, 1, v34
	v_cmp_o_f32_e64 s7, v2, v2
	v_cndmask_b32_e32 v12, v10, v8, vcc_lo
	v_cndmask_b32_e32 v8, v8, v10, vcc_lo
	v_add3_u32 v5, v5, v21, 0x7fff
	v_cmp_o_f32_e64 s8, v1, v1
	v_mov_b16_e32 v35.l, v3.h
	v_add3_u32 v0, v1, v18, 0x7fff
	v_add3_u32 v1, v2, v7, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s14
	v_and_b32_e32 v2, 1, v30
	v_mov_b16_e32 v30.l, v4.h
	v_cmp_o_f32_e64 s10, v14, v14
	v_dual_cndmask_b32 v13, 0x3276, v32 :: v_dual_and_b32 v20, 1, v35
	v_add3_u32 v7, v14, v19, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s8
	v_add3_u32 v0, v15, v2, 0x7fff
	v_and_b32_e32 v2, 1, v30
	v_mov_b16_e32 v30.l, v6.h
	v_dual_cndmask_b32 v10, v11, v9 :: v_dual_cndmask_b32 v9, v9, v11
	v_cndmask_b32_e32 v11, 0x1054, v31, vcc_lo
	v_cmp_o_f32_e64 s11, v4, v4
	v_cmp_o_f32_e64 s12, v3, v3
	v_add3_u32 v3, v3, v20, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v7.h, s10
	v_permlanex16_b32 v7, v8, s15, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v8, v11, 8, v11
	v_lshl_or_b32 v11, v13, 8, v13
	v_and_b32_e32 v13, 1, v30
	v_add3_u32 v2, v4, v2, 0x7fff
	v_cmp_o_f32_e64 s9, v15, v15
	v_cmp_o_f32_e64 s13, v6, v6
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s7
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s12
	v_permlanex16_b32 v4, v9, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v8, 0x540054, v8
	v_add3_u32 v6, v6, v13, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v2.h, s11
	v_and_b32_e32 v9, 0x760076, v11
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s9
	v_lshl_or_b32 v2, v8, 4, v8
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s13
	v_cndmask_b32_e32 v6, v3, v1, vcc_lo
	v_lshl_or_b32 v8, v9, 4, v9
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_and_b32_e32 v9, 0x5040504, v2
	v_dual_cndmask_b32 v2, v0, v5 :: v_dual_cndmask_b32 v11, v5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 0x7060706, v8
	v_permlanex16_b32 v5, v1, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v7, v12, v9
	v_perm_b32 v1, v7, v12, v8
	v_permlanex16_b32 v7, v2, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v4, v10, v9
	v_perm_b32 v3, v4, v10, v8
	v_perm_b32 v4, v5, v6, v9
	v_perm_b32 v5, v5, v6, v8
	v_perm_b32 v6, v7, v11, v9
	v_perm_b32 v7, v7, v11, v8
	v_add_lshl_u32 v8, v28, v33, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v29, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v8, s[20:23], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 80
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 80
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11088
; TotalNumSgprs: 45
; NumVgprs: 80
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 80
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     80
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
