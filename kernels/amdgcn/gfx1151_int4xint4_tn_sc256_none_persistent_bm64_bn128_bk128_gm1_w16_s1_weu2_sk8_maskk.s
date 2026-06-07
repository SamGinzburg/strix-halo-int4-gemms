	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
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
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v30, 0xe0, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v7, 15, v0
	v_and_b32_e32 v19, 1, v0
	v_bfe_i32 v20, v0, 7, 1
	v_lshrrev_b32_e32 v16, 4, v5
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v8, 1, v30
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v2, 7, v0
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v31, v16, v7
	v_lshlrev_b32_e32 v16, 2, v0
	v_add3_u32 v34, 0, v7, v8
	v_bfe_i32 v7, v0, 0, 1
	v_lshrrev_b32_e32 v4, 7, v0
	v_bfe_i32 v6, v0, 8, 1
	v_and_b32_e32 v8, 0x78, v16
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 0xff
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
	s_lshr_b32 s1, s1, 24
	v_lshlrev_b32_e32 v26, 3, v0
	s_add_i32 s13, s0, s1
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s1, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s36, s13, 8
	s_cmpk_gt_i32 s0, 0xff
	v_and_b32_e32 v17, 14, v0
	s_cselect_b32 s37, -1, 0
	s_abs_i32 s41, s34
	v_and_b32_e32 v7, 0x840, v7
	s_cvt_f32_u32 s0, s41
	v_lshl_or_b32 v8, v30, 3, v8
	v_lshlrev_b32_e32 v0, 4, v0
	v_lshlrev_b32_e32 v19, 6, v19
	v_and_b32_e32 v20, 0x840, v20
	v_rcp_iflag_f32_e32 v22, s0
	v_lshlrev_b32_e32 v16, 11, v17
	v_lshrrev_b32_e32 v5, 1, v5
	v_xor_b32_e32 v7, v8, v7
	v_and_b32_e32 v0, 0x700, v0
	v_lshlrev_b32_e32 v8, 2, v17
	v_xor_b32_e32 v17, v20, v19
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v18, 4, v4
	v_or_b32_e32 v15, 12, v4
	v_or_b32_e32 v14, 20, v4
	v_or_b32_e32 v13, 28, v4
	v_or_b32_e32 v12, 36, v4
	v_or3_b32 v35, v16, v5, v7
	v_or3_b32 v0, v0, v8, v17
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[16:17], null, s29, v4, v[1:2]
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v11, 44, v4
	v_and_b32_e32 v5, 0x1008, v6
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[17:18], null, s29, v18, v[1:2]
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v10, 52, v4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[18:19], null, s29, v15, v[1:2]
	v_readfirstlane_b32 s0, v22
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v9, 60, v4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[19:20], null, s29, v14, v[1:2]
	v_lshl_or_b32 v37, s3, 6, v3
	v_mad_u64_u32 v[20:21], null, s29, v13, v[1:2]
	v_mad_u64_u32 v[21:22], null, s29, v12, v[1:2]
	v_xor_b32_e32 v36, v0, v5
	v_mad_u64_u32 v[22:23], null, s29, v11, v[1:2]
	s_mul_f32 s0, s0, 0x4f7ffffe
	v_mad_u64_u32 v[23:24], null, s29, v10, v[1:2]
	v_mad_u64_u32 v[24:25], null, s29, v9, v[1:2]
	v_mul_lo_u32 v1, s29, v37
	v_mul_lo_u32 v4, s28, v37
	s_mov_b32 s20, s4
	s_mov_b32 s4, s6
	v_add_nc_u32_e32 v32, 0, v26
	v_xor_b32_e32 v6, 8, v35
	v_xor_b32_e32 v7, 16, v35
	v_xor_b32_e32 v8, 24, v35
	v_xor_b32_e32 v0, 32, v35
	v_xor_b32_e32 v5, 40, v35
	v_xor_b32_e32 v27, 48, v35
	v_xor_b32_e32 v28, 56, v35
	v_xor_b32_e32 v29, 0x2010, v36
	v_xor_b32_e32 v51, 0x4020, v36
	v_xor_b32_e32 v52, 0x6030, v36
	s_cvt_u32_f32 s6, s0
	s_sub_i32 s3, 0, s41
	v_add_nc_u32_e32 v33, 0, v31
	v_cmp_gt_i32_e64 s0, 0x80, v37
	s_mul_i32 s3, s3, s6
	v_and_b32_e32 v38, 2, v3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_or_b32_e32 v39, 32, v31
	v_lshl_add_u32 v40, v2, 4, v1
	v_lshl_add_u32 v41, v2, 3, v4
	v_add_nc_u32_e32 v42, v32, v26
	v_add_nc_u32_e32 v43, 0, v6
	v_add_nc_u32_e32 v44, 0, v7
	v_add_nc_u32_e32 v45, 0, v8
	v_add_nc_u32_e32 v46, 0, v0
	v_add_nc_u32_e32 v47, 0, v5
	v_add_nc_u32_e32 v48, 0, v27
	v_add_nc_u32_e32 v49, 0, v28
	v_add_nc_u32_e32 v50, 0, v29
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v52, 0, v52
	s_and_b32 s21, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_mul_hi_u32 s7, s6, s3
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s12, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_lshl_b32 s38, s29, 3
	s_lshl_b32 s39, s29, 4
	s_mul_i32 s40, s29, 24
	s_lshl_b32 s42, s29, 5
	s_mul_i32 s43, s29, 40
	s_mul_i32 s44, s29, 48
	s_mul_i32 s45, s29, 56
	s_ashr_i32 s3, s34, 31
	s_add_i32 s46, s6, s7
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s47, s29, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s48, s36, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s49, s29, 7
	s_lshl_b32 s28, s28, 7
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
	s_abs_i32 s6, s2
	s_ashr_i32 s10, s2, 31
	s_mul_hi_u32 s7, s6, s46
	s_xor_b32 s10, s10, s3
	s_mul_i32 s11, s7, s41
	v_mov_b32_e32 v1, 0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s13, s6, s41
	s_cmp_ge_u32 s6, s41
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, 0
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s6, s13, s6
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s6, s41
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s6, s11, s7
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v6, 0
	s_xor_b32 s6, s6, s10
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v8, 0
	s_sub_i32 s10, s6, s10
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s33, s10
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s14, s10, s34
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s11, s6, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s14, s2, s14
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s11
	s_abs_i32 s15, s14
	s_cvt_f32_u32 s6, s7
	s_sub_i32 s13, 0, s7
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s6
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_readfirstlane_b32 s6, v0
	v_mov_b32_e32 v0, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s13, s13, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s6, s13
	s_add_i32 s6, s6, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s13, s15, s6
	s_xor_b32 s6, s14, s11
	s_mul_i32 s16, s13, s7
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s15, s15, s16
	s_add_i32 s16, s13, 1
	s_sub_i32 s17, s15, s7
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s13, s16, s13
	s_cselect_b32 s15, s17, s15
	s_add_i32 s16, s13, 1
	s_cmp_ge_u32 s15, s7
	s_cselect_b32 s7, s16, s13
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_not1_b32 vcc_lo, exec_lo, s37
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s51, s7, s6
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s11, s51, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s11, s14, s11
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s11, s11, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s50, s11, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v1, s50, v39
	v_dual_mov_b32 v53, v37 :: v_dual_add_nc_u32 v2, s50, v31
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v0, s7, 8, v30
	v_lshl_add_u32 v3, s7, 7, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v26, s48, v1
	v_mul_lo_u32 v27, s48, v2
	s_lshl_b32 s10, s6, 8
	s_lshl_b32 s6, s6, 7
	v_subrev_nc_u32_e32 v25, s10, v0
	v_subrev_nc_u32_e32 v28, s6, v3
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v29, s50, v41
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v5, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v1, 0
	s_mov_b32 s52, s36
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 259 31 is_stmt 1              ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s1, v53
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s13, s12
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	v_cndmask_b32_e32 v54, 0x80000000, v29, vcc_lo
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e32 v56, 0x80000000, v28, vcc_lo
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	buffer_load_b64 v[54:55], v54, s[20:23], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[182:185], v56, s[4:7], 0 offen
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v53, 0x80, v53
	s_add_i32 s52, s52, -1
	v_add_nc_u32_e32 v28, s49, v28
	s_cmp_lg_u32 s52, 0
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt vmcnt(1)
	ds_store_b64 v32, v[54:55]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v165, v33 offset:448
	ds_load_u8 v169, v33 offset:384
	ds_load_u8 v174, v33 offset:320
	ds_load_u8 v177, v33 offset:256
	ds_load_u8 v162, v33 offset:480
	ds_load_u8 v163, v33 offset:416
	ds_load_u8 v168, v33 offset:352
	ds_load_u8 v171, v33 offset:288
	ds_load_u8 v173, v33 offset:192
	ds_load_u8 v176, v33 offset:128
	ds_load_u8 v180, v33 offset:64
	ds_load_u8 v164, v33 offset:224
	ds_load_u8 v167, v33 offset:160
	ds_load_u8 v172, v33 offset:96
	ds_load_u8 v181, v33
	ds_load_u8 v179, v33 offset:32
	ds_load_u8 v158, v33 offset:704
	ds_load_u8 v159, v33 offset:640
	ds_load_u8 v160, v33 offset:576
	ds_load_u8 v161, v33 offset:512
	ds_load_u8 v150, v33 offset:736
	ds_load_u8 v151, v33 offset:672
	ds_load_u8 v152, v33 offset:608
	ds_load_u8 v153, v33 offset:544
	ds_load_u8 v166, v33 offset:960
	ds_load_u8 v170, v33 offset:896
	ds_load_u8 v175, v33 offset:832
	ds_load_u8 v178, v33 offset:768
	ds_load_u8 v154, v33 offset:992
	ds_load_u8 v155, v33 offset:928
	ds_load_u8 v156, v33 offset:864
	ds_load_u8 v157, v33 offset:800
	ds_load_u8 v134, v33 offset:1216
	ds_load_u8 v135, v33 offset:1152
	ds_load_u8 v136, v33 offset:1088
	ds_load_u8 v137, v33 offset:1024
	ds_load_u8 v82, v33 offset:1248
	ds_load_u8 v84, v33 offset:1184
	ds_load_u8 v90, v33 offset:1120
	ds_load_u8 v91, v33 offset:1056
	ds_load_u8 v138, v33 offset:1472
	ds_load_u8 v139, v33 offset:1408
	ds_load_u8 v141, v33 offset:1344
	ds_load_u8 v143, v33 offset:1280
	ds_load_u8 v96, v33 offset:1504
	ds_load_u8 v98, v33 offset:1440
	ds_load_u8 v100, v33 offset:1376
	ds_load_u8 v101, v33 offset:1312
	ds_load_u8 v140, v33 offset:1728
	ds_load_u8 v142, v33 offset:1664
	ds_load_u8 v144, v33 offset:1600
	ds_load_u8 v145, v33 offset:1536
	ds_load_u8 v74, v33 offset:1760
	ds_load_u8 v76, v33 offset:1696
	ds_load_u8 v83, v33 offset:1632
	ds_load_u8 v85, v33 offset:1568
	ds_load_u8 v146, v33 offset:1984
	ds_load_u8 v147, v33 offset:1920
	ds_load_u8 v148, v33 offset:1856
	ds_load_u8 v149, v33 offset:1792
	ds_load_u8 v92, v33 offset:2016
	ds_load_u8 v94, v33 offset:1952
	ds_load_u8 v97, v33 offset:1888
	ds_load_u8 v99, v33 offset:1824
	ds_load_u8 v114, v33 offset:2240
	ds_load_u8 v116, v33 offset:2176
	ds_load_u8 v122, v33 offset:2112
	ds_load_u8 v123, v33 offset:2048
	ds_load_u8 v66, v33 offset:2272
	ds_load_u8 v68, v33 offset:2208
	ds_load_u8 v75, v33 offset:2144
	ds_load_u8 v77, v33 offset:2080
	ds_load_u8 v128, v33 offset:2496
	ds_load_u8 v130, v33 offset:2432
	ds_load_u8 v132, v33 offset:2368
	ds_load_u8 v133, v33 offset:2304
	ds_load_u8 v86, v33 offset:2528
	ds_load_u8 v88, v33 offset:2464
	ds_load_u8 v93, v33 offset:2400
	ds_load_u8 v95, v33 offset:2336
	ds_load_u8 v108, v33 offset:2752
	ds_load_u8 v110, v33 offset:2688
	ds_load_u8 v115, v33 offset:2624
	ds_load_u8 v117, v33 offset:2560
	ds_load_u8 v60, v33 offset:2784
	ds_load_u8 v62, v33 offset:2720
	ds_load_u8 v67, v33 offset:2656
	ds_load_u8 v69, v33 offset:2592
	ds_load_u8 v124, v33 offset:3008
	ds_load_u8 v126, v33 offset:2944
	ds_load_u8 v129, v33 offset:2880
	ds_load_u8 v131, v33 offset:2816
	ds_load_u8 v78, v33 offset:3040
	ds_load_u8 v80, v33 offset:2976
	ds_load_u8 v87, v33 offset:2912
	ds_load_u8 v89, v33 offset:2848
	ds_load_u8 v104, v33 offset:3264
	ds_load_u8 v106, v33 offset:3200
	ds_load_u8 v109, v33 offset:3136
	ds_load_u8 v111, v33 offset:3072
	ds_load_u8 v56, v33 offset:3296
	ds_load_u8 v58, v33 offset:3232
	ds_load_u8 v61, v33 offset:3168
	ds_load_u8 v63, v33 offset:3104
	ds_load_u8 v118, v33 offset:3520
	ds_load_u8 v120, v33 offset:3456
	ds_load_u8 v125, v33 offset:3392
	ds_load_u8 v127, v33 offset:3328
	ds_load_u8 v70, v33 offset:3552
	ds_load_u8 v72, v33 offset:3488
	ds_load_u8 v79, v33 offset:3424
	ds_load_u8 v81, v33 offset:3360
	ds_load_u8 v102, v33 offset:3776
	ds_load_u8 v103, v33 offset:3712
	ds_load_u8 v105, v33 offset:3648
	ds_load_u8 v107, v33 offset:3584
	ds_load_u8 v54, v33 offset:3808
	ds_load_u8 v55, v33 offset:3744
	ds_load_u8 v57, v33 offset:3680
	ds_load_u8 v59, v33 offset:3616
	ds_load_u8 v112, v33 offset:4032
	ds_load_u8 v113, v33 offset:3968
	ds_load_u8 v119, v33 offset:3904
	ds_load_u8 v121, v33 offset:3840
	ds_load_u8 v64, v33 offset:4064
	ds_load_u8 v65, v33 offset:4000
	ds_load_u8 v71, v33 offset:3936
	ds_load_u8 v73, v33 offset:3872
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[182:185]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v182, v34 offset:640
	v_perm_b32 v174, v177, v174, 0xc0c0004
	ds_load_u8 v177, v34 offset:768
	v_perm_b32 v165, v169, v165, 0xc0c0004
	v_perm_b32 v169, v181, v180, 0xc0c0004
	ds_load_u8 v180, v34 offset:384
	ds_load_u8 v181, v34 offset:128
	v_perm_b32 v173, v176, v173, 0xc0c0004
	ds_load_u8 v176, v34 offset:896
	ds_load_u8 v183, v34 offset:512
	v_perm_b32 v162, v163, v162, 0xc0c0004
	v_perm_b32 v163, v179, v172, 0xc0c0004
	ds_load_u8 v172, v34 offset:256
	ds_load_u8 v185, v34
	v_perm_b32 v168, v171, v168, 0xc0c0004
	v_perm_b32 v164, v167, v164, 0xc0c0004
	ds_load_u8 v186, v34 offset:1664
	ds_load_u8 v187, v34 offset:1152
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v34 offset:1280
	ds_load_u8 v188, v34 offset:1024
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v184, v38, v25
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v166, v170, v166, 0xc0c0004
	v_perm_b32 v158, v159, v158, 0xc0c0004
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v159, v27, s[8:11], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v170, v157, v156, 0xc0c0004
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v156, v26, s[8:11], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v179, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v171, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v167, v183, v182, 0xc0c0004
	ds_load_u8 v182, v34 offset:1792
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v150, v184, s[24:27], 0 offen offset:8
	buffer_load_u16 v151, v184, s[24:27], 0 offen offset:12
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v176, v185, v181, 0xc0c0004
	ds_load_u8 v185, v34 offset:1408
	ds_load_u8 v181, v34 offset:1920
	ds_load_u8 v183, v34 offset:1536
	v_perm_b32 v177, v172, v180, 0xc0c0004
	v_perm_b32 v172, v178, v175, 0xc0c0004
	v_perm_b32 v175, v155, v154, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v154, v184, s[24:27], 0 offen
	buffer_load_u16 v155, v184, s[24:27], 0 offen offset:20
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v178, v153, v152, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v152, v184, s[24:27], 0 offen offset:4
	buffer_load_u16 v153, v184, s[24:27], 0 offen offset:16
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v148, v149, v148, 0xc0c0004
	v_perm_b32 v146, v147, v146, 0xc0c0004
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v34 offset:2688
	v_perm_b32 v128, v130, v128, 0xc0c0004
	ds_load_u8 v130, v34 offset:2944
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v34 offset:2816
	v_perm_b32 v114, v116, v114, 0xc0c0004
	ds_load_u8 v116, v34 offset:2560
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v180, v183, v186, 0xc0c0004
	v_perm_b32 v183, v161, v185, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v157, v184, s[24:27], 0 offen offset:24
	buffer_load_u16 v161, v184, s[24:27], 0 offen offset:28
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v182, v188, v187, 0xc0c0004
	v_perm_b32 v129, v131, v129, 0xc0c0004
	ds_load_u8 v131, v34 offset:2176
	v_perm_b32 v124, v126, v124, 0xc0c0004
	ds_load_u8 v126, v34 offset:2432
	v_perm_b32 v115, v117, v115, 0xc0c0004
	ds_load_u8 v117, v34 offset:2304
	v_perm_b32 v108, v110, v108, 0xc0c0004
	ds_load_u8 v110, v34 offset:2048
	v_perm_b32 v125, v127, v125, 0xc0c0004
	ds_load_u8 v127, v34 offset:3712
	v_perm_b32 v118, v120, v118, 0xc0c0004
	ds_load_u8 v120, v34 offset:3968
	v_perm_b32 v109, v111, v109, 0xc0c0004
	ds_load_u8 v111, v34 offset:3840
	v_perm_b32 v104, v106, v104, 0xc0c0004
	ds_load_u8 v106, v34 offset:3584
	v_perm_b32 v119, v121, v119, 0xc0c0004
	ds_load_u8 v121, v34 offset:3200
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v34 offset:3456
	v_perm_b32 v105, v107, v105, 0xc0c0004
	ds_load_u8 v107, v34 offset:3328
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v34 offset:3072
	v_perm_b32 v97, v99, v97, 0xc0c0004
	v_perm_b32 v99, v85, v83, 0xc0c0004
	v_perm_b32 v147, v76, v74, 0xc0c0004
	ds_load_u8 v76, v34 offset:5760
	ds_load_u8 v85, v34 offset:6016
	v_perm_b32 v149, v77, v75, 0xc0c0004
	ds_load_u8 v75, v34 offset:5888
	ds_load_u8 v77, v34 offset:5504
	v_perm_b32 v187, v68, v66, 0xc0c0004
	ds_load_u8 v66, v34 offset:5632
	ds_load_u8 v68, v34 offset:5248
	v_perm_b32 v189, v80, v78, 0xc0c0004
	v_perm_b32 v190, v69, v67, 0xc0c0004
	ds_load_u8 v67, v34 offset:5376
	v_perm_b32 v60, v62, v60, 0xc0c0004
	ds_load_u8 v62, v34 offset:5120
	ds_load_u8 v69, v34 offset:6784
	v_perm_b32 v192, v72, v70, 0xc0c0004
	ds_load_u8 v70, v34 offset:7040
	v_perm_b32 v61, v63, v61, 0xc0c0004
	ds_load_u8 v63, v34 offset:6912
	v_perm_b32 v56, v58, v56, 0xc0c0004
	ds_load_u8 v58, v34 offset:6656
	v_perm_b32 v193, v73, v71, 0xc0c0004
	ds_load_u8 v71, v34 offset:6272
	v_perm_b32 v194, v65, v64, 0xc0c0004
	ds_load_u8 v64, v34 offset:6528
	v_perm_b32 v57, v59, v57, 0xc0c0004
	ds_load_u8 v59, v34 offset:6400
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v34 offset:6144
	ds_load_u8 v65, v34 offset:7808
	ds_load_u8 v72, v34 offset:8064
	ds_load_u8 v73, v34 offset:7936
	ds_load_u8 v78, v34 offset:7680
	ds_load_u8 v80, v34 offset:7424
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v34 offset:4736
	ds_load_u8 v83, v34 offset:4352
	ds_load_u8 v74, v34 offset:4096
	v_perm_b32 v96, v98, v96, 0xc0c0004
	ds_load_u8 v98, v34 offset:4992
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v34 offset:4864
	v_perm_b32 v145, v84, v82, 0xc0c0004
	ds_load_u8 v82, v34 offset:4608
	ds_load_u8 v84, v34 offset:4224
	v_perm_b32 v92, v94, v92, 0xc0c0004
	ds_load_u8 v94, v34 offset:4480
	v_perm_b32 v93, v95, v93, 0xc0c0004
	v_perm_b32 v95, v88, v86, 0xc0c0004
	v_perm_b32 v191, v81, v79, 0xc0c0004
	ds_load_u8 v79, v34 offset:7296
	ds_load_u8 v86, v34 offset:7552
	ds_load_u8 v81, v34 offset:7168
	v_perm_b32 v143, v143, v141, 0xc0c0004
	v_perm_b32 v184, v139, v138, 0xc0c0004
	v_perm_b32 v185, v137, v136, 0xc0c0004
	v_perm_b32 v186, v135, v134, 0xc0c0004
	v_perm_b32 v142, v142, v140, 0xc0c0004
	v_mov_b32_e32 v141, s19
	v_dual_mov_b32 v140, s18 :: v_dual_add_nc_u32 v25, s47, v25
	v_dual_mov_b32 v139, s17 :: v_dual_mov_b32 v136, s14
	v_dual_mov_b32 v138, s16 :: v_dual_mov_b32 v137, s15
	v_dual_mov_b32 v134, s12 :: v_dual_mov_b32 v135, s13
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v116, v116, v133, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v110, v110, v131, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v106, v106, v127, 0xc0c0004
	v_perm_b32 v111, v111, v120, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v103, v103, v121, 0xc0c0004
	v_perm_b32 v107, v107, v113, 0xc0c0004
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v127, v66, v76, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v131, v62, v68, 0xc0c0004
	v_perm_b32 v133, v67, v77, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v58, v58, v69, 0xc0c0004
	v_perm_b32 v195, v63, v70, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v55, v55, v71, 0xc0c0004
	v_perm_b32 v59, v59, v64, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v196, v78, v65, 0xc0c0004
	v_lshl_or_b32 v63, v165, 16, v174
	v_lshl_or_b32 v62, v173, 16, v169
	v_lshl_or_b32 v65, v162, 16, v168
	v_lshl_or_b32 v64, v164, 16, v163
	v_lshl_or_b32 v67, v171, 16, v167
	v_lshl_or_b32 v66, v177, 16, v176
	v_perm_b32 v188, v89, v87, 0xc0c0004
	v_perm_b32 v123, v123, v130, 0xc0c0004
	v_perm_b32 v117, v117, v126, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v113, v82, v101, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v126, v83, v94, 0xc0c0004
	v_perm_b32 v197, v73, v72, 0xc0c0004
	v_lshl_or_b32 v69, v166, 16, v172
	v_lshl_or_b32 v68, v158, 16, v160
	v_lshl_or_b32 v71, v175, 16, v170
	v_lshl_or_b32 v70, v179, 16, v178
	v_lshl_or_b32 v73, v181, 16, v180
	v_lshl_or_b32 v72, v183, 16, v182
	v_lshl_or_b32 v87, v96, 16, v100
	v_lshl_or_b32 v89, v92, 16, v97
	v_lshl_or_b32 v92, v60, 16, v190
	v_lshl_or_b32 v94, v56, 16, v61
	v_lshl_or_b32 v96, v54, 16, v57
	v_lshl_or_b32 v101, v111, 16, v106
	v_lshl_or_b32 v100, v107, 16, v103
	v_lshl_or_b32 v107, v195, 16, v58
	v_lshl_or_b32 v106, v59, 16, v55
	v_wmma_i32_16x16x16_iu4 v[54:61], v[66:67], v[62:63], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[66:67], v[64:65], v[134:141] neg_lo:[1,1,0]
	v_perm_b32 v120, v91, v98, 0xc0c0004
	v_perm_b32 v121, v74, v84, 0xc0c0004
	v_perm_b32 v130, v75, v85, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v199, v80, v86, 0xc0c0004
	v_lshl_or_b32 v75, v184, 16, v143
	v_lshl_or_b32 v74, v186, 16, v185
	v_lshl_or_b32 v86, v145, 16, v90
	v_lshl_or_b32 v88, v147, 16, v99
	v_lshl_or_b32 v99, v123, 16, v116
	v_lshl_or_b32 v98, v117, 16, v110
	v_wmma_i32_16x16x16_iu4 v[54:61], v[72:73], v[68:69], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[72:73], v[70:71], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v146, 16, v148
	v_lshl_or_b32 v76, v142, 16, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v198, v81, v79, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[54:61], v[98:99], v[74:75], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[98:99], v[86:87], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v128, 16, v132
	v_lshl_or_b32 v78, v114, 16, v122
	v_lshl_or_b32 v84, v102, 16, v105
	v_lshl_or_b32 v91, v95, 16, v93
	v_lshl_or_b32 v90, v187, 16, v149
	v_lshl_or_b32 v103, v120, 16, v113
	v_lshl_or_b32 v102, v126, 16, v121
	v_wmma_i32_16x16x16_iu4 v[54:61], v[100:101], v[76:77], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[100:101], v[88:89], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v81, v124, 16, v129
	v_lshl_or_b32 v80, v108, 16, v115
	v_lshl_or_b32 v82, v104, 16, v109
	v_lshl_or_b32 v93, v189, 16, v188
	v_lshl_or_b32 v105, v130, 16, v127
	v_lshl_or_b32 v104, v133, 16, v131
	v_wmma_i32_16x16x16_iu4 v[54:61], v[102:103], v[78:79], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[102:103], v[90:91], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v83, v118, 16, v125
	v_lshl_or_b32 v95, v192, 16, v191
	v_lshl_or_b32 v85, v112, 16, v119
	v_wmma_i32_16x16x16_iu4 v[54:61], v[104:105], v[80:81], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[104:105], v[92:93], v[134:141] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v194, 16, v193
	v_lshl_or_b32 v109, v197, 16, v196
	v_lshl_or_b32 v108, v199, 16, v198
	v_wmma_i32_16x16x16_iu4 v[54:61], v[106:107], v[82:83], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[106:107], v[94:95], v[134:141] neg_lo:[1,1,0]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v27, 2, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[54:61], v[108:109], v[84:85], v[54:61] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[108:109], v[96:97], v[134:141] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v62, v134
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v135
	v_cvt_f32_i32_e32 v64, v136
	v_cvt_f32_i32_e32 v65, v137
	v_cvt_f32_i32_e32 v66, v138
	v_cvt_f32_i32_e32 v67, v139
	v_cvt_f32_i32_e32 v68, v140
	v_cvt_f32_i32_e32 v69, v141
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v71, 16, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v62, v62, v71
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v75, 16, v151
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v72, 16, v154
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v13, v62, v72 :: v_dual_lshlrev_b32 v70, 16, v159
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v54, v54, v70 :: v_dual_add_nc_u32 v29, s28, v29
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v58, v58, v70 :: v_dual_lshlrev_b32 v73, 16, v152
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v55, v55, v70 :: v_dual_lshlrev_b32 v76, 16, v153
	v_dual_mul_f32 v60, v60, v70 :: v_dual_lshlrev_b32 v77, 16, v155
	v_mul_f32_e32 v56, v56, v70
	v_dual_mul_f32 v63, v63, v71 :: v_dual_add_nc_u32 v26, 2, v26
	v_dual_mul_f32 v67, v67, v71 :: v_dual_lshlrev_b32 v74, 16, v150
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v79, 16, v161
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v57, v57, v70 :: v_dual_lshlrev_b32 v78, 16, v157
	v_dual_mul_f32 v59, v59, v70 :: v_dual_mul_f32 v64, v64, v71
	v_dual_mul_f32 v61, v61, v70 :: v_dual_mul_f32 v66, v66, v71
	v_mul_f32_e32 v65, v65, v71
	v_dual_mul_f32 v68, v68, v71 :: v_dual_fmac_f32 v15, v63, v73
	v_dual_mul_f32 v69, v69, v71 :: v_dual_fmac_f32 v12, v54, v72
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v14, v55, v73 :: v_dual_fmac_f32 v11, v64, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v10, v56, v74 :: v_dual_fmac_f32 v9, v65, v75
	v_dual_fmac_f32 v8, v57, v75 :: v_dual_fmac_f32 v7, v66, v76
	v_dual_fmac_f32 v6, v58, v76 :: v_dual_fmac_f32 v5, v67, v77
	v_dual_fmac_f32 v4, v59, v77 :: v_dual_fmac_f32 v3, v68, v78
	v_dual_fmac_f32 v2, v60, v78 :: v_dual_fmac_f32 v1, v69, v79
	v_fmac_f32_e32 v0, v61, v79
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_4
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s51, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s7, s50, s29
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v27, 0, v35
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_add_i32 s6, s7, s6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v25, s6, v16
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
	v_add_nc_u32_e32 v0, 0, v36
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end85
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s6, v17
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end79
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s38, v25
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end73
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s6, v18
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end67
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s39, v25
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end61
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s6, v19
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end55
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s40, v25
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end49
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s6, v20
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end43
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v26, s42, v25
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end37
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v12, s6, v21
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end31
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v8, s43, v25
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end25
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v4, s6, v22
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end19
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v0, s44, v25
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v0, s6, v23
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v0, s45, v25
	s_mov_b32 s7, 0
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
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s7
	v_add_nc_u32_e32 v0, s6, v24
	s_mov_b32 s6, 0
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
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 200
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
		.amdhsa_inst_pref_size 54
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_vgpr, 200
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6828
; TotalNumSgprs: 55
; NumVgprs: 200
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 200
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm64_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     200
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
