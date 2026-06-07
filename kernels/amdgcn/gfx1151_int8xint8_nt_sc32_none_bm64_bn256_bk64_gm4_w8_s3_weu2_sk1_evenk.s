	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	v_and_b32_e32 v64, 16, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s5, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s4, s5
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_xor_b32 s2, s5, s7
	s_mul_hi_u32 s9, s4, s9
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s10, s9, s8
	s_sub_i32 s4, s4, s10
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s4, s8
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s4, s11, s4
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s4, s10, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s21, s16, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s17, s4, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s17, s2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s7
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s5, s5, s6
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s21, 63
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v3, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow130
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v27, 0 :: v_dual_and_b32 v56, 15, v0
	v_dual_mov_b32 v26, 0 :: v_dual_and_b32 v57, 0xf0, v0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v85, 0
	s_lshl_b32 s20, s5, 6
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s14, s4, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s24, 0
	v_dual_mov_b32 v85, 0 :: v_dual_lshlrev_b32 v4, 3, v0
	v_bfe_i32 v10, v0, 4, 1
	v_bfe_i32 v12, v0, 3, 1
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	v_lshlrev_b32_e32 v11, 4, v0
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s21, 31
.Ltmp15:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s16, 31
.Ltmp16:
	.loc	1 302 19 is_stmt 1              ; generate_amdgcn.py:302:19
	v_and_b32_e32 v2, 24, v4
	v_and_b32_e32 v4, 0x778, v4
	v_lshlrev_b32_e32 v8, 5, v0
	v_bfe_i32 v9, v0, 2, 1
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v10, 0x90, v10
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v13, 0xf70, v11
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v12, 0x90, v12
	v_or_b32_e32 v15, s20, v56
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 26
.Ltmp18:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s22, s1, 31
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s21, s21, s0
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s22, 27
	v_and_b32_e32 v8, 0x160, v8
	v_and_b32_e32 v9, 0x90, v9
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v11, 0xe00, v11
	v_xor_b32_e32 v4, v10, v4
	v_xor_b32_e32 v10, v12, v13
	v_or_b32_e32 v12, 32, v15
	s_add_i32 s1, s1, s0
.Ltmp21:
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v5, 1, v0
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s22, s1, 5
	v_or_b32_e32 v14, v9, v8
	v_or3_b32 v8, v8, v11, v9
	v_or_b32_e32 v11, 16, v15
	v_or_b32_e32 v13, 48, v15
	v_mul_lo_u32 v95, v12, s22
	v_lshrrev_b32_e32 v12, 6, v0
	v_mul_lo_u32 v7, s16, v5
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v5, s17, 8, v5
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_and_b32_e32 v3, 1, v0
	v_mul_lo_u32 v94, v11, s22
	v_mul_lo_u32 v96, v13, s22
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v11, 2, v0
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v12, 2, v12
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v13, 1, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s2, 8
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v6, 2, v0
	v_or_b32_e32 v97, s14, v0
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v5, s0, v5
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v1, 4, v3
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v11, 0x1c0, v11
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v3, 5, v3
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v12, 0, v12
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v98, 0, v13
	v_mul_lo_u32 v93, v15, s22
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v15, 28, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_or_b32_e32 v0, 0x80, v5
	v_add3_u32 v11, v12, v11, v3
	v_add3_u32 v12, v98, v13, v3
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v3, s20, v6
	v_xor_b32_e32 v9, 16, v14
	v_xor_b32_e32 v16, 16, v8
	v_mad_u64_u32 v[20:21], null, s16, v0, v[1:2]
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	s_mul_i32 s23, s14, s16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mad_u64_u32 v[21:22], null, s16, v3, v[2:3]
	v_add3_u32 v99, v7, v1, s23
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v100, 0, v4
	v_dual_mov_b32 v0, s24 :: v_dual_add_nc_u32 v101, 0, v10
	v_mov_b32_e32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v102, 0, v14
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v103, 0, v9
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v104, 0, v8
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v105, 0, v16
	v_dual_mov_b32 v1, s25 :: v_dual_mov_b32 v2, s26
	v_dual_mov_b32 v3, s27 :: v_dual_mov_b32 v4, s28
	v_dual_mov_b32 v5, s29 :: v_dual_mov_b32 v6, s30
	v_dual_mov_b32 v7, s31 :: v_dual_add_nc_u32 v106, v11, v15
	v_mov_b32_e32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v107, v12, v15
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_mov_b32_e32 v27, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
.Ltmp24:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s21, s21, 6
.Ltmp25:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s23, s3, 6
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s0, s6
	s_mov_b32 s1, s7
	s_mov_b32 s2, s18
	s_mov_b32 s3, s19
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v16, s23, v21
	.loc	1 320 34                        ; generate_amdgcn.py:320:34
	v_add_nc_u32_e32 v17, s23, v99
	.loc	1 320 26 is_stmt 0              ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v108, s23, v20
	.loc	1 330 29 is_stmt 1              ; generate_amdgcn.py:330:29
	s_ashr_i32 s25, s23, 5
	.loc	1 318 34                        ; generate_amdgcn.py:318:34
	s_add_i32 s24, s23, 32
	.loc	1 318 26 is_stmt 0              ; generate_amdgcn.py:318:26
	buffer_load_b64 v[22:23], v16, s[16:19], 0 offen
	.loc	1 320 26 is_stmt 1              ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[8:11], v17, s[0:3], 0 offen
	buffer_load_b128 v[12:15], v108, s[0:3], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[24:25], v16, s[16:19], 0 offen offset:32
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	buffer_load_b128 v[16:19], v17, s[0:3], 0 offen offset:32
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s26, s25, s15
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	buffer_load_b128 v[108:111], v108, s[0:3], 0 offen offset:32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s25, s22
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(4)
	ds_store_b128 v101, v[8:11]
	s_waitcnt vmcnt(3)
	ds_store_b128 v101, v[12:15] offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_store_b64 v100, v[22:23] offset:16384
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v100, v[24:25] offset:18432
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v101, v[16:19] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v101, v[108:111] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[170:173], v104 offset:4096
	ds_load_b128 v[174:177], v105 offset:4096
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[16:19], v102 offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[22:25], v104
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[108:111], v103 offset:16384
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[162:165], v105
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s24, s24, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s24, s22
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[22:25], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[170:173], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[162:165], v[108:111], v[114:121] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[8:15], v[174:177], v[108:111], v[8:15] neg_lo:[1,1,0]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[16:19], v102 offset:16896
	ds_load_b128 v[108:111], v103 offset:16896
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v113, v9
	v_cvt_f32_i32_e32 v9, v14
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[22:25], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[170:173], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[162:165], v[108:111], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[174:177], v[108:111], v[130:137] neg_lo:[1,1,0]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[16:19], v102 offset:17408
	ds_load_b128 v[108:111], v103 offset:17408
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v112, v132
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[22:25], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[170:173], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[162:165], v[108:111], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[174:177], v[108:111], v[146:153] neg_lo:[1,1,0]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[16:19], v102 offset:17920
	ds_load_b128 v[108:111], v103 offset:17920
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v14, v152
	v_cvt_f32_i32_e32 v152, v120
	v_cvt_f32_i32_e32 v120, v125
	v_cvt_f32_i32_e32 v125, v138
	v_cvt_f32_i32_e32 v132, v146
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[22:25], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[162:165], v[108:111], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[162:169], v[170:173], v[16:19], v[0:7] neg_lo:[1,1,0]
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v16, v97, s26, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v17, v94, s25, 1
	v_add_lshl_u32 v18, v95, s25, 1
	v_add_lshl_u32 v19, v96, s25, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[162:169], v[174:177], v[108:111], v[162:169] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v138, v155
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v16, v16, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v146, v165
	v_cvt_f32_i32_e32 v155, v159
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	ds_store_b16 v106, v16 offset:20480
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v16, v93, s25, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s25, s24, s15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x3
	buffer_load_u16 v242, v16, s[4:7], 0 offen
	buffer_load_u16 v243, v17, s[4:7], 0 offen
	buffer_load_u16 v244, v18, s[4:7], 0 offen
	buffer_load_u16 v245, v19, s[4:7], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[234:237], v104 offset:12288
	ds_load_b128 v[238:241], v105 offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[16:19], v102 offset:18432
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[22:25], v104 offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[108:111], v103 offset:18432
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[226:229], v105 offset:8192
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s21, s21, -1
	s_add_i32 s23, s23, 64
	s_cmp_lg_u32 s21, 0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[22:25], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[234:237], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[170:177], v[226:229], v[108:111], v[170:177] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[178:185], v[238:241], v[108:111], v[178:185] neg_lo:[1,1,0]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[16:19], v102 offset:18944
	ds_load_b128 v[108:111], v103 offset:18944
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v159, v179
	v_cvt_f32_i32_e32 v165, v185
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v175, v175
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v177, v177
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[186:193], v[22:25], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[194:201], v[234:237], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[186:193], v[226:229], v[108:111], v[186:193] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[194:201], v[238:241], v[108:111], v[194:201] neg_lo:[1,1,0]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[16:19], v102 offset:19456
	ds_load_b128 v[108:111], v103 offset:19456
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v186, v186
	v_cvt_f32_i32_e32 v187, v187
	v_cvt_f32_i32_e32 v188, v188
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v179, v199
	v_cvt_f32_i32_e32 v190, v190
	v_cvt_f32_i32_e32 v191, v191
	v_cvt_f32_i32_e32 v192, v192
	v_cvt_f32_i32_e32 v193, v193
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[202:209], v[22:25], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[234:237], v[16:19], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[202:209], v[226:229], v[108:111], v[202:209] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[210:217], v[238:241], v[108:111], v[210:217] neg_lo:[1,1,0]
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[16:19], v102 offset:19968
	ds_load_b128 v[108:111], v103 offset:19968
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v185, v213
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v209, v209
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[218:225], v[22:25], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v25, v150
	v_cvt_f32_i32_e32 v150, v118
	v_cvt_f32_i32_e32 v118, v123
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[218:225], v[226:229], v[108:111], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[226:233], v[234:237], v[16:19], v[0:7] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v18, v168
	v_cvt_f32_i32_e32 v17, v169
	v_cvt_f32_i32_e32 v168, v196
	v_cvt_f32_i32_e32 v169, v197
	v_cvt_f32_i32_e32 v196, v216
	v_cvt_f32_i32_e32 v197, v217
	v_cvt_f32_i32_e32 v216, v221
	v_cvt_f32_i32_e32 v217, v222
	v_cvt_f32_i32_e32 v221, v225
	v_wmma_i32_16x16x16_iu8 v[226:233], v[238:241], v[108:111], v[226:233] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v108, v133
	v_cvt_f32_i32_e32 v22, v134
	v_cvt_f32_i32_e32 v133, v147
	v_cvt_f32_i32_e32 v134, v148
	v_cvt_f32_i32_e32 v111, v149
	v_cvt_f32_i32_e32 v110, v166
	v_cvt_f32_i32_e32 v147, v115
	v_cvt_f32_i32_e32 v148, v116
	v_cvt_f32_i32_e32 v149, v117
	v_cvt_f32_i32_e32 v166, v194
	v_cvt_f32_i32_e32 v194, v214
	v_cvt_f32_i32_e32 v214, v219
	v_cvt_f32_i32_e32 v219, v223
	v_cvt_f32_i32_e32 v24, v167
	v_cvt_f32_i32_e32 v167, v195
	v_cvt_f32_i32_e32 v195, v215
	v_cvt_f32_i32_e32 v215, v220
	v_cvt_f32_i32_e32 v220, v224
	v_cvt_f32_i32_e32 v16, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v153
	v_cvt_f32_i32_e32 v153, v121
	v_cvt_f32_i32_e32 v121, v122
	v_cvt_f32_i32_e32 v122, v139
	v_cvt_f32_i32_e32 v139, v142
	v_cvt_f32_i32_e32 v142, v145
	v_cvt_f32_i32_e32 v145, v158
	v_cvt_f32_i32_e32 v158, v178
	v_cvt_f32_i32_e32 v178, v198
	v_cvt_f32_i32_e32 v198, v226
	v_cvt_f32_i32_e32 v19, v151
	v_cvt_f32_i32_e32 v151, v119
	v_cvt_f32_i32_e32 v119, v124
	v_cvt_f32_i32_e32 v123, v140
	v_cvt_f32_i32_e32 v140, v143
	v_cvt_f32_i32_e32 v143, v156
	v_cvt_f32_i32_e32 v124, v141
	v_cvt_f32_i32_e32 v141, v144
	v_cvt_f32_i32_e32 v144, v157
	v_cvt_f32_i32_e32 v218, v218
	v_cvt_f32_i32_e32 v109, v10
	v_cvt_f32_i32_e32 v23, v11
	v_cvt_f32_i32_e32 v11, v136
	v_cvt_f32_i32_e32 v136, v163
	v_cvt_f32_i32_e32 v10, v137
	v_cvt_f32_i32_e32 v137, v164
	v_cvt_f32_i32_e32 v156, v160
	v_cvt_f32_i32_e32 v234, v8
	v_cvt_f32_i32_e32 v8, v15
	v_cvt_f32_i32_e32 v157, v161
	v_cvt_f32_i32_e32 v161, v181
	v_cvt_f32_i32_e32 v163, v183
	v_cvt_f32_i32_e32 v183, v211
	v_cvt_f32_i32_e32 v181, v201
	v_cvt_f32_i32_e32 v201, v229
	v_cvt_f32_i32_e32 v15, v135
	v_cvt_f32_i32_e32 v199, v227
	v_cvt_f32_i32_e32 v211, v231
	v_cvt_f32_i32_e32 v213, v233
	v_cvt_f32_i32_e32 v160, v180
	v_cvt_f32_i32_e32 v180, v200
	v_cvt_f32_i32_e32 v135, v162
	v_cvt_f32_i32_e32 v162, v182
	v_cvt_f32_i32_e32 v182, v210
	v_cvt_f32_i32_e32 v210, v230
	v_cvt_f32_i32_e32 v164, v184
	v_cvt_f32_i32_e32 v184, v212
	v_cvt_f32_i32_e32 v200, v228
	v_cvt_f32_i32_e32 v212, v232
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v225, 16, v244
	v_lshlrev_b32_e32 v222, 16, v242
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v223, v114, v222 :: v_dual_lshlrev_b32 v226, 16, v245
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[114:117], v98 offset:20480
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v224, 16, v114
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v85, v223, v224
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v223, 16, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v121, v121, v223
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v76, v121, v224
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v121, v125, v225
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v125, 16, v115
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v109, v222, v109 :: v_dual_and_b32 v114, 0xffff0000, v114
	v_mul_f32_e32 v12, v222, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v59, v121, v224
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v121, v154, v226
	v_dual_mul_f32 v8, v222, v8 :: v_dual_and_b32 v115, 0xffff0000, v115
	v_mul_f32_e32 v23, v222, v23
	v_mul_f32_e32 v113, v222, v113
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v41, v121, v224
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v121, v222, v147
	v_mul_f32_e32 v16, v222, v16
	v_mul_f32_e32 v9, v222, v9
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v83, v113, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v92, v121, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v118, v223, v118 :: v_dual_lshlrev_b32 v121, 16, v116
	v_dual_mul_f32 v113, v223, v131 :: v_dual_and_b32 v116, 0xffff0000, v116
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v75, v118, v125 :: v_dual_mul_f32 v118, v225, v122
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v122, v97, s25, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v67, v113, v115
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v113, v225, v133
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v58, v118, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v118, v226, v138
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v122, 0x80000000, v122, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v40, v118, v125
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v118, v222, v148
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v91, v118, v121 :: v_dual_mul_f32 v118, v223, v119
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v119, 16, v117
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v48, v113, v115 :: v_dual_and_b32 v117, 0xffff0000, v117
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v113, v226, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v74, v118, v121
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v118, v225, v123 :: v_dual_fmac_f32 v81, v23, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v23, v223, v108 :: v_dual_fmac_f32 v32, v113, v115
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v82, v109, v116 :: v_dual_fmac_f32 v55, v118, v121
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v118, v226, v143 :: v_dual_mul_f32 v109, v223, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v65, v23, v117
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v23, v225, v111
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v39, v118, v121
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v118, v222, v149
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v121, v96, s24, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v66, v109, v116
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v109, v225, v134 :: v_dual_fmac_f32 v46, v23, v117
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v90, v118, v119
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v118, v223, v120
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v120, v95, s24, 1
	v_cndmask_b32_e32 v121, 0x80000000, v121, vcc_lo
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v47, v109, v116
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v109, v226, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v73, v118, v119 :: v_dual_cndmask_b32 v120, 0x80000000, v120
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v118, v225, v124 :: v_dual_mul_f32 v23, v226, v146
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v31, v109, v116 :: v_dual_fmac_f32 v54, v118, v119
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v118, v226, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v38, v118, v119
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v118, v93, s24, 1
	v_add_lshl_u32 v119, v94, s24, 1
	v_dual_cndmask_b32 v118, 0x80000000, v118 :: v_dual_cndmask_b32 v119, 0x80000000, v119
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v122, v122, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x3
	buffer_load_u16 v123, v118, s[4:7], 0 offen
	buffer_load_u16 v138, v119, s[4:7], 0 offen
	buffer_load_u16 v143, v120, s[4:7], 0 offen
	buffer_load_u16 v144, v121, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	ds_load_b128 v[118:121], v98 offset:20496
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v122, 16, v122
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v147, 16, v123
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v138, 16, v138
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_store_b32 v107, v122 offset:20480
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[122:125], v98 offset:20480
	v_mul_f32_e32 v148, v170, v147
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v112, v143, v182
	v_mul_f32_e32 v116, v143, v194
	v_mul_f32_e32 v115, v143, v185
	v_mul_f32_e32 v113, v143, v183
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v85, v148, v122 :: v_dual_mul_f32 v148, v147, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v148, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v148, v147, v172
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v91, v148, v124 :: v_dual_mul_f32 v148, v147, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v148, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v148, v186, v138
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v76, v148, v122
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v148, v138, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v75, v148, v123 :: v_dual_mul_f32 v148, v138, v188
	v_fmac_f32_e32 v74, v148, v124
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v148, v138, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v73, v148, v125 :: v_dual_mul_f32 v148, v202, v143
	v_dual_fmac_f32 v59, v148, v122 :: v_dual_mul_f32 v148, v143, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v148, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v148, v143, v204
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v55, v148, v124 :: v_dual_mul_f32 v148, v143, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v148, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v148, v218, v144
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v41, v148, v122
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v144, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v40, v122, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v122, v144, v215 :: v_dual_lshlrev_b32 v123, 16, v118
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v39, v122, v124 :: v_dual_and_b32 v118, 0xffff0000, v118
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v144, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v80, v16, v118
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v223, v22
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v38, v122, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v222, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v63, v16, v118 :: v_dual_mul_f32 v16, v225, v25
	v_dual_fmac_f32 v89, v122, v123 :: v_dual_mul_f32 v122, v223, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v16, v118
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v16, v226, v110
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v72, v122, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v122, v225, v139 :: v_dual_fmac_f32 v29, v16, v118
	v_mul_f32_e32 v118, v143, v196
	v_dual_mul_f32 v16, v147, v162 :: v_dual_fmac_f32 v53, v122, v123
	v_mul_f32_e32 v122, v226, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v37, v122, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v222, v151
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v123, 16, v119
	v_and_b32_e32 v119, 0xffff0000, v119
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v88, v122, v123
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v223, v127
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v79, v12, v119
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v223, v15
	v_mul_f32_e32 v15, v147, v161
	v_mul_f32_e32 v127, v144, v213
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v71, v122, v123 :: v_dual_mul_f32 v122, v225, v140
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v109, v138, v179
	v_mul_f32_e32 v25, v138, v169
	v_dual_mul_f32 v111, v138, v181 :: v_dual_fmac_f32 v62, v12, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v52, v122, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v226, v155
	v_dual_mul_f32 v12, v225, v19 :: v_dual_mul_f32 v19, v147, v165
	v_mul_f32_e32 v110, v138, v180
	v_mul_f32_e32 v108, v138, v178
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v36, v122, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v222, v152
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v123, 16, v120
	v_and_b32_e32 v120, 0xffff0000, v120
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v44, v12, v119
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v12, v226, v24
	v_mul_f32_e32 v22, v138, v166
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v87, v122, v123 :: v_dual_mul_f32 v122, v223, v128
	v_dual_fmac_f32 v78, v9, v120 :: v_dual_mul_f32 v9, v223, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v11, v226, v17
	v_mul_f32_e32 v17, v147, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v70, v122, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v225, v141
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v61, v9, v120
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v9, v225, v14 :: v_dual_fmac_f32 v28, v12, v119
	v_dual_mul_f32 v12, v147, v158 :: v_dual_fmac_f32 v51, v122, v123
	v_mul_f32_e32 v122, v226, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v43, v9, v120
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v9, v226, v18 :: v_dual_fmac_f32 v30, v23, v117
	v_mul_f32_e32 v23, v138, v167
	v_mul_f32_e32 v117, v143, v195
	v_mul_f32_e32 v14, v147, v160
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v27, v9, v120
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v9, v223, v10
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v35, v122, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v222, v153
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v123, 16, v121
	v_and_b32_e32 v121, 0xffff0000, v121
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v10, v225, v13 :: v_dual_mul_f32 v13, v147, v159
	v_mul_f32_e32 v120, v144, v198
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v86, v122, v123 :: v_dual_fmac_f32 v77, v8, v121
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v223, v129
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v60, v9, v121
	v_fmac_f32_e32 v42, v10, v121
	v_fmac_f32_e32 v26, v11, v121
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[8:11], v98 offset:20992
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v69, v122, v123 :: v_dual_mul_f32 v122, v225, v142
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v121, v144, v199 :: v_dual_mul_f32 v18, v147, v164
	v_dual_mul_f32 v24, v138, v168 :: v_dual_mul_f32 v119, v143, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v50, v122, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v226, v157
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v34, v122, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[122:125], v98 offset:20496
	v_mul_f32_e32 v126, v147, v174
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v81, v15, v11
	v_dual_fmac_f32 v65, v25, v11 :: v_dual_fmac_f32 v82, v14, v10
	v_fmac_f32_e32 v48, v113, v9
	v_fmac_f32_e32 v46, v115, v11
	v_fmac_f32_e32 v32, v121, v9
	v_fmac_f32_e32 v83, v13, v9
	v_fmac_f32_e32 v67, v23, v9
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v89, v126, v122 :: v_dual_mul_f32 v126, v147, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v126, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v126, v147, v176
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v87, v126, v124 :: v_dual_mul_f32 v126, v147, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v126, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v126, v138, v190
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v72, v126, v122
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v126, v138, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v71, v126, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v126, v138, v192
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v70, v126, v124
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v126, v138, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v69, v126, v125 :: v_dual_mul_f32 v126, v143, v206
	v_dual_fmac_f32 v53, v126, v122 :: v_dual_mul_f32 v126, v143, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v126, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v126, v143, v208
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v51, v126, v124 :: v_dual_mul_f32 v126, v143, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v126, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v126, v144, v217
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v37, v126, v122 :: v_dual_mul_f32 v122, v144, v219
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v126, v144, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v36, v122, v123
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v144, v220
	v_mul_f32_e32 v123, v144, v201
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v35, v122, v124 :: v_dual_mul_f32 v122, v144, v221
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v124, v144, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v30, v123, v11
	v_fmac_f32_e32 v34, v122, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v122, v222, v234 :: v_dual_mul_f32 v125, v144, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v84, v122, v114
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v223, v130
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v68, v122, v114
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v225, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v49, v122, v114
	v_fmac_f32_e32 v49, v112, v8
	v_fmac_f32_e32 v84, v12, v8
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	ds_load_b128 v[12:15], v98 offset:21008
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v122, v226, v135 :: v_dual_fmac_f32 v29, v124, v12
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v33, v122, v114 :: v_dual_mul_f32 v114, v143, v184
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v122, v144, v200
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v80, v16, v12 :: v_dual_fmac_f32 v79, v17, v13
	v_dual_fmac_f32 v78, v18, v14 :: v_dual_fmac_f32 v77, v19, v15
	v_dual_fmac_f32 v63, v108, v12 :: v_dual_fmac_f32 v62, v109, v13
	v_dual_fmac_f32 v61, v110, v14 :: v_dual_fmac_f32 v60, v111, v15
	v_fmac_f32_e32 v47, v114, v10
	v_dual_fmac_f32 v45, v116, v12 :: v_dual_fmac_f32 v44, v117, v13
	v_dual_fmac_f32 v43, v118, v14 :: v_dual_fmac_f32 v42, v119, v15
	v_fmac_f32_e32 v33, v120, v8
	v_fmac_f32_e32 v68, v22, v8
	v_fmac_f32_e32 v31, v122, v10
	v_fmac_f32_e32 v66, v24, v10
	v_dual_fmac_f32 v28, v125, v13 :: v_dual_fmac_f32 v27, v126, v14
	v_fmac_f32_e32 v26, v127, v15
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v3, v64
.LBB0_7:                                ; %._crit_edge
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_bfe_u32 v7, v85, 16, 1
	v_bfe_u32 v8, v92, 16, 1
	v_bfe_u32 v10, v90, 16, 1
	v_bfe_u32 v9, v91, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_add3_u32 v7, v85, v7, 0x7fff
	v_add3_u32 v8, v92, v8, 0x7fff
	v_cmp_o_f32_e64 s0, v92, v92
	v_add3_u32 v10, v90, v10, 0x7fff
	v_cmp_o_f32_e64 s2, v90, v90
	v_bfe_u32 v11, v89, 16, 1
	v_add3_u32 v9, v91, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v91, v91
	v_cndmask_b16 v7.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s0
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s2
	v_add3_u32 v10, v89, v11, 0x7fff
	v_bfe_u32 v11, v87, 16, 1
	v_bfe_u32 v12, v86, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v9.h, s1
	v_bfe_u32 v9, v88, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	v_add3_u32 v11, v87, v11, 0x7fff
	v_cmp_o_f32_e64 s1, v87, v87
	v_add3_u32 v12, v86, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v86, v86
	v_add3_u32 v9, v88, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v88, v88
	v_cndmask_b16 v9.l, 0x7fff, v10.h, vcc_lo
	v_bfe_u32 v10, v84, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s1
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s2
	v_bfe_u32 v12, v83, 16, 1
	v_bfe_u32 v14, v81, 16, 1
	v_bfe_u32 v13, v82, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s0
	v_add3_u32 v10, v84, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_add3_u32 v12, v83, v12, 0x7fff
	v_cmp_o_f32_e64 s0, v83, v83
	v_add3_u32 v14, v81, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v81, v81
	v_bfe_u32 v15, v80, 16, 1
	v_add3_u32 v13, v82, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v82, v82
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s0
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s2
	v_add3_u32 v14, v80, v15, 0x7fff
	v_bfe_u32 v15, v78, 16, 1
	v_bfe_u32 v16, v77, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s1
	v_bfe_u32 v13, v79, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_add3_u32 v15, v78, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v78, v78
	v_add3_u32 v16, v77, v16, 0x7fff
	v_cmp_o_f32_e64 s2, v77, v77
	v_add3_u32 v13, v79, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v79, v79
	v_cndmask_b16 v13.l, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v76, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s1
	v_cndmask_b16 v15.h, 0x7fff, v16.h, s2
	v_bfe_u32 v16, v75, 16, 1
	v_bfe_u32 v18, v73, 16, 1
	v_bfe_u32 v17, v74, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s0
	v_add3_u32 v14, v76, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_add3_u32 v16, v75, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v75, v75
	v_add3_u32 v18, v73, v18, 0x7fff
	v_cmp_o_f32_e64 s2, v73, v73
	v_bfe_u32 v19, v72, 16, 1
	v_add3_u32 v17, v74, v17, 0x7fff
	v_cmp_o_f32_e64 s1, v74, v74
	v_cndmask_b16 v14.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s0
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s2
	v_add3_u32 v18, v72, v19, 0x7fff
	v_bfe_u32 v19, v70, 16, 1
	v_bfe_u32 v20, v69, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s1
	v_bfe_u32 v17, v71, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_add3_u32 v19, v70, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v70, v70
	v_add3_u32 v20, v69, v20, 0x7fff
	v_cmp_o_f32_e64 s2, v69, v69
	v_add3_u32 v17, v71, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v71, v71
	v_cndmask_b16 v17.l, 0x7fff, v18.h, vcc_lo
	v_bfe_u32 v18, v68, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s1
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s2
	v_bfe_u32 v20, v67, 16, 1
	v_bfe_u32 v22, v65, 16, 1
	v_bfe_u32 v21, v66, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s0
	v_add3_u32 v18, v68, v18, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_add3_u32 v20, v67, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v67, v67
	v_add3_u32 v22, v65, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v65, v65
	v_bfe_u32 v23, v63, 16, 1
	v_add3_u32 v21, v66, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v66, v66
	v_cndmask_b16 v18.l, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s0
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s2
	v_add3_u32 v22, v63, v23, 0x7fff
	v_bfe_u32 v23, v61, 16, 1
	v_bfe_u32 v24, v60, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v62, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	v_add3_u32 v23, v61, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v61, v61
	v_add3_u32 v24, v60, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v60, v60
	v_add3_u32 v21, v62, v21, 0x7fff
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v2, s15, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v62, v62
	v_cndmask_b16 v21.l, 0x7fff, v22.h, vcc_lo
	v_bfe_u32 v22, v59, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s1
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s2
	v_bfe_u32 v24, v58, 16, 1
	v_bfe_u32 v25, v55, 16, 1
	v_bfe_u32 v56, v54, 16, 1
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s0
	v_add3_u32 v22, v59, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_add3_u32 v24, v58, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v58, v58
	v_add3_u32 v25, v55, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v55, v55
	v_add3_u32 v55, v54, v56, 0x7fff
	v_cmp_o_f32_e64 s2, v54, v54
	v_bfe_u32 v54, v53, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s0
	v_cndmask_b16 v24.l, 0x7fff, v25.h, s1
	v_cndmask_b16 v24.h, 0x7fff, v55.h, s2
	v_bfe_u32 v25, v52, 16, 1
	v_add3_u32 v54, v53, v54, 0x7fff
	v_bfe_u32 v55, v51, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_bfe_u32 v53, v50, 16, 1
	v_add3_u32 v25, v52, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v52, v52
	v_add3_u32 v52, v51, v55, 0x7fff
	v_cmp_o_f32_e64 s1, v51, v51
	v_add3_u32 v51, v50, v53, 0x7fff
	v_cmp_o_f32_e64 s2, v50, v50
	v_bfe_u32 v50, v49, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v54.h, vcc_lo
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s1
	v_bfe_u32 v52, v48, 16, 1
	v_bfe_u32 v53, v47, 16, 1
	v_add3_u32 v50, v49, v50, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_bfe_u32 v49, v46, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s0
	v_add3_u32 v52, v48, v52, 0x7fff
	v_cmp_o_f32_e64 s0, v48, v48
	v_add3_u32 v48, v47, v53, 0x7fff
	v_cmp_o_f32_e64 s1, v47, v47
	v_add3_u32 v47, v46, v49, 0x7fff
	v_bfe_u32 v49, v45, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s2
	v_cmp_o_f32_e64 s2, v46, v46
	v_cndmask_b16 v46.l, 0x7fff, v50.h, vcc_lo
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s1
	v_bfe_u32 v48, v44, 16, 1
	v_add3_u32 v49, v45, v49, 0x7fff
	v_bfe_u32 v50, v43, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_bfe_u32 v45, v42, 16, 1
	v_cndmask_b16 v46.h, 0x7fff, v52.h, s0
	v_add3_u32 v48, v44, v48, 0x7fff
	v_cmp_o_f32_e64 s0, v44, v44
	v_add3_u32 v44, v43, v50, 0x7fff
	v_cmp_o_f32_e64 s1, v43, v43
	v_add3_u32 v43, v42, v45, 0x7fff
	v_bfe_u32 v45, v41, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s2
	v_cmp_o_f32_e64 s2, v42, v42
	v_cndmask_b16 v42.l, 0x7fff, v49.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v48.h, s0
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s1
	v_bfe_u32 v44, v40, 16, 1
	v_add3_u32 v45, v41, v45, 0x7fff
	v_bfe_u32 v48, v39, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_bfe_u32 v41, v38, 16, 1
	v_add3_u32 v44, v40, v44, 0x7fff
	v_cmp_o_f32_e64 s0, v40, v40
	v_add3_u32 v40, v39, v48, 0x7fff
	v_cmp_o_f32_e64 s1, v39, v39
	v_add3_u32 v39, v38, v41, 0x7fff
	v_bfe_u32 v41, v37, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s2
	v_cmp_o_f32_e64 s2, v38, v38
	v_cndmask_b16 v38.l, 0x7fff, v45.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v44.h, s0
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s1
	v_bfe_u32 v40, v36, 16, 1
	v_add3_u32 v41, v37, v41, 0x7fff
	v_bfe_u32 v44, v35, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_bfe_u32 v37, v34, 16, 1
	v_add3_u32 v40, v36, v40, 0x7fff
	v_cmp_o_f32_e64 s0, v36, v36
	v_add3_u32 v36, v35, v44, 0x7fff
	v_cmp_o_f32_e64 s1, v35, v35
	v_add3_u32 v35, v34, v37, 0x7fff
	v_bfe_u32 v37, v33, 16, 1
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s2
	v_cmp_o_f32_e64 s2, v34, v34
	v_cndmask_b16 v34.l, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v34.h, 0x7fff, v40.h, s0
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s1
	v_bfe_u32 v36, v32, 16, 1
	v_add3_u32 v37, v33, v37, 0x7fff
	v_bfe_u32 v40, v31, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_bfe_u32 v33, v30, 16, 1
	v_add3_u32 v36, v32, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v32, v32
	v_add3_u32 v32, v31, v40, 0x7fff
	v_cmp_o_f32_e64 s1, v31, v31
	v_add3_u32 v31, v30, v33, 0x7fff
	v_bfe_u32 v33, v29, 16, 1
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v0, 1, v57
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s2
	v_cmp_o_f32_e64 s2, v30, v30
	v_cndmask_b16 v30.l, 0x7fff, v37.h, vcc_lo
	v_cndmask_b16 v30.h, 0x7fff, v36.h, s0
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s1
	v_bfe_u32 v32, v28, 16, 1
	v_add3_u32 v33, v29, v33, 0x7fff
	v_bfe_u32 v36, v27, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_bfe_u32 v29, v26, 16, 1
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	s_mul_i32 s20, s20, s15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v4, s20, s14, v0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v28, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v28, v28
	v_add3_u32 v28, v27, v36, 0x7fff
	v_cmp_o_f32_e64 s1, v27, v27
	v_add3_u32 v27, v26, v29, 0x7fff
	v_cmp_o_f32_e64 s2, v26, v26
	v_cndmask_b16 v26.l, 0x7fff, v33.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[0:1], null, s15, 48, v[2:3]
	v_add_nc_u32_e32 v1, 0x80, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v26.h, 0x7fff, v32.h, s0
	v_cndmask_b16 v3.l, 0x7fff, v28.h, s1
	v_cndmask_b16 v3.h, 0x7fff, v27.h, s2
	v_dual_cndmask_b32 v27, v9, v7 :: v_dual_cndmask_b32 v28, v11, v8
	v_dual_cndmask_b32 v7, v7, v9 :: v_dual_cndmask_b32 v8, v8, v11
	v_dual_cndmask_b32 v29, v13, v10 :: v_dual_cndmask_b32 v32, v15, v12
	v_dual_cndmask_b32 v9, v10, v13 :: v_dual_cndmask_b32 v36, v19, v16
	v_dual_cndmask_b32 v10, v12, v15 :: v_dual_cndmask_b32 v33, v17, v14
	v_dual_cndmask_b32 v12, v16, v19 :: v_dual_cndmask_b32 v11, v14, v17
	v_dual_cndmask_b32 v40, v23, v20 :: v_dual_cndmask_b32 v37, v21, v18
	v_dual_cndmask_b32 v14, v20, v23 :: v_dual_cndmask_b32 v41, v25, v22
	v_dual_cndmask_b32 v16, v24, v51 :: v_dual_cndmask_b32 v15, v22, v25
	v_dual_cndmask_b32 v19, v38, v34 :: v_dual_mov_b32 v22, 0x5410
	v_mov_b32_e32 v23, 0x7632
	s_mov_b32 s0, 0x76543210
	v_dual_cndmask_b32 v13, v18, v21 :: v_dual_cndmask_b32 v44, v51, v24
	v_cndmask_b32_e32 v21, v30, v26, vcc_lo
	v_permlanex16_b32 v24, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v7, 0x1054, v22, vcc_lo
	v_cndmask_b32_e32 v22, 0x3276, v23, vcc_lo
	v_permlanex16_b32 v23, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v45, v42, v46 :: v_dual_cndmask_b32 v18, v47, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_dual_cndmask_b32 v17, v46, v42 :: v_dual_cndmask_b32 v42, v43, v47
	v_dual_cndmask_b32 v43, v34, v38 :: v_dual_cndmask_b32 v20, v39, v35
	v_cndmask_b32_e32 v34, v35, v39, vcc_lo
	v_dual_cndmask_b32 v38, v26, v30 :: v_dual_cndmask_b32 v39, v3, v31
	v_dual_cndmask_b32 v3, v31, v3 :: v_dual_and_b32 v8, 0x760076, v8
	v_and_b32_e32 v7, 0x540054, v7
	v_permlanex16_b32 v25, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v10, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v6, s15, 4, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v8, v8, 4, v8
	v_lshl_or_b32 v7, v7, 4, v7
	v_permlanex16_b32 v22, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v52, 0x7060706, v8
	v_and_b32_e32 v51, 0x5040504, v7
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v5, s15, 5, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v31, v13, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v2, v4, v2, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v8, v24, v27, v52
	v_perm_b32 v7, v24, v27, v51
	v_perm_b32 v9, v23, v28, v51
	v_perm_b32 v10, v23, v28, v52
	v_permlanex16_b32 v46, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v54, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v25, v29, v51
	v_perm_b32 v12, v25, v29, v52
	v_perm_b32 v13, v26, v32, v51
	v_perm_b32 v14, v26, v32, v52
	v_permlanex16_b32 v48, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v22, v33, v51
	v_perm_b32 v16, v22, v33, v52
	v_perm_b32 v17, v30, v36, v51
	v_perm_b32 v18, v30, v36, v52
	v_perm_b32 v21, v35, v40, v51
	v_perm_b32 v22, v35, v40, v52
	v_add_lshl_u32 v40, v4, v6, 1
	v_permlanex16_b32 v50, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v53, v20, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_perm_b32 v19, v31, v37, v51
	v_perm_b32 v20, v31, v37, v52
	s_clause 0x2
	buffer_store_b128 v[7:10], v2, s[12:15], 0 offen
	buffer_store_b128 v[11:14], v2, s[12:15], 0 offen offset:256
	buffer_store_b128 v[15:18], v40, s[12:15], 0 offen
	v_add_lshl_u32 v2, v1, v6, 1
	v_perm_b32 v23, v46, v41, v51
	v_perm_b32 v24, v46, v41, v52
	v_perm_b32 v25, v47, v44, v51
	v_perm_b32 v26, v47, v44, v52
	v_perm_b32 v35, v54, v38, v51
	v_perm_b32 v36, v54, v38, v52
	v_perm_b32 v37, v3, v39, v51
	v_perm_b32 v38, v3, v39, v52
	v_add_lshl_u32 v3, v4, v5, 1
	v_perm_b32 v27, v48, v45, v51
	v_perm_b32 v28, v48, v45, v52
	v_perm_b32 v29, v49, v42, v51
	v_perm_b32 v30, v49, v42, v52
	v_add_lshl_u32 v5, v1, v5, 1
	v_perm_b32 v31, v50, v43, v51
	v_perm_b32 v32, v50, v43, v52
	v_perm_b32 v33, v53, v34, v51
	v_perm_b32 v34, v53, v34, v52
	v_add_lshl_u32 v4, v4, v0, 1
	v_add_lshl_u32 v0, v1, v0, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v2, s[12:15], 0 offen
	buffer_store_b128 v[23:26], v3, s[12:15], 0 offen
	buffer_store_b128 v[27:30], v5, s[12:15], 0 offen
	buffer_store_b128 v[31:34], v4, s[12:15], 0 offen
	buffer_store_b128 v[35:38], v0, s[12:15], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp26:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 246
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
		.amdhsa_inst_pref_size 62
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 246
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7896
; TotalNumSgprs: 34
; NumVgprs: 246
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 246
; Occupancy: 5
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     246
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
