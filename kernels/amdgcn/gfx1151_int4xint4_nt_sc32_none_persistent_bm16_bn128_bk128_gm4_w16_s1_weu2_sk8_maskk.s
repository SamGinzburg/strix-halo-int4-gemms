	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk
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
	s_add_i32 s4, s28, 15
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
	s_lshr_b32 s6, s6, 28
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
	s_ashr_i32 s28, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s12, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s33, s12, s28
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s33
	s_cbranch_scc1 .LBB0_14
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s13, s[0:1], 0x38
	s_load_b64 s[30:31], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_lshlrev_b32_e32 v3, 2, v0
	v_bfe_i32 v12, v0, 5, 1
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s34, s12, 2
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v4, 0x180, v0
	v_lshlrev_b32_e32 v6, 4, v0
	v_and_b32_e32 v13, 0x77c, v3
	v_and_b32_e32 v12, 0x88, v12
	v_bfe_i32 v11, v0, 3, 1
	v_lshrrev_b32_e32 v4, 5, v4
	v_and_b32_e32 v6, 0x70, v6
	v_lshrrev_b32_e32 v2, 4, v0
	v_xor_b32_e32 v19, v12, v13
	v_lshlrev_b32_e32 v12, 1, v0
	v_bfe_u32 v8, v0, 4, 4
	v_and_b32_e32 v9, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v10, 2, v0
	v_and_b32_e32 v1, 0x7f, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s13, 31
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s14, s13, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s13, s13, s14
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 27
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s35, s13, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_and_b32_e32 v12, 60, v12
	s_ashr_i32 s36, s1, 5
	s_cmp_gt_i32 s0, 31
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v5, 7, v0
	s_cselect_b32 s37, -1, 0
	s_abs_i32 s38, s34
	v_and_or_b32 v12, 0x780, v3, v12
	s_cvt_f32_u32 s0, s38
	v_bfe_i32 v7, v0, 7, 1
	v_and_or_b32 v6, 0x88, v11, v6
	v_and_b32_e32 v11, 0x7c, v3
	v_rcp_iflag_f32_e32 v13, s0
	v_lshlrev_b32_e32 v0, 6, v0
	v_xor_b32_e32 v4, v12, v4
	v_and_b32_e32 v7, 0x88, v7
	v_lshl_or_b32 v11, v9, 9, v11
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v2, 1, v2
	v_xor_b32_e32 v18, 8, v6
	v_and_or_b32 v12, v0, 64, v4
	v_xor_b32_e32 v7, v7, v1
	v_xor_b32_e32 v20, 4, v11
	v_readfirstlane_b32 s0, v13
	v_xor_b32_e32 v21, 8, v11
	v_xor_b32_e32 v22, 12, v11
	v_xor_b32_e32 v23, 16, v11
	v_xor_b32_e32 v24, 20, v11
	s_mul_f32 s0, s0, 0x4f7ffffe
	v_xor_b32_e32 v25, 24, v11
	v_xor_b32_e32 v26, 28, v11
	v_xor_b32_e32 v27, 32, v11
	v_xor_b32_e32 v28, 36, v11
	v_xor_b32_e32 v29, 40, v11
	v_xor_b32_e32 v30, 44, v11
	v_xor_b32_e32 v31, 48, v11
	v_xor_b32_e32 v4, 52, v11
	v_xor_b32_e32 v33, 56, v11
	v_xor_b32_e32 v34, 60, v11
	v_xor_b32_e32 v35, 0x810, v12
	v_xor_b32_e32 v36, 0x1020, v12
	v_xor_b32_e32 v37, 0x1830, v12
	s_cvt_u32_f32 s0, s0
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[0:1], null, s29, v5, v[1:2]
	s_sub_i32 s1, 0, s38
	s_lshl_b32 s3, s3, 4
	s_mul_i32 s1, s1, s0
	v_or_b32_e32 v13, 0xfc, v2
	v_and_b32_e32 v14, 2, v2
	v_or_b32_e32 v15, 0x7c, v2
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_or_b32_e32 v1, s3, v9
	v_and_or_b32 v2, v3, 12, s3
	v_add_nc_u32_e32 v16, 0, v7
	v_add_nc_u32_e32 v17, 0, v6
	v_add_nc_u32_e32 v18, 0, v18
	v_add_nc_u32_e32 v19, 0, v19
	v_add_nc_u32_e32 v20, 0, v20
	v_add_nc_u32_e32 v21, 0, v21
	v_add_nc_u32_e32 v22, 0, v22
	v_add_nc_u32_e32 v23, 0, v23
	v_add_nc_u32_e32 v24, 0, v24
	v_add_nc_u32_e32 v25, 0, v25
	v_add_nc_u32_e32 v26, 0, v26
	v_add_nc_u32_e32 v27, 0, v27
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	v_add_nc_u32_e32 v30, 0, v30
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v4
	v_add_nc_u32_e32 v33, 0, v33
	v_add_nc_u32_e32 v34, 0, v34
	v_add_nc_u32_e32 v35, 0, v35
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v37, 0, v37
	s_mul_hi_u32 s1, s0, s1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s4
	s_and_b32 s21, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_mov_b32 s4, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_lshl_b32 s39, s29, 2
	s_lshl_b32 s40, s29, 3
	s_mul_i32 s41, s29, 12
	s_bfe_i32 s42, s12, 0x1001d
	s_mov_b32 s12, 0
	s_add_i32 s43, s0, s1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s44, s29, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s45, s36, 1
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s0, s2
	s_ashr_i32 s1, s2, 31
	s_mul_hi_u32 s3, s0, s43
	s_xor_b32 s1, s1, s42
	s_mul_i32 s6, s3, s38
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	s_sub_i32 s0, s0, s6
	s_add_i32 s6, s3, 1
	s_sub_i32 s7, s0, s38
	s_cmp_ge_u32 s0, s38
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v42, 0
	s_cselect_b32 s3, s6, s3
	s_cselect_b32 s0, s7, s0
	s_add_i32 s6, s3, 1
	s_cmp_ge_u32 s0, s38
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v46, 0
	s_cselect_b32 s0, s6, s3
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	s_xor_b32 s0, s0, s1
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	s_sub_i32 s0, s0, s1
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v77, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s3, s0, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s0, s0, s34
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s1, s28, s3
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s11, s2, s0
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s6, s1, 4
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v41, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s6
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v45, 0
	s_cvt_f32_u32 s1, s7
	s_sub_i32 s10, 0, s7
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v47, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v3, s1
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v73, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s1, v3
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v54, 0
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v64, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s1, s1
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v86, 0
	s_mul_i32 s10, s10, s1
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v88, 0
	s_mul_hi_u32 s0, s1, s10
	s_abs_i32 s10, s11
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v92, 0
	s_mul_hi_u32 s0, s10, s1
	s_xor_b32 s1, s11, s6
	s_mul_i32 s13, s0, s7
	s_ashr_i32 s1, s1, 31
	s_sub_i32 s10, s10, s13
	s_add_i32 s13, s0, 1
	s_sub_i32 s14, s10, s7
	s_cmp_ge_u32 s10, s7
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v94, 0
	s_cselect_b32 s0, s13, s0
	s_cselect_b32 s10, s14, s10
	s_add_i32 s13, s0, 1
	s_cmp_ge_u32 s10, s7
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v55, 0
	s_cselect_b32 s0, s13, s0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v63, 0
	s_xor_b32 s0, s0, s1
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v65, 0
	s_sub_i32 s47, s0, s1
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v85, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s6, s47, s6
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v87, 0
	s_sub_i32 s6, s11, s6
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v90, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s6, s6, s3
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_not1_b32 vcc_lo, exec_lo, s37
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s46, s6, 4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_lshl_or_b32 v3, s0, 7, v10
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v4, s46, v9
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v5, s46, v8
	s_lshl_b32 s3, s1, 8
	s_lshl_b32 s1, s1, 7
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v102, s45, v4
	v_subrev_nc_u32_e32 v6, s1, v3
	v_mad_u64_u32 v[3:4], null, s35, v5, v[1:2]
	v_subrev_nc_u32_e32 v99, s3, v13
	v_subrev_nc_u32_e32 v100, s3, v14
	v_subrev_nc_u32_e32 v101, s3, v15
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v80, 0
	v_mad_u64_u32 v[4:5], null, s35, v6, v[2:3]
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_lshl_b32 s48, s0, 8
	s_mov_b32 s49, 0
	s_mov_b32 s50, s36
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v105, s49, v1
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v141, s19 :: v_dual_add_nc_u32 v104, s49, v2
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s0, 16, v1
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v140, s18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s1, s35, v105
	.loc	1 259 55 is_stmt 0              ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e32 vcc_lo, 16, v2
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s3, s35, v104
	.loc	1 271 31 is_stmt 1              ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v139, s17 :: v_dual_add_nc_u32 v106, s49, v3
	v_dual_mov_b32 v138, s16 :: v_dual_add_nc_u32 v107, s49, v4
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 s0, s1, s0
	s_and_b32 vcc_lo, s3, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e64 v104, 0x80000000, v106, s0
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_cndmask_b32_e32 v105, 0x80000000, v107, vcc_lo
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u8 v104, v104, s[20:23], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	buffer_load_b32 v105, v105, s[4:7], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v136, s14 :: v_dual_add_nc_u32 v103, s48, v100
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v134, s12 :: v_dual_add_nc_u32 v181, s48, v101
	v_dual_mov_b32 v137, s15 :: v_dual_add_nc_u32 v142, s48, v99
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s50, s50, -1
	s_add_i32 s49, s49, 16
	s_cmp_lg_u32 s50, 0
	v_add_nc_u32_e32 v101, s44, v101
	v_add_nc_u32_e32 v100, s44, v100
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(1)
	ds_store_b8 v16, v104
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[132:133], v17
	ds_load_b64 v[179:180], v18
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v19, v105
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[118:121], v17 offset1:32
	ds_load_2addr_b64 v[128:131], v17 offset0:64 offset1:96
	ds_load_2addr_b64 v[165:168], v17 offset0:128 offset1:160
	ds_load_2addr_b64 v[175:178], v17 offset0:192 offset1:224
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v182, v102, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v183, v103, s[24:27], 0 offen
	buffer_load_u16 v184, v103, s[24:27], 0 offen offset:4
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v135, s13 :: v_dual_add_nc_u32 v102, 2, v102
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[118:119], v[132:133], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[120:121], v[132:133], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[128:129], v[132:133], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[130:131], v[132:133], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[151:158], v[165:166], v[132:133], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[167:168], v[132:133], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[167:174], v[175:176], v[132:133], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[177:178], v[132:133], v[134:141] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_b64 v[128:131], v18 offset1:32
	ds_load_2addr_b64 v[175:178], v18 offset0:64 offset1:96
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[104:111], v[128:129], v[179:180], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[130:131], v[179:180], v[112:119] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_b64 v[128:131], v18 offset0:128 offset1:160
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[175:176], v[179:180], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[177:178], v[179:180], v[143:150] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_b64 v[175:178], v18 offset0:192 offset1:224
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v185, v110
	v_cvt_f32_i32_e32 v187, v112
	v_cvt_f32_i32_e32 v196, v121
	v_cvt_f32_i32_e32 v203, v143
	v_cvt_f32_i32_e32 v188, v113
	v_cvt_f32_i32_e32 v189, v114
	v_cvt_f32_i32_e32 v186, v111
	v_cvt_f32_i32_e32 v190, v115
	v_cvt_f32_i32_e32 v192, v117
	v_cvt_f32_i32_e32 v191, v116
	v_cvt_f32_i32_e32 v197, v122
	v_cvt_f32_i32_e32 v194, v119
	v_cvt_f32_i32_e32 v202, v127
	v_cvt_f32_i32_e32 v195, v120
	v_cvt_f32_i32_e32 v198, v123
	v_cvt_f32_i32_e32 v200, v125
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[151:158], v[128:129], v[179:180], v[151:158] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[130:131], v[179:180], v[159:166] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v193, v118
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[167:174], v[175:176], v[179:180], v[167:174] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[134:141], v[177:178], v[179:180], v[134:141] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v175, v104
	v_cvt_f32_i32_e32 v176, v105
	v_cvt_f32_i32_e32 v177, v106
	v_cvt_f32_i32_e32 v178, v107
	v_cvt_f32_i32_e32 v179, v108
	v_cvt_f32_i32_e32 v180, v109
	v_cvt_f32_i32_e32 v104, v145
	v_cvt_f32_i32_e32 v105, v146
	v_cvt_f32_i32_e32 v106, v147
	v_cvt_f32_i32_e32 v107, v148
	v_cvt_f32_i32_e32 v108, v149
	v_cvt_f32_i32_e32 v109, v150
	v_cvt_f32_i32_e32 v110, v151
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x6
	buffer_load_u16 v145, v103, s[24:27], 0 offen offset:8
	buffer_load_u16 v146, v103, s[24:27], 0 offen offset:12
	buffer_load_u16 v147, v103, s[24:27], 0 offen offset:16
	buffer_load_u16 v148, v103, s[24:27], 0 offen offset:20
	buffer_load_u16 v149, v103, s[24:27], 0 offen offset:24
	buffer_load_u16 v150, v103, s[24:27], 0 offen offset:28
	buffer_load_u16 v151, v103, s[24:27], 0 offen offset:32
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v121, v162
	v_cvt_f32_i32_e32 v112, v153
	v_cvt_f32_i32_e32 v113, v154
	v_cvt_f32_i32_e32 v114, v155
	v_cvt_f32_i32_e32 v111, v152
	v_cvt_f32_i32_e32 v115, v156
	v_cvt_f32_i32_e32 v117, v158
	v_cvt_f32_i32_e32 v116, v157
	v_cvt_f32_i32_e32 v122, v163
	v_cvt_f32_i32_e32 v127, v168
	v_cvt_f32_i32_e32 v120, v161
	v_cvt_f32_i32_e32 v129, v170
	v_cvt_f32_i32_e32 v130, v171
	v_cvt_f32_i32_e32 v133, v174
	v_cvt_f32_i32_e32 v199, v124
	v_cvt_f32_i32_e32 v118, v159
	v_cvt_f32_i32_e32 v124, v165
	v_cvt_f32_i32_e32 v119, v160
	v_cvt_f32_i32_e32 v125, v166
	v_cvt_f32_i32_e32 v201, v126
	v_cvt_f32_i32_e32 v126, v167
	v_cvt_f32_i32_e32 v132, v173
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v123, v164
	v_cvt_f32_i32_e32 v128, v169
	v_cvt_f32_i32_e32 v131, v172
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v152, 16, v183
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v154, 16, v184
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v146, 16, v146
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v148, 16, v148
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v151, 16, v151
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v143, 16, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v162, v187, v143 :: v_dual_lshlrev_b32 v149, 16, v149
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v80, v162, v151
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v153, v175, v143
	v_mul_f32_e32 v155, v176, v143
	v_dual_mul_f32 v158, v179, v143 :: v_dual_lshlrev_b32 v145, 16, v145
	v_mul_f32_e32 v156, v177, v143
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v90, v153, v152 :: v_dual_fmac_f32 v97, v155, v154
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v152, v103, s[24:27], 0 offen offset:36
	buffer_load_u16 v153, v103, s[24:27], 0 offen offset:40
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v157, v178, v143
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v95, v156, v145
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v145, v103, s[24:27], 0 offen offset:52
	buffer_load_u16 v156, v103, s[24:27], 0 offen offset:56
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v163, v188, v143
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v154, v103, s[24:27], 0 offen offset:44
	buffer_load_u16 v155, v103, s[24:27], 0 offen offset:48
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v93, v157, v146
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v146, v103, s[24:27], 0 offen offset:60
	buffer_load_u16 v157, v103, s[24:27], 0 offen offset:64
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v174, v198, v143
	v_mul_f32_e32 v171, v195, v143
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v151, v103, s[24:27], 0 offen offset:100
	buffer_load_u16 v162, v103, s[24:27], 0 offen offset:104
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v177, v201, v143
	v_mul_f32_e32 v179, v203, v143
	v_mul_f32_e32 v144, v144, v143
	v_mul_f32_e32 v105, v105, v143
	v_mul_f32_e32 v170, v194, v143
	v_mul_f32_e32 v168, v192, v143
	v_mul_f32_e32 v107, v107, v143
	v_mul_f32_e32 v106, v106, v143
	v_mul_f32_e32 v115, v115, v143
	v_mul_f32_e32 v160, v185, v143
	v_mul_f32_e32 v164, v189, v143
	v_mul_f32_e32 v118, v118, v143
	v_mul_f32_e32 v111, v111, v143
	v_mul_f32_e32 v104, v104, v143
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v85, v160, v149
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v149, v103, s[24:27], 0 offen offset:84
	buffer_load_u16 v160, v103, s[24:27], 0 offen offset:88
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v173, v197, v143
	v_mul_f32_e32 v110, v110, v143
	v_mul_f32_e32 v113, v113, v143
	v_mul_f32_e32 v172, v196, v143
	v_mul_f32_e32 v117, v117, v143
	v_mul_f32_e32 v108, v108, v143
	v_mul_f32_e32 v127, v127, v143
	v_mul_f32_e32 v125, v125, v143
	v_mul_f32_e32 v129, v129, v143
	v_mul_f32_e32 v112, v112, v143
	v_mul_f32_e32 v114, v114, v143
	v_mul_f32_e32 v123, v123, v143
	v_mul_f32_e32 v131, v131, v143
	v_mul_f32_e32 v133, v133, v143
	v_mul_f32_e32 v135, v135, v143
	v_mul_f32_e32 v109, v109, v143
	v_mul_f32_e32 v116, v116, v143
	v_mul_f32_e32 v137, v137, v143
	v_mul_f32_e32 v139, v139, v143
	v_mul_f32_e32 v119, v119, v143
	v_mul_f32_e32 v121, v121, v143
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v141, v141, v143 :: v_dual_lshlrev_b32 v152, 16, v152
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v65, v163, v152
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v161, v186, v143 :: v_dual_lshlrev_b32 v154, 16, v154
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v56, v168, v145 :: v_dual_lshlrev_b32 v147, 16, v147
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v145, v103, s[24:27], 0 offen offset:144
	buffer_load_u16 v168, v103, s[24:27], 0 offen offset:148
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v82, v161, v150
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v150, v103, s[24:27], 0 offen offset:92
	buffer_load_u16 v161, v103, s[24:27], 0 offen offset:96
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v176, v200, v143
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v89, v158, v147
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v147, v103, s[24:27], 0 offen offset:68
	buffer_load_u16 v158, v103, s[24:27], 0 offen offset:72
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v167, v191, v143 :: v_dual_lshlrev_b32 v146, 16, v146
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v175, v199, v143 :: v_dual_lshlrev_b32 v162, 16, v162
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v151, 16, v151
	s_clause 0x1
	buffer_load_u16 v152, v103, s[24:27], 0 offen offset:108
	buffer_load_u16 v163, v103, s[24:27], 0 offen offset:112
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v52, v170, v146
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v146, v103, s[24:27], 0 offen offset:160
	buffer_load_u16 v170, v103, s[24:27], 0 offen offset:164
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v62, v104, v162 :: v_dual_lshlrev_b32 v149, 16, v149
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v160, 16, v160
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v84, v177, v160
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v160, v103, s[24:27], 0 offen offset:216
	buffer_load_u16 v177, v103, s[24:27], 0 offen offset:220
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v150, 16, v150
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v178, v202, v143 :: v_dual_lshlrev_b32 v161, 16, v161
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v86, v176, v149 :: v_dual_lshlrev_b32 v147, 16, v147
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v165, v190, v143 :: v_dual_lshlrev_b32 v158, 16, v158
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v155, 16, v155
	s_clause 0x1
	buffer_load_u16 v149, v103, s[24:27], 0 offen offset:208
	buffer_load_u16 v176, v103, s[24:27], 0 offen offset:212
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v98, v171, v157 :: v_dual_mul_f32 v159, v180, v143
	v_fmac_f32_e32 v60, v165, v154
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v154, v103, s[24:27], 0 offen offset:128
	buffer_load_u16 v165, v181, s[24:27], 0 offen
	buffer_load_u16 v166, v103, s[24:27], 0 offen offset:132
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v94, v173, v158 :: v_dual_lshlrev_b32 v153, 16, v153
	v_fmac_f32_e32 v58, v167, v155
	v_fmac_f32_e32 v87, v159, v148
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v148, v103, s[24:27], 0 offen offset:76
	buffer_load_u16 v159, v103, s[24:27], 0 offen offset:80
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v169, v193, v143
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v63, v164, v153
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x5
	buffer_load_u16 v153, v103, s[24:27], 0 offen offset:116
	buffer_load_u16 v164, v103, s[24:27], 0 offen offset:120
	buffer_load_u16 v155, v103, s[24:27], 0 offen offset:136
	buffer_load_u16 v167, v103, s[24:27], 0 offen offset:140
	buffer_load_u16 v157, v103, s[24:27], 0 offen offset:168
	buffer_load_u16 v171, v103, s[24:27], 0 offen offset:172
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v96, v172, v147
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v147, v103, s[24:27], 0 offen offset:176
	buffer_load_u16 v172, v103, s[24:27], 0 offen offset:180
	buffer_load_u16 v158, v103, s[24:27], 0 offen offset:184
	buffer_load_u16 v173, v103, s[24:27], 0 offen offset:188
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v79, v179, v161
	v_fmac_f32_e32 v81, v178, v150
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v150, v103, s[24:27], 0 offen offset:224
	buffer_load_u16 v178, v103, s[24:27], 0 offen offset:228
	buffer_load_u16 v161, v103, s[24:27], 0 offen offset:232
	buffer_load_u16 v179, v103, s[24:27], 0 offen offset:236
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(21)
	v_dual_fmac_f32 v64, v144, v151 :: v_dual_lshlrev_b32 v177, 16, v177
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v152, 16, v152
	v_lshlrev_b32_e32 v146, 16, v146
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v170, 16, v170
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v120, v120, v143 :: v_dual_fmac_f32 v59, v105, v152
	v_dual_mul_f32 v130, v130, v143 :: v_dual_fmac_f32 v71, v115, v168
	v_dual_mul_f32 v132, v132, v143 :: v_dual_fmac_f32 v73, v114, v145
	v_dual_mul_f32 v138, v138, v143 :: v_dual_fmac_f32 v49, v119, v170
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v50, v118, v146
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v57, v106, v163 :: v_dual_fmac_f32 v66, v132, v160
	v_fmac_f32_e32 v61, v133, v177
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v165, 16, v165
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v166, 16, v166
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v124, v124, v143
	v_mul_f32_e32 v126, v126, v143
	v_dual_mul_f32 v128, v128, v143 :: v_dual_fmac_f32 v91, v110, v154
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v55, v169, v156
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v159, 16, v159
	s_clause 0x1
	buffer_load_u16 v156, v103, s[24:27], 0 offen offset:152
	buffer_load_u16 v169, v103, s[24:27], 0 offen offset:156
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v92, v174, v148
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v148, v103, s[24:27], 0 offen offset:192
	buffer_load_u16 v174, v103, s[24:27], 0 offen offset:196
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v88, v175, v159
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x5
	buffer_load_u16 v159, v103, s[24:27], 0 offen offset:200
	buffer_load_u16 v175, v103, s[24:27], 0 offen offset:204
	buffer_load_u16 v144, v103, s[24:27], 0 offen offset:240
	buffer_load_u16 v151, v103, s[24:27], 0 offen offset:244
	buffer_load_u16 v103, v103, s[24:27], 0 offen offset:248
	buffer_load_u16 v142, v142, s[24:27], 0 offen
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v157, 16, v157
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(17)
	v_dual_fmac_f32 v70, v130, v149 :: v_dual_lshlrev_b32 v147, 16, v147
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v172, 16, v172
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v173, 16, v173
	v_lshlrev_b32_e32 v167, 16, v167
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v178, 16, v178
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v122, v122, v143 :: v_dual_lshlrev_b32 v161, 16, v161
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v53, v108, v164
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v140, v140, v143 :: v_dual_fmac_f32 v41, v123, v172
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v51, v109, v165
	v_dual_fmac_f32 v40, v124, v158 :: v_dual_lshlrev_b32 v155, 16, v155
	v_dual_fmac_f32 v54, v107, v153 :: v_dual_add_nc_u32 v99, s44, v99
	v_fmac_f32_e32 v83, v111, v166
	v_dual_fmac_f32 v47, v120, v157 :: v_dual_fmac_f32 v44, v122, v147
	v_fmac_f32_e32 v38, v125, v173
	v_dual_fmac_f32 v75, v113, v167 :: v_dual_fmac_f32 v68, v131, v176
	v_fmac_f32_e32 v46, v135, v178
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v134, v134, v143 :: v_dual_lshlrev_b32 v169, 16, v169
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v148, 16, v148
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v174, 16, v174
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v142, 16, v142
	v_lshlrev_b32_e32 v103, 16, v103
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v136, v136, v143 :: v_dual_fmac_f32 v67, v117, v169
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v69, v116, v156
	v_dual_fmac_f32 v48, v134, v150 :: v_dual_lshlrev_b32 v179, 16, v179
	v_dual_fmac_f32 v78, v112, v155 :: v_dual_fmac_f32 v77, v126, v148
	v_dual_fmac_f32 v76, v127, v174 :: v_dual_fmac_f32 v45, v121, v171
	v_fmac_f32_e32 v74, v128, v159
	v_dual_fmac_f32 v72, v129, v175 :: v_dual_fmac_f32 v43, v136, v161
	v_dual_fmac_f32 v42, v137, v179 :: v_dual_fmac_f32 v39, v138, v144
	v_dual_fmac_f32 v7, v139, v151 :: v_dual_fmac_f32 v6, v141, v142
	v_fmac_f32_e32 v5, v140, v103
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_4
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_add_nc_u32_e32 v3, 0, v11
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s0, s47, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s46, s46, s29
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v3, v90, v98 offset1:32
	ds_store_2addr_b32 v3, v91, v77 offset0:64 offset1:96
	ds_store_2addr_b32 v20, v97, v96 offset1:32
	ds_store_2addr_b32 v20, v83, v76 offset0:64 offset1:96
	ds_store_2addr_b32 v21, v95, v94 offset1:32
	ds_store_2addr_b32 v21, v78, v74 offset0:64 offset1:96
	ds_store_2addr_b32 v22, v93, v92 offset1:32
	ds_store_2addr_b32 v22, v75, v72 offset0:64 offset1:96
	ds_store_2addr_b32 v23, v89, v88 offset1:32
	ds_store_2addr_b32 v23, v73, v70 offset0:64 offset1:96
	ds_store_2addr_b32 v24, v87, v86 offset1:32
	ds_store_2addr_b32 v24, v71, v68 offset0:64 offset1:96
	ds_store_2addr_b32 v25, v85, v84 offset1:32
	ds_store_2addr_b32 v25, v69, v66 offset0:64 offset1:96
	ds_store_2addr_b32 v26, v82, v81 offset1:32
	ds_store_2addr_b32 v26, v67, v61 offset0:64 offset1:96
	ds_store_2addr_b32 v27, v80, v79 offset1:32
	v_add3_u32 v3, s46, s0, v0
	ds_store_2addr_b32 v27, v50, v48 offset0:64 offset1:96
	ds_store_2addr_b32 v28, v65, v64 offset1:32
	ds_store_2addr_b32 v28, v49, v46 offset0:64 offset1:96
	ds_store_2addr_b32 v29, v63, v62 offset1:32
	ds_store_2addr_b32 v29, v47, v43 offset0:64 offset1:96
	ds_store_2addr_b32 v30, v60, v59 offset1:32
	ds_store_2addr_b32 v30, v45, v42 offset0:64 offset1:96
	ds_store_2addr_b32 v31, v58, v57 offset1:32
	ds_store_2addr_b32 v31, v44, v39 offset0:64 offset1:96
	ds_store_2addr_b32 v32, v56, v54 offset1:32
	ds_store_2addr_b32 v32, v41, v7 offset0:64 offset1:96
	ds_store_2addr_b32 v33, v55, v53 offset1:32
	ds_store_2addr_b32 v33, v40, v5 offset0:64 offset1:96
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v4, 31, v3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_store_2addr_b32 v34, v52, v51 offset1:32
	ds_store_2addr_b32 v34, v38, v6 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v6, 0, v12
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[42:43], 2, v[3:4]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_load_b32 v41, v6
	ds_load_b32 v40, v35
	ds_load_b32 v39, v36
	ds_load_b32 v38, v37
	s_mov_b32 s0, 0
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_add_co_u32 v4, vcc_lo, s30, v42
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s31, v43, vcc_lo
	global_load_b32 v7, v[4:5], off
.LBB0_6:                                ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v6, v7, v41
	global_atomic_cmpswap_b32 v6, v[4:5], v[6:7], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v6, v7
	v_mov_b32_e32 v7, v6
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v4, s39, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v4, vcc_lo, s30, v4
	v_add_co_ci_u32_e64 v5, null, s31, v5, vcc_lo
	global_load_b32 v7, v[4:5], off
.LBB0_8:                                ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v6, v7, v40
	global_atomic_cmpswap_b32 v6, v[4:5], v[6:7], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v6, v7
	v_mov_b32_e32 v7, v6
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v4, s40, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v4, vcc_lo, s30, v4
	v_add_co_ci_u32_e64 v5, null, s31, v5, vcc_lo
	global_load_b32 v7, v[4:5], off
.LBB0_10:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v6, v7, v39
	global_atomic_cmpswap_b32 v6, v[4:5], v[6:7], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v6, v7
	v_mov_b32_e32 v7, v6
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v3, s41, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v3, vcc_lo, s30, v3
	v_add_co_ci_u32_e64 v4, null, s31, v4, vcc_lo
	global_load_b32 v6, v[3:4], off
.LBB0_12:                               ; %atomicrmw.start
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v5, v6, v38
	global_atomic_cmpswap_b32 v5, v[3:4], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v5, v6
	v_mov_b32_e32 v6, v5
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s33
	s_cbranch_scc1 .LBB0_2
.LBB0_14:                               ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 204
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk.num_vgpr, 204
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4612
; TotalNumSgprs: 53
; NumVgprs: 204
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 204
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     204
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
