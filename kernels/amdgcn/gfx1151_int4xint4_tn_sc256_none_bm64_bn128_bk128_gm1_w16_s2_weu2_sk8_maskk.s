	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v2, 7, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 3, v0
	s_load_b64 s[40:41], s[0:1], 0x20
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v45, 0x100, v0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_lshlrev_b32_e32 v12, 3, v0
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v46, 0xe0, v0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v54, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v68, 0, v12
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v64, 1, v46
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s34, 63
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
	s_ashr_i32 s13, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 89 16 is_stmt 1               ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v69, v68, v12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v65, v0, 4, 1
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_mov_b32_e32 v61, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
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
	s_sub_i32 s17, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s17
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s13, s17, s13
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s18, s4, 1
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s14, s18
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s13
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_f32_u32 s15, s14
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s15
	v_readfirstlane_b32 s15, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 4, v2
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s7, 0, s14
	s_mul_f32 s15, s15, 0x4f7ffffe
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[4:5], null, s34, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s15
	s_abs_i32 s15, s2
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s35, v3, v[2:3]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s16, s15, s6
	s_xor_b32 s6, s2, s18
	s_mul_i32 s19, s16, s14
	s_ashr_i32 s13, s6, 31
	s_sub_i32 s15, s15, s19
	s_add_i32 s19, s16, 1
	s_sub_i32 s20, s15, s14
	s_cmp_ge_u32 s15, s14
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s16, s19, s16
	s_cselect_b32 s15, s20, s15
	s_add_i32 s19, s16, 1
	s_cmp_ge_u32 s15, s14
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s26, s6
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
	s_add_i32 s19, s12, 0xff
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s16
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s22, s14, s13
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s15, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s16, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s22, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 24
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
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v6
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s17
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s20, s34, s15
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s22, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s22, s18, 8
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s42, s2, 6
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s21, s35, s15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s19, 0xff
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v4, s20, s42, v4
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
	s_mov_b32 s27, s7
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_and_b32 s25, s25, 0xffff
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b64 v[10:11], v4, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[6:9], v5, s[24:27], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v4, 15, v0
	v_lshrrev_b32_e32 v5, 4, v45
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s22, -1
	s_mov_b32 s12, 0
	s_mov_b64 s[20:21], s[10:11]
	v_add3_u32 v67, 0, v4, v64
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v63, v5, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_lt_i32 s19, 0x200
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v68, v[10:11] offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v69, v[6:9]
	v_add_nc_u32_e32 v66, 0, v63
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s3, s15, 0x80
	v_add3_u32 v4, s42, v5, v4
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v5, s3, v3
	v_sub_nc_u32_e32 v70, s16, v3
	v_lshl_or_b32 v3, s14, 8, v46
	s_lshl_b32 s0, s13, 8
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v7, s35, v5
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	v_subrev_nc_u32_e32 v72, s0, v3
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_add3_u32 v2, v7, s0, v2
	s_lshl_b32 s0, s13, 7
	s_mov_b32 s13, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v6, 32, v4
	v_mul_lo_u32 v4, s22, v4
	v_mul_lo_u32 v3, s34, v5
	v_subrev_nc_u32_e32 v75, s0, v2
	v_lshlrev_b32_e32 v71, 1, v65
	v_mul_lo_u32 v6, s22, v6
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_lshlrev_b32_e32 v74, 1, v4
	v_add3_u32 v76, v3, s42, v1
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_lshlrev_b32_e32 v73, 1, v6
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v47, 0
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_max_i32 s10, s1, 1
	s_lshl_b32 s11, s35, 1
	s_lshl_b32 s23, s35, 7
	s_lshl_b32 s34, s34, 7
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s3, v70
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s10, s10, -1
	s_addk_i32 s3, 0x80
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s10, 0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v76, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v76, s34, v76
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b64 v[29:30], v9, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v75, s0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v75, s23, v75
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[25:28], v9, s[24:27], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v66 offset:8512
	ds_load_u8 v10, v66 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v66 offset:8640
	ds_load_u8 v11, v66 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v10, 16, v9
	ds_load_u8 v9, v66 offset:8256
	ds_load_u8 v10, v66 offset:8192
	ds_load_u8 v19, v66 offset:8224
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v66 offset:8384
	ds_load_u8 v11, v66 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v10, 16, v9
	ds_load_u8 v9, v67 offset:640
	ds_load_u8 v10, v67 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v67 offset:896
	ds_load_u8 v11, v67 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v10, 16, v9
	ds_load_u8 v9, v67 offset:128
	ds_load_u8 v10, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v67 offset:384
	ds_load_u8 v11, v67 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[17:18], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:9024
	ds_load_u8 v18, v66 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:9152
	ds_load_u8 v20, v66 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:8768
	ds_load_u8 v20, v66 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v66 offset:8896
	ds_load_u8 v21, v66 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v67 offset:1664
	ds_load_u8 v21, v67 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:1920
	ds_load_u8 v22, v67 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v21, 16, v20
	ds_load_u8 v20, v67 offset:1152
	ds_load_u8 v21, v67 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:1408
	ds_load_u8 v22, v67 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:9536
	ds_load_u8 v18, v66 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:9664
	ds_load_u8 v20, v66 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:9280
	ds_load_u8 v20, v66 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v66 offset:9408
	ds_load_u8 v21, v66 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v67 offset:2688
	ds_load_u8 v21, v67 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:2944
	ds_load_u8 v22, v67 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v21, 16, v20
	ds_load_u8 v20, v67 offset:2176
	ds_load_u8 v21, v67 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:2432
	ds_load_u8 v22, v67 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:10048
	ds_load_u8 v18, v66 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:10176
	ds_load_u8 v20, v66 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:9792
	ds_load_u8 v20, v66 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v66 offset:9920
	ds_load_u8 v21, v66 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v67 offset:3712
	ds_load_u8 v21, v67 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:3968
	ds_load_u8 v22, v67 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v21, 16, v20
	ds_load_u8 v20, v67 offset:3200
	ds_load_u8 v21, v67 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:3456
	ds_load_u8 v22, v67 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:10560
	ds_load_u8 v18, v66 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:10688
	ds_load_u8 v20, v66 offset:10624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:10304
	ds_load_u8 v20, v66 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v66 offset:10432
	ds_load_u8 v21, v66 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v67 offset:4736
	ds_load_u8 v21, v67 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:4992
	ds_load_u8 v22, v67 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v21, 16, v20
	ds_load_u8 v20, v67 offset:4224
	ds_load_u8 v21, v67 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:4480
	ds_load_u8 v22, v67 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:11072
	ds_load_u8 v18, v66 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:11200
	ds_load_u8 v20, v66 offset:11136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:10816
	ds_load_u8 v20, v66 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v66 offset:10944
	ds_load_u8 v21, v66 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v67 offset:5760
	ds_load_u8 v21, v67 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:6016
	ds_load_u8 v22, v67 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v21, 16, v20
	ds_load_u8 v20, v67 offset:5248
	ds_load_u8 v21, v67 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:5504
	ds_load_u8 v22, v67 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:11584
	ds_load_u8 v18, v66 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:11712
	ds_load_u8 v20, v66 offset:11648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:11328
	ds_load_u8 v20, v66 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v66 offset:11456
	ds_load_u8 v21, v66 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v67 offset:6784
	ds_load_u8 v21, v67 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:7040
	ds_load_u8 v22, v67 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v21, 16, v20
	ds_load_u8 v20, v67 offset:6272
	ds_load_u8 v21, v67 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:6528
	ds_load_u8 v22, v67 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:12096
	ds_load_u8 v18, v66 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:12224
	ds_load_u8 v20, v66 offset:12160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:11840
	ds_load_u8 v20, v66 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v20, v17, 0xc0c0004
	ds_load_u8 v20, v66 offset:11968
	ds_load_u8 v21, v66 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v20, 16, v17
	ds_load_u8 v20, v67 offset:7808
	ds_load_u8 v21, v67 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:8064
	ds_load_u8 v22, v67 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v21, 16, v20
	ds_load_u8 v20, v67 offset:7296
	ds_load_u8 v21, v67 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v67 offset:7552
	ds_load_u8 v22, v67 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v21, 16, v20
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:8544
	ds_load_u8 v18, v66 offset:8480
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
	ds_load_u8 v18, v66 offset:8672
	ds_load_u8 v20, v66 offset:8608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v20, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v80, v18, 16, v17
	ds_load_u8 v17, v66 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:8416
	ds_load_u8 v19, v66 offset:8352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v79, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[79:80], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v77, v66 offset:9056
	ds_load_u8 v78, v66 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v66 offset:9184
	ds_load_u8 v79, v66 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v78, v78, 16, v77
	ds_load_u8 v77, v66 offset:8800
	ds_load_u8 v79, v66 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v79, v77, 0xc0c0004
	ds_load_u8 v79, v66 offset:8928
	ds_load_u8 v80, v66 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v79, 16, v77
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[77:78], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v43, v66 offset:9568
	ds_load_u8 v44, v66 offset:9504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v66 offset:9696
	ds_load_u8 v77, v66 offset:9632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v77, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v66 offset:9312
	ds_load_u8 v77, v66 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v77, v43, 0xc0c0004
	ds_load_u8 v77, v66 offset:9440
	ds_load_u8 v78, v66 offset:9376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v78, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v43, v77, 16, v43
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[43:44], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v41, v66 offset:10080
	ds_load_u8 v42, v66 offset:10016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v66 offset:10208
	ds_load_u8 v43, v66 offset:10144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v66 offset:9824
	ds_load_u8 v43, v66 offset:9760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v66 offset:9952
	ds_load_u8 v44, v66 offset:9888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[41:42], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v39, v66 offset:10592
	ds_load_u8 v40, v66 offset:10528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v66 offset:10720
	ds_load_u8 v41, v66 offset:10656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v66 offset:10336
	ds_load_u8 v41, v66 offset:10272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v66 offset:10464
	ds_load_u8 v42, v66 offset:10400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v39, v41, 16, v39
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[39:40], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v37, v66 offset:11104
	ds_load_u8 v38, v66 offset:11040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v66 offset:11232
	ds_load_u8 v39, v66 offset:11168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v66 offset:10848
	ds_load_u8 v39, v66 offset:10784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v39, v37, 0xc0c0004
	ds_load_u8 v39, v66 offset:10976
	ds_load_u8 v40, v66 offset:10912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v39, 16, v37
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[37:38], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v35, v66 offset:11616
	ds_load_u8 v36, v66 offset:11552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v36, v66 offset:11744
	ds_load_u8 v37, v66 offset:11680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v36, 16, v35
	ds_load_u8 v35, v66 offset:11360
	ds_load_u8 v37, v66 offset:11296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v37, v35, 0xc0c0004
	ds_load_u8 v37, v66 offset:11488
	ds_load_u8 v38, v66 offset:11424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v35, v37, 16, v35
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[35:36], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v33, v66 offset:12128
	ds_load_u8 v34, v66 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v66 offset:12256
	ds_load_u8 v35, v66 offset:12192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v66 offset:11872
	ds_load_u8 v35, v66 offset:11808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v66 offset:12000
	ds_load_u8 v36, v66 offset:11936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[31:32], v[33:34], v[17:24] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v31, v74, s[28:31], 0 offen
	buffer_load_u16 v32, v73, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v73, 2, v73
	v_add_nc_u32_e32 v74, 2, v74
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v18, v18, v32 :: v_dual_lshlrev_b32 v31, 16, v31
	v_dual_mul_f32 v10, v10, v31 :: v_dual_add_nc_u32 v33, v71, v72
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
	v_mul_f32_e32 v9, v9, v31
	v_dual_mul_f32 v16, v16, v31 :: v_dual_mul_f32 v17, v17, v32
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v68, v[29:30] offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b128 v69, v[25:28]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v11, v11, v31 :: v_dual_mul_f32 v20, v20, v32
	v_mul_f32_e32 v13, v13, v31
	v_mul_f32_e32 v12, v12, v31
	v_dual_mul_f32 v15, v15, v31 :: v_dual_mul_f32 v22, v22, v32
	v_mul_f32_e32 v14, v14, v31
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v72, s11, v72
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v39, 16, v39
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v40, 16, v40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v19, v19, v32 :: v_dual_fmac_f32 v48, v9, v34
	v_dual_mul_f32 v21, v21, v32 :: v_dual_fmac_f32 v62, v10, v35
	v_dual_mul_f32 v23, v23, v32 :: v_dual_fmac_f32 v60, v12, v37
	v_dual_mul_f32 v24, v24, v32 :: v_dual_fmac_f32 v55, v17, v34
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v61, v11, v36 :: v_dual_fmac_f32 v58, v14, v39
	v_fmac_f32_e32 v59, v13, v38
	v_dual_fmac_f32 v57, v15, v40 :: v_dual_fmac_f32 v56, v16, v33
	v_dual_fmac_f32 v54, v18, v35 :: v_dual_fmac_f32 v53, v19, v36
	v_dual_fmac_f32 v52, v20, v37 :: v_dual_fmac_f32 v51, v21, v38
	v_dual_fmac_f32 v50, v22, v39 :: v_dual_fmac_f32 v49, v23, v40
	v_fmac_f32_e32 v47, v24, v33
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v8, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v7, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v1, v66 offset:8512
	ds_load_u8 v2, v66 offset:8448
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
	ds_load_u8 v2, v66 offset:8640
	ds_load_u8 v3, v66 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v2, 16, v1
	ds_load_u8 v1, v66 offset:8256
	ds_load_u8 v2, v66 offset:8192
	ds_load_u8 v35, v66 offset:8224
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v66 offset:8384
	ds_load_u8 v3, v66 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v2, 16, v1
	ds_load_u8 v1, v67 offset:640
	ds_load_u8 v2, v67 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v67 offset:896
	ds_load_u8 v3, v67 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v2, 16, v1
	ds_load_u8 v1, v67 offset:128
	ds_load_u8 v2, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v67 offset:384
	ds_load_u8 v3, v67 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[17:18], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:9024
	ds_load_u8 v18, v66 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:9152
	ds_load_u8 v19, v66 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:8768
	ds_load_u8 v19, v66 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v66 offset:8896
	ds_load_u8 v20, v66 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v67 offset:1664
	ds_load_u8 v20, v67 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v67 offset:1920
	ds_load_u8 v21, v67 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v20, 16, v19
	ds_load_u8 v19, v67 offset:1152
	ds_load_u8 v20, v67 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v67 offset:1408
	ds_load_u8 v21, v67 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:9536
	ds_load_u8 v18, v66 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:9664
	ds_load_u8 v19, v66 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:9280
	ds_load_u8 v19, v66 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v66 offset:9408
	ds_load_u8 v20, v66 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v67 offset:2688
	ds_load_u8 v20, v67 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v67 offset:2944
	ds_load_u8 v21, v67 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v20, 16, v19
	ds_load_u8 v19, v67 offset:2176
	ds_load_u8 v20, v67 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v67 offset:2432
	ds_load_u8 v21, v67 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:10048
	ds_load_u8 v18, v66 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:10176
	ds_load_u8 v19, v66 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:9792
	ds_load_u8 v19, v66 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v66 offset:9920
	ds_load_u8 v20, v66 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v67 offset:3712
	ds_load_u8 v20, v67 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v67 offset:3968
	ds_load_u8 v21, v67 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v20, 16, v19
	ds_load_u8 v19, v67 offset:3200
	ds_load_u8 v20, v67 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v67 offset:3456
	ds_load_u8 v21, v67 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:10560
	ds_load_u8 v18, v66 offset:10496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:10688
	ds_load_u8 v19, v66 offset:10624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:10304
	ds_load_u8 v19, v66 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v66 offset:10432
	ds_load_u8 v20, v66 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v67 offset:4736
	ds_load_u8 v20, v67 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v67 offset:4992
	ds_load_u8 v21, v67 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v20, 16, v19
	ds_load_u8 v19, v67 offset:4224
	ds_load_u8 v20, v67 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v67 offset:4480
	ds_load_u8 v21, v67 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:11072
	ds_load_u8 v18, v66 offset:11008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:11200
	ds_load_u8 v19, v66 offset:11136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:10816
	ds_load_u8 v19, v66 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v66 offset:10944
	ds_load_u8 v20, v66 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v67 offset:5760
	ds_load_u8 v20, v67 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v67 offset:6016
	ds_load_u8 v21, v67 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v20, 16, v19
	ds_load_u8 v19, v67 offset:5248
	ds_load_u8 v20, v67 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v67 offset:5504
	ds_load_u8 v21, v67 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:11584
	ds_load_u8 v18, v66 offset:11520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:11712
	ds_load_u8 v19, v66 offset:11648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v66 offset:11328
	ds_load_u8 v19, v66 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	ds_load_u8 v19, v66 offset:11456
	ds_load_u8 v20, v66 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v19, 16, v17
	ds_load_u8 v19, v67 offset:6784
	ds_load_u8 v20, v67 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v67 offset:7040
	ds_load_u8 v33, v67 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v33, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v20, 16, v19
	ds_load_u8 v19, v67 offset:6272
	ds_load_u8 v33, v67 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v33, v19, 0xc0c0004
	ds_load_u8 v33, v67 offset:6528
	ds_load_u8 v34, v67 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v33, 16, v19
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[17:18], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v17, v66 offset:12096
	ds_load_u8 v18, v66 offset:12032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:12224
	ds_load_u8 v33, v66 offset:12160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v33, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v66 offset:11840
	ds_load_u8 v18, v66 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v66 offset:11968
	ds_load_u8 v33, v66 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v33, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	ds_load_u8 v17, v67 offset:7808
	ds_load_u8 v18, v67 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v67 offset:8064
	ds_load_u8 v36, v67 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v36, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v18, 16, v17
	ds_load_u8 v17, v67 offset:7296
	ds_load_u8 v36, v67 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v36, v17, 0xc0c0004
	ds_load_u8 v36, v67 offset:7552
	ds_load_u8 v37, v67 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v17, v36, 16, v17
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[33:34], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v33, v66 offset:8544
	ds_load_u8 v34, v66 offset:8480
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v66 offset:8672
	ds_load_u8 v36, v66 offset:8608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v36, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v66 offset:8288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v66 offset:8416
	ds_load_u8 v36, v66 offset:8352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v35, 16, v33
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[33:34], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v31, v66 offset:9056
	ds_load_u8 v32, v66 offset:8992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v66 offset:9184
	ds_load_u8 v33, v66 offset:9120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v32, 16, v31
	ds_load_u8 v31, v66 offset:8800
	ds_load_u8 v33, v66 offset:8736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v33, v31, 0xc0c0004
	ds_load_u8 v33, v66 offset:8928
	ds_load_u8 v34, v66 offset:8864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v31, v33, 16, v31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[31:32], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v29, v66 offset:9568
	ds_load_u8 v30, v66 offset:9504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v66 offset:9696
	ds_load_u8 v31, v66 offset:9632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v66 offset:9312
	ds_load_u8 v31, v66 offset:9248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v31, v29, 0xc0c0004
	ds_load_u8 v31, v66 offset:9440
	ds_load_u8 v32, v66 offset:9376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v31, 16, v29
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[29:30], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v27, v66 offset:10080
	ds_load_u8 v28, v66 offset:10016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v66 offset:10208
	ds_load_u8 v29, v66 offset:10144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v28, 16, v27
	ds_load_u8 v27, v66 offset:9824
	ds_load_u8 v29, v66 offset:9760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v29, v27, 0xc0c0004
	ds_load_u8 v29, v66 offset:9952
	ds_load_u8 v30, v66 offset:9888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v27, v29, 16, v27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[27:28], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v25, v66 offset:10592
	ds_load_u8 v26, v66 offset:10528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v66 offset:10720
	ds_load_u8 v27, v66 offset:10656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v66 offset:10336
	ds_load_u8 v27, v66 offset:10272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v66 offset:10464
	ds_load_u8 v28, v66 offset:10400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v27, 16, v25
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[25:26], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v23, v66 offset:11104
	ds_load_u8 v24, v66 offset:11040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	ds_load_u8 v24, v66 offset:11232
	ds_load_u8 v25, v66 offset:11168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v24, 16, v23
	ds_load_u8 v23, v66 offset:10848
	ds_load_u8 v25, v66 offset:10784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v25, v23, 0xc0c0004
	ds_load_u8 v25, v66 offset:10976
	ds_load_u8 v26, v66 offset:10912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v23, v25, 16, v23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[23:24], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v21, v66 offset:11616
	ds_load_u8 v22, v66 offset:11552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v66 offset:11744
	ds_load_u8 v23, v66 offset:11680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v22, 16, v21
	ds_load_u8 v21, v66 offset:11360
	ds_load_u8 v23, v66 offset:11296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v23, v21, 0xc0c0004
	ds_load_u8 v23, v66 offset:11488
	ds_load_u8 v24, v66 offset:11424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v21, v23, 16, v21
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[21:22], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v19, v66 offset:12128
	ds_load_u8 v20, v66 offset:12064
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	ds_load_u8 v20, v66 offset:12256
	ds_load_u8 v21, v66 offset:12192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v20, 16, v19
	ds_load_u8 v19, v66 offset:11872
	ds_load_u8 v21, v66 offset:11808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v21, v19, 0xc0c0004
	ds_load_u8 v21, v66 offset:12000
	ds_load_u8 v22, v66 offset:11936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v21, 16, v19
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[19:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v19, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_5:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v16, 32, v63
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_i32_i24_e32 v18, s22, v63
	s_mul_i32 s0, s42, s22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v17, v65, v64
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_i32_i24_e32 v16, s22, v16
	s_add_i32 s0, s0, s1
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s35
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v18, s0, v18, 1
	s_and_b32 s9, s9, 0xffff
	v_add_lshl_u32 v16, s0, v16, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s33, s1
	s_mov_b32 s11, 0x31027000
	v_add_lshl_u32 v17, s0, v17, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v20, 0x80000000, v17, s2
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v23, v18, s[8:11], 0 offen
	buffer_load_u16 v24, v16, s[8:11], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v20, v20, s[20:23], 0 offen
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s42, s42, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshrrev_b32_e32 v34, 1, v45
	s_mov_b32 s0, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v24, 16, v24
	v_lshlrev_b32_e32 v23, 16, v23
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v4, v4, v24 :: v_dual_add_nc_u32 v21, 4, v17
	v_mul_f32_e32 v10, v10, v23
	v_dual_mul_f32 v9, v9, v23 :: v_dual_add_nc_u32 v22, 8, v17
	v_dual_mul_f32 v14, v14, v23 :: v_dual_add_nc_u32 v25, 20, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v16, 0x80000000, v21, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v12, v12, v23 :: v_dual_add_nc_u32 v21, 12, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v18, 0x80000000, v22, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v11, v11, v23 :: v_dual_add_nc_u32 v22, 16, v17
	v_dual_mul_f32 v13, v13, v23 :: v_dual_add_nc_u32 v26, 24, v17
	v_dual_mul_f32 v2, v2, v24 :: v_dual_add_nc_u32 v17, 28, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	s_clause 0x6
	buffer_load_u16 v27, v16, s[20:23], 0 offen
	buffer_load_u16 v28, v18, s[20:23], 0 offen
	buffer_load_u16 v29, v21, s[20:23], 0 offen
	buffer_load_u16 v30, v22, s[20:23], 0 offen
	buffer_load_u16 v25, v25, s[20:23], 0 offen
	buffer_load_u16 v26, v26, s[20:23], 0 offen
	buffer_load_u16 v31, v17, s[20:23], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v15, v15, v23 :: v_dual_lshlrev_b32 v16, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v21, 7, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v17, 0x7f, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_bfe_i32 v18, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v33, 0x78, v16
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v19, v19, v23 :: v_dual_and_b32 v32, 14, v0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mul_lo_u32 v22, s35, v21
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v1, v1, v24 :: v_dual_and_b32 v18, 0x840, v18
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add3_u32 v16, s42, s33, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v33, v46, 3, v33
	v_lshlrev_b32_e32 v35, 11, v32
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v6, v6, v24
	v_mul_f32_e32 v3, v3, v24
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add_nc_u32_e32 v17, v16, v22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_xor_b32_e32 v33, v33, v18
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v9, v9, v20, v48
	v_fma_f32 v20, v1, v20, v55
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_waitcnt lgkmcnt(0)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or3_b32 v33, v35, v34, v33
	v_cndmask_b32_e64 v1, v48, v9, s2
	s_barrier
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v24
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v34, 0, v33
	v_xad_u32 v35, v33, 8, 0
	v_xad_u32 v36, v33, 16, 0
	v_xad_u32 v37, v33, 24, 0
	v_xad_u32 v38, v33, 32, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_u32 v17, vcc_lo, s40, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s41, v18, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_xad_u32 v39, v33, 40, 0
	v_xad_u32 v40, v33, 48, 0
	v_xad_u32 v33, v33, 56, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v45
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v5, v5, v24
	v_mul_f32_e32 v7, v7, v24
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v23, 16, v27
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v27, 16, v28
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v28, 16, v29
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v29, 16, v30
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v31
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v10, v10, v23, v62
	v_fma_f32 v23, v2, v23, v54
	v_fma_f32 v11, v11, v27, v61
	v_fma_f32 v24, v3, v27, v53
	v_fma_f32 v12, v12, v28, v60
	v_fma_f32 v27, v4, v28, v52
	v_fma_f32 v13, v13, v29, v59
	v_fma_f32 v28, v5, v29, v51
	v_fma_f32 v29, v8, v30, v47
	v_fma_f32 v14, v14, v25, v58
	v_fma_f32 v15, v15, v26, v57
	v_fma_f32 v19, v19, v30, v56
	v_fma_f32 v25, v6, v25, v50
	v_fma_f32 v26, v7, v26, v49
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v55, v20, s2
	v_cndmask_b32_e64 v3, v62, v10, s2
	v_cndmask_b32_e64 v4, v54, v23, s2
	v_cndmask_b32_e64 v5, v61, v11, s2
	v_cndmask_b32_e64 v6, v53, v24, s2
	v_cndmask_b32_e64 v7, v60, v12, s2
	v_cndmask_b32_e64 v8, v52, v27, s2
	v_cndmask_b32_e64 v9, v59, v13, s2
	v_cndmask_b32_e64 v10, v51, v28, s2
	v_cndmask_b32_e64 v20, v47, v29, s2
	v_cndmask_b32_e64 v11, v58, v14, s2
	v_cndmask_b32_e64 v13, v57, v15, s2
	v_cndmask_b32_e64 v19, v56, v19, s2
	v_cndmask_b32_e64 v12, v50, v25, s2
	v_cndmask_b32_e64 v14, v49, v26, s2
	ds_store_b64 v34, v[1:2]
	ds_store_b64 v35, v[3:4]
	ds_store_b64 v36, v[5:6]
	ds_store_b64 v37, v[7:8]
	ds_store_b64 v38, v[9:10]
	ds_store_b64 v39, v[11:12]
	ds_store_b64 v40, v[13:14]
	ds_store_b64 v33, v[19:20]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	global_load_b32 v20, v[17:18], off
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_and_b32_e32 v1, 1, v0
	v_bfe_i32 v2, v0, 7, 1
	v_lshlrev_b32_e32 v0, 4, v0
	v_lshlrev_b32_e32 v3, 2, v32
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
	v_add_f32_e32 v19, v20, v12
	global_atomic_cmpswap_b32 v19, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v19, v20
	v_mov_b32_e32 v20, v19
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v12, 4, v21
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[17:18], null, s35, v12, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, vcc_lo, s40, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s41, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_8:                                ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v19, v20, v8
	global_atomic_cmpswap_b32 v12, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v20
	v_mov_b32_e32 v20, v12
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s0, s35, 3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v17, v22, s0, v16
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, vcc_lo, s40, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s41, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_10:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v19, v20, v4
	global_atomic_cmpswap_b32 v8, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v20
	v_mov_b32_e32 v20, v8
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v4, 12, v21
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[17:18], null, s35, v4, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, vcc_lo, s40, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s41, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_12:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v19, v20, v0
	global_atomic_cmpswap_b32 v4, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v20
	v_mov_b32_e32 v20, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s0, s35, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v17, v22, s0, v16
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, vcc_lo, s40, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s41, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_14:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v14
	global_atomic_cmpswap_b32 v0, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v20
	v_mov_b32_e32 v20, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 20, v21
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[17:18], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, vcc_lo, s40, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s41, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_16:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v10
	global_atomic_cmpswap_b32 v0, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v20
	v_mov_b32_e32 v20, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s35, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v17, v22, s0, v16
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, vcc_lo, s40, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s41, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_18:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v6
	global_atomic_cmpswap_b32 v0, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v20
	v_mov_b32_e32 v20, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 28, v21
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[17:18], null, s35, v0, v[16:17]
	.loc	1 192 9 is_stmt 0               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, vcc_lo, s40, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s41, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_20:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v2
	global_atomic_cmpswap_b32 v0, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v20
	v_mov_b32_e32 v20, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_lshl_b32 s0, s35, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v17, v22, s0, v16
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v18, 31, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	v_add_co_u32 v17, vcc_lo, s40, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s41, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_22:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v13
	global_atomic_cmpswap_b32 v0, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v20
	v_mov_b32_e32 v20, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v0, 36, v21
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
	global_load_b32 v18, v[12:13], off
.LBB0_24:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v17, v18, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[17:18], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v18
	v_mov_b32_e32 v18, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_mul_i32 s0, s35, 40
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v8, v22, s0, v16
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
	v_or_b32_e32 v0, 44, v21
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
	s_mul_i32 s0, s35, 48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v22, s0, v16
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
	v_or_b32_e32 v0, 52, v21
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
	s_mul_i32 s0, s35, 56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v22, s0, v16
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
	v_or_b32_e32 v0, 60, v21
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 81
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.num_vgpr, 81
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12248
; TotalNumSgprs: 45
; NumVgprs: 81
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 81
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_bm64_bn128_bk128_gm1_w16_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     81
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
