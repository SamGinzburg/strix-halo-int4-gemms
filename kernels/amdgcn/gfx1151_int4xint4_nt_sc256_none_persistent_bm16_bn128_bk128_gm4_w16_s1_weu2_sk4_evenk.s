	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
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
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v17, 3, v0
	v_lshlrev_b32_e32 v11, 1, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_and_b32_e32 v3, 31, v0
	.loc	1 258 43                        ; generate_amdgcn.py:258:43
	s_lshl_b32 s35, s3, 6
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v16, 15, v0
	v_and_b32_e32 v10, 56, v17
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v4, 3, v0
	v_lshlrev_b32_e32 v8, 1, v3
	v_lshlrev_b32_e32 v3, 2, v3
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s34, s12, 2
	v_xor_b32_e32 v13, v11, v10
	v_lshrrev_b32_e32 v10, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v2, 0x1e0, v0
	v_lshl_or_b32 v19, v16, 9, v3
	v_and_b32_e32 v5, 0x180, v0
	v_lshlrev_b32_e32 v7, 2, v0
	v_and_b32_e32 v10, 56, v10
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s13, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s3, s13, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s13, s13, s3
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 24
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s36, s13, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_xor_b32_e32 v3, v4, v10
	s_ashr_i32 s37, s1, 8
	s_cmpk_gt_i32 s0, 0xff
	v_and_b32_e32 v10, 60, v11
	s_cselect_b32 s38, -1, 0
	s_abs_i32 s39, s34
	v_lshrrev_b32_e32 v5, 5, v5
	s_cvt_f32_u32 s0, s39
	v_lshl_or_b32 v2, v2, 2, v10
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v15, 5, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7f, v0
	v_rcp_iflag_f32_e32 v10, s0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v6, 7, v0
	v_and_b32_e32 v7, 56, v7
	v_lshlrev_b32_e32 v0, 6, v0
	v_xor_b32_e32 v2, v2, v5
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_and_b32_e32 v9, 56, v4
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v12, 62, v17
	v_lshl_or_b32 v7, v16, 6, v7
	v_xor_b32_e32 v4, 4, v19
	v_and_or_b32 v20, v0, 64, v2
	v_readfirstlane_b32 s0, v10
	v_xor_b32_e32 v2, 52, v19
	v_xor_b32_e32 v14, 8, v7
	v_xor_b32_e32 v28, 16, v7
	v_xor_b32_e32 v29, 24, v7
	s_mul_f32 s1, s0, 0x4f7ffffe
	v_xor_b32_e32 v30, 32, v7
	v_xor_b32_e32 v31, 40, v7
	v_xor_b32_e32 v32, 48, v7
	v_xor_b32_e32 v33, 56, v7
	v_xor_b32_e32 v36, 8, v19
	v_xor_b32_e32 v37, 12, v19
	v_xor_b32_e32 v38, 16, v19
	v_xor_b32_e32 v39, 20, v19
	v_xor_b32_e32 v40, 24, v19
	v_xor_b32_e32 v41, 28, v19
	v_xor_b32_e32 v42, 32, v19
	v_xor_b32_e32 v5, 36, v19
	v_xor_b32_e32 v44, 40, v19
	v_xor_b32_e32 v45, 44, v19
	v_xor_b32_e32 v0, 48, v19
	v_xor_b32_e32 v48, 56, v19
	v_xor_b32_e32 v49, 60, v19
	v_xor_b32_e32 v50, 0x810, v20
	v_xor_b32_e32 v51, 0x1020, v20
	v_xor_b32_e32 v52, 0x1830, v20
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v22, s35, v9
	v_or_b32_e32 v23, s35, v8
	s_cvt_u32_f32 s3, s1
	s_mov_b32 s20, s4
	s_mov_b32 s4, s6
	v_mad_u64_u32 v[10:11], null, s29, v6, v[1:2]
	s_sub_i32 s6, 0, s39
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_or_b32_e32 v18, 64, v17
	s_mul_i32 s6, s6, s3
	v_sub_nc_u32_e32 v21, s36, v8
	v_cmp_gt_i32_e64 s0, 0x80, v23
	v_cmp_gt_i32_e64 s1, 0x80, v22
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v22, 0xfc, v12
	v_and_b32_e32 v23, 2, v17
	v_or_b32_e32 v24, 0x7c, v12
	v_add_nc_u32_e32 v25, 0, v13
	v_add_nc_u32_e32 v26, 0, v7
	v_add_nc_u32_e32 v27, 0, v14
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	v_add_nc_u32_e32 v30, 0, v30
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v32
	v_add_nc_u32_e32 v33, 0, v33
	v_add_nc_u32_e32 v34, 0, v3
	v_add_nc_u32_e32 v35, 0, v4
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v37, 0, v37
	v_add_nc_u32_e32 v38, 0, v38
	v_add_nc_u32_e32 v39, 0, v39
	v_add_nc_u32_e32 v40, 0, v40
	v_add_nc_u32_e32 v41, 0, v41
	v_add_nc_u32_e32 v42, 0, v42
	v_add_nc_u32_e32 v43, 0, v5
	v_add_nc_u32_e32 v44, 0, v44
	v_add_nc_u32_e32 v45, 0, v45
	v_add_nc_u32_e32 v46, 0, v0
	v_add_nc_u32_e32 v47, 0, v2
	v_add_nc_u32_e32 v48, 0, v48
	v_add_nc_u32_e32 v49, 0, v49
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v51, 0, v51
	v_add_nc_u32_e32 v52, 0, v52
	s_mul_hi_u32 s6, s3, s6
	s_and_b32 s21, s5, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s5, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_lshl_b32 s40, s29, 2
	s_lshl_b32 s41, s29, 3
	s_mul_i32 s42, s29, 12
	s_bfe_i32 s43, s12, 0x1001d
	s_mov_b32 s12, 0
	s_add_i32 s44, s3, s6
	s_lshl_b32 s45, s29, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s46, s37, 1
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s3, s2
	s_ashr_i32 s6, s2, 31
	s_mul_hi_u32 s7, s3, s44
	s_xor_b32 s6, s6, s43
	s_mul_i32 s10, s7, s39
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v53, 0
	s_sub_i32 s3, s3, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s3, s39
	s_cmp_ge_u32 s3, s39
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s3, s11, s3
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s3, s39
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v63, 0
	s_cselect_b32 s3, s10, s7
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v65, 0
	s_xor_b32 s3, s3, s6
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	s_sub_i32 s3, s3, s6
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v94, 0
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
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v58, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s11, s10
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v62, 0
	s_cvt_f32_u32 s6, s11
	s_sub_i32 s13, 0, s11
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v64, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s6
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v90, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v71, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v81, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v103, 0
	s_mul_i32 s13, s13, s6
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v105, 0
	s_mul_hi_u32 s3, s6, s13
	s_abs_i32 s13, s14
	s_add_i32 s6, s6, s3
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v109, 0
	s_mul_hi_u32 s3, s13, s6
	s_xor_b32 s6, s14, s10
	s_mul_i32 s15, s3, s11
	s_ashr_i32 s6, s6, 31
	s_sub_i32 s13, s13, s15
	s_add_i32 s15, s3, 1
	s_sub_i32 s16, s13, s11
	s_cmp_ge_u32 s13, s11
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v111, 0
	s_cselect_b32 s3, s15, s3
	s_cselect_b32 s13, s16, s13
	s_add_i32 s15, s3, 1
	s_cmp_ge_u32 s13, s11
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v72, 0
	s_cselect_b32 s3, s15, s3
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v80, 0
	s_xor_b32 s3, s3, s6
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v82, 0
	s_sub_i32 s48, s3, s6
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v102, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s10, s48, s10
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v104, 0
	s_sub_i32 s10, s14, s10
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v107, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s10, s10, s7
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_not1_b32 vcc_lo, exec_lo, s38
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s47, s10, 4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	s_lshl_b32 s7, s6, 8
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v0, s47, v16
	v_subrev_nc_u32_e32 v116, s7, v22
	v_subrev_nc_u32_e32 v117, s7, v23
	v_subrev_nc_u32_e32 v118, s7, v24
	s_lshl_b32 s7, s3, 7
	s_lshl_b32 s6, s6, 7
	v_or_b32_e32 v1, s7, v18
	v_or_b32_e32 v2, s7, v17
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v3, s47, v15
	v_mul_lo_u32 v119, s46, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v0, s6, v1
	v_subrev_nc_u32_e32 v1, s6, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[11:12], null, s36, v3, v[8:9]
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v99, 0
	v_mad_u64_u32 v[12:13], null, s36, v0, v[9:10]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[13:14], null, s36, v1, v[9:10]
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v14, 0
	s_lshl_b32 s49, s3, 8
	s_mov_b32 s50, s35
	s_mov_b32 s51, s37
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_lt_i32_e32 vcc_lo, s50, v21
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v122, s50, v9
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v0, s12 :: v_dual_add_nc_u32 v123, s50, v11
	v_mov_b32_e32 v1, s13
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 259 31 is_stmt 0              ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s3, s36, v122
	.loc	1 271 31 is_stmt 1              ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v2, s14 :: v_dual_add_nc_u32 v125, s50, v13
	v_dual_mov_b32 v3, s15 :: v_dual_add_nc_u32 v126, s50, v12
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v122, 0x80000000, v123, vcc_lo
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s3, s1
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v5, s17 :: v_dual_add_nc_u32 v120, s49, v117
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u16 v127, v122, s[20:23], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_dual_cndmask_b32 v122, 0x80000000, v125 :: v_dual_cndmask_b32 v125, 0x80000000, v126
	s_clause 0x1
	buffer_load_b64 v[122:123], v122, s[4:7], 0 offen
	buffer_load_b64 v[125:126], v125, s[4:7], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v7, s19 :: v_dual_add_nc_u32 v124, s49, v118
	v_dual_mov_b32 v4, s16 :: v_dual_add_nc_u32 v121, s49, v116
	v_mov_b32_e32 v6, s18
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s51, s51, -1
	s_addk_i32 s50, 0x80
	s_cmp_lg_u32 s51, 0
	v_add_nc_u32_e32 v117, s45, v117
	v_add_nc_u32_e32 v118, s45, v118
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(2)
	ds_store_b16 v25, v127
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[181:182], v26
	ds_load_b64 v[183:184], v27
	ds_load_b64 v[185:186], v28
	ds_load_b64 v[187:188], v29
	ds_load_b64 v[209:210], v30
	ds_load_b64 v[213:214], v31
	ds_load_b64 v[215:216], v32
	ds_load_b64 v[217:218], v33
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v34, v[122:123], v[125:126] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[125:128], v26 offset1:2
	ds_load_2addr_stride64_b64 v[159:162], v26 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[169:172], v26 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[173:176], v26 offset0:12 offset1:14
	ds_load_2addr_stride64_b64 v[177:180], v27 offset1:2
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v192, v120, s[24:27], 0 offen offset:24
	buffer_load_u16 v191, v120, s[24:27], 0 offen offset:28
	buffer_load_u16 v122, v120, s[24:27], 0 offen offset:68
	buffer_load_u16 v123, v120, s[24:27], 0 offen offset:72
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[125:126], v[181:182], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[127:128], v[181:182], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[159:160], v[181:182], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[161:162], v[181:182], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[169:170], v[181:182], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[171:172], v[181:182], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[125:128], v27 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[169:172], v27 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[201:208], v[173:174], v[181:182], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[175:176], v[181:182], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[177:178], v[183:184], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[179:180], v[183:184], v[137:144] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[173:176], v27 offset0:12 offset1:14
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v178, v119, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v180, v120, s[24:27], 0 offen
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v119, 2, v119
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[125:126], v[183:184], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[127:128], v[183:184], v[153:160] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[125:128], v28 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[169:170], v[183:184], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[171:172], v[183:184], v[193:200] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v28 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[201:208], v[173:174], v[183:184], v[201:208] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[175:176], v[183:184], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[173:176], v28 offset0:8 offset1:10
	ds_load_2addr_stride64_b64 v[181:184], v29 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[125:126], v[185:186], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[127:128], v[185:186], v[137:144] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[125:128], v28 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[169:170], v[185:186], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[171:172], v[185:186], v[153:160] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v29 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[173:174], v[185:186], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[175:176], v[185:186], v[193:200] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[181:182], v[187:188], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[183:184], v[187:188], v[153:160] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[181:184], v30 offset1:2
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v176, v120, s[24:27], 0 offen offset:4
	buffer_load_u16 v175, v120, s[24:27], 0 offen offset:48
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[201:208], v[125:126], v[185:186], v[201:208] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[127:128], v[185:186], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[125:128], v29 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[169:170], v[187:188], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[171:172], v[187:188], v[137:144] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v29 offset0:12 offset1:14
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v186, v120, s[24:27], 0 offen offset:16
	buffer_load_u16 v190, v120, s[24:27], 0 offen offset:8
	buffer_load_u16 v185, v120, s[24:27], 0 offen offset:12
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[181:182], v[209:210], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[183:184], v[209:210], v[137:144] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[181:184], v30 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[125:126], v[187:188], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[127:128], v[187:188], v[193:200] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[125:128], v30 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[201:208], v[169:170], v[187:188], v[201:208] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[171:172], v[187:188], v[0:7] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v187, v120, s[24:27], 0 offen offset:20
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v30 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[201:208], v[181:182], v[209:210], v[201:208] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[183:184], v[209:210], v[0:7] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v182, v120, s[24:27], 0 offen offset:40
	buffer_load_u16 v177, v120, s[24:27], 0 offen offset:44
	buffer_load_u16 v183, v120, s[24:27], 0 offen offset:32
	buffer_load_u16 v179, v120, s[24:27], 0 offen offset:36
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[125:126], v[209:210], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[127:128], v[209:210], v[153:160] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[125:128], v31 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[169:170], v[209:210], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[171:172], v[209:210], v[193:200] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v31 offset0:4 offset1:6
	ds_load_2addr_stride64_b64 v[209:212], v31 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[125:126], v[213:214], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[127:128], v[213:214], v[137:144] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[125:128], v31 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[169:170], v[213:214], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[171:172], v[213:214], v[153:160] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v32 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[209:210], v[213:214], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[211:212], v[213:214], v[193:200] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[209:212], v32 offset0:4 offset1:6
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[201:208], v[125:126], v[213:214], v[201:208] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[127:128], v[213:214], v[0:7] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v127, v120, s[24:27], 0 offen offset:52
	buffer_load_u16 v125, v120, s[24:27], 0 offen offset:56
	buffer_load_u16 v128, v120, s[24:27], 0 offen offset:60
	buffer_load_u16 v126, v120, s[24:27], 0 offen offset:64
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[169:170], v[215:216], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[171:172], v[215:216], v[137:144] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v32 offset0:8 offset1:10
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[209:210], v[215:216], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[211:212], v[215:216], v[153:160] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[169:170], v[215:216], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[171:172], v[215:216], v[193:200] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v32 offset0:12 offset1:14
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[201:208], v[169:170], v[215:216], v[201:208] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[171:172], v[215:216], v[0:7] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v33 offset1:2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[129:136], v[169:170], v[217:218], v[129:136] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[171:172], v[217:218], v[137:144] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v33 offset0:4 offset1:6
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v216, v136
	v_cvt_f32_i32_e32 v210, v130
	v_cvt_f32_i32_e32 v214, v134
	v_cvt_f32_i32_e32 v220, v140
	v_cvt_f32_i32_e32 v189, v142
	v_cvt_f32_i32_e32 v209, v129
	v_cvt_f32_i32_e32 v215, v135
	v_cvt_f32_i32_e32 v211, v131
	v_cvt_f32_i32_e32 v212, v132
	v_cvt_f32_i32_e32 v213, v133
	v_cvt_f32_i32_e32 v184, v143
	v_cvt_f32_i32_e32 v219, v139
	v_cvt_f32_i32_e32 v221, v141
	v_cvt_f32_i32_e32 v181, v144
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[145:152], v[169:170], v[217:218], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[153:160], v[171:172], v[217:218], v[153:160] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v33 offset0:8 offset1:10
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v129, v146
	v_cvt_f32_i32_e32 v142, v159
	v_cvt_f32_i32_e32 v135, v152
	v_cvt_f32_i32_e32 v140, v157
	v_cvt_f32_i32_e32 v136, v153
	v_cvt_f32_i32_e32 v143, v160
	v_cvt_f32_i32_e32 v139, v156
	v_cvt_f32_i32_e32 v174, v145
	v_cvt_f32_i32_e32 v130, v147
	v_cvt_f32_i32_e32 v141, v158
	v_cvt_f32_i32_e32 v134, v151
	v_cvt_f32_i32_e32 v131, v148
	v_cvt_f32_i32_e32 v132, v149
	v_cvt_f32_i32_e32 v133, v150
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[169:170], v[217:218], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[193:200], v[171:172], v[217:218], v[193:200] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[169:172], v33 offset0:12 offset1:14
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v146, v163
	v_cvt_f32_i32_e32 v159, v200
	v_cvt_f32_i32_e32 v152, v193
	v_cvt_f32_i32_e32 v157, v198
	v_cvt_f32_i32_e32 v153, v194
	v_cvt_f32_i32_e32 v144, v161
	v_cvt_f32_i32_e32 v156, v197
	v_cvt_f32_i32_e32 v145, v162
	v_cvt_f32_i32_e32 v147, v164
	v_cvt_f32_i32_e32 v158, v199
	v_cvt_f32_i32_e32 v151, v168
	v_cvt_f32_i32_e32 v148, v165
	v_cvt_f32_i32_e32 v149, v166
	v_cvt_f32_i32_e32 v150, v167
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[201:208], v[169:170], v[217:218], v[201:208] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[171:172], v[217:218], v[0:7] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v218, v138
	v_cvt_f32_i32_e32 v138, v155
	v_cvt_f32_i32_e32 v155, v196
	v_cvt_f32_i32_e32 v163, v204
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v217, v137
	v_cvt_f32_i32_e32 v137, v154
	v_cvt_f32_i32_e32 v154, v195
	v_cvt_f32_i32_e32 v160, v201
	v_cvt_f32_i32_e32 v161, v202
	v_cvt_f32_i32_e32 v162, v203
	v_cvt_f32_i32_e32 v164, v205
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x6
	buffer_load_u16 v168, v120, s[24:27], 0 offen offset:76
	buffer_load_u16 v169, v120, s[24:27], 0 offen offset:80
	buffer_load_u16 v170, v120, s[24:27], 0 offen offset:84
	buffer_load_u16 v171, v120, s[24:27], 0 offen offset:88
	buffer_load_u16 v172, v120, s[24:27], 0 offen offset:92
	buffer_load_u16 v173, v120, s[24:27], 0 offen offset:96
	buffer_load_u16 v188, v120, s[24:27], 0 offen offset:100
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v165, v206
	v_cvt_f32_i32_e32 v166, v207
	v_cvt_f32_i32_e32 v167, v208
	v_cvt_f32_i32_e32 v0, v0
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v122, 16, v122
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v123, 16, v123
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v196, 16, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v200, v216, v196
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v99, v200, v191
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v193, v210, v196
	v_mul_f32_e32 v198, v214, v196
	v_mul_f32_e32 v204, v220, v196
	v_mul_f32_e32 v194, v211, v196
	v_mul_f32_e32 v195, v212, v196
	v_mul_f32_e32 v201, v217, v196
	v_mul_f32_e32 v197, v213, v196
	v_mul_f32_e32 v202, v218, v196
	v_mul_f32_e32 v199, v215, v196
	v_mul_f32_e32 v203, v219, v196
	v_mul_f32_e32 v174, v174, v196
	v_mul_f32_e32 v189, v189, v196
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v191, v120, s[24:27], 0 offen offset:164
	buffer_load_u16 v200, v120, s[24:27], 0 offen offset:168
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v129, v129, v196
	v_mul_f32_e32 v181, v181, v196
	v_mul_f32_e32 v131, v131, v196
	v_mul_f32_e32 v136, v136, v196
	v_mul_f32_e32 v138, v138, v196
	v_mul_f32_e32 v130, v130, v196
	v_mul_f32_e32 v132, v132, v196
	v_mul_f32_e32 v133, v133, v196
	v_mul_f32_e32 v134, v134, v196
	v_dual_mul_f32 v152, v152, v196 :: v_dual_fmac_f32 v113, v129, v122
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v111, v130, v123 :: v_dual_add_nc_u32 v116, s45, v116
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v205, v221, v196
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v175, 16, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v75, v205, v175 :: v_dual_lshlrev_b32 v192, 16, v192
	v_fmac_f32_e32 v102, v199, v192
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v192, v120, s[24:27], 0 offen offset:156
	buffer_load_u16 v199, v120, s[24:27], 0 offen offset:160
	buffer_load_u16 v175, v120, s[24:27], 0 offen offset:204
	buffer_load_u16 v205, v120, s[24:27], 0 offen offset:208
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v150, v150, v196
	v_mul_f32_e32 v164, v164, v196
	v_mul_f32_e32 v166, v166, v196
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v190, 16, v190
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v185, 16, v185
	v_lshlrev_b32_e32 v186, 16, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v110, v195, v185
	v_fmac_f32_e32 v106, v197, v186
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v185, v120, s[24:27], 0 offen offset:132
	buffer_load_u16 v195, v120, s[24:27], 0 offen offset:136
	buffer_load_u16 v186, v120, s[24:27], 0 offen offset:140
	buffer_load_u16 v197, v120, s[24:27], 0 offen offset:144
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v142, v142, v196
	v_mul_f32_e32 v144, v144, v196
	v_mul_f32_e32 v141, v141, v196
	s_waitcnt vmcnt(25)
	v_dual_mul_f32 v146, v146, v196 :: v_dual_lshlrev_b32 v187, 16, v187
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v182, 16, v182
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(23)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v104, v198, v187 :: v_dual_lshlrev_b32 v177, 16, v177
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v183, 16, v183
	v_lshlrev_b32_e32 v178, 16, v180
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v180, v209, v196
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(21)
	v_dual_fmac_f32 v112, v194, v190 :: v_dual_lshlrev_b32 v179, 16, v179
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x4
	buffer_load_u16 v194, v120, s[24:27], 0 offen offset:120
	buffer_load_u16 v190, v120, s[24:27], 0 offen offset:128
	buffer_load_u16 v124, v124, s[24:27], 0 offen
	buffer_load_u16 v187, v120, s[24:27], 0 offen offset:148
	buffer_load_u16 v198, v120, s[24:27], 0 offen offset:152
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v97, v201, v183
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v183, v120, s[24:27], 0 offen offset:172
	buffer_load_u16 v201, v120, s[24:27], 0 offen offset:176
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v82, v202, v179
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v179, v120, s[24:27], 0 offen offset:180
	buffer_load_u16 v202, v120, s[24:27], 0 offen offset:184
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v137, v137, v196
	v_mul_f32_e32 v139, v139, v196
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v107, v180, v178
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v178, v120, s[24:27], 0 offen offset:104
	buffer_load_u16 v180, v120, s[24:27], 0 offen offset:108
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v135, v135, v196
	v_mul_f32_e32 v143, v143, v196
	v_mul_f32_e32 v145, v145, v196
	v_mul_f32_e32 v148, v148, v196
	v_mul_f32_e32 v154, v154, v196
	v_mul_f32_e32 v156, v156, v196
	s_waitcnt vmcnt(31)
	v_dual_mul_f32 v158, v158, v196 :: v_dual_lshlrev_b32 v127, 16, v127
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v77, v204, v177 :: v_dual_lshlrev_b32 v176, 16, v176
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v126, 16, v126
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v80, v203, v182 :: v_dual_fmac_f32 v73, v189, v127
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v114, v193, v176
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v182, v120, s[24:27], 0 offen offset:188
	buffer_load_u16 v203, v120, s[24:27], 0 offen offset:192
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v184, v184, v196 :: v_dual_fmac_f32 v115, v174, v126
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v126, v120, s[24:27], 0 offen offset:236
	buffer_load_u16 v174, v120, s[24:27], 0 offen offset:240
	v_lshlrev_b32_e32 v128, 16, v128
	s_clause 0x1
	buffer_load_u16 v176, v120, s[24:27], 0 offen offset:112
	buffer_load_u16 v193, v120, s[24:27], 0 offen offset:116
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v72, v184, v125
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x5
	buffer_load_u16 v177, v120, s[24:27], 0 offen offset:196
	buffer_load_u16 v204, v120, s[24:27], 0 offen offset:200
	buffer_load_u16 v127, v120, s[24:27], 0 offen offset:212
	buffer_load_u16 v189, v120, s[24:27], 0 offen offset:216
	buffer_load_u16 v125, v120, s[24:27], 0 offen offset:220
	buffer_load_u16 v184, v120, s[24:27], 0 offen offset:224
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v69, v181, v128
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v128, v120, s[24:27], 0 offen offset:228
	buffer_load_u16 v181, v120, s[24:27], 0 offen offset:232
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v140, v140, v196
	v_mul_f32_e32 v147, v147, v196
	v_mul_f32_e32 v149, v149, v196
	v_mul_f32_e32 v151, v151, v196
	v_mul_f32_e32 v160, v160, v196
	v_mul_f32_e32 v162, v162, v196
	v_mul_f32_e32 v0, v0, v196
	v_mul_f32_e32 v2, v2, v196
	v_mul_f32_e32 v4, v4, v196
	s_waitcnt vmcnt(40)
	v_dual_mul_f32 v6, v6, v196 :: v_dual_lshlrev_b32 v169, 16, v169
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v170, 16, v170
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v171, 16, v171
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v173, 16, v173
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v153, v153, v196
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v103, v133, v170 :: v_dual_lshlrev_b32 v172, 16, v172
	s_waitcnt vmcnt(35)
	v_dual_fmac_f32 v101, v134, v171 :: v_dual_lshlrev_b32 v188, 16, v188
	v_fmac_f32_e32 v96, v136, v173
	v_fmac_f32_e32 v105, v132, v169
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v191, 16, v191
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v3, v3, v196 :: v_dual_fmac_f32 v66, v153, v191
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v175, 16, v175
	v_lshlrev_b32_e32 v199, 16, v199
	v_lshlrev_b32_e32 v192, 16, v192
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v205, 16, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v67, v152, v199
	v_fmac_f32_e32 v87, v164, v205
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v185, 16, v185
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v195, 16, v195
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v186, 16, v186
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v197, 16, v197
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v95, v146, v195 :: v_dual_lshlrev_b32 v194, 16, v194
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v155, v155, v196 :: v_dual_lshlrev_b32 v190, 16, v190
	v_mul_f32_e32 v157, v157, v196
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v187, 16, v187
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v163, v163, v196 :: v_dual_fmac_f32 v90, v148, v197
	s_waitcnt vmcnt(20)
	v_dual_mul_f32 v165, v165, v196 :: v_dual_lshlrev_b32 v198, 16, v198
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v183, 16, v183
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v159, v159, v196 :: v_dual_lshlrev_b32 v202, 16, v202
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v100, v145, v185
	v_dual_fmac_f32 v70, v142, v194 :: v_dual_mul_f32 v1, v1, v196
	v_fmac_f32_e32 v62, v155, v183
	v_dual_fmac_f32 v108, v144, v190 :: v_dual_mul_f32 v7, v7, v196
	v_fmac_f32_e32 v58, v157, v179
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v178, 16, v178
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v180, 16, v180
	v_lshlrev_b32_e32 v124, 16, v124
	v_lshlrev_b32_e32 v201, 16, v201
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v79, v138, v178 :: v_dual_lshlrev_b32 v200, 16, v200
	v_fmac_f32_e32 v86, v150, v198
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v68, v143, v124 :: v_dual_fmac_f32 v61, v156, v201
	v_fmac_f32_e32 v57, v158, v202
	v_fmac_f32_e32 v89, v163, v175
	v_fmac_f32_e32 v98, v135, v172
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v161, v161, v196 :: v_dual_lshlrev_b32 v182, 16, v182
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v92, v147, v186 :: v_dual_lshlrev_b32 v203, 16, v203
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v5, v5, v196 :: v_dual_lshlrev_b32 v126, 16, v126
	v_dual_mul_f32 v167, v167, v196 :: v_dual_fmac_f32 v88, v149, v187
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v196, v120, s[24:27], 0 offen offset:244
	buffer_load_u16 v120, v120, s[24:27], 0 offen offset:248
	buffer_load_u16 v121, v121, s[24:27], 0 offen
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v193, 16, v193
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v177, 16, v177
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v204, 16, v204
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v127, 16, v127
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v189, 16, v189
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v125, 16, v125
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v55, v159, v182 :: v_dual_lshlrev_b32 v184, 16, v184
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v93, v161, v177 :: v_dual_lshlrev_b32 v128, 16, v128
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v181, 16, v181
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v109, v131, v168 :: v_dual_lshlrev_b32 v174, 16, v174
	v_dual_fmac_f32 v81, v137, v188 :: v_dual_fmac_f32 v78, v167, v125
	v_dual_fmac_f32 v76, v139, v180 :: v_dual_fmac_f32 v85, v165, v127
	v_dual_fmac_f32 v71, v141, v193 :: v_dual_fmac_f32 v74, v140, v176
	v_dual_fmac_f32 v83, v166, v189 :: v_dual_fmac_f32 v84, v151, v192
	v_dual_fmac_f32 v64, v154, v200 :: v_dual_fmac_f32 v59, v3, v126
	v_dual_fmac_f32 v94, v160, v203 :: v_dual_fmac_f32 v91, v162, v204
	v_dual_fmac_f32 v56, v4, v174 :: v_dual_fmac_f32 v63, v1, v128
	v_fmac_f32_e32 v60, v2, v181
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v196, 16, v196
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v120, 16, v120
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v121, 16, v121
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v65, v0, v184
	v_fmac_f32_e32 v54, v5, v196
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v53, v6, v120 :: v_dual_fmac_f32 v14, v7, v121
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_4
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	v_add_nc_u32_e32 v0, 0, v19
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s3, s48, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s47, s47, s29
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v0, v107, v115 offset1:32
	ds_store_2addr_b32 v0, v108, v94 offset0:64 offset1:96
	ds_store_2addr_b32 v35, v114, v113 offset1:32
	ds_store_2addr_b32 v35, v100, v93 offset0:64 offset1:96
	ds_store_2addr_b32 v36, v112, v111 offset1:32
	ds_store_2addr_b32 v36, v95, v91 offset0:64 offset1:96
	ds_store_2addr_b32 v37, v110, v109 offset1:32
	ds_store_2addr_b32 v37, v92, v89 offset0:64 offset1:96
	ds_store_2addr_b32 v38, v106, v105 offset1:32
	ds_store_2addr_b32 v38, v90, v87 offset0:64 offset1:96
	ds_store_2addr_b32 v39, v104, v103 offset1:32
	ds_store_2addr_b32 v39, v88, v85 offset0:64 offset1:96
	ds_store_2addr_b32 v40, v102, v101 offset1:32
	ds_store_2addr_b32 v40, v86, v83 offset0:64 offset1:96
	ds_store_2addr_b32 v41, v99, v98 offset1:32
	ds_store_2addr_b32 v41, v84, v78 offset0:64 offset1:96
	ds_store_2addr_b32 v42, v97, v96 offset1:32
	v_add3_u32 v0, s47, s3, v10
	ds_store_2addr_b32 v42, v67, v65 offset0:64 offset1:96
	ds_store_2addr_b32 v43, v82, v81 offset1:32
	ds_store_2addr_b32 v43, v66, v63 offset0:64 offset1:96
	ds_store_2addr_b32 v44, v80, v79 offset1:32
	ds_store_2addr_b32 v44, v64, v60 offset0:64 offset1:96
	ds_store_2addr_b32 v45, v77, v76 offset1:32
	ds_store_2addr_b32 v45, v62, v59 offset0:64 offset1:96
	ds_store_2addr_b32 v46, v75, v74 offset1:32
	ds_store_2addr_b32 v46, v61, v56 offset0:64 offset1:96
	ds_store_2addr_b32 v47, v73, v71 offset1:32
	ds_store_2addr_b32 v47, v58, v54 offset0:64 offset1:96
	ds_store_2addr_b32 v48, v72, v70 offset1:32
	ds_store_2addr_b32 v48, v57, v53 offset0:64 offset1:96
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v1, 31, v0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_store_2addr_b32 v49, v69, v68 offset1:32
	ds_store_2addr_b32 v49, v55, v14 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v3, 0, v20
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[1:2], 2, v[0:1]
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_load_b32 v11, v3
	ds_load_b32 v7, v50
	ds_load_b32 v6, v51
	ds_load_b32 v5, v52
	s_mov_b32 s3, 0
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
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	v_add_nc_u32_e32 v1, s40, v0
	s_mov_b32 s3, 0
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
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	v_add_nc_u32_e32 v1, s41, v0
	s_mov_b32 s3, 0
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
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	v_add_nc_u32_e32 v0, s42, v0
	s_mov_b32 s3, 0
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
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
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
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 222
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.num_vgpr, 222
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5408
; TotalNumSgprs: 54
; NumVgprs: 222
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 222
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     222
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
