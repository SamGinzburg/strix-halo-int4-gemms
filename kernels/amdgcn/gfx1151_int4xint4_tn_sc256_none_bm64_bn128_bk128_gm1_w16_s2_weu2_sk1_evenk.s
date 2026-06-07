	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s5, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	s_load_b64 s[16:17], s[0:1], 0x20
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v46, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v2, 16, v2
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s18, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s4, 31
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
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s4
	v_mov_b32_e32 v64, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v50, 1, v0
	v_mov_b32_e32 v68, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
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
	s_sub_i32 s8, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s9, s8
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s4, s8, s4
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s9, s6, 1
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s4, s2, s4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s7, s9
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s10, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v49, v2, v1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s6
	s_mul_hi_u32 s2, s6, s10
	s_abs_i32 s10, s4
	s_add_i32 s6, s6, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s10, s6
	s_xor_b32 s6, s4, s9
	s_mul_i32 s11, s2, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s10, s10, s11
	s_add_i32 s11, s2, 1
	s_sub_i32 s12, s10, s7
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s2, s11, s2
	s_cselect_b32 s10, s12, s10
	s_add_i32 s11, s2, 1
	s_cmp_ge_u32 s10, s7
	s_cselect_b32 s2, s11, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s5, 0xff
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s7, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s7, s6
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s9, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s9
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s28, s4, 6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s20, 0x100
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_load_b256 s[8:15], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s20, 31
.Ltmp15:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 3, v0
	v_dual_mov_b32 v63, 0 :: v_dual_and_b32 v4, 0x70, v50
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 24
.Ltmp17:
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s1, s3, 6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s5, s5, 1
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s20, s0
	v_add3_u32 v62, 0, v1, v4
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v4, s1, v3
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 8
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v65, s5, v3
	s_lshl_b32 s5, s6, 8
	s_add_i32 s30, s1, 64
	s_lshl_b32 s1, s6, 7
	s_mov_b32 s6, s4
	v_add3_u32 v1, s28, v2, v1
	v_mov_b32_e32 v64, 0
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v8, 0xe0, v0
	v_add_nc_u32_e32 v9, 32, v1
	v_mul_lo_u32 v1, s3, v1
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v8, s7, 8, v8
	v_mul_lo_u32 v9, s3, v9
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v67, s5, v8
	s_lshl_b32 s5, s7, 7
	s_mov_b32 s7, s4
	v_add_nc_u32_e32 v2, 64, v4
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v5, 7, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v66, 2, v3
	v_mul_lo_u32 v8, s19, v4
	v_lshlrev_b32_e32 v70, 1, v1
	v_cmp_gt_i32_e64 s0, 0x80, v2
	v_mul_lo_u32 v3, s19, v2
	v_mul_lo_u32 v2, s18, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v7, 4, v5
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v5, 3, v5
	v_dual_mov_b32 v58, 0 :: v_dual_lshlrev_b32 v69, 1, v9
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add3_u32 v1, v3, s5, v7
	v_add3_u32 v71, v2, s28, v5
	v_add3_u32 v2, v8, s5, v7
	s_mov_b32 s5, s4
	v_lshlrev_b32_e32 v6, 3, v0
	v_mul_lo_u32 v3, s18, v4
	v_subrev_nc_u32_e32 v72, s1, v1
	v_subrev_nc_u32_e32 v73, s1, v2
	v_add_nc_u32_e32 v59, 0, v49
	v_add_nc_u32_e32 v61, 0, v6
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_add3_u32 v74, v3, s28, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v75, v61, v6
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s29, s19, 1
	s_lshl_b32 s18, s18, 7
	s_lshl_b32 s31, s19, 7
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s1, s30, 64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s3, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s1, v65
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v74, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v74, s18, v74
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b64 v[13:14], v9, s[20:23], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v73, s1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s30, v65
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v73, s31, v73
	s_addk_i32 s30, 0x80
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, s0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v61, v[13:14] offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v75, v[9:12]
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v71, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v71, s18, v71
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b64 v[29:30], v9, s[20:23], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v72, s1
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v72, s31, v72
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[25:28], v9, s[24:27], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v59 offset:8512
	ds_load_u8 v10, v59 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v59 offset:8640
	ds_load_u8 v11, v59 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v9, v59 offset:8256
	ds_load_u8 v10, v59 offset:8192
	ds_load_u8 v19, v59 offset:8224
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v59 offset:8384
	ds_load_u8 v11, v59 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v10, 16, v9
	ds_load_u8 v9, v62 offset:640
	ds_load_u8 v10, v62 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v62 offset:896
	ds_load_u8 v11, v62 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v10, 16, v9
	ds_load_u8 v9, v62 offset:128
	ds_load_u8 v10, v62
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v62 offset:384
	ds_load_u8 v11, v62 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[17:18], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v59 offset:9024
	ds_load_u8 v18, v59 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v59 offset:9152
	ds_load_u8 v20, v59 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v59 offset:8768
	ds_load_u8 v20, v59 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v59 offset:8896
	ds_load_u8 v21, v59 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v62 offset:1664
	ds_load_u8 v21, v62 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:1920
	ds_load_u8 v22, v62 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v21, 16, v20
	ds_load_u8 v20, v62 offset:1152
	ds_load_u8 v21, v62 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:1408
	ds_load_u8 v22, v62 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v59 offset:9536
	ds_load_u8 v18, v59 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v59 offset:9664
	ds_load_u8 v20, v59 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v59 offset:9280
	ds_load_u8 v20, v59 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v59 offset:9408
	ds_load_u8 v21, v59 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v62 offset:2688
	ds_load_u8 v21, v62 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:2944
	ds_load_u8 v22, v62 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v21, 16, v20
	ds_load_u8 v20, v62 offset:2176
	ds_load_u8 v21, v62 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:2432
	ds_load_u8 v22, v62 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v59 offset:10048
	ds_load_u8 v18, v59 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v59 offset:10176
	ds_load_u8 v20, v59 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v59 offset:9792
	ds_load_u8 v20, v59 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v59 offset:9920
	ds_load_u8 v21, v59 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v62 offset:3712
	ds_load_u8 v21, v62 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:3968
	ds_load_u8 v22, v62 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v21, 16, v20
	ds_load_u8 v20, v62 offset:3200
	ds_load_u8 v21, v62 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:3456
	ds_load_u8 v22, v62 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v59 offset:10560
	ds_load_u8 v18, v59 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v59 offset:10688
	ds_load_u8 v20, v59 offset:10624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v59 offset:10304
	ds_load_u8 v20, v59 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v59 offset:10432
	ds_load_u8 v21, v59 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v62 offset:4736
	ds_load_u8 v21, v62 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:4992
	ds_load_u8 v22, v62 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v21, 16, v20
	ds_load_u8 v20, v62 offset:4224
	ds_load_u8 v21, v62 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:4480
	ds_load_u8 v22, v62 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v59 offset:11072
	ds_load_u8 v18, v59 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v59 offset:11200
	ds_load_u8 v20, v59 offset:11136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v59 offset:10816
	ds_load_u8 v20, v59 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v59 offset:10944
	ds_load_u8 v21, v59 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v62 offset:5760
	ds_load_u8 v21, v62 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:6016
	ds_load_u8 v22, v62 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v21, 16, v20
	ds_load_u8 v20, v62 offset:5248
	ds_load_u8 v21, v62 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:5504
	ds_load_u8 v22, v62 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v59 offset:11584
	ds_load_u8 v18, v59 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v59 offset:11712
	ds_load_u8 v20, v59 offset:11648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v59 offset:11328
	ds_load_u8 v20, v59 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v59 offset:11456
	ds_load_u8 v21, v59 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v62 offset:6784
	ds_load_u8 v21, v62 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:7040
	ds_load_u8 v22, v62 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v21, 16, v20
	ds_load_u8 v20, v62 offset:6272
	ds_load_u8 v21, v62 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:6528
	ds_load_u8 v22, v62 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v59 offset:12096
	ds_load_u8 v18, v59 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v59 offset:12224
	ds_load_u8 v20, v59 offset:12160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v59 offset:11840
	ds_load_u8 v20, v59 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v59 offset:11968
	ds_load_u8 v21, v59 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v62 offset:7808
	ds_load_u8 v21, v62 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:8064
	ds_load_u8 v22, v62 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v21, 16, v20
	ds_load_u8 v20, v62 offset:7296
	ds_load_u8 v21, v62 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v62 offset:7552
	ds_load_u8 v22, v62 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v59 offset:8544
	ds_load_u8 v18, v59 offset:8480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v59 offset:8672
	ds_load_u8 v20, v59 offset:8608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v18, 16, v17
	ds_load_u8 v17, v59 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v18, v59 offset:8416
	ds_load_u8 v19, v59 offset:8352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v78, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[78:79], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v76, v59 offset:9056
	ds_load_u8 v77, v59 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v59 offset:9184
	ds_load_u8 v78, v59 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v77, 16, v76
	ds_load_u8 v76, v59 offset:8800
	ds_load_u8 v78, v59 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v78, v76, 0xc0c0004
	ds_load_u8 v78, v59 offset:8928
	ds_load_u8 v79, v59 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v76, v78, 16, v76
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[76:77], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v43, v59 offset:9568
	ds_load_u8 v44, v59 offset:9504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v59 offset:9696
	ds_load_u8 v76, v59 offset:9632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v76, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v59 offset:9312
	ds_load_u8 v76, v59 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v76, v43, 0xc0c0004
	ds_load_u8 v76, v59 offset:9440
	ds_load_u8 v77, v59 offset:9376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v76, 16, v43
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[43:44], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v41, v59 offset:10080
	ds_load_u8 v42, v59 offset:10016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v59 offset:10208
	ds_load_u8 v43, v59 offset:10144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v59 offset:9824
	ds_load_u8 v43, v59 offset:9760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v59 offset:9952
	ds_load_u8 v44, v59 offset:9888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[41:42], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v39, v59 offset:10592
	ds_load_u8 v40, v59 offset:10528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v59 offset:10720
	ds_load_u8 v41, v59 offset:10656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v59 offset:10336
	ds_load_u8 v41, v59 offset:10272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v59 offset:10464
	ds_load_u8 v42, v59 offset:10400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v41, 16, v39
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[39:40], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v37, v59 offset:11104
	ds_load_u8 v38, v59 offset:11040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v59 offset:11232
	ds_load_u8 v39, v59 offset:11168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v59 offset:10848
	ds_load_u8 v39, v59 offset:10784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v39, v37, 0xc0c0004
	ds_load_u8 v39, v59 offset:10976
	ds_load_u8 v40, v59 offset:10912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v39, 16, v37
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[37:38], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v35, v59 offset:11616
	ds_load_u8 v36, v59 offset:11552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v59 offset:11744
	ds_load_u8 v37, v59 offset:11680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v36, 16, v35
	ds_load_u8 v35, v59 offset:11360
	ds_load_u8 v37, v59 offset:11296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v37, v35, 0xc0c0004
	ds_load_u8 v37, v59 offset:11488
	ds_load_u8 v38, v59 offset:11424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v37, 16, v35
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[35:36], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v59 offset:12128
	ds_load_u8 v34, v59 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v59 offset:12256
	ds_load_u8 v35, v59 offset:12192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v59 offset:11872
	ds_load_u8 v35, v59 offset:11808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v59 offset:12000
	ds_load_u8 v36, v59 offset:11936
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v61, v[29:30] offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v75, v[25:28]
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v25, v59 offset:8512
	ds_load_u8 v26, v59 offset:8448
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v59 offset:8640
	ds_load_u8 v27, v59 offset:8576
	v_wmma_i32_16x16x16_iu4 v[17:24], v[31:32], v[33:34], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v59 offset:8256
	ds_load_u8 v27, v59 offset:8192
	ds_load_u8 v43, v59 offset:8224
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v59 offset:8384
	ds_load_u8 v28, v59 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	ds_load_u8 v27, v62 offset:640
	ds_load_u8 v28, v62 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:896
	ds_load_u8 v29, v62 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v28, 16, v27
	ds_load_u8 v27, v62 offset:128
	ds_load_u8 v28, v62
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:384
	ds_load_u8 v29, v62 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v59 offset:9024
	ds_load_u8 v26, v59 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v59 offset:9152
	ds_load_u8 v27, v59 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v59 offset:8768
	ds_load_u8 v27, v59 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v59 offset:8896
	ds_load_u8 v28, v59 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	ds_load_u8 v27, v62 offset:1664
	ds_load_u8 v28, v62 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:1920
	ds_load_u8 v29, v62 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v28, 16, v27
	ds_load_u8 v27, v62 offset:1152
	ds_load_u8 v28, v62 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:1408
	ds_load_u8 v29, v62 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v59 offset:9536
	ds_load_u8 v26, v59 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v59 offset:9664
	ds_load_u8 v27, v59 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v59 offset:9280
	ds_load_u8 v27, v59 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v59 offset:9408
	ds_load_u8 v28, v59 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	ds_load_u8 v27, v62 offset:2688
	ds_load_u8 v28, v62 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:2944
	ds_load_u8 v29, v62 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v28, 16, v27
	ds_load_u8 v27, v62 offset:2176
	ds_load_u8 v28, v62 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:2432
	ds_load_u8 v29, v62 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v59 offset:10048
	ds_load_u8 v26, v59 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v59 offset:10176
	ds_load_u8 v27, v59 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v59 offset:9792
	ds_load_u8 v27, v59 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v59 offset:9920
	ds_load_u8 v28, v59 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	ds_load_u8 v27, v62 offset:3712
	ds_load_u8 v28, v62 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:3968
	ds_load_u8 v29, v62 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v28, 16, v27
	ds_load_u8 v27, v62 offset:3200
	ds_load_u8 v28, v62 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:3456
	ds_load_u8 v29, v62 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v59 offset:10560
	ds_load_u8 v26, v59 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v59 offset:10688
	ds_load_u8 v27, v59 offset:10624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v59 offset:10304
	ds_load_u8 v27, v59 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v59 offset:10432
	ds_load_u8 v28, v59 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	ds_load_u8 v27, v62 offset:4736
	ds_load_u8 v28, v62 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:4992
	ds_load_u8 v29, v62 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v28, 16, v27
	ds_load_u8 v27, v62 offset:4224
	ds_load_u8 v28, v62 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:4480
	ds_load_u8 v29, v62 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v59 offset:11072
	ds_load_u8 v26, v59 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v59 offset:11200
	ds_load_u8 v27, v59 offset:11136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v59 offset:10816
	ds_load_u8 v27, v59 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v59 offset:10944
	ds_load_u8 v28, v59 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	ds_load_u8 v27, v62 offset:5760
	ds_load_u8 v28, v62 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:6016
	ds_load_u8 v29, v62 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v28, 16, v27
	ds_load_u8 v27, v62 offset:5248
	ds_load_u8 v28, v62 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:5504
	ds_load_u8 v29, v62 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v59 offset:11584
	ds_load_u8 v26, v59 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v59 offset:11712
	ds_load_u8 v27, v59 offset:11648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v59 offset:11328
	ds_load_u8 v27, v59 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v59 offset:11456
	ds_load_u8 v28, v59 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	ds_load_u8 v27, v62 offset:6784
	ds_load_u8 v28, v62 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v62 offset:7040
	ds_load_u8 v41, v62 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v41, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v28, 16, v27
	ds_load_u8 v27, v62 offset:6272
	ds_load_u8 v41, v62 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v41, v27, 0xc0c0004
	ds_load_u8 v41, v62 offset:6528
	ds_load_u8 v42, v62 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v41, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[25:26], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v25, v59 offset:12096
	ds_load_u8 v26, v59 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v59 offset:12224
	ds_load_u8 v41, v59 offset:12160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v41, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v26, 16, v25
	ds_load_u8 v25, v59 offset:11840
	ds_load_u8 v26, v59 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v59 offset:11968
	ds_load_u8 v41, v59 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v41, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v26, 16, v25
	ds_load_u8 v25, v62 offset:7808
	ds_load_u8 v26, v62 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v62 offset:8064
	ds_load_u8 v44, v62 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v44, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v62 offset:7296
	ds_load_u8 v44, v62 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v44, v25, 0xc0c0004
	ds_load_u8 v44, v62 offset:7552
	ds_load_u8 v76, v62 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v76, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v44, 16, v25
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[41:42], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v41, v59 offset:8544
	ds_load_u8 v42, v59 offset:8480
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v59 offset:8672
	ds_load_u8 v44, v59 offset:8608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v44, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v59 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v59 offset:8416
	ds_load_u8 v44, v59 offset:8352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[41:42], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v39, v59 offset:9056
	ds_load_u8 v40, v59 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v59 offset:9184
	ds_load_u8 v41, v59 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v59 offset:8800
	ds_load_u8 v41, v59 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v59 offset:8928
	ds_load_u8 v42, v59 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v41, 16, v39
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[39:40], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v37, v59 offset:9568
	ds_load_u8 v38, v59 offset:9504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v59 offset:9696
	ds_load_u8 v39, v59 offset:9632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v59 offset:9312
	ds_load_u8 v39, v59 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v39, v37, 0xc0c0004
	ds_load_u8 v39, v59 offset:9440
	ds_load_u8 v40, v59 offset:9376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v39, 16, v37
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[37:38], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v35, v59 offset:10080
	ds_load_u8 v36, v59 offset:10016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v59 offset:10208
	ds_load_u8 v37, v59 offset:10144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v36, 16, v35
	ds_load_u8 v35, v59 offset:9824
	ds_load_u8 v37, v59 offset:9760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v37, v35, 0xc0c0004
	ds_load_u8 v37, v59 offset:9952
	ds_load_u8 v38, v59 offset:9888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v37, 16, v35
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[35:36], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v59 offset:10592
	ds_load_u8 v34, v59 offset:10528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v59 offset:10720
	ds_load_u8 v35, v59 offset:10656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v59 offset:10336
	ds_load_u8 v35, v59 offset:10272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v59 offset:10464
	ds_load_u8 v36, v59 offset:10400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[31:32], v[33:34], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v31, v59 offset:11104
	ds_load_u8 v32, v59 offset:11040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v59 offset:11232
	ds_load_u8 v33, v59 offset:11168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v32, 16, v31
	ds_load_u8 v31, v59 offset:10848
	ds_load_u8 v33, v59 offset:10784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v33, v31, 0xc0c0004
	ds_load_u8 v33, v59 offset:10976
	ds_load_u8 v34, v59 offset:10912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v33, 16, v31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[31:32], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v29, v59 offset:11616
	ds_load_u8 v30, v59 offset:11552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v59 offset:11744
	ds_load_u8 v31, v59 offset:11680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v59 offset:11360
	ds_load_u8 v31, v59 offset:11296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v31, v29, 0xc0c0004
	ds_load_u8 v31, v59 offset:11488
	ds_load_u8 v32, v59 offset:11424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v31, 16, v29
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[29:30], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v27, v59 offset:12128
	ds_load_u8 v28, v59 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v59 offset:12256
	ds_load_u8 v29, v59 offset:12192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v28, 16, v27
	ds_load_u8 v27, v59 offset:11872
	ds_load_u8 v29, v59 offset:11808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v29, v27, 0xc0c0004
	ds_load_u8 v29, v59 offset:12000
	ds_load_u8 v30, v59 offset:11936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v29, 16, v27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[27:28], v[17:24] neg_lo:[1,1,0]
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v27, v66, v67
	s_clause 0x7
	buffer_load_u16 v28, v27, s[12:15], 0 offen
	buffer_load_u16 v29, v27, s[12:15], 0 offen offset:4
	buffer_load_u16 v30, v27, s[12:15], 0 offen offset:8
	buffer_load_u16 v31, v27, s[12:15], 0 offen offset:12
	buffer_load_u16 v32, v27, s[12:15], 0 offen offset:16
	buffer_load_u16 v33, v27, s[12:15], 0 offen offset:20
	buffer_load_u16 v34, v27, s[12:15], 0 offen offset:24
	buffer_load_u16 v27, v27, s[12:15], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_nc_u32_e32 v25, s4, v70
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v25, v25, s[8:11], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v67, s29, v67
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_nc_u32_e32 v26, s4, v69
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s4, s4, 2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s3, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v26, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v18, v26, v18 :: v_dual_lshlrev_b32 v25, 16, v25
	v_mul_f32_e32 v9, v9, v25
	v_mul_f32_e32 v10, v10, v25
	v_mul_f32_e32 v11, v11, v25
	v_mul_f32_e32 v12, v12, v25
	v_mul_f32_e32 v13, v13, v25
	v_mul_f32_e32 v14, v14, v25
	v_dual_mul_f32 v15, v15, v25 :: v_dual_mul_f32 v22, v26, v22
	v_dual_mul_f32 v16, v16, v25 :: v_dual_mul_f32 v19, v26, v19
	v_dual_mul_f32 v24, v26, v24 :: v_dual_lshlrev_b32 v25, 16, v29
	v_mul_f32_e32 v17, v26, v17
	v_dual_mul_f32 v20, v26, v20 :: v_dual_lshlrev_b32 v29, 16, v31
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v64, v11, v30 :: v_dual_lshlrev_b32 v31, 16, v33
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v21, v26, v21 :: v_dual_fmac_f32 v58, v13, v32
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v68, v10, v25 :: v_dual_lshlrev_b32 v33, 16, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v23, v26, v23 :: v_dual_fmac_f32 v60, v12, v29
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v63, v9, v28
	v_dual_fmac_f32 v57, v14, v31 :: v_dual_fmac_f32 v56, v15, v33
	v_dual_fmac_f32 v55, v16, v27 :: v_dual_fmac_f32 v54, v18, v25
	v_dual_fmac_f32 v53, v17, v28 :: v_dual_fmac_f32 v52, v20, v29
	v_dual_fmac_f32 v51, v19, v30 :: v_dual_fmac_f32 v48, v22, v31
	v_dual_fmac_f32 v47, v21, v32 :: v_dual_fmac_f32 v46, v23, v33
	v_fmac_f32_e32 v45, v24, v27
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v1, 32, v49
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v3, v63, 16, 1
	v_bfe_u32 v4, v68, 16, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v2, 0x78, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v9, s19, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v1, v63, v3, 0x7fff
	v_add3_u32 v3, v68, v4, 0x7fff
	v_cmp_o_f32_e64 s0, v68, v68
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	s_lshl_b32 s1, s2, 7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s28, s28, s19
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v10, s28, s1, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v2, v64, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v60, 16, 1
	v_bfe_u32 v5, v58, 16, 1
	v_bfe_u32 v6, v57, 16, 1
	v_add3_u32 v2, v64, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_add3_u32 v3, v60, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v60, v60
	v_add3_u32 v5, v58, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v58, v58
	v_add3_u32 v6, v57, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v57, v57
	v_bfe_u32 v7, v56, 16, 1
	v_mov_b16_e32 v4.h, 0
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s1
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s2
	v_add3_u32 v5, v56, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_bfe_u32 v6, v55, 16, 1
	v_mov_b16_e32 v4.l, v54.h
	v_mov_b16_e32 v12.l, v51.h
	v_mov_b16_e32 v12.h, v4.h
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v6, v55, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_mov_b16_e32 v7.l, v53.h
	v_mov_b16_e32 v7.h, v4.h
	v_and_b32_e32 v11, 1, v4
	v_mov_b16_e32 v4.l, v52.h
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v12
	v_dual_mov_b32 v14, 0x7632 :: v_dual_and_b32 v7, 1, v7
	v_add3_u32 v11, v54, v11, 0x7fff
	v_cmp_o_f32_e64 s0, v54, v54
	v_and_b32_e32 v12, 1, v4
	v_add3_u32 v6, v51, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v51, v51
	v_mov_b16_e32 v4.l, v48.h
	v_add3_u32 v7, v53, v7, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s0
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_add3_u32 v12, v52, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v52, v52
	v_mov_b16_e32 v13.l, v47.h
	v_mov_b16_e32 v13.h, v4.h
	v_cndmask_b16 v7.l, 0x7fff, v6.h, s1
	v_and_b32_e32 v6, 1, v4
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v11.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v12.h, s0
	v_and_b32_e32 v12, 1, v13
	v_add3_u32 v6, v48, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	v_mov_b16_e32 v13.l, v46.h
	v_mov_b16_e32 v4.l, v45.h
	v_add3_u32 v12, v47, v12, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cndmask_b32_e64 v14, 0x3276, v14, s0
	v_and_b32_e32 v13, 1, v13
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v6.l, 0x7fff, v12.h, vcc_lo
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v12, v14, 8, v14
	v_add3_u32 v13, v46, v13, 0x7fff
	v_add3_u32 v4, v45, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v45, v45
	v_cmp_o_f32_e64 s2, v46, v46
	v_cndmask_b32_e64 v15, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v3, v5, v2, s0
	v_cndmask_b32_e64 v2, v2, v5, s0
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v5, 0x760076, v12
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v4.l, 0x7fff, v13.h, s2
	v_cndmask_b32_e64 v12, v6, v11, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e64 v6, v11, v6, s0
	v_cndmask_b32_e64 v11, v4, v7, s0
	v_cndmask_b32_e64 v4, v7, v4, s0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v8, s19, v49
	s_mov_b32 s1, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v7, 0x5040504, v0
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 0x7060706, v5
	v_permlanex16_b32 v5, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v15, v7
	v_perm_b32 v1, v1, v15, v13
	v_perm_b32 v2, v5, v3, v7
	v_perm_b32 v3, v5, v3, v13
	v_add_lshl_u32 v8, v10, v8, 1
	v_perm_b32 v4, v6, v12, v7
	v_perm_b32 v5, v6, v12, v13
	v_perm_b32 v6, v14, v11, v7
	v_perm_b32 v7, v14, v11, v13
	v_add_lshl_u32 v9, v10, v9, 1
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v9, s[16:19], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 80
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10172
; TotalNumSgprs: 34
; NumVgprs: 80
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 34
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
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
