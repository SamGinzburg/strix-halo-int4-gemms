	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
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
	s_ashr_i32 s28, s4, 6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s13, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s33, s13, s28
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s33
	s_cbranch_scc1 .LBB0_38
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[30:31], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_and_b32_e32 v65, 0xe0, v0
	.loc	1 258 43                        ; generate_amdgcn.py:258:43
	s_lshl_b32 s35, s3, 6
	v_lshlrev_b32_e32 v16, 2, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v17, 15, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s34, s13, 2
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v5, 1, v65
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v64, 3, v0
	v_and_b32_e32 v2, 7, v0
	v_lshrrev_b32_e32 v3, 7, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v4, 0x100, v0
	v_bfe_i32 v14, v0, 8, 1
	v_lshrrev_b32_e32 v18, 1, v0
	v_and_b32_e32 v19, 0x438, v16
	v_lshlrev_b32_e32 v20, 3, v0
	v_lshlrev_b32_e32 v27, 4, v0
	v_add3_u32 v66, 0, v17, v5
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s3, s12, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s12, s12, s3
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 24
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s36, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_bfe_i32 v5, v0, 0, 1
	s_ashr_i32 s37, s1, 8
	s_cmpk_gt_i32 s0, 0xff
	v_and_b32_e32 v16, 0x78, v16
	s_cselect_b32 s38, -1, 0
	v_and_b32_e32 v28, 14, v0
	v_and_b32_e32 v29, 1, v0
	v_bfe_i32 v0, v0, 7, 1
	s_abs_i32 s45, s34
	v_and_b32_e32 v5, 0x840, v5
	s_cvt_f32_u32 s0, s45
	v_lshl_or_b32 v16, v65, 3, v16
	v_lshlrev_b32_e32 v29, 6, v29
	v_and_b32_e32 v0, 0x840, v0
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_or_b32_e32 v6, 60, v3
	v_or_b32_e32 v7, 52, v3
	v_or_b32_e32 v8, 44, v3
	v_or_b32_e32 v9, 36, v3
	v_or_b32_e32 v10, 28, v3
	v_or_b32_e32 v11, 20, v3
	v_or_b32_e32 v12, 12, v3
	v_or_b32_e32 v13, 4, v3
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[37:38], null, s29, v3, v[1:2]
	v_rcp_iflag_f32_e32 v3, s0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v15, 4, v4
	v_lshlrev_b32_e32 v30, 11, v28
	v_lshrrev_b32_e32 v4, 1, v4
	v_xor_b32_e32 v5, v16, v5
	v_and_b32_e32 v16, 0x700, v27
	v_lshlrev_b32_e32 v28, 2, v28
	v_xor_b32_e32 v0, v0, v29
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[38:39], null, s29, v13, v[1:2]
	v_or3_b32 v67, v30, v4, v5
	v_and_b32_e32 v4, 0x1008, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v0, v16, v28, v0
	v_mad_u64_u32 v[39:40], null, s29, v12, v[1:2]
	v_readfirstlane_b32 s0, v3
	v_mad_u64_u32 v[40:41], null, s29, v11, v[1:2]
	v_or_b32_e32 v3, s35, v64
	v_mad_u64_u32 v[41:42], null, s29, v10, v[1:2]
	v_mad_u64_u32 v[42:43], null, s29, v9, v[1:2]
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshlrev_b32_e32 v36, 3, v2
	v_and_b32_e32 v18, 56, v18
	v_lshl_or_b32 v19, v17, 6, v19
	v_xor_b32_e32 v68, v0, v4
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[43:44], null, s29, v8, v[1:2]
	v_mad_u64_u32 v[44:45], null, s29, v7, v[1:2]
	s_mul_f32 s1, s0, 0x4f7ffffe
	v_mad_u64_u32 v[45:46], null, s29, v6, v[1:2]
	v_mul_lo_u32 v1, s29, v3
	v_xor_b32_e32 v18, v20, v18
	v_xor_b32_e32 v20, 8, v19
	v_xor_b32_e32 v21, 16, v19
	v_xor_b32_e32 v22, 24, v19
	v_xor_b32_e32 v23, 32, v19
	v_xor_b32_e32 v24, 40, v19
	v_xor_b32_e32 v25, 48, v19
	v_xor_b32_e32 v26, 56, v19
	v_xor_b32_e32 v5, 8, v67
	v_xor_b32_e32 v14, 16, v67
	v_xor_b32_e32 v16, 24, v67
	v_xor_b32_e32 v0, 32, v67
	v_xor_b32_e32 v4, 40, v67
	v_xor_b32_e32 v28, 48, v67
	v_xor_b32_e32 v29, 56, v67
	v_xor_b32_e32 v30, 0x2010, v68
	v_xor_b32_e32 v31, 0x4020, v68
	v_xor_b32_e32 v32, 0x6030, v68
	v_or_b32_e32 v7, s35, v36
	s_cvt_u32_f32 s3, s1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_or_b32_e32 v70, v15, v17
	s_mov_b32 s20, s4
	s_mov_b32 s4, s6
	s_sub_i32 s6, 0, s45
	v_sub_nc_u32_e32 v69, s36, v36
	s_mul_i32 s6, s6, s3
	v_cmp_gt_i32_e64 s0, 0x80, v7
	v_cmp_gt_i32_e64 s1, 0x80, v3
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_and_b32_e32 v71, 2, v64
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_or_b32_e32 v72, 32, v70
	v_lshl_add_u32 v73, v2, 4, v1
	v_add_nc_u32_e32 v74, 0, v18
	v_add_nc_u32_e32 v75, 0, v19
	v_add_nc_u32_e32 v76, 0, v20
	v_add_nc_u32_e32 v77, 0, v21
	v_add_nc_u32_e32 v78, 0, v22
	v_add_nc_u32_e32 v79, 0, v23
	v_add_nc_u32_e32 v80, 0, v24
	v_add_nc_u32_e32 v81, 0, v25
	v_add_nc_u32_e32 v82, 0, v26
	v_add_nc_u32_e32 v83, 0, v27
	v_add_nc_u32_e32 v84, 0, v5
	v_add_nc_u32_e32 v85, 0, v14
	v_add_nc_u32_e32 v86, 0, v16
	v_add_nc_u32_e32 v87, 0, v0
	v_add_nc_u32_e32 v88, 0, v4
	v_add_nc_u32_e32 v89, 0, v28
	v_add_nc_u32_e32 v90, 0, v29
	v_add_nc_u32_e32 v91, 0, v30
	v_add_nc_u32_e32 v92, 0, v31
	v_add_nc_u32_e32 v93, 0, v32
	s_mul_hi_u32 s6, s3, s6
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
	s_mul_i32 s46, s29, 56
	s_bfe_i32 s47, s13, 0x1001d
	s_add_i32 s48, s3, s6
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s49, s29, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s50, s37, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s51, s29, 7
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
	s_abs_i32 s3, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s6, s3, s48
	s_xor_b32 s7, s7, s47
	s_mul_i32 s10, s6, s45
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	s_sub_i32 s3, s3, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s3, s45
	s_cmp_ge_u32 s3, s45
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s3, s11, s3
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s3, s45
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	s_cselect_b32 s3, s10, s6
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	s_xor_b32 s3, s3, s7
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	s_sub_i32 s3, s3, s7
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s7, s3, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s3, s3, s34
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s6, s28, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s14, s2, s3
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s10, s6, 4
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s10
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	s_cvt_f32_u32 s11, s6
	s_sub_i32 s13, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s11
	v_readfirstlane_b32 s11, v0
	s_mul_f32 s11, s11, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s11, s11
	s_mul_i32 s13, s13, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s11, s13
	s_abs_i32 s13, s14
	s_add_i32 s11, s11, s3
	s_xor_b32 s3, s14, s10
	s_mul_hi_u32 s11, s13, s11
	s_ashr_i32 s3, s3, 31
	s_mul_i32 s15, s11, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s13, s13, s15
	s_add_i32 s15, s11, 1
	s_sub_i32 s16, s13, s6
	s_cmp_ge_u32 s13, s6
	s_cselect_b32 s11, s15, s11
	s_cselect_b32 s13, s16, s13
	s_add_i32 s15, s11, 1
	s_cmp_ge_u32 s13, s6
	s_cselect_b32 s6, s15, s11
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_not1_b32 vcc_lo, exec_lo, s38
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s6, s6, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s53, s6, s3
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s10, s53, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s10, s14, s10
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s52, s10, 6
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_lshl_or_b32 v0, s6, 8, v65
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v1, s52, v72
	s_lshl_b32 s7, s3, 8
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v2, s52, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v94, s7, v0
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v0, s52, v64
	v_mul_lo_u32 v95, s50, v1
	v_lshl_add_u32 v1, s6, 7, v73
	v_mul_lo_u32 v96, s50, v2
	v_mad_u64_u32 v[62:63], null, s36, v0, v[36:37]
	s_lshl_b32 s3, s3, 7
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_subrev_nc_u32_e32 v63, s3, v1
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v46, 0
	s_mov_b32 s54, s35
	s_mov_b32 s55, s37
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_lt_i32_e32 vcc_lo, s54, v69
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v0, s54, v64
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v1, s54, v62
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s3, s36, v0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v0, 0x80000000, v1, vcc_lo
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s22
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s3, s1
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b64 v[12:13], v0, s[20:23], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e32 v0, 0x80000000, v63, vcc_lo
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s27, s23
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s55, s55, -1
	s_addk_i32 s54, 0x80
	s_cmp_lg_u32 s55, 0
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[8:11], v0, s[4:7], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v0, s12 :: v_dual_mov_b32 v3, s15
	v_dual_mov_b32 v1, s13 :: v_dual_mov_b32 v2, s14
	v_dual_mov_b32 v4, s16 :: v_dual_mov_b32 v5, s17
	v_dual_mov_b32 v6, s18 :: v_dual_mov_b32 v7, s19
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(1)
	ds_store_b64 v74, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[97:100], v75 offset1:4
	ds_load_2addr_stride64_b64 v[101:104], v76 offset1:4
	ds_load_2addr_stride64_b64 v[105:108], v77 offset1:4
	ds_load_2addr_stride64_b64 v[32:35], v78 offset1:4
	ds_load_2addr_stride64_b64 v[28:31], v79 offset1:4
	ds_load_2addr_stride64_b64 v[24:27], v80 offset1:4
	ds_load_2addr_stride64_b64 v[20:23], v81 offset1:4
	ds_load_2addr_stride64_b64 v[16:19], v82 offset1:4
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v83, v[8:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v8, v66 offset:640
	ds_load_u8 v9, v66 offset:896
	ds_load_u8 v10, v66 offset:768
	ds_load_u8 v11, v66 offset:512
	ds_load_u8 v12, v66 offset:128
	ds_load_u8 v13, v66 offset:256
	ds_load_u8 v14, v66
	ds_load_u8 v15, v66 offset:384
	ds_load_u8 v111, v66 offset:3968
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v8, v11, v8, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v14, v12, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v13, v15, 0xc0c0004
	v_lshl_or_b32 v110, v9, 16, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v109, v11, 16, v10
	v_wmma_i32_16x16x16_iu4 v[8:15], v[109:110], v[97:98], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[109:110], v[99:100], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v97, v66 offset:1664
	ds_load_u8 v98, v66 offset:1536
	ds_load_u8 v99, v66 offset:1920
	ds_load_u8 v100, v66 offset:1792
	ds_load_u8 v109, v66 offset:1152
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v110, v71, v94
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v66 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v66 offset:1280
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v109, v98, v109, 0xc0c0004
	ds_load_u8 v98, v66 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v100, v98, 0xc0c0004
	v_lshl_or_b32 v98, v99, 16, v97
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v100, 16, v109
	ds_load_u8 v99, v66 offset:2688
	ds_load_u8 v100, v66 offset:2560
	ds_load_u8 v109, v66 offset:3712
	v_wmma_i32_16x16x16_iu4 v[8:15], v[97:98], v[101:102], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[97:98], v[103:104], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v97, v66 offset:2944
	ds_load_u8 v98, v66 offset:2816
	ds_load_u8 v101, v66 offset:2176
	ds_load_u8 v102, v66 offset:2048
	ds_load_u8 v103, v66 offset:2304
	ds_load_u8 v104, v66 offset:2432
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v100, v102, v101, 0xc0c0004
	ds_load_u8 v102, v66 offset:3840
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v101, v103, v104, 0xc0c0004
	v_lshl_or_b32 v98, v97, 16, v99
	ds_load_u8 v103, v66 offset:3584
	ds_load_u8 v104, v66 offset:3200
	ds_load_u8 v112, v66 offset:3072
	v_lshl_or_b32 v97, v101, 16, v100
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v101, v110, s[24:27], 0 offen offset:8
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[8:15], v[97:98], v[105:106], v[8:15] neg_lo:[1,1,0]
	ds_load_u8 v105, v66 offset:3456
	ds_load_u8 v106, v66 offset:3328
	v_wmma_i32_16x16x16_iu4 v[0:7], v[97:98], v[107:108], v[0:7] neg_lo:[1,1,0]
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_clause 0x1
	buffer_load_u16 v97, v96, s[8:11], 0 offen
	buffer_load_u16 v98, v95, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v99, v110, s[24:27], 0 offen
	buffer_load_u16 v100, v110, s[24:27], 0 offen offset:4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v95, 2, v95
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v108, v102, v111, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v102, v110, s[24:27], 0 offen offset:12
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v107, v103, v109, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v109, v112, v104, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v103, v110, s[24:27], 0 offen offset:16
	buffer_load_u16 v104, v110, s[24:27], 0 offen offset:20
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v108, v108, 16, v107
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v105, 16, v109
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v105, v110, s[24:27], 0 offen offset:24
	buffer_load_u16 v106, v110, s[24:27], 0 offen offset:28
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v109, v66 offset:4736
	ds_load_u8 v110, v66 offset:6144
	v_wmma_i32_16x16x16_iu4 v[8:15], v[107:108], v[32:33], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[107:108], v[34:35], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v32, v66 offset:4608
	ds_load_u8 v33, v66 offset:4992
	ds_load_u8 v34, v66 offset:4864
	ds_load_u8 v35, v66 offset:4224
	ds_load_u8 v107, v66 offset:4480
	ds_load_u8 v108, v66 offset:4096
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v66 offset:5760
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v108, v35, 0xc0c0004
	ds_load_u8 v108, v66 offset:6016
	v_perm_b32 v32, v32, v109, 0xc0c0004
	ds_load_u8 v109, v66 offset:4352
	v_lshl_or_b32 v33, v33, 16, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v109, v107, 0xc0c0004
	ds_load_u8 v109, v66 offset:5888
	v_lshl_or_b32 v32, v107, 16, v35
	ds_load_u8 v35, v66 offset:5632
	ds_load_u8 v107, v66 offset:5248
	v_wmma_i32_16x16x16_iu4 v[8:15], v[32:33], v[28:29], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[32:33], v[30:31], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v28, v66 offset:5120
	ds_load_u8 v29, v66 offset:5504
	ds_load_u8 v30, v66 offset:5376
	ds_load_u8 v31, v66 offset:6784
	ds_load_u8 v32, v66 offset:6656
	ds_load_u8 v33, v66 offset:7040
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v66 offset:6912
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v28, v28, v107, 0xc0c0004
	ds_load_u8 v107, v66 offset:6400
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v30, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v66 offset:7680
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_lshl_or_b32 v28, v30, 16, v28
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v29, v108, 16, v34
	ds_load_u8 v30, v66 offset:6528
	ds_load_u8 v34, v66 offset:7808
	v_wmma_i32_16x16x16_iu4 v[0:7], v[28:29], v[26:27], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[28:29], v[24:25], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v30, v107, v30, 0xc0c0004
	ds_load_u8 v107, v66 offset:7296
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v32, v32, v34, 0xc0c0004
	ds_load_u8 v34, v66 offset:7168
	ds_load_u8 v109, v66 offset:6272
	v_perm_b32 v33, v35, v33, 0xc0c0004
	ds_load_u8 v35, v66 offset:8064
	v_lshl_or_b32 v31, v33, 16, v31
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v34, v107, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v108, v110, v109, 0xc0c0004
	ds_load_u8 v109, v66 offset:7936
	ds_load_u8 v107, v66 offset:7552
	v_lshl_or_b32 v30, v30, 16, v108
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[30:31], v[22:23], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[30:31], v[20:21], v[8:15] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v109, v35, 0xc0c0004
	ds_load_u8 v109, v66 offset:7424
	v_lshl_or_b32 v33, v35, 16, v32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v109, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v32, v107, 16, v34
	v_wmma_i32_16x16x16_iu4 v[0:7], v[32:33], v[18:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[32:33], v[16:17], v[8:15] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v17, 16, v98
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v18, 16, v99
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v19, 16, v100
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v1, v1, v17 :: v_dual_add_nc_u32 v96, 2, v96
	v_mul_f32_e32 v0, v0, v17
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v16, 16, v97
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v2, v2, v17
	v_mul_f32_e32 v3, v3, v17
	v_mul_f32_e32 v5, v5, v17
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v61, v0, v18 :: v_dual_lshlrev_b32 v20, 16, v101
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v15, v15, v16
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v23, 16, v104
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v11, v11, v16 :: v_dual_add_nc_u32 v94, s49, v94
	v_dual_mul_f32 v8, v8, v16 :: v_dual_add_nc_u32 v63, s51, v63
	v_dual_mul_f32 v10, v10, v16 :: v_dual_lshlrev_b32 v21, 16, v102
	v_dual_mul_f32 v9, v9, v16 :: v_dual_lshlrev_b32 v22, 16, v103
	v_mul_f32_e32 v12, v12, v16
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v13, v13, v16 :: v_dual_lshlrev_b32 v24, 16, v105
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v59, v1, v19
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v14, v14, v16 :: v_dual_lshlrev_b32 v25, 16, v106
	v_dual_mul_f32 v4, v4, v17 :: v_dual_fmac_f32 v57, v2, v20
	v_mul_f32_e32 v6, v6, v17
	v_dual_mul_f32 v7, v7, v17 :: v_dual_fmac_f32 v60, v8, v18
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v58, v9, v19 :: v_dual_fmac_f32 v55, v3, v21
	v_dual_fmac_f32 v56, v10, v20 :: v_dual_fmac_f32 v51, v5, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v52, v12, v22 :: v_dual_fmac_f32 v47, v7, v25
	v_fmac_f32_e32 v50, v13, v23
	v_fmac_f32_e32 v48, v14, v24
	v_dual_fmac_f32 v46, v15, v25 :: v_dual_fmac_f32 v53, v4, v22
	v_dual_fmac_f32 v54, v11, v21 :: v_dual_fmac_f32 v49, v6, v24
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_4
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s3, s53, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s6, s52, s29
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v0, 0, v67
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_add_i32 s3, s6, s3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v16, s3, v37
	s_barrier
	ds_store_b64 v0, v[60:61]
	ds_store_b64 v84, v[58:59]
	ds_store_b64 v85, v[56:57]
	ds_store_b64 v86, v[54:55]
	ds_store_b64 v87, v[52:53]
	ds_store_b64 v88, v[50:51]
	ds_store_b64 v89, v[48:49]
	ds_store_b64 v90, v[46:47]
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v17, 31, v16
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[0:1], 2, v[16:17]
	v_add_co_u32 v17, vcc_lo, s30, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s31, v1, vcc_lo
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v0, 0, v68
	ds_load_2addr_b64 v[12:15], v0 offset1:16
	ds_load_2addr_b64 v[8:11], v91 offset1:16
	ds_load_2addr_b64 v[4:7], v92 offset1:16
	ds_load_2addr_b64 v[0:3], v93 offset1:16
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	global_load_b32 v20, v[17:18], off
.LBB0_6:                                ; %atomicrmw.start86
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v19, v20, v12
	global_atomic_cmpswap_b32 v19, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v19, v20
	v_mov_b32_e32 v20, v19
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end85
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v17, s3, v38
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v17, vcc_lo, s30, v17
	v_add_co_ci_u32_e64 v18, null, s31, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_8:                                ; %atomicrmw.start80
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v19, v20, v8
	global_atomic_cmpswap_b32 v12, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v20
	v_mov_b32_e32 v20, v12
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end79
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v17, s39, v16
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v17, vcc_lo, s30, v17
	v_add_co_ci_u32_e64 v18, null, s31, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_10:                               ; %atomicrmw.start74
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v19, v20, v4
	global_atomic_cmpswap_b32 v8, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v20
	v_mov_b32_e32 v20, v8
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end73
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v17, s3, v39
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v17, vcc_lo, s30, v17
	v_add_co_ci_u32_e64 v18, null, s31, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_12:                               ; %atomicrmw.start68
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v19, v20, v0
	global_atomic_cmpswap_b32 v4, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v20
	v_mov_b32_e32 v20, v4
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end67
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v17, s40, v16
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v17, vcc_lo, s30, v17
	v_add_co_ci_u32_e64 v18, null, s31, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_14:                               ; %atomicrmw.start62
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v14
	global_atomic_cmpswap_b32 v0, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v20
	v_mov_b32_e32 v20, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end61
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v17, s3, v40
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v17, vcc_lo, s30, v17
	v_add_co_ci_u32_e64 v18, null, s31, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_16:                               ; %atomicrmw.start56
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v10
	global_atomic_cmpswap_b32 v0, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v20
	v_mov_b32_e32 v20, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end55
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v17, s41, v16
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v17, vcc_lo, s30, v17
	v_add_co_ci_u32_e64 v18, null, s31, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_18:                               ; %atomicrmw.start50
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v6
	global_atomic_cmpswap_b32 v0, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v20
	v_mov_b32_e32 v20, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end49
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v17, s3, v41
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v17, vcc_lo, s30, v17
	v_add_co_ci_u32_e64 v18, null, s31, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_20:                               ; %atomicrmw.start44
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v2
	global_atomic_cmpswap_b32 v0, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v20
	v_mov_b32_e32 v20, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end43
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v17, s42, v16
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b64 v[17:18], 2, v[17:18]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v17, vcc_lo, s30, v17
	v_add_co_ci_u32_e64 v18, null, s31, v18, vcc_lo
	global_load_b32 v20, v[17:18], off
.LBB0_22:                               ; %atomicrmw.start38
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v19, v20, v13
	global_atomic_cmpswap_b32 v0, v[17:18], v[19:20], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v20
	v_mov_b32_e32 v20, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end37
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v12, s3, v42
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v12, vcc_lo, s30, v12
	v_add_co_ci_u32_e64 v13, null, s31, v13, vcc_lo
	global_load_b32 v18, v[12:13], off
.LBB0_24:                               ; %atomicrmw.start32
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v17, v18, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[17:18], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v18
	v_mov_b32_e32 v18, v0
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end31
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v8, s43, v16
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
	v_add_nc_u32_e32 v4, s3, v43
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
	v_add_nc_u32_e32 v0, s44, v16
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
	v_add_nc_u32_e32 v0, s3, v44
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
	v_add_nc_u32_e32 v0, s46, v16
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
	v_add_nc_u32_e32 v0, s3, v45
	s_mov_b32 s3, 0
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
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s33
	s_cbranch_scc1 .LBB0_2
.LBB0_38:                               ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
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
		.amdhsa_next_free_vgpr 113
		.amdhsa_next_free_sgpr 56
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
		.amdhsa_inst_pref_size 40
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.num_vgpr, 113
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5028
; TotalNumSgprs: 58
; NumVgprs: 113
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 113
; Occupancy: 12
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm64_bn128_bk128_gm4_w16_s1_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     113
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
