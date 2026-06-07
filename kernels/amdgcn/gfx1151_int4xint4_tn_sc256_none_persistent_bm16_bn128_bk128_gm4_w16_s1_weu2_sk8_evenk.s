	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
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
	s_ashr_i32 s33, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s13, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s34, s13, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_14
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s14, s[0:1], 0x38
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[30:31], s[0:1], 0x20
	v_lshlrev_b32_e32 v8, 2, v0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_and_b32_e32 v25, 15, v0
	v_lshlrev_b32_e32 v6, 1, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s1, s13, 2
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v4, 0x180, v0
	v_and_b32_e32 v9, 0x7c, v8
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v2, 7, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7f, v0
	v_lshrrev_b32_e32 v4, 5, v4
	v_lshl_or_b32 v27, v25, 9, v9
	v_and_b32_e32 v9, 60, v6
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v5, 7, v0
	v_or_b32_e32 v7, 0x3f0, v0
	v_lshlrev_b32_e32 v11, 4, v0
	v_or_b32_e32 v12, 0x7f0, v0
	v_and_or_b32 v8, 0x780, v8, v9
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s14, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s15, s14, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s16, s0, 31
	s_mov_b32 s20, s4
	s_lshr_b32 s4, s16, 24
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s14, s14, s15
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s4, s0, s4
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s35, s14, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s36, s4, 8
	s_cmpk_gt_i32 s0, 0xff
	v_or_b32_e32 v13, 0xbf0, v0
	s_cselect_b32 s37, -1, 0
	s_abs_i32 s38, s1
	v_or_b32_e32 v14, 0xff0, v0
	s_cvt_f32_u32 s0, s38
	v_or_b32_e32 v15, 0x13f0, v0
	v_or_b32_e32 v16, 0x17f0, v0
	v_or_b32_e32 v17, 0x1bf0, v0
	v_rcp_iflag_f32_e32 v9, s0
	v_or_b32_e32 v18, 0x1ff0, v0
	v_lshlrev_b32_e32 v0, 6, v0
	v_xor_b32_e32 v4, v8, v4
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_lshl_or_b32 v29, s3, 6, v3
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v10, 62, v3
	s_mov_b32 s4, s6
	v_xor_b32_e32 v19, 4, v27
	v_and_or_b32 v28, v0, 64, v4
	v_xor_b32_e32 v20, 8, v27
	v_readfirstlane_b32 s0, v9
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[8:9], null, s29, v5, v[1:2]
	v_mul_lo_u32 v1, s29, v29
	v_mul_lo_u32 v5, s28, v29
	s_delay_alu instid0(VALU_DEP_4)
	s_mul_f32 s0, s0, 0x4f7ffffe
	v_xor_b32_e32 v21, 12, v27
	v_xor_b32_e32 v22, 16, v27
	v_xor_b32_e32 v23, 20, v27
	v_xor_b32_e32 v24, 24, v27
	v_xor_b32_e32 v51, 28, v27
	v_xor_b32_e32 v52, 32, v27
	v_xor_b32_e32 v53, 36, v27
	v_xor_b32_e32 v54, 40, v27
	v_xor_b32_e32 v55, 44, v27
	v_xor_b32_e32 v56, 48, v27
	v_xor_b32_e32 v0, 52, v27
	v_xor_b32_e32 v4, 56, v27
	v_xor_b32_e32 v59, 60, v27
	v_xor_b32_e32 v60, 0x810, v28
	v_xor_b32_e32 v61, 0x1020, v28
	v_xor_b32_e32 v62, 0x1830, v28
	s_cvt_u32_f32 s6, s0
	s_sub_i32 s0, 0, s38
	v_add_nc_u32_e32 v26, 0, v25
	v_or_b32_e32 v30, 0xfc, v10
	s_mul_i32 s3, s0, s6
	v_cmp_gt_i32_e64 s0, 0x80, v29
	v_and_b32_e32 v31, 2, v3
	v_or_b32_e32 v32, 0x7c, v10
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v33, v2, 4, v1
	v_lshl_add_u32 v34, v2, 1, v5
	v_add_nc_u32_e32 v35, 0, v6
	v_add_nc_u32_e32 v36, 0, v7
	v_add_nc_u32_e32 v37, 0, v11
	v_add_nc_u32_e32 v38, 0, v12
	v_add_nc_u32_e32 v39, 0, v13
	v_add_nc_u32_e32 v40, 0, v14
	v_add_nc_u32_e32 v41, 0, v15
	v_add_nc_u32_e32 v42, 0, v16
	v_add_nc_u32_e32 v43, 0, v17
	v_add_nc_u32_e32 v44, 0, v18
	v_add_nc_u32_e32 v45, 0, v19
	v_add_nc_u32_e32 v46, 0, v20
	v_add_nc_u32_e32 v47, 0, v21
	v_add_nc_u32_e32 v48, 0, v22
	v_add_nc_u32_e32 v49, 0, v23
	v_add_nc_u32_e32 v50, 0, v24
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v52, 0, v52
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v54, 0, v54
	v_add_nc_u32_e32 v55, 0, v55
	v_add_nc_u32_e32 v56, 0, v56
	v_add_nc_u32_e32 v57, 0, v0
	v_add_nc_u32_e32 v58, 0, v4
	v_add_nc_u32_e32 v59, 0, v59
	v_add_nc_u32_e32 v60, 0, v60
	v_add_nc_u32_e32 v61, 0, v61
	v_add_nc_u32_e32 v62, 0, v62
	s_and_b32 s21, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_mul_hi_u32 s7, s6, s3
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s12, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_lshl_b32 s39, s29, 2
	s_lshl_b32 s40, s29, 3
	s_mul_i32 s41, s29, 12
	s_bfe_i32 s3, s13, 0x1001d
	s_add_i32 s42, s6, s7
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s43, s29, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s44, s36, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s45, s29, 7
	s_lshl_b32 s28, s28, 7
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s10, s6, s42
	s_xor_b32 s7, s7, s3
	s_mul_i32 s11, s10, s38
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s10, 1
	s_sub_i32 s13, s6, s38
	s_cmp_ge_u32 s6, s38
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	s_cselect_b32 s10, s11, s10
	s_cselect_b32 s6, s13, s6
	s_add_i32 s11, s10, 1
	s_cmp_ge_u32 s6, s38
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v74, 0
	s_cselect_b32 s6, s11, s10
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	s_xor_b32 s6, s6, s7
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	s_sub_i32 s6, s6, s7
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v105, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s10, s6, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s6, s6, s1
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s7, s33, s10
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s15, s2, s6
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s11, s7, 4
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v69, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s13, s11
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v73, 0
	s_cvt_f32_u32 s7, s13
	s_sub_i32 s14, 0, s13
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v101, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s7, v0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v82, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v92, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s7, s7
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v114, 0
	s_mul_i32 s14, s14, s7
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v120, 0
	s_mul_hi_u32 s6, s7, s14
	s_abs_i32 s14, s15
	s_add_i32 s7, s7, s6
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v122, 0
	s_mul_hi_u32 s6, s14, s7
	s_xor_b32 s7, s15, s11
	s_mul_i32 s16, s6, s13
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s14, s14, s16
	s_add_i32 s16, s6, 1
	s_sub_i32 s17, s14, s13
	s_cmp_ge_u32 s14, s13
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v124, 0
	s_cselect_b32 s6, s16, s6
	s_cselect_b32 s14, s17, s14
	s_add_i32 s16, s6, 1
	s_cmp_ge_u32 s14, s13
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v126, 0
	s_cselect_b32 s6, s16, s6
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	s_xor_b32 s6, s6, s7
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v91, 0
	s_sub_i32 s47, s6, s7
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v93, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s11, s47, s11
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v113, 0
	s_sub_i32 s11, s15, s11
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v116, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s11, s11, s10
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_not1_b32 vcc_lo, exec_lo, s37
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s46, s11, 4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v133, v29 :: v_dual_add_nc_u32 v0, s46, v25
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_add_u32 v1, s6, 7, v33
	s_lshl_b32 s10, s7, 8
	s_lshl_b32 s7, s7, 7
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v130, s44, v0
	v_subrev_nc_u32_e32 v127, s10, v30
	v_subrev_nc_u32_e32 v128, s10, v31
	v_subrev_nc_u32_e32 v129, s10, v32
	v_subrev_nc_u32_e32 v131, s7, v1
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v132, s46, v34
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v64, 0
	s_lshl_b32 s48, s6, 8
	s_mov_b32 s49, s36
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 259 31 is_stmt 1              ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s35, v133
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s15, s12
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	v_cndmask_b32_e32 v0, 0x80000000, v132, vcc_lo
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	buffer_load_u16 v4, v0, s[20:23], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e32 v0, 0x80000000, v131, vcc_lo
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[0:3], v0, s[4:7], 0 offen
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s49, s49, -1
	v_add_nc_u32_e32 v132, s28, v132
	s_cmp_lg_u32 s49, 0
	v_add_nc_u32_e32 v133, 0x80, v133
	v_add_nc_u32_e32 v131, s45, v131
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt vmcnt(1)
	ds_store_b16 v35, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v4, v26
	ds_load_u8 v5, v26 offset:16
	ds_load_u8 v6, v26 offset:32
	ds_load_u8 v7, v26 offset:48
	ds_load_u8 v9, v26 offset:112
	ds_load_u8 v10, v26 offset:96
	ds_load_u8 v11, v26 offset:80
	ds_load_u8 v12, v26 offset:64
	ds_load_u8 v15, v26 offset:176
	ds_load_u8 v16, v26 offset:160
	ds_load_u8 v17, v26 offset:144
	ds_load_u8 v18, v26 offset:128
	ds_load_u8 v19, v26 offset:240
	ds_load_u8 v20, v26 offset:224
	ds_load_u8 v21, v26 offset:208
	ds_load_u8 v22, v26 offset:192
	ds_load_u8 v23, v26 offset:304
	ds_load_u8 v24, v26 offset:288
	ds_load_u8 v138, v26 offset:272
	ds_load_u8 v139, v26 offset:256
	ds_load_u8 v140, v26 offset:368
	ds_load_u8 v141, v26 offset:352
	ds_load_u8 v142, v26 offset:336
	ds_load_u8 v143, v26 offset:320
	ds_load_u8 v144, v26 offset:432
	ds_load_u8 v145, v26 offset:416
	ds_load_u8 v146, v26 offset:400
	ds_load_u8 v147, v26 offset:384
	ds_load_u8 v148, v26 offset:496
	ds_load_u8 v149, v26 offset:480
	ds_load_u8 v150, v26 offset:464
	ds_load_u8 v151, v26 offset:448
	ds_load_u8 v152, v26 offset:560
	ds_load_u8 v153, v26 offset:544
	ds_load_u8 v154, v26 offset:528
	ds_load_u8 v155, v26 offset:512
	ds_load_u8 v156, v26 offset:624
	ds_load_u8 v157, v26 offset:608
	ds_load_u8 v158, v26 offset:592
	ds_load_u8 v159, v26 offset:576
	ds_load_u8 v160, v26 offset:688
	ds_load_u8 v161, v26 offset:672
	ds_load_u8 v162, v26 offset:656
	ds_load_u8 v163, v26 offset:640
	ds_load_u8 v164, v26 offset:752
	ds_load_u8 v165, v26 offset:736
	ds_load_u8 v166, v26 offset:720
	ds_load_u8 v167, v26 offset:704
	ds_load_u8 v168, v26 offset:816
	ds_load_u8 v169, v26 offset:800
	ds_load_u8 v170, v26 offset:784
	ds_load_u8 v171, v26 offset:768
	ds_load_u8 v172, v26 offset:880
	ds_load_u8 v173, v26 offset:864
	ds_load_u8 v174, v26 offset:848
	ds_load_u8 v175, v26 offset:832
	ds_load_u8 v176, v36
	ds_load_u8 v177, v26 offset:992
	ds_load_u8 v178, v26 offset:976
	ds_load_u8 v179, v26 offset:960
	ds_load_u8 v180, v26 offset:944
	ds_load_u8 v181, v26 offset:928
	ds_load_u8 v182, v26 offset:912
	ds_load_u8 v183, v26 offset:896
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v37, v[0:3]
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v0, v12, v11, 0xc0c0004
	v_perm_b32 v1, v10, v9, 0xc0c0004
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v2, v4, v5, 0xc0c0004
	v_perm_b32 v3, v6, v7, 0xc0c0004
	v_lshl_or_b32 v14, v1, 16, v0
	ds_load_u8 v0, v26 offset:640
	ds_load_u8 v1, v26 offset:512
	v_lshl_or_b32 v13, v3, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v26 offset:896
	ds_load_u8 v2, v26 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:128
	ds_load_u8 v3, v26
	v_lshl_or_b32 v135, v1, 16, v0
	v_perm_b32 v0, v22, v21, 0xc0c0004
	v_perm_b32 v1, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v26 offset:384
	ds_load_u8 v4, v26 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v3, 16, v2
	v_perm_b32 v2, v18, v17, 0xc0c0004
	v_lshl_or_b32 v18, v1, 16, v0
	ds_load_u8 v0, v26 offset:1664
	ds_load_u8 v1, v26 offset:1536
	v_perm_b32 v3, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v3, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v26 offset:1920
	ds_load_u8 v2, v26 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:1152
	ds_load_u8 v3, v26 offset:1024
	v_lshl_or_b32 v137, v1, 16, v0
	v_perm_b32 v0, v143, v142, 0xc0c0004
	v_perm_b32 v1, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v1, 16, v0
	ds_load_u8 v0, v26 offset:2688
	ds_load_u8 v1, v26 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v26 offset:1408
	ds_load_u8 v4, v26 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v3, 16, v2
	v_perm_b32 v2, v139, v138, 0xc0c0004
	v_perm_b32 v3, v24, v23, 0xc0c0004
	v_lshl_or_b32 v21, v3, 16, v2
	ds_load_u8 v1, v26 offset:2944
	ds_load_u8 v2, v26 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:2176
	ds_load_u8 v3, v26 offset:2048
	v_lshl_or_b32 v139, v1, 16, v0
	v_perm_b32 v0, v151, v150, 0xc0c0004
	v_perm_b32 v1, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v24, v1, 16, v0
	ds_load_u8 v0, v26 offset:3712
	ds_load_u8 v1, v26 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v26 offset:2432
	ds_load_u8 v4, v26 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v3, 16, v2
	v_perm_b32 v2, v147, v146, 0xc0c0004
	v_perm_b32 v3, v145, v144, 0xc0c0004
	v_lshl_or_b32 v23, v3, 16, v2
	ds_load_u8 v1, v26 offset:3968
	ds_load_u8 v2, v26 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:3200
	ds_load_u8 v3, v26 offset:3072
	v_lshl_or_b32 v150, v1, 16, v0
	v_perm_b32 v0, v159, v158, 0xc0c0004
	v_perm_b32 v1, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v20, v1, 16, v0
	ds_load_u8 v0, v26 offset:4736
	ds_load_u8 v1, v26 offset:4608
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v26 offset:3456
	ds_load_u8 v4, v26 offset:3328
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v3, 16, v2
	v_perm_b32 v2, v155, v154, 0xc0c0004
	v_perm_b32 v3, v153, v152, 0xc0c0004
	v_lshl_or_b32 v19, v3, 16, v2
	ds_load_u8 v1, v26 offset:4992
	ds_load_u8 v2, v26 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:4224
	ds_load_u8 v3, v26 offset:4096
	v_lshl_or_b32 v152, v1, 16, v0
	v_perm_b32 v0, v167, v166, 0xc0c0004
	v_perm_b32 v1, v165, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v16, v1, 16, v0
	ds_load_u8 v0, v26 offset:5760
	ds_load_u8 v1, v26 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v26 offset:4480
	ds_load_u8 v4, v26 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v151, v3, 16, v2
	v_perm_b32 v2, v163, v162, 0xc0c0004
	v_perm_b32 v3, v161, v160, 0xc0c0004
	v_lshl_or_b32 v15, v3, 16, v2
	ds_load_u8 v1, v26 offset:6016
	ds_load_u8 v2, v26 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:5248
	ds_load_u8 v3, v26 offset:5120
	v_lshl_or_b32 v154, v1, 16, v0
	v_perm_b32 v0, v175, v174, 0xc0c0004
	v_perm_b32 v1, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v12, v1, 16, v0
	ds_load_u8 v0, v26 offset:6784
	ds_load_u8 v1, v26 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v26 offset:5504
	ds_load_u8 v4, v26 offset:5376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v153, v3, 16, v2
	v_perm_b32 v2, v171, v170, 0xc0c0004
	v_perm_b32 v3, v169, v168, 0xc0c0004
	v_lshl_or_b32 v11, v3, 16, v2
	ds_load_u8 v1, v26 offset:7040
	ds_load_u8 v2, v26 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:6272
	ds_load_u8 v3, v26 offset:6144
	v_lshl_or_b32 v156, v1, 16, v0
	v_perm_b32 v0, v183, v182, 0xc0c0004
	v_perm_b32 v1, v181, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v1, 16, v0
	ds_load_u8 v0, v26 offset:7808
	ds_load_u8 v1, v26 offset:7680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v26 offset:6528
	ds_load_u8 v4, v26 offset:6400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v155, v3, 16, v2
	v_perm_b32 v2, v179, v178, 0xc0c0004
	v_perm_b32 v3, v177, v176, 0xc0c0004
	v_lshl_or_b32 v10, v3, 16, v2
	ds_load_u8 v1, v26 offset:8064
	ds_load_u8 v2, v26 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v26 offset:7296
	ds_load_u8 v3, v26 offset:7168
	v_lshl_or_b32 v158, v1, 16, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v26 offset:7552
	ds_load_u8 v4, v26 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v157, v3, 16, v2
	v_dual_mov_b32 v0, s12 :: v_dual_mov_b32 v1, s13
	v_dual_mov_b32 v2, s14 :: v_dual_mov_b32 v3, s15
	v_dual_mov_b32 v4, s16 :: v_dual_mov_b32 v5, s17
	v_dual_mov_b32 v6, s18 :: v_dual_mov_b32 v7, s19
	v_wmma_i32_16x16x16_iu4 v[141:148], v[134:135], v[13:14], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[136:137], v[17:18], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[138:139], v[21:22], v[141:148] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[149:150], v[23:24], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[151:152], v[19:20], v[141:148] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[153:154], v[15:16], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[155:156], v[11:12], v[141:148] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[141:148], v[157:158], v[9:10], v[141:148] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v140, v142
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v139, v143
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v142, v26 offset:656
	ds_load_u8 v143, v26 offset:528
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v138, v144
	v_cvt_f32_i32_e32 v137, v145
	v_cvt_f32_i32_e32 v136, v146
	v_cvt_f32_i32_e32 v135, v147
	v_cvt_f32_i32_e32 v134, v148
	v_cvt_f32_i32_e32 v141, v141
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v26 offset:912
	ds_load_u8 v144, v26 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v26 offset:16
	ds_load_u8 v145, v26 offset:144
	v_lshl_or_b32 v143, v143, 16, v142
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v144, v145, 0xc0c0004
	ds_load_u8 v145, v26 offset:400
	ds_load_u8 v146, v26 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v142, v145, 16, v144
	ds_load_u8 v144, v26 offset:1680
	ds_load_u8 v145, v26 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v26 offset:1936
	ds_load_u8 v146, v26 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v26 offset:1168
	ds_load_u8 v147, v26 offset:1040
	v_lshl_or_b32 v145, v145, 16, v144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v26 offset:1424
	ds_load_u8 v148, v26 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v147, 16, v146
	ds_load_u8 v146, v26 offset:2704
	ds_load_u8 v147, v26 offset:2576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v26 offset:2960
	ds_load_u8 v148, v26 offset:2832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v26 offset:2192
	ds_load_u8 v149, v26 offset:2064
	v_lshl_or_b32 v147, v147, 16, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v26 offset:2448
	ds_load_u8 v150, v26 offset:2320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v149, 16, v148
	ds_load_u8 v148, v26 offset:3728
	ds_load_u8 v149, v26 offset:3600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v26 offset:3984
	ds_load_u8 v150, v26 offset:3856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v26 offset:3216
	ds_load_u8 v151, v26 offset:3088
	v_lshl_or_b32 v158, v149, 16, v148
	ds_load_u8 v148, v26 offset:4752
	ds_load_u8 v149, v26 offset:4624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v26 offset:3472
	ds_load_u8 v152, v26 offset:3344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v157, v151, 16, v150
	ds_load_u8 v149, v26 offset:5008
	ds_load_u8 v150, v26 offset:4880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v26 offset:4240
	ds_load_u8 v151, v26 offset:4112
	v_lshl_or_b32 v160, v149, 16, v148
	ds_load_u8 v148, v26 offset:5776
	ds_load_u8 v149, v26 offset:5648
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v26 offset:4496
	ds_load_u8 v152, v26 offset:4368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v159, v151, 16, v150
	ds_load_u8 v149, v26 offset:6032
	ds_load_u8 v150, v26 offset:5904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v26 offset:5264
	ds_load_u8 v151, v26 offset:5136
	v_lshl_or_b32 v162, v149, 16, v148
	ds_load_u8 v148, v26 offset:6800
	ds_load_u8 v149, v26 offset:6672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v26 offset:5520
	ds_load_u8 v152, v26 offset:5392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v151, 16, v150
	ds_load_u8 v149, v26 offset:7056
	ds_load_u8 v150, v26 offset:6928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v26 offset:6288
	ds_load_u8 v151, v26 offset:6160
	v_lshl_or_b32 v164, v149, 16, v148
	ds_load_u8 v148, v26 offset:7824
	ds_load_u8 v149, v26 offset:7696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v26 offset:6544
	ds_load_u8 v152, v26 offset:6416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v163, v151, 16, v150
	ds_load_u8 v149, v26 offset:8080
	ds_load_u8 v150, v26 offset:7952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v26 offset:7312
	ds_load_u8 v151, v26 offset:7184
	v_lshl_or_b32 v166, v149, 16, v148
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v26 offset:7568
	ds_load_u8 v152, v26 offset:7440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v165, v151, 16, v150
	v_wmma_i32_16x16x16_iu4 v[149:156], v[142:143], v[13:14], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[144:145], v[17:18], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[149:156], v[146:147], v[21:22], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[157:158], v[23:24], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[149:156], v[159:160], v[19:20], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[161:162], v[15:16], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[149:156], v[163:164], v[11:12], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[165:166], v[9:10], v[149:156] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v148, v150
	v_cvt_f32_i32_e32 v147, v151
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v150, v26 offset:672
	ds_load_u8 v151, v26 offset:544
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v146, v152
	v_cvt_f32_i32_e32 v145, v153
	v_cvt_f32_i32_e32 v144, v154
	v_cvt_f32_i32_e32 v143, v155
	v_cvt_f32_i32_e32 v142, v156
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v26 offset:928
	ds_load_u8 v152, v26 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	ds_load_u8 v152, v26 offset:32
	ds_load_u8 v153, v26 offset:160
	v_lshl_or_b32 v151, v151, 16, v150
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v152, v153, 0xc0c0004
	ds_load_u8 v153, v26 offset:416
	ds_load_u8 v154, v26 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v153, 16, v152
	ds_load_u8 v152, v26 offset:1696
	ds_load_u8 v153, v26 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v26 offset:1952
	ds_load_u8 v154, v26 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v26 offset:1184
	ds_load_u8 v155, v26 offset:1056
	v_lshl_or_b32 v153, v153, 16, v152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v26 offset:1440
	ds_load_u8 v156, v26 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v152, v155, 16, v154
	ds_load_u8 v154, v26 offset:2720
	ds_load_u8 v155, v26 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v26 offset:2976
	ds_load_u8 v156, v26 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v26 offset:2208
	ds_load_u8 v157, v26 offset:2080
	v_lshl_or_b32 v155, v155, 16, v154
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v26 offset:2464
	ds_load_u8 v158, v26 offset:2336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v157, 16, v156
	ds_load_u8 v156, v26 offset:3744
	ds_load_u8 v157, v26 offset:3616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v26 offset:4000
	ds_load_u8 v158, v26 offset:3872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v26 offset:3232
	ds_load_u8 v159, v26 offset:3104
	v_lshl_or_b32 v166, v157, 16, v156
	ds_load_u8 v156, v26 offset:4768
	ds_load_u8 v157, v26 offset:4640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v26 offset:3488
	ds_load_u8 v160, v26 offset:3360
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v165, v159, 16, v158
	ds_load_u8 v157, v26 offset:5024
	ds_load_u8 v158, v26 offset:4896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v26 offset:4256
	ds_load_u8 v159, v26 offset:4128
	v_lshl_or_b32 v168, v157, 16, v156
	ds_load_u8 v156, v26 offset:5792
	ds_load_u8 v157, v26 offset:5664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v26 offset:4512
	ds_load_u8 v160, v26 offset:4384
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v159, 16, v158
	ds_load_u8 v157, v26 offset:6048
	ds_load_u8 v158, v26 offset:5920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v26 offset:5280
	ds_load_u8 v159, v26 offset:5152
	v_lshl_or_b32 v170, v157, 16, v156
	ds_load_u8 v156, v26 offset:6816
	ds_load_u8 v157, v26 offset:6688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v26 offset:5536
	ds_load_u8 v160, v26 offset:5408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v169, v159, 16, v158
	ds_load_u8 v157, v26 offset:7072
	ds_load_u8 v158, v26 offset:6944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v26 offset:6304
	ds_load_u8 v159, v26 offset:6176
	v_lshl_or_b32 v172, v157, 16, v156
	ds_load_u8 v156, v26 offset:7840
	ds_load_u8 v157, v26 offset:7712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v26 offset:6560
	ds_load_u8 v160, v26 offset:6432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v171, v159, 16, v158
	ds_load_u8 v157, v26 offset:8096
	ds_load_u8 v158, v26 offset:7968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v26 offset:7328
	ds_load_u8 v159, v26 offset:7200
	v_lshl_or_b32 v174, v157, 16, v156
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v26 offset:7584
	ds_load_u8 v160, v26 offset:7456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v173, v159, 16, v158
	v_wmma_i32_16x16x16_iu4 v[157:164], v[150:151], v[13:14], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[152:153], v[17:18], v[157:164] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[154:155], v[21:22], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[165:166], v[23:24], v[157:164] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[167:168], v[19:20], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[169:170], v[15:16], v[157:164] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[171:172], v[11:12], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[173:174], v[9:10], v[157:164] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v156, v158
	v_cvt_f32_i32_e32 v155, v159
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v158, v26 offset:688
	ds_load_u8 v159, v26 offset:560
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v154, v160
	v_cvt_f32_i32_e32 v153, v161
	v_cvt_f32_i32_e32 v152, v162
	v_cvt_f32_i32_e32 v151, v163
	v_cvt_f32_i32_e32 v150, v164
	v_cvt_f32_i32_e32 v157, v157
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v26 offset:944
	ds_load_u8 v160, v26 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	ds_load_u8 v160, v26 offset:48
	ds_load_u8 v161, v26 offset:176
	v_lshl_or_b32 v159, v159, 16, v158
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v160, v161, 0xc0c0004
	ds_load_u8 v161, v26 offset:432
	ds_load_u8 v162, v26 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	ds_load_u8 v160, v26 offset:1712
	ds_load_u8 v161, v26 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v26 offset:1968
	ds_load_u8 v162, v26 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	ds_load_u8 v162, v26 offset:1200
	ds_load_u8 v163, v26 offset:1072
	v_lshl_or_b32 v161, v161, 16, v160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v26 offset:1456
	ds_load_u8 v164, v26 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v160, v163, 16, v162
	ds_load_u8 v162, v26 offset:2736
	ds_load_u8 v163, v26 offset:2608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v26 offset:2992
	ds_load_u8 v164, v26 offset:2864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v26 offset:2224
	ds_load_u8 v165, v26 offset:2096
	v_lshl_or_b32 v163, v163, 16, v162
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v26 offset:2480
	ds_load_u8 v166, v26 offset:2352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v165, 16, v164
	ds_load_u8 v164, v26 offset:3760
	ds_load_u8 v165, v26 offset:3632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v26 offset:4016
	ds_load_u8 v166, v26 offset:3888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v26 offset:3248
	ds_load_u8 v167, v26 offset:3120
	v_lshl_or_b32 v174, v165, 16, v164
	ds_load_u8 v164, v26 offset:4784
	ds_load_u8 v165, v26 offset:4656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v26 offset:3504
	ds_load_u8 v168, v26 offset:3376
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v173, v167, 16, v166
	ds_load_u8 v165, v26 offset:5040
	ds_load_u8 v166, v26 offset:4912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v26 offset:4272
	ds_load_u8 v167, v26 offset:4144
	v_lshl_or_b32 v176, v165, 16, v164
	ds_load_u8 v164, v26 offset:5808
	ds_load_u8 v165, v26 offset:5680
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v26 offset:4528
	ds_load_u8 v168, v26 offset:4400
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v167, 16, v166
	ds_load_u8 v165, v26 offset:6064
	ds_load_u8 v166, v26 offset:5936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v26 offset:5296
	ds_load_u8 v167, v26 offset:5168
	v_lshl_or_b32 v178, v165, 16, v164
	ds_load_u8 v164, v26 offset:6832
	ds_load_u8 v165, v26 offset:6704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v26 offset:5552
	ds_load_u8 v168, v26 offset:5424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v167, 16, v166
	ds_load_u8 v165, v26 offset:7088
	ds_load_u8 v166, v26 offset:6960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v26 offset:6320
	ds_load_u8 v167, v26 offset:6192
	v_lshl_or_b32 v180, v165, 16, v164
	ds_load_u8 v164, v26 offset:7856
	ds_load_u8 v165, v26 offset:7728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v26 offset:6576
	ds_load_u8 v168, v26 offset:6448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v179, v167, 16, v166
	ds_load_u8 v165, v26 offset:8112
	ds_load_u8 v166, v26 offset:7984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v26 offset:7344
	ds_load_u8 v167, v26 offset:7216
	v_lshl_or_b32 v182, v165, 16, v164
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v26 offset:7600
	ds_load_u8 v168, v26 offset:7472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v181, v167, 16, v166
	v_wmma_i32_16x16x16_iu4 v[165:172], v[158:159], v[13:14], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[160:161], v[17:18], v[165:172] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[162:163], v[21:22], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[173:174], v[23:24], v[165:172] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[175:176], v[19:20], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[177:178], v[15:16], v[165:172] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[179:180], v[11:12], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[181:182], v[9:10], v[165:172] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v164, v166
	v_cvt_f32_i32_e32 v163, v167
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v166, v26 offset:704
	ds_load_u8 v167, v26 offset:576
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v162, v168
	v_cvt_f32_i32_e32 v161, v169
	v_cvt_f32_i32_e32 v160, v170
	v_cvt_f32_i32_e32 v159, v171
	v_cvt_f32_i32_e32 v158, v172
	v_cvt_f32_i32_e32 v165, v165
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v26 offset:960
	ds_load_u8 v168, v26 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	ds_load_u8 v168, v26 offset:192
	ds_load_u8 v169, v26 offset:64
	v_lshl_or_b32 v167, v167, 16, v166
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v26 offset:448
	ds_load_u8 v170, v26 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v169, 16, v168
	ds_load_u8 v168, v26 offset:1728
	ds_load_u8 v169, v26 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v26 offset:1984
	ds_load_u8 v170, v26 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	ds_load_u8 v170, v26 offset:1216
	ds_load_u8 v171, v26 offset:1088
	v_lshl_or_b32 v169, v169, 16, v168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v26 offset:1472
	ds_load_u8 v172, v26 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v171, 16, v170
	ds_load_u8 v170, v26 offset:2752
	ds_load_u8 v171, v26 offset:2624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v26 offset:3008
	ds_load_u8 v172, v26 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	ds_load_u8 v172, v26 offset:2240
	ds_load_u8 v173, v26 offset:2112
	v_lshl_or_b32 v171, v171, 16, v170
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v26 offset:2496
	ds_load_u8 v174, v26 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v173, 16, v172
	ds_load_u8 v172, v26 offset:3776
	ds_load_u8 v173, v26 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v26 offset:4032
	ds_load_u8 v174, v26 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v26 offset:3264
	ds_load_u8 v175, v26 offset:3136
	v_lshl_or_b32 v182, v173, 16, v172
	ds_load_u8 v172, v26 offset:4800
	ds_load_u8 v173, v26 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v26 offset:3520
	ds_load_u8 v176, v26 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v175, 16, v174
	ds_load_u8 v173, v26 offset:5056
	ds_load_u8 v174, v26 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v26 offset:4288
	ds_load_u8 v175, v26 offset:4160
	v_lshl_or_b32 v184, v173, 16, v172
	ds_load_u8 v172, v26 offset:5824
	ds_load_u8 v173, v26 offset:5696
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v26 offset:4544
	ds_load_u8 v176, v26 offset:4416
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v183, v175, 16, v174
	ds_load_u8 v173, v26 offset:6080
	ds_load_u8 v174, v26 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v26 offset:5312
	ds_load_u8 v175, v26 offset:5184
	v_lshl_or_b32 v186, v173, 16, v172
	ds_load_u8 v172, v26 offset:6848
	ds_load_u8 v173, v26 offset:6720
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v26 offset:5568
	ds_load_u8 v176, v26 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v185, v175, 16, v174
	ds_load_u8 v173, v26 offset:7104
	ds_load_u8 v174, v26 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v26 offset:6336
	ds_load_u8 v175, v26 offset:6208
	v_lshl_or_b32 v188, v173, 16, v172
	ds_load_u8 v172, v26 offset:7872
	ds_load_u8 v173, v26 offset:7744
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v26 offset:6592
	ds_load_u8 v176, v26 offset:6464
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v175, 16, v174
	ds_load_u8 v173, v26 offset:8128
	ds_load_u8 v174, v26 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	ds_load_u8 v174, v26 offset:7360
	ds_load_u8 v175, v26 offset:7232
	v_lshl_or_b32 v190, v173, 16, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v26 offset:7616
	ds_load_u8 v176, v26 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v189, v175, 16, v174
	v_wmma_i32_16x16x16_iu4 v[173:180], v[166:167], v[13:14], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[168:169], v[17:18], v[173:180] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[173:180], v[170:171], v[21:22], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[181:182], v[23:24], v[173:180] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[173:180], v[183:184], v[19:20], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[185:186], v[15:16], v[173:180] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[173:180], v[187:188], v[11:12], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[189:190], v[9:10], v[173:180] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v172, v174
	v_cvt_f32_i32_e32 v171, v175
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v174, v26 offset:720
	ds_load_u8 v175, v26 offset:592
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v170, v176
	v_cvt_f32_i32_e32 v169, v177
	v_cvt_f32_i32_e32 v168, v178
	v_cvt_f32_i32_e32 v167, v179
	v_cvt_f32_i32_e32 v166, v180
	v_cvt_f32_i32_e32 v173, v173
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v26 offset:976
	ds_load_u8 v176, v26 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	ds_load_u8 v176, v26 offset:208
	ds_load_u8 v177, v26 offset:80
	v_lshl_or_b32 v175, v175, 16, v174
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v26 offset:464
	ds_load_u8 v178, v26 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v177, 16, v176
	ds_load_u8 v176, v26 offset:1744
	ds_load_u8 v177, v26 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v176, v177, v176, 0xc0c0004
	ds_load_u8 v177, v26 offset:2000
	ds_load_u8 v178, v26 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	ds_load_u8 v178, v26 offset:1232
	ds_load_u8 v179, v26 offset:1104
	v_lshl_or_b32 v177, v177, 16, v176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	ds_load_u8 v179, v26 offset:1488
	ds_load_u8 v180, v26 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v179, 16, v178
	ds_load_u8 v178, v26 offset:2768
	ds_load_u8 v179, v26 offset:2640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	ds_load_u8 v179, v26 offset:3024
	ds_load_u8 v180, v26 offset:2896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v26 offset:2256
	ds_load_u8 v181, v26 offset:2128
	v_lshl_or_b32 v179, v179, 16, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v26 offset:2512
	ds_load_u8 v182, v26 offset:2384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v178, v181, 16, v180
	ds_load_u8 v180, v26 offset:3792
	ds_load_u8 v181, v26 offset:3664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v26 offset:4048
	ds_load_u8 v182, v26 offset:3920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v26 offset:3280
	ds_load_u8 v183, v26 offset:3152
	v_lshl_or_b32 v190, v181, 16, v180
	ds_load_u8 v180, v26 offset:4816
	ds_load_u8 v181, v26 offset:4688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v26 offset:3536
	ds_load_u8 v184, v26 offset:3408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v189, v183, 16, v182
	ds_load_u8 v181, v26 offset:5072
	ds_load_u8 v182, v26 offset:4944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v26 offset:4304
	ds_load_u8 v183, v26 offset:4176
	v_lshl_or_b32 v192, v181, 16, v180
	ds_load_u8 v180, v26 offset:5840
	ds_load_u8 v181, v26 offset:5712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v26 offset:4560
	ds_load_u8 v184, v26 offset:4432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v183, 16, v182
	ds_load_u8 v181, v26 offset:6096
	ds_load_u8 v182, v26 offset:5968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v26 offset:5328
	ds_load_u8 v183, v26 offset:5200
	v_lshl_or_b32 v194, v181, 16, v180
	ds_load_u8 v180, v26 offset:6864
	ds_load_u8 v181, v26 offset:6736
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v26 offset:5584
	ds_load_u8 v184, v26 offset:5456
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v193, v183, 16, v182
	ds_load_u8 v181, v26 offset:7120
	ds_load_u8 v182, v26 offset:6992
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v26 offset:6352
	ds_load_u8 v183, v26 offset:6224
	v_lshl_or_b32 v196, v181, 16, v180
	ds_load_u8 v180, v26 offset:7888
	ds_load_u8 v181, v26 offset:7760
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v26 offset:6608
	ds_load_u8 v184, v26 offset:6480
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v195, v183, 16, v182
	ds_load_u8 v181, v26 offset:8144
	ds_load_u8 v182, v26 offset:8016
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v26 offset:7376
	ds_load_u8 v183, v26 offset:7248
	v_lshl_or_b32 v198, v181, 16, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v26 offset:7632
	ds_load_u8 v184, v26 offset:7504
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v197, v183, 16, v182
	v_wmma_i32_16x16x16_iu4 v[181:188], v[174:175], v[13:14], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[176:177], v[17:18], v[181:188] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[181:188], v[178:179], v[21:22], v[181:188] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[189:190], v[23:24], v[181:188] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[181:188], v[191:192], v[19:20], v[181:188] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[193:194], v[15:16], v[181:188] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[181:188], v[195:196], v[11:12], v[181:188] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[197:198], v[9:10], v[181:188] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v180, v182
	v_cvt_f32_i32_e32 v179, v183
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v182, v26 offset:736
	ds_load_u8 v183, v26 offset:608
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v178, v184
	v_cvt_f32_i32_e32 v177, v185
	v_cvt_f32_i32_e32 v176, v186
	v_cvt_f32_i32_e32 v175, v187
	v_cvt_f32_i32_e32 v174, v188
	v_cvt_f32_i32_e32 v181, v181
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v26 offset:992
	ds_load_u8 v184, v26 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v184, v26 offset:224
	ds_load_u8 v185, v26 offset:96
	v_lshl_or_b32 v183, v183, 16, v182
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v26 offset:480
	ds_load_u8 v186, v26 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v185, 16, v184
	ds_load_u8 v184, v26 offset:1760
	ds_load_u8 v185, v26 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v26 offset:2016
	ds_load_u8 v186, v26 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	ds_load_u8 v186, v26 offset:1248
	ds_load_u8 v187, v26 offset:1120
	v_lshl_or_b32 v185, v185, 16, v184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v26 offset:1504
	ds_load_u8 v188, v26 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v184, v187, 16, v186
	ds_load_u8 v186, v26 offset:2784
	ds_load_u8 v187, v26 offset:2656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v26 offset:3040
	ds_load_u8 v188, v26 offset:2912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v26 offset:2272
	ds_load_u8 v189, v26 offset:2144
	v_lshl_or_b32 v187, v187, 16, v186
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v26 offset:2528
	ds_load_u8 v190, v26 offset:2400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v189, 16, v188
	ds_load_u8 v188, v26 offset:3808
	ds_load_u8 v189, v26 offset:3680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v26 offset:4064
	ds_load_u8 v190, v26 offset:3936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v26 offset:3296
	ds_load_u8 v191, v26 offset:3168
	v_lshl_or_b32 v198, v189, 16, v188
	ds_load_u8 v188, v26 offset:4832
	ds_load_u8 v189, v26 offset:4704
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v26 offset:3552
	ds_load_u8 v192, v26 offset:3424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v197, v191, 16, v190
	ds_load_u8 v189, v26 offset:5088
	ds_load_u8 v190, v26 offset:4960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v26 offset:4320
	ds_load_u8 v191, v26 offset:4192
	v_lshl_or_b32 v200, v189, 16, v188
	ds_load_u8 v188, v26 offset:5856
	ds_load_u8 v189, v26 offset:5728
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v26 offset:4576
	ds_load_u8 v192, v26 offset:4448
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v199, v191, 16, v190
	ds_load_u8 v189, v26 offset:6112
	ds_load_u8 v190, v26 offset:5984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v26 offset:5344
	ds_load_u8 v191, v26 offset:5216
	v_lshl_or_b32 v202, v189, 16, v188
	ds_load_u8 v188, v26 offset:6880
	ds_load_u8 v189, v26 offset:6752
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v26 offset:5600
	ds_load_u8 v192, v26 offset:5472
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v201, v191, 16, v190
	ds_load_u8 v189, v26 offset:7136
	ds_load_u8 v190, v26 offset:7008
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v26 offset:6368
	ds_load_u8 v191, v26 offset:6240
	v_lshl_or_b32 v204, v189, 16, v188
	ds_load_u8 v188, v26 offset:7904
	ds_load_u8 v189, v26 offset:7776
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v26 offset:6624
	ds_load_u8 v192, v26 offset:6496
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v203, v191, 16, v190
	ds_load_u8 v189, v26 offset:8160
	ds_load_u8 v190, v26 offset:8032
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v26 offset:7392
	ds_load_u8 v191, v26 offset:7264
	v_lshl_or_b32 v206, v189, 16, v188
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v26 offset:7648
	ds_load_u8 v192, v26 offset:7520
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v205, v191, 16, v190
	v_wmma_i32_16x16x16_iu4 v[189:196], v[182:183], v[13:14], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[184:185], v[17:18], v[189:196] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[186:187], v[21:22], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[197:198], v[23:24], v[189:196] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[199:200], v[19:20], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[201:202], v[15:16], v[189:196] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[203:204], v[11:12], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[205:206], v[9:10], v[189:196] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v188, v190
	v_cvt_f32_i32_e32 v187, v191
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v190, v26 offset:240
	ds_load_u8 v191, v26 offset:112
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v186, v192
	v_cvt_f32_i32_e32 v185, v193
	v_cvt_f32_i32_e32 v184, v194
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v183, v195
	v_cvt_f32_i32_e32 v182, v196
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v26 offset:496
	ds_load_u8 v192, v26 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	ds_load_u8 v192, v26 offset:752
	ds_load_u8 v193, v26 offset:624
	v_lshl_or_b32 v190, v191, 16, v190
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	ds_load_u8 v193, v36
	ds_load_u8 v194, v26 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v191, v193, 16, v192
	v_wmma_i32_16x16x16_iu4 v[0:7], v[190:191], v[13:14], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v13, v26 offset:1264
	ds_load_u8 v14, v26 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v26 offset:1520
	ds_load_u8 v190, v26 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v190, v14, 0xc0c0004
	ds_load_u8 v190, v26 offset:1776
	ds_load_u8 v191, v26 offset:1648
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v38
	ds_load_u8 v192, v26 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v191, 16, v190
	v_wmma_i32_16x16x16_iu4 v[0:7], v[13:14], v[17:18], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v13, v26 offset:2288
	ds_load_u8 v14, v26 offset:2160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v26 offset:2544
	ds_load_u8 v17, v26 offset:2416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	ds_load_u8 v17, v26 offset:2800
	ds_load_u8 v18, v26 offset:2672
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v39
	ds_load_u8 v190, v26 offset:2928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v190, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[0:7], v[13:14], v[21:22], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v13, v26 offset:3312
	ds_load_u8 v14, v26 offset:3184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v26 offset:3568
	ds_load_u8 v17, v26 offset:3440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	ds_load_u8 v17, v26 offset:3824
	ds_load_u8 v18, v26 offset:3696
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v40
	ds_load_u8 v21, v26 offset:3952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v21, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[0:7], v[13:14], v[23:24], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v13, v26 offset:4336
	ds_load_u8 v14, v26 offset:4208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v26 offset:4592
	ds_load_u8 v17, v26 offset:4464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	ds_load_u8 v17, v26 offset:4848
	ds_load_u8 v18, v26 offset:4720
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v41
	ds_load_u8 v21, v26 offset:4976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v21, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[0:7], v[13:14], v[19:20], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v13, v26 offset:5360
	ds_load_u8 v14, v26 offset:5232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v26 offset:5616
	ds_load_u8 v17, v26 offset:5488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v17, v14, 0xc0c0004
	ds_load_u8 v17, v26 offset:5872
	ds_load_u8 v18, v26 offset:5744
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v42
	ds_load_u8 v19, v26 offset:6000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[0:7], v[13:14], v[15:16], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v13, v26 offset:6384
	ds_load_u8 v14, v26 offset:6256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v26 offset:6640
	ds_load_u8 v15, v26 offset:6512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	ds_load_u8 v15, v26 offset:6896
	ds_load_u8 v16, v26 offset:6768
	v_lshl_or_b32 v13, v14, 16, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v43
	ds_load_u8 v17, v26 offset:7024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v14, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[0:7], v[13:14], v[11:12], v[0:7] neg_lo:[1,1,0]
	ds_load_u8 v11, v26 offset:7408
	ds_load_u8 v12, v26 offset:7280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v26 offset:7664
	ds_load_u8 v13, v26 offset:7536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	ds_load_u8 v13, v26 offset:7920
	ds_load_u8 v14, v26 offset:7792
	v_lshl_or_b32 v11, v12, 16, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v44
	ds_load_u8 v15, v26 offset:8048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v12, v14, 16, v13
	v_wmma_i32_16x16x16_iu4 v[0:7], v[11:12], v[9:10], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v9, v3
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v3, v130, s[8:11], 0 offen
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v12, v0
	v_cvt_f32_i32_e32 v10, v2
	v_cvt_f32_i32_e32 v2, v5
	v_cvt_f32_i32_e32 v0, v7
	v_cvt_f32_i32_e32 v11, v1
	v_cvt_f32_i32_e32 v1, v6
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v130, 2, v130
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v141, v3
	v_dual_mul_f32 v2, v2, v3 :: v_dual_add_nc_u32 v5, s48, v128
	v_mul_f32_e32 v1, v1, v3
	v_mul_f32_e32 v0, v0, v3
	v_mul_f32_e32 v4, v4, v3
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v128, s43, v128
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v116, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:4
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v140, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v125, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:8
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v139, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v123, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:12
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v138, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v121, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:16
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v137, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v118, v7, v6 :: v_dual_mul_f32 v7, v136, v3
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:20
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v115, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:24
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v135, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v113, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:28
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v134, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v110, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:32
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v149, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v108, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:36
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v148, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v93, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:40
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v147, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v91, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:44
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v146, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v88, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:48
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v145, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v86, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:52
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v144, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v84, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:56
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v143, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v83, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:60
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v142, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v80, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:64
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v157, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v126, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:68
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v156, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v124, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:72
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v155, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v122, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:76
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v154, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v120, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:80
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v153, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v117, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:84
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v152, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v114, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:88
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v151, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v112, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:92
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v150, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v109, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:96
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v165, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v107, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:100
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v164, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v92, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:104
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v163, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v90, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:108
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v162, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v87, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:112
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v161, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v85, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:116
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v160, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v82, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:120
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v159, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v81, v7, v6 :: v_dual_add_nc_u32 v6, s48, v129
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v7, v158, v3
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v129, s43, v129
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v6, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v79, v7, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:128
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v173, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v119, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:132
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v172, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v111, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:136
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v171, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v106, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:140
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v170, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v103, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:144
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v169, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v101, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:148
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v168, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v99, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:152
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v167, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v97, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:156
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v166, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v95, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:160
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v181, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v78, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:164
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v180, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v77, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:168
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v179, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v75, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:172
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v178, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v73, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:176
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v177, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v72, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:180
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v176, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v69, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:184
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v175, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v68, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:188
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v174, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v66, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:192
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v189, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v105, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:196
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v188, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v104, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:200
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v187, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v102, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:204
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v186, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v100, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:208
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v185, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v98, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:212
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v184, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v96, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:216
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v183, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v94, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:220
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v182, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v89, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:224
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v12, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v76, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:228
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v11, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v74, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:232
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v10, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v71, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:236
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v9, v3 :: v_dual_lshlrev_b32 v6, 16, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v70, v7, v6
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	buffer_load_u16 v6, v5, s[24:27], 0 offen offset:240
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v67, v4, v6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v4, v5, s[24:27], 0 offen offset:244
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v65, v2, v4
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v2, v5, s[24:27], 0 offen offset:248
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v64, v1, v2 :: v_dual_add_nc_u32 v1, s48, v127
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v127, s43, v127
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v1, v1, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v63, v0, v1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_4
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_add_nc_u32_e32 v0, 0, v27
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s47, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s46, s46, s29
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v0, v116, v126 offset1:32
	ds_store_2addr_b32 v0, v119, v105 offset0:64 offset1:96
	ds_store_2addr_b32 v45, v125, v124 offset1:32
	ds_store_2addr_b32 v45, v111, v104 offset0:64 offset1:96
	ds_store_2addr_b32 v46, v123, v122 offset1:32
	ds_store_2addr_b32 v46, v106, v102 offset0:64 offset1:96
	ds_store_2addr_b32 v47, v121, v120 offset1:32
	ds_store_2addr_b32 v47, v103, v100 offset0:64 offset1:96
	ds_store_2addr_b32 v48, v118, v117 offset1:32
	ds_store_2addr_b32 v48, v101, v98 offset0:64 offset1:96
	ds_store_2addr_b32 v49, v115, v114 offset1:32
	ds_store_2addr_b32 v49, v99, v96 offset0:64 offset1:96
	ds_store_2addr_b32 v50, v113, v112 offset1:32
	ds_store_2addr_b32 v50, v97, v94 offset0:64 offset1:96
	ds_store_2addr_b32 v51, v110, v109 offset1:32
	ds_store_2addr_b32 v51, v95, v89 offset0:64 offset1:96
	ds_store_2addr_b32 v52, v108, v107 offset1:32
	v_add3_u32 v0, s46, s6, v8
	ds_store_2addr_b32 v52, v78, v76 offset0:64 offset1:96
	ds_store_2addr_b32 v53, v93, v92 offset1:32
	ds_store_2addr_b32 v53, v77, v74 offset0:64 offset1:96
	ds_store_2addr_b32 v54, v91, v90 offset1:32
	ds_store_2addr_b32 v54, v75, v71 offset0:64 offset1:96
	ds_store_2addr_b32 v55, v88, v87 offset1:32
	ds_store_2addr_b32 v55, v73, v70 offset0:64 offset1:96
	ds_store_2addr_b32 v56, v86, v85 offset1:32
	ds_store_2addr_b32 v56, v72, v67 offset0:64 offset1:96
	ds_store_2addr_b32 v57, v84, v82 offset1:32
	ds_store_2addr_b32 v57, v69, v65 offset0:64 offset1:96
	ds_store_2addr_b32 v58, v83, v81 offset1:32
	ds_store_2addr_b32 v58, v68, v64 offset0:64 offset1:96
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_store_2addr_b32 v59, v80, v79 offset1:32
	ds_store_2addr_b32 v59, v66, v63 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v3, 0, v28
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[1:2], 2, v[0:1]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_load_b32 v9, v3
	ds_load_b32 v7, v60
	ds_load_b32 v6, v61
	ds_load_b32 v5, v62
	s_mov_b32 s6, 0
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_add_co_u32 v1, vcc_lo, s30, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s31, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_6:                                ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v3, v4, v9
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v1, s39, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s30, v1
	v_add_co_ci_u32_e64 v2, null, s31, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_8:                                ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v3, v4, v7
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v1, s40, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s30, v1
	v_add_co_ci_u32_e64 v2, null, s31, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_10:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v3, v4, v6
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	v_add_nc_u32_e32 v0, s41, v0
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s30, v0
	v_add_co_ci_u32_e64 v1, null, s31, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_12:                               ; %atomicrmw.start
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s6, vcc_lo, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s6
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s6
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s34
	s_cbranch_scc1 .LBB0_2
.LBB0_14:                               ; %._crit_edge9
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
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
		.amdhsa_next_free_vgpr 207
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.num_vgpr, 207
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15624
; TotalNumSgprs: 52
; NumVgprs: 207
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 207
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     207
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
