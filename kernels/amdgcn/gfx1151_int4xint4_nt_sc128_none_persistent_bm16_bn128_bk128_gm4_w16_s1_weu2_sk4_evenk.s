	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
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
	v_lshlrev_b32_e32 v8, 2, v0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_and_b32_e32 v16, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v17, 3, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s34, s12, 2
	v_lshlrev_b32_e32 v7, 1, v0
	v_and_b32_e32 v8, 56, v8
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v4, 3, v0
	v_and_b32_e32 v9, 56, v17
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v2, 0x1e0, v0
	v_and_b32_e32 v5, 0x180, v0
	v_lshl_or_b32 v11, v16, 6, v8
	v_lshrrev_b32_e32 v8, 1, v0
	v_xor_b32_e32 v12, v7, v9
	v_and_b32_e32 v7, 60, v7
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_and_b32_e32 v3, 31, v0
	v_lshrrev_b32_e32 v5, 5, v5
	v_and_b32_e32 v8, 56, v8
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s13, 0x7f
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
	s_lshr_b32 s1, s1, 25
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s35, s13, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_xor_b32_e32 v33, v4, v8
	s_ashr_i32 s36, s1, 7
	s_cmpk_gt_i32 s0, 0x7f
	v_lshl_or_b32 v2, v2, 2, v7
	s_cselect_b32 s37, -1, 0
	s_abs_i32 s38, s34
	v_lshlrev_b32_e32 v9, 2, v3
	s_cvt_f32_u32 s0, s38
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v15, 5, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v6, 7, v0
	v_rcp_iflag_f32_e32 v8, s0
	v_lshlrev_b32_e32 v0, 6, v0
	v_xor_b32_e32 v2, v2, v5
	v_lshl_or_b32 v19, v16, 9, v9
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v10, 62, v17
	v_xor_b32_e32 v13, 8, v11
	v_xor_b32_e32 v14, 16, v11
	v_and_or_b32 v20, v0, 64, v2
	v_xor_b32_e32 v2, 56, v19
	v_xor_b32_e32 v28, 24, v11
	v_readfirstlane_b32 s0, v8
	v_xor_b32_e32 v29, 32, v11
	v_xor_b32_e32 v30, 40, v11
	v_xor_b32_e32 v31, 48, v11
	v_xor_b32_e32 v32, 56, v11
	s_mul_f32 s0, s0, 0x4f7ffffe
	v_xor_b32_e32 v34, 4, v19
	v_xor_b32_e32 v35, 8, v19
	v_xor_b32_e32 v36, 12, v19
	v_xor_b32_e32 v37, 16, v19
	v_xor_b32_e32 v38, 20, v19
	v_xor_b32_e32 v39, 24, v19
	v_xor_b32_e32 v7, 28, v19
	v_xor_b32_e32 v41, 32, v19
	v_xor_b32_e32 v5, 36, v19
	v_xor_b32_e32 v43, 40, v19
	v_xor_b32_e32 v44, 44, v19
	v_xor_b32_e32 v45, 48, v19
	v_xor_b32_e32 v0, 52, v19
	v_xor_b32_e32 v48, 60, v19
	v_xor_b32_e32 v49, 0x810, v20
	v_xor_b32_e32 v50, 0x1020, v20
	v_xor_b32_e32 v51, 0x1830, v20
	s_cvt_u32_f32 s0, s0
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[8:9], null, s29, v6, v[1:2]
	s_sub_i32 s1, 0, s38
	s_lshl_b32 s3, s3, 6
	s_mul_i32 s1, s1, s0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v18, 64, v17
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v21, 0xfc, v10
	v_and_b32_e32 v22, 2, v17
	v_or_b32_e32 v23, 0x7c, v10
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v9, v3, 1, s3
	v_and_or_b32 v10, v4, 56, s3
	v_add_nc_u32_e32 v24, 0, v12
	v_add_nc_u32_e32 v25, 0, v11
	v_add_nc_u32_e32 v26, 0, v13
	v_add_nc_u32_e32 v27, 0, v14
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	v_add_nc_u32_e32 v30, 0, v30
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v32
	v_add_nc_u32_e32 v33, 0, v33
	v_add_nc_u32_e32 v34, 0, v34
	v_add_nc_u32_e32 v35, 0, v35
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v37, 0, v37
	v_add_nc_u32_e32 v38, 0, v38
	v_add_nc_u32_e32 v39, 0, v39
	v_add_nc_u32_e32 v40, 0, v7
	v_add_nc_u32_e32 v41, 0, v41
	v_add_nc_u32_e32 v42, 0, v5
	v_add_nc_u32_e32 v43, 0, v43
	v_add_nc_u32_e32 v44, 0, v44
	v_add_nc_u32_e32 v45, 0, v45
	v_add_nc_u32_e32 v46, 0, v0
	v_add_nc_u32_e32 v47, 0, v2
	v_add_nc_u32_e32 v48, 0, v48
	v_add_nc_u32_e32 v49, 0, v49
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v51, 0, v51
	s_mul_hi_u32 s1, s0, s1
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s20, s4
	s_and_b32 s21, s5, 0xffff
	s_mov_b32 s22, 0x7ffffffe
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
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v53, 0
	s_sub_i32 s0, s0, s6
	s_add_i32 s6, s3, 1
	s_sub_i32 s7, s0, s38
	s_cmp_ge_u32 s0, s38
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	s_cselect_b32 s3, s6, s3
	s_cselect_b32 s0, s7, s0
	s_add_i32 s6, s3, 1
	s_cmp_ge_u32 s0, s38
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	s_cselect_b32 s0, s6, s3
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v77, 0
	s_xor_b32 s0, s0, s1
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v93, 0
	s_sub_i32 s0, s0, s1
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v57, 0
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
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v61, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s6
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v63, 0
	s_cvt_f32_u32 s1, s7
	s_sub_i32 s10, 0, s7
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v65, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s1
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v91, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s1, v0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v107, 0
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v78, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s1, s1
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v100, 0
	s_mul_i32 s10, s10, s1
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v102, 0
	s_mul_hi_u32 s0, s1, s10
	s_abs_i32 s10, s11
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v104, 0
	s_mul_hi_u32 s0, s10, s1
	s_xor_b32 s1, s11, s6
	s_mul_i32 s13, s0, s7
	s_ashr_i32 s1, s1, 31
	s_sub_i32 s10, s10, s13
	s_add_i32 s13, s0, 1
	s_sub_i32 s14, s10, s7
	s_cmp_ge_u32 s10, s7
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v71, 0
	s_cselect_b32 s0, s13, s0
	s_cselect_b32 s10, s14, s10
	s_add_i32 s13, s0, 1
	s_cmp_ge_u32 s10, s7
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v79, 0
	s_cselect_b32 s0, s13, s0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v81, 0
	s_xor_b32 s0, s0, s1
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v101, 0
	s_sub_i32 s47, s0, s1
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v103, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s6, s47, s6
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v105, 0
	s_sub_i32 s6, s11, s6
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v106, 0
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
	s_lshl_b32 s3, s1, 8
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v3, s46, v15
	v_subrev_nc_u32_e32 v115, s3, v21
	v_subrev_nc_u32_e32 v116, s3, v22
	v_subrev_nc_u32_e32 v117, s3, v23
	s_lshl_b32 s3, s0, 7
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v0, s46, v16
	v_or_b32_e32 v1, s3, v18
	v_or_b32_e32 v2, s3, v17
	v_mad_u64_u32 v[11:12], null, s35, v3, v[9:10]
	s_lshl_b32 s1, s1, 7
	v_mul_lo_u32 v118, s45, v0
	v_subrev_nc_u32_e32 v0, s1, v1
	v_subrev_nc_u32_e32 v1, s1, v2
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v96, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[12:13], null, s35, v0, v[10:11]
	v_mad_u64_u32 v[13:14], null, s35, v1, v[10:11]
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v14, 0
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
	v_dual_mov_b32 v0, s12 :: v_dual_add_nc_u32 v121, s49, v9
	v_dual_mov_b32 v1, s13 :: v_dual_add_nc_u32 v122, s49, v10
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e32 vcc_lo, 64, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 259 31 is_stmt 0              ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s1, s35, v121
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s0, 64, v10
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s3, s35, v122
	.loc	1 271 31 is_stmt 1              ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v2, s14 :: v_dual_add_nc_u32 v123, s49, v11
	v_dual_mov_b32 v3, s15 :: v_dual_add_nc_u32 v124, s49, v13
	v_dual_mov_b32 v4, s16 :: v_dual_add_nc_u32 v125, s49, v12
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s1, vcc_lo
	s_and_b32 s0, s3, s0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v121, 0x80000000, v123, vcc_lo
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_cndmask_b32_e64 v122, 0x80000000, v124, s0
	v_cndmask_b32_e64 v123, 0x80000000, v125, s0
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u16 v125, v121, s[20:23], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_clause 0x1
	buffer_load_b64 v[121:122], v122, s[4:7], 0 offen
	buffer_load_b64 v[123:124], v123, s[4:7], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v6, s18 :: v_dual_add_nc_u32 v119, s48, v116
	v_dual_mov_b32 v5, s17 :: v_dual_add_nc_u32 v120, s48, v115
	v_mov_b32_e32 v7, s19
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s50, s50, -1
	s_add_i32 s49, s49, 64
	s_cmp_lg_u32 s50, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(2)
	ds_store_b16 v24, v125
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[168:169], v25
	ds_load_b64 v[170:171], v26
	ds_load_b64 v[172:173], v27
	ds_load_b64 v[174:175], v28
	ds_load_b64 v[176:177], v29
	ds_load_b64 v[208:209], v30
	ds_load_b64 v[210:211], v31
	ds_load_b64 v[212:213], v32
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v33, v[121:122], v[123:124] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[135:138], v25 offset1:2
	ds_load_2addr_stride64_b64 v[151:154], v25 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[155:158], v25 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[160:163], v25 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[164:167], v26 offset1:2
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x5
	buffer_load_u16 v183, v119, s[24:27], 0 offen
	buffer_load_u16 v182, v119, s[24:27], 0 offen offset:12
	buffer_load_u16 v178, v119, s[24:27], 0 offen offset:16
	buffer_load_u16 v180, v119, s[24:27], 0 offen offset:20
	buffer_load_u16 v181, v119, s[24:27], 0 offen offset:24
	buffer_load_u16 v179, v119, s[24:27], 0 offen offset:28
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[135:136], v[168:169], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[137:138], v[168:169], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[151:152], v[168:169], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[153:154], v[168:169], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[184:191], v[155:156], v[168:169], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[157:158], v[168:169], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[160:161], v[168:169], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[162:163], v[168:169], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v26 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[160:163], v26 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[164:165], v[170:171], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[166:167], v[170:171], v[129:136] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[164:167], v26 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[153:154], v[170:171], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[155:156], v[170:171], v[145:152] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v27 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[184:191], v[160:161], v[170:171], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[162:163], v[170:171], v[192:199] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[160:163], v27 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[164:165], v[170:171], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[166:167], v[170:171], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[164:167], v27 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[168:171], v28 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[172:173], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[155:156], v[172:173], v[129:136] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v27 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[160:161], v[172:173], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[162:163], v[172:173], v[145:152] neg_lo:[1,1,0]
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v160, v118, s[8:11], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[184:191], v[164:165], v[172:173], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[166:167], v[172:173], v[192:199] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[161:164], v28 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[168:169], v[174:175], v[121:128] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[165:168], v28 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[129:136], v[170:171], v[174:175], v[129:136] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v171, v119, s[24:27], 0 offen offset:36
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v118, 2, v118
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[153:154], v[172:173], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[155:156], v[172:173], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v28 offset0:8 offset1:10
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v173, v119, s[24:27], 0 offen offset:4
	buffer_load_u16 v170, v119, s[24:27], 0 offen offset:8
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[161:162], v[174:175], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[163:164], v[174:175], v[145:152] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[161:164], v29 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[165:166], v[174:175], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[167:168], v[174:175], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[165:168], v29 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[184:191], v[153:154], v[174:175], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[155:156], v[174:175], v[192:199] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v29 offset0:4 offset1:6
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v174, v119, s[24:27], 0 offen offset:32
	buffer_load_u16 v175, v119, s[24:27], 0 offen offset:40
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[161:162], v[176:177], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[163:164], v[176:177], v[129:136] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[161:164], v29 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[184:191], v[165:166], v[176:177], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[167:168], v[176:177], v[192:199] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v172, v119, s[24:27], 0 offen offset:44
	buffer_load_u16 v168, v119, s[24:27], 0 offen offset:48
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[153:154], v[176:177], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[155:156], v[176:177], v[145:152] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v30 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[161:162], v[176:177], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[163:164], v[176:177], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[161:164], v30 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[208:209], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[155:156], v[208:209], v[129:136] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v30 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[161:162], v[208:209], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[163:164], v[208:209], v[145:152] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[161:164], v30 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[184:191], v[153:154], v[208:209], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[155:156], v[208:209], v[192:199] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v31 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[161:162], v[208:209], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[163:164], v[208:209], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[161:164], v31 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[210:211], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[155:156], v[210:211], v[129:136] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v31 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[161:162], v[210:211], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[163:164], v[210:211], v[145:152] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x4
	buffer_load_u16 v165, v119, s[24:27], 0 offen offset:60
	buffer_load_u16 v163, v119, s[24:27], 0 offen offset:64
	buffer_load_u16 v164, v119, s[24:27], 0 offen offset:52
	buffer_load_u16 v162, v119, s[24:27], 0 offen offset:56
	buffer_load_u16 v161, v119, s[24:27], 0 offen offset:68
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[184:191], v[153:154], v[210:211], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[155:156], v[210:211], v[192:199] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v31 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[153:154], v[210:211], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[155:156], v[210:211], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v32 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[153:154], v[212:213], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[129:136], v[155:156], v[212:213], v[129:136] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v32 offset0:4 offset1:6
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v208, v121
	v_cvt_f32_i32_e32 v209, v122
	v_cvt_f32_i32_e32 v210, v123
	v_cvt_f32_i32_e32 v176, v135
	v_cvt_f32_i32_e32 v169, v136
	v_cvt_f32_i32_e32 v211, v124
	v_cvt_f32_i32_e32 v214, v127
	v_cvt_f32_i32_e32 v215, v128
	v_cvt_f32_i32_e32 v216, v129
	v_cvt_f32_i32_e32 v219, v132
	v_cvt_f32_i32_e32 v217, v130
	v_cvt_f32_i32_e32 v218, v131
	v_cvt_f32_i32_e32 v220, v133
	v_cvt_f32_i32_e32 v177, v134
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[153:154], v[212:213], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[145:152], v[155:156], v[212:213], v[145:152] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v32 offset0:8 offset1:10
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v167, v137
	v_cvt_f32_i32_e32 v166, v138
	v_cvt_f32_i32_e32 v121, v139
	v_cvt_f32_i32_e32 v122, v140
	v_cvt_f32_i32_e32 v123, v141
	v_cvt_f32_i32_e32 v124, v142
	v_cvt_f32_i32_e32 v127, v145
	v_cvt_f32_i32_e32 v129, v147
	v_cvt_f32_i32_e32 v128, v146
	v_cvt_f32_i32_e32 v130, v148
	v_cvt_f32_i32_e32 v131, v149
	v_cvt_f32_i32_e32 v132, v150
	v_cvt_f32_i32_e32 v133, v151
	v_cvt_f32_i32_e32 v134, v152
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[184:191], v[153:154], v[212:213], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[155:156], v[212:213], v[192:199] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[153:156], v32 offset0:12 offset1:14
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v135, v184
	v_cvt_f32_i32_e32 v136, v185
	v_cvt_f32_i32_e32 v137, v186
	v_cvt_f32_i32_e32 v138, v187
	v_cvt_f32_i32_e32 v139, v188
	v_cvt_f32_i32_e32 v140, v189
	v_cvt_f32_i32_e32 v141, v190
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x6
	buffer_load_u16 v184, v119, s[24:27], 0 offen offset:72
	buffer_load_u16 v185, v119, s[24:27], 0 offen offset:76
	buffer_load_u16 v186, v119, s[24:27], 0 offen offset:80
	buffer_load_u16 v187, v119, s[24:27], 0 offen offset:84
	buffer_load_u16 v188, v119, s[24:27], 0 offen offset:88
	buffer_load_u16 v189, v119, s[24:27], 0 offen offset:92
	buffer_load_u16 v190, v119, s[24:27], 0 offen offset:96
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v142, v191
	v_cvt_f32_i32_e32 v145, v194
	v_cvt_f32_i32_e32 v147, v196
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v178, 16, v178
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v146, v195
	v_cvt_f32_i32_e32 v148, v197
	v_cvt_f32_i32_e32 v149, v198
	v_cvt_f32_i32_e32 v150, v199
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v182, 16, v182
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[200:207], v[153:154], v[212:213], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[155:156], v[212:213], v[0:7] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v212, v125
	v_cvt_f32_i32_e32 v213, v126
	v_cvt_f32_i32_e32 v125, v143
	v_cvt_f32_i32_e32 v126, v144
	v_cvt_f32_i32_e32 v143, v192
	v_cvt_f32_i32_e32 v144, v193
	v_cvt_f32_i32_e32 v153, v202
	v_cvt_f32_i32_e32 v151, v200
	v_cvt_f32_i32_e32 v152, v201
	v_cvt_f32_i32_e32 v154, v203
	v_cvt_f32_i32_e32 v155, v204
	v_cvt_f32_i32_e32 v156, v205
	v_cvt_f32_i32_e32 v157, v206
	v_cvt_f32_i32_e32 v158, v207
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v180, 16, v180
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v183, 16, v183
	v_lshlrev_b32_e32 v179, 16, v179
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v124, v124, v160 :: v_dual_add_nc_u32 v115, s44, v115
	v_mul_f32_e32 v191, v208, v160
	v_mul_f32_e32 v192, v209, v160
	v_mul_f32_e32 v193, v210, v160
	v_mul_f32_e32 v194, v211, v160
	v_mul_f32_e32 v196, v213, v160
	v_mul_f32_e32 v176, v176, v160
	v_mul_f32_e32 v169, v169, v160
	v_mul_f32_e32 v197, v214, v160
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v109, v194, v182 :: v_dual_mul_f32 v198, v215, v160
	v_fmac_f32_e32 v103, v196, v180
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v202, v219, v160
	v_mul_f32_e32 v195, v212, v160
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v173, 16, v173
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v98, v198, v179
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v200, v217, v160 :: v_dual_fmac_f32 v105, v195, v178
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v113, v192, v173
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v111, v193, v170
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v167, v167, v160
	v_mul_f32_e32 v177, v177, v160
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v106, v191, v183 :: v_dual_add_nc_u32 v159, s48, v117
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0xe
	buffer_load_u16 v183, v119, s[24:27], 0 offen offset:100
	buffer_load_u16 v191, v119, s[24:27], 0 offen offset:104
	buffer_load_u16 v179, v119, s[24:27], 0 offen offset:160
	buffer_load_u16 v198, v119, s[24:27], 0 offen offset:164
	buffer_load_u16 v173, v119, s[24:27], 0 offen offset:108
	buffer_load_u16 v192, v119, s[24:27], 0 offen offset:112
	buffer_load_u16 v170, v119, s[24:27], 0 offen offset:116
	buffer_load_u16 v193, v119, s[24:27], 0 offen offset:120
	buffer_load_u16 v178, v119, s[24:27], 0 offen offset:136
	buffer_load_u16 v195, v119, s[24:27], 0 offen offset:140
	buffer_load_u16 v182, v119, s[24:27], 0 offen offset:128
	buffer_load_u16 v159, v159, s[24:27], 0 offen
	buffer_load_u16 v194, v119, s[24:27], 0 offen offset:132
	buffer_load_u16 v180, v119, s[24:27], 0 offen offset:144
	buffer_load_u16 v196, v119, s[24:27], 0 offen offset:148
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v126, v126, v160 :: v_dual_add_nc_u32 v117, s44, v117
	v_mul_f32_e32 v166, v166, v160
	v_mul_f32_e32 v122, v122, v160
	v_mul_f32_e32 v128, v128, v160
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v174, 16, v174
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v130, v130, v160
	v_mul_f32_e32 v132, v132, v160
	v_mul_f32_e32 v134, v134, v160
	v_mul_f32_e32 v136, v136, v160
	v_mul_f32_e32 v138, v138, v160
	v_mul_f32_e32 v121, v121, v160
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v172, 16, v172
	v_lshlrev_b32_e32 v171, 16, v171
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v168, 16, v168
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v140, v140, v160
	v_mul_f32_e32 v123, v123, v160
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v76, v202, v172 :: v_dual_fmac_f32 v81, v200, v171
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v172, v119, s[24:27], 0 offen offset:192
	buffer_load_u16 v202, v119, s[24:27], 0 offen offset:196
	buffer_load_u16 v171, v119, s[24:27], 0 offen offset:176
	buffer_load_u16 v200, v119, s[24:27], 0 offen offset:180
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v142, v142, v160
	v_mul_f32_e32 v125, v125, v160
	v_mul_f32_e32 v127, v127, v160
	v_mul_f32_e32 v150, v150, v160
	v_mul_f32_e32 v129, v129, v160
	v_mul_f32_e32 v144, v144, v160
	v_mul_f32_e32 v4, v4, v160
	v_mul_f32_e32 v6, v6, v160
	v_mul_f32_e32 v131, v131, v160
	v_mul_f32_e32 v146, v146, v160
	v_mul_f32_e32 v152, v152, v160
	v_mul_f32_e32 v148, v148, v160
	v_mul_f32_e32 v154, v154, v160
	v_mul_f32_e32 v133, v133, v160
	v_mul_f32_e32 v156, v156, v160
	v_mul_f32_e32 v158, v158, v160
	v_mul_f32_e32 v0, v0, v160
	v_mul_f32_e32 v137, v137, v160
	v_mul_f32_e32 v135, v135, v160
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v2, v2, v160 :: v_dual_lshlrev_b32 v165, 16, v165
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v203, v220, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v71, v176, v162 :: v_dual_lshlrev_b32 v164, 16, v164
	v_dual_fmac_f32 v112, v166, v161 :: v_dual_lshlrev_b32 v175, 16, v175
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v74, v203, v168
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v168, v119, s[24:27], 0 offen offset:200
	buffer_load_u16 v203, v119, s[24:27], 0 offen offset:204
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v72, v177, v164
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v164, v119, s[24:27], 0 offen offset:208
	buffer_load_u16 v177, v119, s[24:27], 0 offen offset:212
	buffer_load_u16 v162, v119, s[24:27], 0 offen offset:216
	buffer_load_u16 v176, v119, s[24:27], 0 offen offset:220
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v185, 16, v185
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v199, v216, v160 :: v_dual_lshlrev_b32 v186, 16, v186
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v68, v169, v165
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v181, 16, v181
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v201, v218, v160 :: v_dual_lshlrev_b32 v190, 16, v190
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v114, v167, v163
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v96, v199, v174 :: v_dual_fmac_f32 v101, v197, v181
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v174, v119, s[24:27], 0 offen offset:168
	buffer_load_u16 v199, v119, s[24:27], 0 offen offset:172
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v79, v201, v175
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0xb
	buffer_load_u16 v181, v119, s[24:27], 0 offen offset:152
	buffer_load_u16 v197, v119, s[24:27], 0 offen offset:156
	buffer_load_u16 v175, v119, s[24:27], 0 offen offset:184
	buffer_load_u16 v201, v119, s[24:27], 0 offen offset:188
	buffer_load_u16 v165, v119, s[24:27], 0 offen offset:224
	buffer_load_u16 v169, v119, s[24:27], 0 offen offset:228
	buffer_load_u16 v163, v119, s[24:27], 0 offen offset:232
	buffer_load_u16 v167, v119, s[24:27], 0 offen offset:236
	buffer_load_u16 v161, v119, s[24:27], 0 offen offset:240
	buffer_load_u16 v166, v119, s[24:27], 0 offen offset:244
	buffer_load_u16 v119, v119, s[24:27], 0 offen offset:248
	buffer_load_u16 v120, v120, s[24:27], 0 offen
	v_lshlrev_b32_e32 v187, 16, v187
	v_lshlrev_b32_e32 v189, 16, v189
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v95, v127, v190 :: v_dual_lshlrev_b32 v184, 16, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v139, v139, v160 :: v_dual_fmac_f32 v102, v124, v187
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v97, v126, v189 :: v_dual_add_nc_u32 v116, s44, v116
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v110, v121, v184
	v_fmac_f32_e32 v108, v122, v185
	s_waitcnt vmcnt(38)
	v_dual_fmac_f32 v104, v123, v186 :: v_dual_lshlrev_b32 v183, 16, v183
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(37)
	v_lshlrev_b32_e32 v191, 16, v191
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v173, 16, v173
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v170, 16, v170
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v178, 16, v178
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v143, v143, v160 :: v_dual_lshlrev_b32 v198, 16, v198
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v78, v129, v191
	v_dual_fmac_f32 v75, v130, v173 :: v_dual_lshlrev_b32 v188, 16, v188
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v193, 16, v193
	v_lshlrev_b32_e32 v192, 16, v192
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v159, 16, v159
	v_lshlrev_b32_e32 v182, 16, v182
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v194, 16, v194
	v_lshlrev_b32_e32 v195, 16, v195
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v67, v134, v159 :: v_dual_lshlrev_b32 v180, 16, v180
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v107, v135, v182 :: v_dual_lshlrev_b32 v196, 16, v196
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v141, v141, v160 :: v_dual_fmac_f32 v80, v128, v183
	v_dual_mul_f32 v145, v145, v160 :: v_dual_fmac_f32 v70, v132, v170
	v_dual_mul_f32 v147, v147, v160 :: v_dual_fmac_f32 v94, v137, v178
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v202, 16, v202
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v171, 16, v171
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v99, v136, v194 :: v_dual_lshlrev_b32 v200, 16, v200
	v_dual_fmac_f32 v91, v138, v195 :: v_dual_lshlrev_b32 v172, 16, v172
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v149, v149, v160 :: v_dual_fmac_f32 v66, v143, v179
	v_dual_mul_f32 v153, v153, v160 :: v_dual_fmac_f32 v60, v147, v171
	v_dual_mul_f32 v157, v157, v160 :: v_dual_fmac_f32 v92, v152, v202
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v100, v125, v188
	v_fmac_f32_e32 v69, v133, v193
	v_fmac_f32_e32 v65, v144, v198
	v_fmac_f32_e32 v57, v148, v200
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v203, 16, v203
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v1, v1, v160
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v176, 16, v176
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v3, v3, v160
	v_dual_mul_f32 v7, v7, v160 :: v_dual_fmac_f32 v88, v154, v203
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v82, v157, v162
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v84, v156, v177 :: v_dual_fmac_f32 v77, v158, v176
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v174, 16, v174
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v199, 16, v199
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v181, 16, v181
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v197, 16, v197
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v166, 16, v166
	v_lshlrev_b32_e32 v201, 16, v201
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v85, v141, v181 :: v_dual_lshlrev_b32 v168, 16, v168
	v_dual_fmac_f32 v83, v142, v197 :: v_dual_lshlrev_b32 v164, 16, v164
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v165, 16, v165
	v_lshlrev_b32_e32 v169, 16, v169
	v_lshlrev_b32_e32 v163, 16, v163
	v_lshlrev_b32_e32 v167, 16, v167
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v63, v145, v174 :: v_dual_lshlrev_b32 v120, 16, v120
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v151, v151, v160 :: v_dual_fmac_f32 v56, v149, v175
	v_dual_mul_f32 v155, v155, v160 :: v_dual_fmac_f32 v54, v150, v201
	v_dual_mul_f32 v5, v5, v160 :: v_dual_fmac_f32 v64, v0, v165
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v73, v131, v192 :: v_dual_fmac_f32 v62, v1, v169
	v_dual_fmac_f32 v89, v139, v180 :: v_dual_fmac_f32 v52, v6, v119
	v_dual_fmac_f32 v87, v140, v196 :: v_dual_fmac_f32 v58, v3, v167
	v_dual_fmac_f32 v61, v146, v199 :: v_dual_fmac_f32 v90, v153, v168
	v_fmac_f32_e32 v93, v151, v172
	v_dual_fmac_f32 v86, v155, v164 :: v_dual_fmac_f32 v59, v2, v163
	v_dual_fmac_f32 v55, v4, v161 :: v_dual_fmac_f32 v14, v7, v120
	v_fmac_f32_e32 v53, v5, v166
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_4
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_add_nc_u32_e32 v0, 0, v19
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s0, s47, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s46, s46, s29
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v0, v106, v114 offset1:32
	ds_store_2addr_b32 v0, v107, v93 offset0:64 offset1:96
	ds_store_2addr_b32 v34, v113, v112 offset1:32
	ds_store_2addr_b32 v34, v99, v92 offset0:64 offset1:96
	ds_store_2addr_b32 v35, v111, v110 offset1:32
	ds_store_2addr_b32 v35, v94, v90 offset0:64 offset1:96
	ds_store_2addr_b32 v36, v109, v108 offset1:32
	ds_store_2addr_b32 v36, v91, v88 offset0:64 offset1:96
	ds_store_2addr_b32 v37, v105, v104 offset1:32
	ds_store_2addr_b32 v37, v89, v86 offset0:64 offset1:96
	ds_store_2addr_b32 v38, v103, v102 offset1:32
	ds_store_2addr_b32 v38, v87, v84 offset0:64 offset1:96
	ds_store_2addr_b32 v39, v101, v100 offset1:32
	ds_store_2addr_b32 v39, v85, v82 offset0:64 offset1:96
	ds_store_2addr_b32 v40, v98, v97 offset1:32
	ds_store_2addr_b32 v40, v83, v77 offset0:64 offset1:96
	ds_store_2addr_b32 v41, v96, v95 offset1:32
	v_add3_u32 v0, s46, s0, v8
	ds_store_2addr_b32 v41, v66, v64 offset0:64 offset1:96
	ds_store_2addr_b32 v42, v81, v80 offset1:32
	ds_store_2addr_b32 v42, v65, v62 offset0:64 offset1:96
	ds_store_2addr_b32 v43, v79, v78 offset1:32
	ds_store_2addr_b32 v43, v63, v59 offset0:64 offset1:96
	ds_store_2addr_b32 v44, v76, v75 offset1:32
	ds_store_2addr_b32 v44, v61, v58 offset0:64 offset1:96
	ds_store_2addr_b32 v45, v74, v73 offset1:32
	ds_store_2addr_b32 v45, v60, v55 offset0:64 offset1:96
	ds_store_2addr_b32 v46, v72, v70 offset1:32
	ds_store_2addr_b32 v46, v57, v53 offset0:64 offset1:96
	ds_store_2addr_b32 v47, v71, v69 offset1:32
	ds_store_2addr_b32 v47, v56, v52 offset0:64 offset1:96
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_store_2addr_b32 v48, v68, v67 offset1:32
	ds_store_2addr_b32 v48, v54, v14 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v3, 0, v20
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[1:2], 2, v[0:1]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_load_b32 v11, v3
	ds_load_b32 v7, v49
	ds_load_b32 v6, v50
	ds_load_b32 v5, v51
	s_mov_b32 s0, 0
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_add_co_u32 v1, vcc_lo, s30, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s31, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_6:                                ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v3, v4, v11
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v1, s39, v0
	s_mov_b32 s0, 0
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
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v1, s40, v0
	s_mov_b32 s0, 0
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
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v0, s41, v0
	s_mov_b32 s0, 0
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 221
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
		.amdhsa_inst_pref_size 42
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.num_vgpr, 221
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5324
; TotalNumSgprs: 53
; NumVgprs: 221
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 221
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc128_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     221
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
