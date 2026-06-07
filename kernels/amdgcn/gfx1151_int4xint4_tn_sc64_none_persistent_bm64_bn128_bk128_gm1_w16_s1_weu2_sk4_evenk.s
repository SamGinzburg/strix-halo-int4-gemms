	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 63
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s29, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 26
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s33, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s34, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s35, s34, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s35
	s_cbranch_scc1 .LBB0_38
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[30:31], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_and_b32_e32 v5, 0x100, v0
	v_lshlrev_b32_e32 v26, 2, v0
	v_and_b32_e32 v2, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v30, 0xe0, v0
	v_bfe_i32 v17, v0, 0, 1
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v16, 4, v5
	v_and_b32_e32 v18, 0x78, v26
	v_and_b32_e32 v20, 1, v0
	v_bfe_i32 v21, v0, 7, 1
	v_and_b32_e32 v17, 0x840, v17
	v_or_b32_e32 v31, v16, v2
	v_and_b32_e32 v16, 14, v0
	v_lshl_or_b32 v18, v30, 3, v18
	v_lshlrev_b32_e32 v22, 4, v0
	v_lshlrev_b32_e32 v20, 6, v20
	v_and_b32_e32 v21, 0x840, v21
	v_bfe_i32 v6, v0, 8, 1
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 63
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s13, s12, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s12, s12, s13
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 26
	v_lshlrev_b32_e32 v19, 11, v16
	s_add_i32 s13, s0, s1
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s1, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s36, s13, 6
	s_cmp_gt_i32 s0, 63
	v_lshrrev_b32_e32 v5, 1, v5
	s_cselect_b32 s37, -1, 0
	s_abs_i32 s38, s34
	v_xor_b32_e32 v17, v18, v17
	v_and_b32_e32 v18, 0x700, v22
	v_lshlrev_b32_e32 v16, 2, v16
	v_xor_b32_e32 v20, v21, v20
	s_cvt_f32_u32 s0, s38
	v_or3_b32 v34, v19, v5, v17
	v_and_b32_e32 v5, 0x1008, v6
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v4, 7, v0
	v_or3_b32 v6, v18, v16, v20
	v_rcp_iflag_f32_e32 v20, s0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v3, 4, v0
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v15, 4, v4
	v_or_b32_e32 v14, 12, v4
	v_or_b32_e32 v13, 20, v4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_lshl_or_b32 v36, s3, 5, v3
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v12, 28, v4
	v_or_b32_e32 v11, 36, v4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[16:17], null, s29, v4, v[1:2]
	v_readfirstlane_b32 s0, v20
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v10, 44, v4
	v_xor_b32_e32 v35, v6, v5
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[17:18], null, s29, v15, v[1:2]
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v9, 52, v4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[18:19], null, s29, v14, v[1:2]
	s_mul_f32 s0, s0, 0x4f7ffffe
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v8, 60, v4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[19:20], null, s29, v13, v[1:2]
	v_mul_lo_u32 v3, s29, v36
	v_mul_lo_u32 v4, s28, v36
	v_mad_u64_u32 v[20:21], null, s29, v12, v[1:2]
	v_mad_u64_u32 v[21:22], null, s29, v11, v[1:2]
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v7, 1, v30
	v_add_nc_u32_e32 v32, 0, v26
	v_add_nc_u32_e32 v27, 0, v2
	v_xor_b32_e32 v28, 8, v34
	v_xor_b32_e32 v29, 16, v34
	v_xor_b32_e32 v45, 24, v34
	v_xor_b32_e32 v5, 32, v34
	v_xor_b32_e32 v6, 40, v34
	v_xor_b32_e32 v48, 48, v34
	v_xor_b32_e32 v49, 56, v34
	v_xor_b32_e32 v50, 0x2010, v35
	v_xor_b32_e32 v51, 0x4020, v35
	v_xor_b32_e32 v52, 0x6030, v35
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[22:23], null, s29, v10, v[1:2]
	s_cvt_u32_f32 s0, s0
	v_lshrrev_b32_e32 v0, 3, v0
	v_mad_u64_u32 v[23:24], null, s29, v9, v[1:2]
	s_mov_b32 s20, s4
	s_mov_b32 s4, s6
	s_sub_i32 s6, 0, s38
	v_mad_u64_u32 v[24:25], null, s29, v8, v[1:2]
	s_mul_i32 s6, s6, s0
	v_add_nc_u32_e32 v33, 0, v31
	v_and_b32_e32 v37, 2, v0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_or_b32_e32 v38, 32, v31
	v_lshl_add_u32 v39, v2, 3, v3
	v_lshl_add_u32 v40, v2, 2, v4
	v_add_nc_u32_e32 v41, v32, v26
	v_add_nc_u32_e32 v42, v27, v7
	v_add_nc_u32_e32 v43, 0, v28
	v_add_nc_u32_e32 v44, 0, v29
	v_add_nc_u32_e32 v45, 0, v45
	v_add_nc_u32_e32 v46, 0, v5
	v_add_nc_u32_e32 v47, 0, v6
	v_add_nc_u32_e32 v48, 0, v48
	v_add_nc_u32_e32 v49, 0, v49
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v52, 0, v52
	s_mul_hi_u32 s6, s0, s6
	s_and_b32 s21, s5, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s5, s7, 0xffff
	s_mov_b32 s12, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_lshl_b32 s39, s29, 3
	s_lshl_b32 s40, s29, 4
	s_mul_i32 s41, s29, 24
	s_lshl_b32 s42, s29, 5
	s_mul_i32 s43, s29, 40
	s_mul_i32 s44, s29, 48
	s_mul_i32 s45, s29, 56
	s_ashr_i32 s3, s34, 31
	s_add_i32 s46, s0, s6
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s47, s29, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s48, s36, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s28, s28, 5
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
                                        ;     Child Loop BB0_14 Depth 2
                                        ;     Child Loop BB0_16 Depth 2
                                        ;     Child Loop BB0_18 Depth 2
                                        ;     Child Loop BB0_20 Depth 2
                                        ;     Child Loop BB0_22 Depth 2
                                        ;     Child Loop BB0_24 Depth 2
                                        ;     Child Loop BB0_26 Depth 2
                                        ;     Child Loop BB0_28 Depth 2
                                        ;     Child Loop BB0_30 Depth 2
                                        ;     Child Loop BB0_32 Depth 2
                                        ;     Child Loop BB0_34 Depth 2
                                        ;     Child Loop BB0_36 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s0, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s6, s0, s46
	s_xor_b32 s7, s7, s3
	s_mul_i32 s10, s6, s38
	v_mov_b32_e32 v1, 0
	s_sub_i32 s0, s0, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s0, s38
	s_cmp_ge_u32 s0, s38
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, 0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s0, s11, s0
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s0, s38
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s0, s10, s6
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	s_xor_b32 s0, s0, s7
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v8, 0
	s_sub_i32 s7, s0, s7
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s0, s33, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s13, s7, s34
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s10, s0, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s13, s2, s13
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s10
	s_abs_i32 s14, s13
	s_cvt_f32_u32 s0, s6
	s_sub_i32 s11, 0, s6
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_readfirstlane_b32 s0, v0
	v_mov_b32_e32 v0, 0
	s_mul_f32 s0, s0, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s0, s0
	s_mul_i32 s11, s11, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s0, s11
	s_add_i32 s0, s0, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s14, s0
	s_xor_b32 s0, s13, s10
	s_mul_i32 s15, s11, s6
	s_ashr_i32 s0, s0, 31
	s_sub_i32 s14, s14, s15
	s_add_i32 s15, s11, 1
	s_sub_i32 s16, s14, s6
	s_cmp_ge_u32 s14, s6
	s_cselect_b32 s11, s15, s11
	s_cselect_b32 s14, s16, s14
	s_add_i32 s15, s11, 1
	s_cmp_ge_u32 s14, s6
	s_cselect_b32 s6, s15, s11
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_not1_b32 vcc_lo, exec_lo, s37
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s6, s6, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s50, s6, s0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s10, s50, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s10, s13, s10
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s49, s10, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v1, s49, v38
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v2, s49, v31
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v0, s6, 8, v30
	v_lshl_add_u32 v3, s6, 7, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v26, s48, v1
	v_mul_lo_u32 v27, s48, v2
	s_lshl_b32 s7, s0, 8
	s_lshl_b32 s0, s0, 7
	v_subrev_nc_u32_e32 v25, s7, v0
	v_subrev_nc_u32_e32 v28, s0, v3
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v29, s49, v40
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v1, 0
	s_mov_b32 s51, 0
	s_mov_b32 s52, s36
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 271 31 is_stmt 1              ; generate_amdgcn.py:271:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v53, s51, v36
	.loc	1 259 55 is_stmt 0              ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e32 vcc_lo, 32, v36
	.loc	1 270 30 is_stmt 1              ; generate_amdgcn.py:270:30
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s22
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s0, s1, v53
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s11, s23
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v119, v37, v25
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v25, s47, v25
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	v_dual_cndmask_b32 v53, 0x80000000, v29 :: v_dual_cndmask_b32 v54, 0x80000000, v28
	buffer_load_b32 v55, v53, s[20:23], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b64 v[53:54], v54, s[4:7], 0 offen
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s52, s52, -1
	s_add_i32 s51, s51, 32
	s_cmp_lg_u32 s52, 0
	v_add_nc_u32_e32 v28, s42, v28
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt vmcnt(1)
	ds_store_b32 v32, v55
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v55, v33 offset:448
	ds_load_u8 v56, v33 offset:384
	ds_load_u8 v57, v33 offset:320
	ds_load_u8 v58, v33 offset:256
	ds_load_u8 v60, v33 offset:480
	ds_load_u8 v61, v33 offset:416
	ds_load_u8 v59, v33 offset:352
	ds_load_u8 v62, v33 offset:288
	ds_load_u8 v63, v33 offset:192
	ds_load_u8 v64, v33 offset:128
	ds_load_u8 v65, v33 offset:64
	ds_load_u8 v66, v33 offset:224
	ds_load_u8 v67, v33 offset:160
	ds_load_u8 v68, v33 offset:96
	ds_load_u8 v69, v33
	ds_load_u8 v70, v33 offset:32
	ds_load_u8 v71, v33 offset:704
	ds_load_u8 v73, v33 offset:640
	ds_load_u8 v72, v33 offset:576
	ds_load_u8 v74, v33 offset:512
	ds_load_u8 v75, v33 offset:736
	ds_load_u8 v76, v33 offset:672
	ds_load_u8 v77, v33 offset:608
	ds_load_u8 v78, v33 offset:544
	ds_load_u8 v79, v33 offset:960
	ds_load_u8 v80, v33 offset:896
	ds_load_u8 v81, v33 offset:832
	ds_load_u8 v82, v33 offset:768
	ds_load_u8 v83, v33 offset:992
	ds_load_u8 v84, v33 offset:928
	ds_load_u8 v85, v33 offset:864
	ds_load_u8 v86, v33 offset:800
	ds_load_u8 v87, v33 offset:1216
	ds_load_u8 v88, v33 offset:1152
	ds_load_u8 v89, v33 offset:1088
	ds_load_u8 v90, v33 offset:1024
	ds_load_u8 v91, v33 offset:1248
	ds_load_u8 v92, v33 offset:1184
	ds_load_u8 v93, v33 offset:1120
	ds_load_u8 v94, v33 offset:1056
	ds_load_u8 v95, v33 offset:1472
	ds_load_u8 v96, v33 offset:1408
	ds_load_u8 v97, v33 offset:1344
	ds_load_u8 v98, v33 offset:1280
	ds_load_u8 v99, v33 offset:1504
	ds_load_u8 v100, v33 offset:1440
	ds_load_u8 v101, v33 offset:1376
	ds_load_u8 v102, v33 offset:1312
	ds_load_u8 v103, v33 offset:1728
	ds_load_u8 v104, v33 offset:1664
	ds_load_u8 v105, v33 offset:1600
	ds_load_u8 v106, v33 offset:1536
	ds_load_u8 v107, v33 offset:1760
	ds_load_u8 v108, v33 offset:1696
	ds_load_u8 v109, v33 offset:1632
	ds_load_u8 v110, v33 offset:1568
	ds_load_u8 v111, v33 offset:1984
	ds_load_u8 v112, v33 offset:1920
	ds_load_u8 v113, v33 offset:1856
	ds_load_u8 v114, v33 offset:1792
	ds_load_u8 v115, v33 offset:2016
	ds_load_u8 v116, v33 offset:1952
	ds_load_u8 v117, v33 offset:1888
	ds_load_u8 v118, v33 offset:1824
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v41, v[53:54]
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v53, v58, v57, 0xc0c0004
	v_perm_b32 v54, v56, v55, 0xc0c0004
	v_perm_b32 v56, v64, v63, 0xc0c0004
	v_perm_b32 v57, v82, v81, 0xc0c0004
	v_perm_b32 v58, v80, v79, 0xc0c0004
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v79, v42 offset:640
	ds_load_u8 v80, v42 offset:896
	ds_load_u8 v81, v42 offset:768
	ds_load_u8 v82, v42 offset:512
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_perm_b32 v96, v96, v95, 0xc0c0004
	v_perm_b32 v89, v90, v89, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	ds_load_u8 v88, v42 offset:128
	ds_load_u8 v95, v42 offset:384
	v_perm_b32 v90, v114, v113, 0xc0c0004
	v_perm_b32 v98, v112, v111, 0xc0c0004
	ds_load_u8 v111, v42 offset:256
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v42
	v_perm_b32 v103, v104, v103, 0xc0c0004
	ds_load_u8 v104, v42 offset:1664
	ds_load_u8 v112, v42 offset:1920
	ds_load_u8 v113, v42 offset:1792
	ds_load_u8 v114, v42 offset:1536
	ds_load_u8 v121, v42 offset:1152
	v_perm_b32 v63, v86, v85, 0xc0c0004
	ds_load_u8 v85, v42 offset:1408
	v_perm_b32 v64, v84, v83, 0xc0c0004
	ds_load_u8 v83, v42 offset:1280
	ds_load_u8 v84, v42 offset:1024
	v_perm_b32 v55, v69, v65, 0xc0c0004
	v_perm_b32 v59, v62, v59, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_perm_b32 v61, v70, v68, 0xc0c0004
	v_perm_b32 v62, v67, v66, 0xc0c0004
	v_perm_b32 v65, v78, v77, 0xc0c0004
	v_perm_b32 v66, v76, v75, 0xc0c0004
	ds_load_u8 v86, v42 offset:2688
	v_perm_b32 v67, v102, v101, 0xc0c0004
	ds_load_u8 v101, v42 offset:2944
	v_perm_b32 v68, v100, v99, 0xc0c0004
	ds_load_u8 v99, v42 offset:2816
	v_perm_b32 v69, v94, v93, 0xc0c0004
	ds_load_u8 v93, v42 offset:2560
	ds_load_u8 v94, v42 offset:2304
	ds_load_u8 v100, v42 offset:2048
	v_perm_b32 v70, v92, v91, 0xc0c0004
	ds_load_u8 v91, v42 offset:2176
	ds_load_u8 v92, v42 offset:2432
	v_perm_b32 v75, v108, v107, 0xc0c0004
	ds_load_u8 v102, v42 offset:3712
	ds_load_u8 v107, v42 offset:3968
	ds_load_u8 v108, v42 offset:3840
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v76, v82, v79, 0xc0c0004
	v_perm_b32 v77, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v78, v106, v88, 0xc0c0004
	ds_load_u8 v88, v42 offset:3584
	v_perm_b32 v79, v111, v95, 0xc0c0004
	ds_load_u8 v95, v42 offset:3200
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v80, v114, v104, 0xc0c0004
	ds_load_u8 v104, v42 offset:3328
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v82, v84, v121, 0xc0c0004
	ds_load_u8 v84, v42 offset:3456
	ds_load_u8 v106, v42 offset:3072
	v_perm_b32 v72, v74, v72, 0xc0c0004
	v_perm_b32 v74, v110, v109, 0xc0c0004
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_clause 0x1
	buffer_load_u16 v109, v27, s[8:11], 0 offen
	buffer_load_u16 v111, v26, s[8:11], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v81, v113, v112, 0xc0c0004
	v_perm_b32 v83, v83, v85, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v110, v93, v86, 0xc0c0004
	v_perm_b32 v112, v99, v101, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v114, v100, v91, 0xc0c0004
	v_lshl_or_b32 v97, v96, 16, v97
	v_lshl_or_b32 v96, v87, 16, v89
	v_lshl_or_b32 v99, v98, 16, v90
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v102, v88, v102, 0xc0c0004
	v_perm_b32 v120, v73, v71, 0xc0c0004
	v_perm_b32 v71, v118, v117, 0xc0c0004
	v_perm_b32 v73, v116, v115, 0xc0c0004
	v_perm_b32 v107, v108, v107, 0xc0c0004
	v_perm_b32 v116, v94, v92, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v104, v104, v84, 0xc0c0004
	v_dual_mov_b32 v91, s19 :: v_dual_mov_b32 v84, s12
	v_mov_b32_e32 v88, s16
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v113, v119, s[24:27], 0 offen
	buffer_load_u16 v115, v119, s[24:27], 0 offen offset:4
	buffer_load_u16 v117, v119, s[24:27], 0 offen offset:8
	buffer_load_u16 v118, v119, s[24:27], 0 offen offset:12
	buffer_load_u16 v108, v119, s[24:27], 0 offen offset:16
	buffer_load_u16 v121, v119, s[24:27], 0 offen offset:20
	buffer_load_u16 v122, v119, s[24:27], 0 offen offset:24
	buffer_load_u16 v119, v119, s[24:27], 0 offen offset:28
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v93, v54, 16, v53
	v_lshl_or_b32 v92, v56, 16, v55
	v_dual_mov_b32 v90, s18 :: v_dual_mov_b32 v89, s17
	v_dual_mov_b32 v87, s15 :: v_dual_add_nc_u32 v26, 2, v26
	v_dual_mov_b32 v86, s14 :: v_dual_mov_b32 v85, s13
	v_lshl_or_b32 v101, v60, 16, v59
	v_lshl_or_b32 v100, v62, 16, v61
	v_lshl_or_b32 v62, v64, 16, v63
	v_lshl_or_b32 v64, v68, 16, v67
	v_lshl_or_b32 v68, v77, 16, v76
	v_lshl_or_b32 v67, v79, 16, v78
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v106, v95, 0xc0c0004
	v_lshl_or_b32 v95, v58, 16, v57
	v_lshl_or_b32 v94, v120, 16, v72
	v_lshl_or_b32 v61, v66, 16, v65
	v_lshl_or_b32 v63, v70, 16, v69
	v_lshl_or_b32 v70, v81, 16, v80
	v_lshl_or_b32 v69, v83, 16, v82
	v_wmma_i32_16x16x16_iu4 v[53:60], v[67:68], v[92:93], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[67:68], v[100:101], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v66, v73, 16, v71
	v_lshl_or_b32 v72, v112, 16, v110
	v_lshl_or_b32 v71, v116, 16, v114
	v_wmma_i32_16x16x16_iu4 v[53:60], v[69:70], v[94:95], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[69:70], v[61:62], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v103, 16, v105
	v_lshl_or_b32 v65, v75, 16, v74
	v_lshl_or_b32 v74, v107, 16, v102
	v_lshl_or_b32 v73, v104, 16, v106
	v_wmma_i32_16x16x16_iu4 v[53:60], v[71:72], v[96:97], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[71:72], v[63:64], v[84:91] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[98:99], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[73:74], v[65:66], v[84:91] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v84
	v_cvt_f32_i32_e32 v62, v85
	v_cvt_f32_i32_e32 v63, v86
	v_cvt_f32_i32_e32 v64, v87
	v_cvt_f32_i32_e32 v65, v88
	v_cvt_f32_i32_e32 v66, v89
	v_cvt_f32_i32_e32 v67, v90
	v_cvt_f32_i32_e32 v68, v91
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v70, 16, v111
	v_lshlrev_b32_e32 v69, 16, v109
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v62, v62, v70 :: v_dual_add_nc_u32 v29, s28, v29
	v_mul_f32_e32 v61, v61, v70
	v_mul_f32_e32 v63, v63, v70
	v_dual_mul_f32 v64, v64, v70 :: v_dual_add_nc_u32 v27, 2, v27
	v_mul_f32_e32 v54, v54, v69
	v_mul_f32_e32 v53, v53, v69
	v_mul_f32_e32 v55, v55, v69
	v_mul_f32_e32 v56, v56, v69
	v_mul_f32_e32 v57, v57, v69
	v_mul_f32_e32 v58, v58, v69
	v_mul_f32_e32 v60, v60, v69
	v_mul_f32_e32 v66, v66, v70
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v68, v68, v70 :: v_dual_lshlrev_b32 v71, 16, v113
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v72, 16, v115
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v73, 16, v117
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v74, 16, v118
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v75, 16, v108
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v76, 16, v121
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v77, 16, v122
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v59, v59, v69 :: v_dual_lshlrev_b32 v78, 16, v119
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v12, v53, v71
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v65, v65, v70 :: v_dual_fmac_f32 v14, v54, v72
	v_dual_mul_f32 v67, v67, v70 :: v_dual_fmac_f32 v6, v57, v75
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v10, v55, v73 :: v_dual_fmac_f32 v13, v61, v71
	v_dual_fmac_f32 v8, v56, v74 :: v_dual_fmac_f32 v15, v62, v72
	v_dual_fmac_f32 v4, v58, v76 :: v_dual_fmac_f32 v11, v63, v73
	v_dual_fmac_f32 v2, v59, v77 :: v_dual_fmac_f32 v9, v64, v74
	v_dual_fmac_f32 v0, v60, v78 :: v_dual_fmac_f32 v7, v65, v75
	v_fmac_f32_e32 v5, v66, v76
	v_fmac_f32_e32 v3, v67, v77
	v_fmac_f32_e32 v1, v68, v78
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_4
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s0, s50, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s6, s49, s29
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v27, 0, v34
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_add_i32 s0, s6, s0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v25, s0, v16
	s_barrier
	ds_store_b64 v27, v[12:13]
	ds_store_b64 v43, v[14:15]
	ds_store_b64 v44, v[10:11]
	ds_store_b64 v45, v[8:9]
	ds_store_b64 v46, v[6:7]
	ds_store_b64 v47, v[4:5]
	ds_store_b64 v48, v[2:3]
	ds_store_b64 v49, v[0:1]
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v26, 31, v25
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v0, 0, v35
	s_mov_b32 s6, 0
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[12:13], 2, v[25:26]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v12
	v_add_co_ci_u32_e64 v27, null, s31, v13, vcc_lo
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_load_2addr_b64 v[12:15], v0 offset1:16
	ds_load_2addr_b64 v[8:11], v50 offset1:16
	ds_load_2addr_b64 v[4:7], v51 offset1:16
	ds_load_2addr_b64 v[0:3], v52 offset1:16
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	global_load_b32 v29, v[26:27], off
.LBB0_6:                                ; %atomicrmw.start86
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v28, v29, v12
	global_atomic_cmpswap_b32 v28, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v29
	v_mov_b32_e32 v29, v28
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end85
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v26, s0, v17
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_8:                                ; %atomicrmw.start80
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v28, v29, v8
	global_atomic_cmpswap_b32 v12, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v29
	v_mov_b32_e32 v29, v12
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end79
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v26, s39, v25
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_10:                               ; %atomicrmw.start74
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v28, v29, v4
	global_atomic_cmpswap_b32 v8, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v29
	v_mov_b32_e32 v29, v8
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end73
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v26, s0, v18
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_12:                               ; %atomicrmw.start68
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v28, v29, v0
	global_atomic_cmpswap_b32 v4, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v29
	v_mov_b32_e32 v29, v4
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end67
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v26, s40, v25
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_14:                               ; %atomicrmw.start62
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v14
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end61
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v26, s0, v19
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_16:                               ; %atomicrmw.start56
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v10
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end55
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v26, s41, v25
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_18:                               ; %atomicrmw.start50
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v6
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end49
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v26, s0, v20
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_20:                               ; %atomicrmw.start44
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v2
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end43
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v26, s42, v25
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v26, vcc_lo, s30, v26
	v_add_co_ci_u32_e64 v27, null, s31, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_22:                               ; %atomicrmw.start38
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v13
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end37
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v12, s0, v21
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v12, vcc_lo, s30, v12
	v_add_co_ci_u32_e64 v13, null, s31, v13, vcc_lo
	global_load_b32 v27, v[12:13], off
.LBB0_24:                               ; %atomicrmw.start32
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v26, v27, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[26:27], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v27
	v_mov_b32_e32 v27, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end31
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v8, s43, v25
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v8, vcc_lo, s30, v8
	v_add_co_ci_u32_e64 v9, null, s31, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_26:                               ; %atomicrmw.start26
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end25
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v4, s0, v22
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v4, vcc_lo, s30, v4
	v_add_co_ci_u32_e64 v5, null, s31, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_28:                               ; %atomicrmw.start20
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end19
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s44, v25
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s30, v0
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_30:                               ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s0, v23
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s30, v0
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_32:                               ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s45, v25
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s30, v0
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_34:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s0, v24
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s30, v0
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_36:                               ; %atomicrmw.start
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
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
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s35
	s_cbranch_scc1 .LBB0_2
.LBB0_38:                               ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 123
		.amdhsa_next_free_sgpr 53
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
		.amdhsa_inst_pref_size 41
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.num_vgpr, 123
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5168
; TotalNumSgprs: 55
; NumVgprs: 123
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 123
; Occupancy: 10
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
	.byte	205                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	206                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	246                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc64_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     123
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
