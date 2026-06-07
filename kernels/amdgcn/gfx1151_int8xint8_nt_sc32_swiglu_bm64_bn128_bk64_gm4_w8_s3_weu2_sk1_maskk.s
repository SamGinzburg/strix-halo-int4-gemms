	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b32 s29, s[0:1], 0x38
	v_mov_b32_e32 v142, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v0
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v2, 16, v0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s6, v1
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	s_mul_f32 s6, s6, 0x4f7ffffe
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s6, s6
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	s_mul_i32 s9, s9, s6
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	s_mul_hi_u32 s9, s6, s9
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v121, 0
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v123, 0
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v125, 0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	s_cselect_b32 s5, s10, s6
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	s_xor_b32 s5, s5, s9
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	s_sub_i32 s5, s5, s9
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s9
	v_lshrrev_b32_e32 v26, 1, v0
	s_mov_b32 s12, 0
	v_readfirstlane_b32 s9, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v46, v3, 16, v1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v47, 32, v46
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s9, s10
	s_add_i32 s9, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s13, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s29, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s2, s13
	v_cmp_eq_u32_e64 s2, 0, v2
	s_sub_i32 s5, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s5, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s5, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s4, s4, s7
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 299 14 is_stmt 1              ; generate_amdgcn.py:299:14
	s_lshl_b32 s28, s4, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s15, 64
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp14:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s29, 31
.Ltmp15:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s16, s15, 31
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s17, s0, 31
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s16, s16, 26
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s17, s17, 27
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s15, s15, s16
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s0, s0, s17
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s30, s15, 6
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s31, s0, 5
.Ltmp23:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v5, 0x60, v0
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v4, 4, v0
	v_lshlrev_b32_e32 v23, 5, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v21, 2, v0
	v_lshlrev_b32_e32 v22, 2, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 1, v5
	v_dual_mov_b32 v142, 0 :: v_dual_lshlrev_b32 v5, 4, v5
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v28, 16, v4
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshlrev_b32_e32 v3, 3, v0
	v_bfe_i32 v25, v0, 3, 1
	v_bfe_i32 v0, v0, 2, 1
	v_and_or_b32 v5, 0x160, v23, v5
	v_and_b32_e32 v22, 0x210, v22
	v_and_b32_e32 v4, 0xf70, v4
	v_dual_mov_b32 v140, 0 :: v_dual_and_b32 v23, 0x90, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v0, 0x90, v0, v5
	v_or_b32_e32 v5, s28, v46
	v_lshl_or_b32 v1, v1, 5, v22
	v_or_b32_e32 v22, s28, v47
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 4, v2
	v_xor_b32_e32 v4, v23, v4
	v_mul_lo_u32 v5, v5, s31
	v_xor_b32_e32 v23, 16, v1
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v1, 0, v1
	v_or_b32_e32 v2, v2, v6
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v27, 24, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:192
	scratch_store_b32 off, v5, off offset:24
	v_mul_lo_u32 v5, v22, s31
	v_or_b32_e32 v6, 0x4e, v2
	v_or_b32_e32 v7, 0x4c, v2
	v_or_b32_e32 v8, 0x4a, v2
	v_or_b32_e32 v9, 0x48, v2
	v_or_b32_e32 v10, 0x46, v2
	v_or_b32_e32 v11, 0x44, v2
	v_or_b32_e32 v12, 0x42, v2
	v_or_b32_e32 v13, 64, v2
	v_or_b32_e32 v14, 14, v2
	v_or_b32_e32 v15, 12, v2
	v_or_b32_e32 v16, 10, v2
	v_or_b32_e32 v17, 8, v2
	v_or_b32_e32 v18, 6, v2
	v_or_b32_e32 v19, 4, v2
	v_or_b32_e32 v20, 2, v2
	v_add_nc_u32_e32 v1, 0, v23
	scratch_store_b32 off, v5, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v5, s22, v2
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v2, s23, v2
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v129, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:32
	scratch_store_b32 off, v46, off offset:200
	scratch_store_b32 off, v2, off offset:96
	v_or_b32_e32 v5, s22, v20
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v2, s23, v20
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v127, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:36
	scratch_store_b32 off, v47, off offset:204
	scratch_store_b32 off, v2, off offset:100
	v_or_b32_e32 v5, s22, v19
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v2, s23, v19
	v_mov_b32_e32 v123, 0
	v_cndmask_b32_e64 v24, 0x90, 0, s2
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v5, off offset:40
	scratch_store_b32 off, v2, off offset:104
	scratch_store_b32 off, v26, off offset:208
	v_or_b32_e32 v5, s22, v18
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v2, s23, v18
	v_mov_b32_e32 v115, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:196
	scratch_store_b32 off, v5, off offset:44
	scratch_store_b32 off, v2, off offset:108
	v_or_b32_e32 v5, s22, v17
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v2, s23, v17
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v182, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:48
	scratch_store_b32 off, v2, off offset:112
	v_or_b32_e32 v5, s22, v16
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v2, s23, v16
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v136, 0
	v_mov_b32_e32 v103, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:52
	scratch_store_b32 off, v2, off offset:116
	v_or_b32_e32 v5, s22, v15
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v2, s23, v15
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v101, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:56
	scratch_store_b32 off, v2, off offset:120
	v_or_b32_e32 v5, s22, v14
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v2, s23, v14
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v126, 0
	v_mov_b32_e32 v95, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:60
	scratch_store_b32 off, v2, off offset:124
	v_or_b32_e32 v5, s22, v13
	v_add_nc_u32_e32 v2, s23, v13
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v91, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:64
	scratch_store_b32 off, v2, off offset:128
	v_or_b32_e32 v5, s22, v12
	v_add_nc_u32_e32 v2, s23, v12
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v83, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:68
	scratch_store_b32 off, v2, off offset:132
	v_or_b32_e32 v5, s22, v11
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v2, s23, v11
	v_mov_b32_e32 v138, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v81, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:72
	scratch_store_b32 off, v2, off offset:136
	v_or_b32_e32 v5, s22, v10
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v2, s23, v10
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v87, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:76
	scratch_store_b32 off, v2, off offset:140
	v_or_b32_e32 v5, s22, v9
	v_add_nc_u32_e32 v2, s23, v9
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v79, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:80
	scratch_store_b32 off, v2, off offset:144
	v_or_b32_e32 v5, s22, v8
	v_add_nc_u32_e32 v2, s23, v8
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v106, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:84
	scratch_store_b32 off, v2, off offset:148
	v_or_b32_e32 v5, s22, v7
	v_add_nc_u32_e32 v2, s23, v7
	v_dual_mov_b32 v7, v27 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v98, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v5, off offset:88
	scratch_store_b32 off, v2, off offset:152
	scratch_store_b64 off, v[7:8], off offset:8
	v_or_b32_e32 v5, s22, v6
	v_add_nc_u32_e32 v2, s23, v6
	v_add_nc_u32_e32 v6, s28, v21
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v102, 0
	scratch_store_b32 off, v5, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v5, s0, v26
	v_mad_u64_u32 v[6:7], null, s29, v6, v[27:28]
	scratch_store_b32 off, v2, off offset:156 ; 4-byte Folded Spill
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v175, off, off offset:116
	scratch_load_b32 v176, off, off offset:120
	scratch_load_b32 v177, off, off offset:124
	scratch_load_b32 v178, off, off offset:136
	scratch_load_b32 v179, off, off offset:140
	scratch_load_b32 v180, off, off offset:144
	scratch_load_b32 v181, off, off offset:148
	scratch_load_b32 v77, off, off offset:152
	scratch_load_b32 v78, off, off offset:156
	v_add3_u32 v2, s23, s0, v26
	s_lshl_b32 s0, s13, 7
	s_mov_b32 s13, s12
	v_subrev_nc_u32_e32 v5, s0, v5
	scratch_store_b64 off, v[6:7], off offset:160 ; 8-byte Folded Spill
	v_subrev_nc_u32_e32 v2, s0, v2
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v90, 0
	v_mad_u64_u32 v[6:7], null, s29, v2, v[28:29]
	v_dual_mov_b32 v2, v28 :: v_dual_and_b32 v3, 0x778, v3
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v86, 0
	v_xor_b32_e32 v3, v24, v3
	scratch_store_b64 off, v[6:7], off offset:168 ; 8-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s29, v5, v[28:29]
	v_xor_b32_e32 v24, 16, v0
	scratch_store_b64 off, v[2:3], off offset:16 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v2, 0, v3
	v_mov_b32_e32 v80, 0
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v183, 0, v24
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[5:6], off offset:176
	scratch_store_b32 off, v2, off offset:184
	v_add_nc_u32_e32 v2, 0, v4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s7, s7, 0xffff
	scratch_store_b32 off, v2, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, s12 :: v_dual_mov_b32 v1, s13
	v_dual_mov_b32 v2, s14 :: v_dual_mov_b32 v3, s15
	v_dual_mov_b32 v4, s16 :: v_dual_mov_b32 v5, s17
	v_dual_mov_b32 v6, s18 :: v_dual_mov_b32 v7, s19
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s1, s23, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s3, s3, 6
	s_mov_b32 s24, s4
	s_mov_b32 s25, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s26
	s_mov_b32 s7, s27
	s_mov_b32 s12, s8
	s_mov_b32 s13, s9
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_clause 0x4                            ; 40-byte Folded Reload
	scratch_load_b64 v[8:9], off, off offset:8
	scratch_load_b64 v[9:10], off, off offset:160
	scratch_load_b64 v[10:11], off, off offset:16
	scratch_load_b64 v[11:12], off, off offset:176
	scratch_load_b64 v[12:13], off, off offset:168
	s_add_i32 s16, s3, 32
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v8, s3, v8
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v9, s3, v9
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v10, s3, v10
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v11, s3, v11
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, s3, v12
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e32 vcc_lo, s29, v8
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	v_add_nc_u32_e32 v8, 32, v8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_dual_cndmask_b32 v13, 0x80000000, v9 :: v_dual_add_nc_u32 v16, 32, v12
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s29, v10
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_add_nc_u32_e32 v10, 32, v10
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	v_add_nc_u32_e32 v9, 32, v9
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s0, s29, v8
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e32 v14, 0x80000000, v11, vcc_lo
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 314 27                        ; generate_amdgcn.py:314:27
	v_cmp_gt_i32_e32 vcc_lo, s29, v10
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_add_nc_u32_e32 v11, 32, v11
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	buffer_load_b64 v[24:25], v13, s[24:27], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v9, s0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s3, 5
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	v_cndmask_b32_e32 v20, 0x80000000, v16, vcc_lo
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	v_cndmask_b32_e32 v18, 0x80000000, v11, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[8:11], v14, s[4:7], 0 offen
	buffer_load_b128 v[12:15], v12, s[4:7], 0 offen
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v28, off, off offset:184 ; 4-byte Folded Reload
	buffer_load_b64 v[26:27], v17, s[24:27], 0 offen
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_clause 0x1
	buffer_load_b128 v[16:19], v18, s[4:7], 0 offen
	buffer_load_b128 v[20:23], v20, s[4:7], 0 offen
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s31
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s18, s0, s1
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt vmcnt(3)
	ds_store_b64 v28, v[24:25] offset:16384
	scratch_load_b32 v24, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v24, v[8:11]
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_store_b128 v24, v[12:15] offset:8192
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v28, v[26:27] offset:18432
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_store_b128 v24, v[16:19] offset:4096
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_store_b128 v24, v[20:23] offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v16, off, off offset:192
	scratch_load_b32 v17, off, off offset:196
	scratch_load_b32 v249, off, off offset:100
	scratch_load_b32 v250, off, off offset:104
	scratch_load_b32 v251, off, off offset:108
	scratch_load_b32 v252, off, off offset:112
	s_waitcnt vmcnt(4)
	ds_load_b128 v[32:35], v17 offset:16384
	ds_load_b128 v[36:39], v17 offset:17408
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[8:11], v182
	ds_load_b128 v[12:15], v182 offset:2048
	ds_load_b128 v[48:51], v183
	ds_load_b128 v[56:59], v183 offset:2048
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[52:55], v182 offset:8192
	ds_load_b128 v[60:63], v182 offset:10240
	ds_load_b128 v[64:67], v183 offset:8192
	ds_load_b128 v[68:71], v183 offset:10240
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[167:170], v16 offset:18432
	ds_load_b128 v[208:211], v16 offset:19456
	ds_load_b128 v[171:174], v17 offset:18432
	ds_load_b128 v[212:215], v17 offset:19456
	.loc	1 320 26                        ; generate_amdgcn.py:320:26
	ds_load_b128 v[159:162], v182 offset:4096
	ds_load_b128 v[163:166], v182 offset:6144
	ds_load_b128 v[216:219], v183 offset:4096
	ds_load_b128 v[220:223], v183 offset:6144
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[224:227], v182 offset:12288
	ds_load_b128 v[228:231], v182 offset:14336
	ds_load_b128 v[232:235], v183 offset:12288
	.loc	1 318 26                        ; generate_amdgcn.py:318:26
	ds_load_b128 v[24:27], v16 offset:16384
	ds_load_b128 v[28:31], v16 offset:17408
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v74, off, off offset:68
	scratch_load_b32 v75, off, off offset:72
	scratch_load_b32 v133, off, off offset:80
	scratch_load_b32 v134, off, off offset:84
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[159:162], v[167:170], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[159:162], v[208:211], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[151:158], v[216:219], v[171:174], v[151:158] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[241:248], v[8:11], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[216:219], v[212:215], v[200:207] neg_lo:[1,1,0]
	.loc	1 326 35                        ; generate_amdgcn.py:326:35
	ds_load_b128 v[216:219], v183 offset:14336
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[184:191], v[8:11], v[28:31], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[16:23], v[12:15], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[12:15], v[28:31], v[0:7] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[143:150], v[52:55], v[24:27], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[60:63], v[24:27], v[0:7] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[241:248], v[48:51], v[32:35], v[241:248] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[184:191], v[48:51], v[36:39], v[184:191] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[192:199], v[52:55], v[28:31], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[60:63], v[28:31], v[0:7] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[16:23], v[56:59], v[32:35], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[40:47], v[56:59], v[36:39], v[40:47] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[143:150], v[64:67], v[32:35], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[8:15], v[68:71], v[32:35], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[192:199], v[64:67], v[36:39], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[48:55], v[68:71], v[36:39], v[48:55] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[24:31], v[163:166], v[167:170], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[56:63], v[163:166], v[208:211], v[0:7] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[159:166], v[224:227], v[167:170], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[32:39], v[228:231], v[167:170], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[24:31], v[220:223], v[171:174], v[24:31] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[159:166], v[232:235], v[171:174], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[228:231], v[208:211], v[0:7] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[32:39], v[216:219], v[171:174], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[167:174], v[224:227], v[208:211], v[0:7] neg_lo:[1,1,0]
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[56:63], v[220:223], v[212:215], v[56:63] neg_lo:[1,1,0]
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_wmma_i32_16x16x16_iu8 v[64:71], v[216:219], v[212:215], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v240, v193
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[167:174], v[232:235], v[212:215], v[167:174] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v215, v160
	v_cvt_f32_i32_e32 v160, v12
	scratch_load_b32 v12, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v193, v156
	v_cvt_f32_i32_e32 v156, v22
	scratch_load_b32 v22, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v226, v196
	v_cvt_f32_i32_e32 v217, v198
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v72, v202
	v_cvt_f32_i32_e32 v232, v248
	v_cvt_f32_i32_e32 v231, v247
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v237, v148
	v_cvt_f32_i32_e32 v230, v150
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v196, v151
	v_cvt_f32_i32_e32 v198, v158
	v_cvt_f32_i32_e32 v228, v41
	v_cvt_f32_i32_e32 v41, v43
	v_cvt_f32_i32_e32 v43, v45
	v_cvt_f32_i32_e32 v148, v46
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v150, v48
	v_cvt_f32_i32_e32 v151, v50
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v48, v56
	v_cvt_f32_i32_e32 v45, v58
	v_cvt_f32_i32_e32 v50, v59
	v_cvt_f32_i32_e32 v46, v60
	v_cvt_f32_i32_e32 v58, v63
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v63, v66
	v_cvt_f32_i32_e32 v158, v10
	v_cvt_f32_i32_e32 v247, v38
	v_cvt_f32_i32_e32 v248, v39
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v39, off, off offset:36
	scratch_load_b32 v56, off, off offset:40
	scratch_load_b32 v59, off, off offset:44
	scratch_load_b32 v60, off, off offset:48
	scratch_load_b32 v66, off, off offset:52
	scratch_load_b32 v38, off, off offset:32
	v_cvt_f32_i32_e32 v233, v194
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v194, v157
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v157, v11
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	scratch_store_b32 off, v72, off offset:4 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v72, v204
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v234, v147
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v147, v47
	v_cvt_f32_i32_e32 v47, v57
	v_cvt_f32_i32_e32 v57, v62
	scratch_store_b32 off, v72, off         ; 4-byte Folded Spill
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v62, v65
	v_cvt_f32_i32_e32 v65, v68
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:56
	scratch_load_b32 v72, off, off offset:60
	v_cvt_f32_i32_e32 v212, v159
	v_cvt_f32_i32_e32 v159, v13
	v_cvt_f32_i32_e32 v213, v162
	v_cvt_f32_i32_e32 v162, v14
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v218, v184
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v184, v161
	v_cvt_f32_i32_e32 v161, v15
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v216, v186
	v_cvt_f32_i32_e32 v224, v189
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v239, v192
	v_cvt_f32_i32_e32 v236, v195
	v_cvt_f32_i32_e32 v229, v197
	v_cvt_f32_i32_e32 v220, v199
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v186, v205
	v_cvt_f32_i32_e32 v195, v207
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v227, v149
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v199, v152
	v_cvt_f32_i32_e32 v192, v153
	v_cvt_f32_i32_e32 v197, v154
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v205, v166
	v_cvt_f32_i32_e32 v149, v49
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v49, v61
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v61, v64
	v_cvt_f32_i32_e32 v64, v67
	v_cvt_f32_i32_e32 v67, v69
	v_cvt_f32_i32_e32 v69, v70
	v_cvt_f32_i32_e32 v70, v71
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v71, v19
	v_cvt_f32_i32_e32 v152, v18
	v_cvt_f32_i32_e32 v153, v21
	v_cvt_f32_i32_e32 v154, v20
	v_cvt_f32_i32_e32 v166, v27
	v_mov_b32_e32 v207, v76
	scratch_load_b32 v76, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v209, v164
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v164, v25
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v210, v167
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v167, v242
	v_cvt_f32_i32_e32 v222, v185
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v214, v168
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v168, v241
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v221, v188
	v_cvt_f32_i32_e32 v223, v190
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v241, v32
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v190, v155
	v_cvt_f32_i32_e32 v155, v23
	v_cvt_f32_i32_e32 v189, v201
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v202, v171
	v_cvt_f32_i32_e32 v204, v163
	v_cvt_f32_i32_e32 v201, v165
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v163, v24
	v_cvt_f32_i32_e32 v165, v26
	v_cvt_f32_i32_e32 v171, v28
	v_cvt_f32_i32_e32 v219, v187
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v185, v172
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v172, v29
	v_cvt_f32_i32_e32 v225, v191
	v_cvt_f32_i32_e32 v191, v206
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v206, v169
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v169, v244
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v145, v145
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v187, v200
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v200, v173
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v173, v30
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v211, v170
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v170, v243
	v_cvt_f32_i32_e32 v238, v246
	v_cvt_f32_i32_e32 v188, v203
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v203, v174
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v174, v31
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v243, v34
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v235, v245
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v242, v33
	v_cvt_f32_i32_e32 v245, v36
	v_cvt_f32_i32_e32 v244, v35
	v_cvt_f32_i32_e32 v246, v37
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 329 32                        ; generate_amdgcn.py:329:32
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v10, v12, s0, 1
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v11, v22, s0, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s16, s16, 5
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s17, s18, s22
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v12, v12, s16, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s16, s31
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	buffer_load_u16 v10, v10, s[12:15], 0 offen
	v_add_lshl_u32 v22, v22, s16, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v24, s17, v175, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v26, s17, v176, 1
	v_add_lshl_u32 v28, s17, v177, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s16, s16, s1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v24, 0x80000000, v24, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s30, s30, -1
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	v_cndmask_b32_e64 v28, 0x80000000, v28, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s3, s3, 64
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v13, v39, s18, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v14, v56, s18, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v15, v59, s18, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v18, v60, s18, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v19, v66, s18, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v208, v73 :: v_dual_lshlrev_b32 v27, 16, v10
	scratch_load_b32 v73, off, off offset:64 ; 4-byte Folded Reload
	v_add_lshl_u32 v20, v68, s18, 1
	v_add_lshl_u32 v21, v72, s18, 1
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v10, v27, v167
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v167, v60, s16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s0
	v_cndmask_b32_e64 v21, 0x80000000, v21, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	buffer_load_u16 v11, v11, s[12:15], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x6
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v14, v14, s[8:11], 0 offen
	buffer_load_u16 v15, v15, s[8:11], 0 offen
	buffer_load_u16 v18, v18, s[8:11], 0 offen
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v20, v20, s[8:11], 0 offen
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v25, v12, s[12:15], 0 offen
	buffer_load_u16 v12, v22, s[12:15], 0 offen
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v22, v11, v222 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v140, v10, v13
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v10, v38, s18, 1
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v32, v11, v221
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v106, v22, v13 :: v_dual_mul_f32 v13, v11, v218
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v221, off, off offset:132
	scratch_load_b32 v222, off, off offset:96
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v22, s17, v251, 1
	v_add_lshl_u32 v23, s17, v252, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v29, v11, v240
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v30, v11, v224
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v22, 0x80000000, v22, s0
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v34, v11, v229
	v_mul_f32_e32 v36, v11, v226
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v224, v73, s16, 1
	v_add_lshl_u32 v226, v75, s16, 1
	v_add_lshl_u32 v229, v76, s16, 1
	v_lshlrev_b32_e32 v19, 16, v19
	scratch_load_b32 v218, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v33, v27, v235
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v35, v27, v237
	v_mul_f32_e32 v37, v27, v234
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v97, v30, v19
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v8, v27, v8 :: v_dual_lshlrev_b32 v21, 16, v21
	v_mul_f32_e32 v158, v27, v158
	v_mul_f32_e32 v157, v27, v157
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v154, v27, v154
	v_mul_f32_e32 v153, v27, v153
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v160, v27, v160
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v159, v27, v159 :: v_dual_lshlrev_b32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v105, v13, v10
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v27, v168
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v168, v66, s16, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v139, v13, v10
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v10, s17, v249, 1
	v_add_lshl_u32 v13, s17, v250, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	s_clause 0x6
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v13, v13, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v23, v23, s[8:11], 0 offen
	buffer_load_u16 v24, v24, s[8:11], 0 offen
	buffer_load_u16 v26, v26, s[8:11], 0 offen
	buffer_load_u16 v28, v28, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v31, v27, v238
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v108, v29, v10 :: v_dual_mul_f32 v29, v27, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v131, v37, v23 :: v_dual_lshlrev_b32 v18, 16, v18
	v_dual_fmac_f32 v99, v34, v24 :: v_dual_fmac_f32 v100, v36, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v142, v29, v10
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v10, s17, v222, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v29, v11, v239
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v132, v35, v24
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v23, v11, v225
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v130, v31, v19 :: v_dual_fmac_f32 v129, v33, v18
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_add_lshl_u32 v33, s17, v179, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v94, v23, v21
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v23, v27, v232
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v34, s17, v180, 1
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	v_add_lshl_u32 v24, s17, v181, 1
	v_add_lshl_u32 v35, s17, v77, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v126, v23, v21
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v11, v223
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v36, s17, v78, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v144, v39, s16, 1
	v_add_lshl_u32 v225, v74, s16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v93, v21, v20 :: v_dual_fmac_f32 v98, v32, v18
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v21, v27, v231
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v32, s17, v221, 1
	v_add_lshl_u32 v18, s17, v178, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v144, 0x80000000, v144, vcc_lo
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v125, v21, v20
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v28
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v11, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v96, v21, v20 :: v_dual_mul_f32 v21, v27, v230
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v230, v134, s16, 1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v128, v21, v20 :: v_dual_mul_f32 v21, v11, v217
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v20, 16, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v95, v21, v20
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v21, v27, v227
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v227, v133, s16, 1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v127, v21, v20 :: v_dual_lshlrev_b32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v107, v29, v10
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v29, v27, v143
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v143, v38, s16, 1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v141, v29, v10 :: v_dual_lshlrev_b32 v10, 16, v15
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v15, v11, v219
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v29, v27, v145
	scratch_load_b32 v219, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v19, v218, s18, 1
	v_add_lshl_u32 v145, v56, s16, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v102, v15, v10 :: v_dual_fmac_f32 v137, v29, v13
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v15, v27, v169
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v29, v134, s18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_add_lshl_u32 v169, v68, s16, 1
	v_add_lshl_u32 v237, v218, s16, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v136, v15, v10
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v10, 16, v14
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v14, v11, v216
	scratch_load_b32 v216, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v15, v27, v146
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v21, 0x80000000, v29, s0
	v_add_lshl_u32 v146, v59, s16, 1
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v101, v14, v10
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v14, v27, v170
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v170, v72, s16, 1
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	v_dual_cndmask_b32 v145, 0x80000000, v145 :: v_dual_cndmask_b32 v146, 0x80000000, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v135, v14, v10
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v10, 16, v22
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v14, v11, v236
	v_mul_f32_e32 v22, v11, v233
	.loc	1 340 21 is_stmt 0              ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v138, v15, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v104, v14, v10
	.loc	1 334 22 is_stmt 1              ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v10, v74, s18, 1
	v_add_lshl_u32 v15, v75, s18, 1
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v103, v22, v13
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v22, v76, s18, 1
	v_add_lshl_u32 v13, v133, s18, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	v_add_lshl_u32 v14, v73, s18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v22, s0
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v31, s17, v219, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v30, v216, s18, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v22, 0x80000000, v30, s0
	s_clause 0x6
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v231, v15, s[8:11], 0 offen
	buffer_load_u16 v232, v20, s[8:11], 0 offen
	buffer_load_u16 v233, v13, s[8:11], 0 offen
	buffer_load_u16 v234, v21, s[8:11], 0 offen
	buffer_load_u16 v235, v22, s[8:11], 0 offen
	buffer_load_u16 v236, v19, s[8:11], 0 offen
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v11, v228
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v27, v9
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v228, v216, s16, 1
	.loc	1 338 39                        ; generate_amdgcn.py:338:39
	s_add_i32 s16, s16, s22
	.loc	1 338 31 is_stmt 0              ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v15, 0x80000000, v34, s0
	v_add_lshl_u32 v239, s16, v249, 1
	v_add_lshl_u32 v238, s16, v222, 1
	v_add_lshl_u32 v240, s16, v250, 1
	v_add_lshl_u32 v253, s16, v251, 1
	v_add_lshl_u32 v74, s16, v175, 1
	v_add_lshl_u32 v75, s16, v176, 1
	v_add_lshl_u32 v76, s16, v219, 1
	v_add_lshl_u32 v73, s16, v221, 1
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v250, v11, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s30, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v89, v13, v10
	.loc	1 336 24 is_stmt 0              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v27, v17
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v17, 0x80000000, v35, s0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v122, v13, v10
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v10, 0x80000000, v14, s0
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v13, v11, v40
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v14, 0x80000000, v33, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v90, v13, v10 :: v_dual_mul_f32 v13, v27, v16
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v16, 0x80000000, v24, s0
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v121, v13, v10
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v10, 0x80000000, v32, s0
	v_cndmask_b32_e64 v13, 0x80000000, v18, s0
	v_cndmask_b32_e64 v18, 0x80000000, v36, s0
	s_clause 0x6
	buffer_load_u16 v10, v10, s[8:11], 0 offen
	buffer_load_u16 v254, v13, s[8:11], 0 offen
	buffer_load_u16 v255, v14, s[8:11], 0 offen
	buffer_load_u16 v134, v15, s[8:11], 0 offen
	buffer_load_u16 v249, v16, s[8:11], 0 offen
	buffer_load_u16 v133, v17, s[8:11], 0 offen
	buffer_load_u16 v72, v18, s[8:11], 0 offen
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v13, v11, v149
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v149, s16, v252, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v252, v11, v51 :: v_dual_cndmask_b32 v149, 0x80000000, v149
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v124, v9, v10
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e64 v9, 0x80000000, v31, s0
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v91, v13, v10
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v10, v11, v150
	.loc	1 338 31 is_stmt 1              ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v150, s16, v177, 1
	buffer_load_u16 v9, v9, s[8:11], 0 offen
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v150, 0x80000000, v150 :: v_dual_lshlrev_b32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v123, v8, v9
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v8, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v92, v10, v9 :: v_dual_lshlrev_b32 v9, 16, v12
	.loc	1 340 33 is_stmt 0              ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v223, v11, v53
	.loc	1 336 24 is_stmt 1              ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v220, v11, v44
	v_dual_mul_f32 v222, v11, v43 :: v_dual_lshlrev_b32 v43, 16, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v44, v9, v50 :: v_dual_mul_f32 v251, v11, v41
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v22, v9, v214
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v216, v11, v148 :: v_dual_mul_f32 v21, v9, v206
	v_mul_f32_e32 v218, v11, v147
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v147, s16, v178, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v19, v9, v202 :: v_dual_mul_f32 v148, v27, v152
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v45, v9, v45 :: v_dual_mul_f32 v206, v27, v155
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v13, v9, v63
	v_mul_f32_e32 v10, v9, v67
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v63, s16, v179, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v202, v27, v161 :: v_dual_lshlrev_b32 v155, 16, v232
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v67, s16, v181, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v151, v11, v151 :: v_dual_mul_f32 v66, v9, v189
	v_dual_mul_f32 v221, v11, v52 :: v_dual_mul_f32 v20, v9, v211
	v_dual_mul_f32 v219, v11, v55 :: v_dual_mul_f32 v18, v9, v185
	v_dual_mul_f32 v17, v9, v200 :: v_dual_mul_f32 v152, v27, v71
	v_mul_f32_e32 v33, v43, v201
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v71, s16, v78, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v28, v43, v213
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v40, v9, v46 :: v_dual_mul_f32 v25, v43, v215
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v41, v43, v245
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v46, v43, v174 :: v_dual_cndmask_b32 v185, 0x80000000, v240
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v174, 0x80000000, v239, vcc_lo
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v38, v9, v49
	v_mul_f32_e32 v50, v43, v172
	v_mul_f32_e32 v49, v43, v173
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v173, 0x80000000, v238 :: v_dual_mul_f32 v68, v9, v187
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v23, v9, v210
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v59, v9, v188
	v_mul_f32_e32 v55, v9, v186
	v_mul_f32_e32 v51, v9, v195
	v_mul_f32_e32 v52, v9, v191
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v16, v9, v203
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v47, v9, v47
	v_mul_f32_e32 v48, v9, v48
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v14, v9, v62 :: v_dual_mul_f32 v203, v27, v156
	v_mul_f32_e32 v15, v9, v61
	v_dual_mul_f32 v12, v9, v64 :: v_dual_mul_f32 v191, v43, v199
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v24, v9, v58 :: v_dual_mul_f32 v187, v43, v197
	v_dual_mul_f32 v26, v9, v57 :: v_dual_mul_f32 v189, v43, v192
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v200, v27, v162
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v195, v43, v196
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v27, v43, v212
	v_dual_mul_f32 v30, v43, v209 :: v_dual_cndmask_b32 v161, 0x80000000, v167
	v_mul_f32_e32 v31, v43, v204
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v64, v43, v194
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v32, v43, v205
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v58, v43, v164
	v_dual_mul_f32 v61, v43, v163 :: v_dual_cndmask_b32 v162, 0x80000000, v168
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v34, v43, v242
	v_dual_mul_f32 v35, v43, v241 :: v_dual_cndmask_b32 v164, 0x80000000, v170
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v57, v43, v165 :: v_dual_cndmask_b32 v170, 0x80000000, v230
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v36, v43, v244 :: v_dual_cndmask_b32 v167, 0x80000000, v226
	v_mul_f32_e32 v37, v43, v243
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v53, v43, v171 :: v_dual_cndmask_b32 v168, 0x80000000, v229
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_dual_mul_f32 v39, v43, v246 :: v_dual_cndmask_b32 v172, 0x80000000, v237
	v_mul_f32_e32 v42, v43, v248
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v85, v251, v155
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v163, 0x80000000, v169 :: v_dual_lshlrev_b32 v156, 16, v231
	v_cndmask_b32_e32 v165, 0x80000000, v224, vcc_lo
	v_cndmask_b32_e32 v169, 0x80000000, v227, vcc_lo
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v147, 0x80000000, v147, vcc_lo
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	v_dual_cndmask_b32 v71, 0x80000000, v71 :: v_dual_lshlrev_b32 v134, 16, v134
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v171, 0x80000000, v228, vcc_lo
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v29, v43, v184
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v184, v43, v190
	v_mul_f32_e32 v62, v43, v198
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_cndmask_b32_e32 v186, 0x80000000, v253, vcc_lo
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v86, v250, v156
	v_fmac_f32_e32 v118, v152, v155
	v_fmac_f32_e32 v117, v148, v156
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v115, v160, v134 :: v_dual_mul_f32 v60, v9, v8
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	scratch_load_b32 v8, off, off           ; 4-byte Folded Reload
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v217, v11, v54
	v_mul_f32_e32 v11, v9, v65
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v65, s16, v180, 1
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v54, v43, v166
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e32 v166, 0x80000000, v225, vcc_lo
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_mul_f32 v56, v9, v8
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v8, v9, v70
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_add_lshl_u32 v70, s16, v77, 1
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v9, v9, v69
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v69, v43, v193
	.loc	1 340 33                        ; generate_amdgcn.py:340:33
	v_mul_f32_e32 v43, v43, v247
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_dual_cndmask_b32 v73, 0x80000000, v73 :: v_dual_cndmask_b32 v70, 0x80000000, v70
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0x1f
	buffer_load_u16 v144, v144, s[8:11], 0 offen
	buffer_load_u16 v143, v143, s[8:11], 0 offen
	buffer_load_u16 v174, v174, s[8:11], 0 offen
	buffer_load_u16 v173, v173, s[8:11], 0 offen
	buffer_load_u16 v146, v146, s[8:11], 0 offen
	buffer_load_u16 v145, v145, s[8:11], 0 offen
	buffer_load_u16 v186, v186, s[8:11], 0 offen
	buffer_load_u16 v185, v185, s[8:11], 0 offen
	buffer_load_u16 v162, v162, s[8:11], 0 offen
	buffer_load_u16 v161, v161, s[8:11], 0 offen
	buffer_load_u16 v74, v74, s[8:11], 0 offen
	buffer_load_u16 v149, v149, s[8:11], 0 offen
	buffer_load_u16 v164, v164, s[8:11], 0 offen
	buffer_load_u16 v163, v163, s[8:11], 0 offen
	buffer_load_u16 v150, v150, s[8:11], 0 offen
	buffer_load_u16 v75, v75, s[8:11], 0 offen
	buffer_load_u16 v166, v166, s[8:11], 0 offen
	buffer_load_u16 v165, v165, s[8:11], 0 offen
	buffer_load_u16 v73, v73, s[8:11], 0 offen
	buffer_load_u16 v76, v76, s[8:11], 0 offen
	buffer_load_u16 v168, v168, s[8:11], 0 offen
	buffer_load_u16 v167, v167, s[8:11], 0 offen
	buffer_load_u16 v63, v63, s[8:11], 0 offen
	buffer_load_u16 v147, v147, s[8:11], 0 offen
	buffer_load_u16 v170, v170, s[8:11], 0 offen
	buffer_load_u16 v169, v169, s[8:11], 0 offen
	buffer_load_u16 v67, v67, s[8:11], 0 offen
	buffer_load_u16 v201, v65, s[8:11], 0 offen
	buffer_load_u16 v172, v172, s[8:11], 0 offen
	buffer_load_u16 v171, v171, s[8:11], 0 offen
	buffer_load_u16 v204, v71, s[8:11], 0 offen
	buffer_load_u16 v205, v70, s[8:11], 0 offen
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v198, 16, v174
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v199, 16, v173
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v106, v66, v144
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v196, 16, v186
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v197, 16, v185
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v162, 16, v162
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v140, v191, v144 :: v_dual_lshlrev_b32 v133, 16, v133
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v194, 16, v149
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v102, v59, v146
	v_fmac_f32_e32 v130, v69, v162
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v80, v217, v133
	v_fmac_f32_e32 v112, v200, v133
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v192, 16, v75
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v136, v187, v146
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v142, v25, v198
	v_dual_fmac_f32 v138, v28, v196 :: v_dual_fmac_f32 v131, v31, v194
	v_fmac_f32_e32 v104, v20, v196
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v108, v22, v198 :: v_dual_lshlrev_b32 v185, 16, v147
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v147, 16, v233
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v186, 16, v73
	v_lshlrev_b32_e32 v73, 16, v254
	v_lshlrev_b32_e32 v190, 16, v150
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v150, 16, v165
	v_lshlrev_b32_e32 v165, 16, v234
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	v_lshlrev_b32_e32 v188, 16, v76
	v_lshlrev_b32_e32 v76, 16, v255
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v145, 16, v145
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v82, v220, v147 :: v_dual_lshlrev_b32 v161, 16, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v120, v157, v76
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v101, v60, v145 :: v_dual_lshlrev_b32 v72, 16, v72
	v_dual_fmac_f32 v114, v153, v165 :: v_dual_lshlrev_b32 v193, 16, v74
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v87, v151, v73 :: v_dual_lshlrev_b32 v74, 16, v164
	v_fmac_f32_e32 v88, v252, v76
	v_dual_mov_b32 v76, v207 :: v_dual_lshlrev_b32 v75, 16, v166
	v_dual_fmac_f32 v111, v202, v72 :: v_dual_lshlrev_b32 v166, 16, v249
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v149, 16, v163
	v_lshlrev_b32_e32 v163, 16, v168
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v105, v68, v143 :: v_dual_lshlrev_b32 v168, 16, v169
	v_dual_fmac_f32 v98, v56, v161 :: v_dual_lshlrev_b32 v169, 16, v235
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v119, v158, v73
	v_dual_mov_b32 v73, v208 :: v_dual_lshlrev_b32 v164, 16, v167
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v167, 16, v170
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v139, v195, v143 :: v_dual_lshlrev_b32 v170, 16, v236
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v79, v219, v72 :: v_dual_lshlrev_b32 v70, 16, v63
	.loc	1 338 31                        ; generate_amdgcn.py:338:31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v65, 16, v67
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v71, 16, v201
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v135, v189, v145 :: v_dual_lshlrev_b32 v172, 16, v172
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v94, v51, v74 :: v_dual_lshlrev_b32 v171, 16, v171
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v126, v62, v74 :: v_dual_lshlrev_b32 v63, 16, v204
	v_dual_fmac_f32 v81, v222, v165 :: v_dual_fmac_f32 v84, v223, v166
	v_dual_fmac_f32 v113, v154, v147 :: v_dual_fmac_f32 v116, v159, v166
	v_dual_fmac_f32 v73, v218, v170 :: v_dual_fmac_f32 v76, v216, v169
	v_dual_fmac_f32 v110, v206, v170 :: v_dual_fmac_f32 v109, v203, v169
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_fmac_f32_e32 v83, v221, v134
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v90, v48, v150 :: v_dual_lshlrev_b32 v67, 16, v205
	v_dual_fmac_f32 v97, v55, v162 :: v_dual_fmac_f32 v122, v58, v75
	v_dual_fmac_f32 v129, v184, v161 :: v_dual_fmac_f32 v86, v45, v164
	v_dual_fmac_f32 v93, v52, v149 :: v_dual_fmac_f32 v118, v54, v163
	v_dual_fmac_f32 v125, v64, v149 :: v_dual_fmac_f32 v114, v50, v167
	v_dual_fmac_f32 v89, v47, v75 :: v_dual_fmac_f32 v82, v40, v168
	v_dual_fmac_f32 v121, v61, v150 :: v_dual_fmac_f32 v76, v26, v171
	v_dual_fmac_f32 v85, v44, v163 :: v_dual_fmac_f32 v110, v46, v172
	v_dual_fmac_f32 v117, v57, v164 :: v_dual_fmac_f32 v132, v30, v193
	v_fmac_f32_e32 v81, v38, v167
	v_dual_fmac_f32 v113, v53, v168 :: v_dual_fmac_f32 v128, v32, v190
	v_dual_fmac_f32 v73, v24, v172 :: v_dual_fmac_f32 v124, v34, v186
	v_fmac_f32_e32 v109, v49, v171
	.loc	1 340 21                        ; generate_amdgcn.py:340:21
	v_dual_fmac_f32 v141, v27, v199 :: v_dual_fmac_f32 v120, v36, v70
	v_dual_fmac_f32 v137, v29, v197 :: v_dual_fmac_f32 v112, v43, v67
	v_dual_fmac_f32 v127, v33, v192 :: v_dual_fmac_f32 v116, v39, v65
	v_fmac_f32_e32 v123, v35, v188
	v_dual_fmac_f32 v119, v37, v185 :: v_dual_fmac_f32 v100, v19, v194
	v_dual_fmac_f32 v115, v41, v71 :: v_dual_fmac_f32 v96, v16, v190
	v_dual_fmac_f32 v111, v42, v63 :: v_dual_fmac_f32 v92, v15, v188
	v_dual_fmac_f32 v107, v23, v199 :: v_dual_fmac_f32 v88, v12, v70
	v_fmac_f32_e32 v103, v21, v197
	v_dual_fmac_f32 v99, v18, v193 :: v_dual_fmac_f32 v80, v9, v67
	v_dual_fmac_f32 v95, v17, v192 :: v_dual_fmac_f32 v84, v10, v65
	v_fmac_f32_e32 v91, v14, v186
	v_fmac_f32_e32 v87, v13, v185
	v_fmac_f32_e32 v83, v11, v71
	v_fmac_f32_e32 v79, v8, v63
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v46, off, off offset:200
	scratch_load_b32 v47, off, off offset:204
	scratch_load_b32 v26, off, off offset:208
.LBB0_4:                                ; %._crit_edge
	.loc	1 385 40 is_stmt 1              ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v0, 0xbfb8aa3b, v142 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v141
	v_dual_mul_f32 v4, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v131
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v2, 0xbfb8aa3b, v137 :: v_dual_and_b32 v3, 56, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_dual_mul_f32 v10, 0xbfb8aa3b, v132 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v127
	v_dual_mul_f32 v29, 0xbfb8aa3b, v123 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v124
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0x42800000, s0
	v_mul_f32_e32 v16, 0xbfb8aa3b, v128
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v32, 0xbfb8aa3b, v120 :: v_dual_fmac_f32 v1, 0xbfb8aa3b, v142
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v141
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_exp_f32_e32 v1, v1
	v_exp_f32_e32 v7, v7
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s3, s28, s23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0x42800000, s0
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s3, s3, s22
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v31, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v28, 0xbfb8aa3b, v116
	v_dual_mul_f32 v19, 0xbfb8aa3b, v115 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v112
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v0, v1, v0
	v_ldexp_f32 v1, v7, v6
	v_dual_mul_f32 v27, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v108
	v_dual_mul_f32 v25, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v33, 1.0, v0 :: v_dual_add_f32 v34, 1.0, v1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v23, 0xbfb8aa3b, v103 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v100
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v33, v33, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v36, null, v34, v34, v141
	v_div_scale_f32 v39, vcc_lo, v142, v33, v142
	v_rcp_f32_e32 v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v36
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v21, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v96
	v_dual_mul_f32 v17, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v92
	v_dual_mul_f32 v15, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v88
	v_dual_mul_f32 v11, 0xbfb8aa3b, v87 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v80
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v0, -v35, v37, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v36, v38, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v7, 0xbfb8aa3b, v79
	v_dual_mul_f32 v8, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v84
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v0, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v138
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, s1, v141, v34, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v2, v39, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v41, v1
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, s23, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v40, v38
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v0, s23, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v35, v2, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v4, v41, v4
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v2, v44, v37
	v_fma_f32 v44, -v36, v45, v40
	v_fma_f32 v35, -v35, v2, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v44, v38
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v4, v35, v37, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v2, -v36, v45, v40
	v_div_scale_f32 v35, null, v39, v39, v138
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v4, v33, v142
	v_div_fmas_f32 v37, v2, v38, v45
	v_rcp_f32_e32 v38, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v10, s0, v138, v39, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v33, v37, v34, v141
	.loc	1 390 18 is_stmt 1              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v2, s3, v3
	v_add3_u32 v3, s3, v3, 64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v35, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v137 :: v_dual_fmac_f32 v38, v40, v38
	v_exp_f32_e32 v41, v43
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v140, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.h, 0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v10, v38
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v37.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v132
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v48, -v35, v46, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v41, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v5, v43
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v48, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v45, v37, v45, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v131
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v36, v36, v137
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v40, v5, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.h, 0x7fff, v45.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v10, -v35, v46, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v34
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_exp_f32_e32 v47, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v10, v10, v38, v46
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.h, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v139, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v46, 0, 0x42800000, s0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v35, 1.0, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v10, v39, v138
	v_fma_f32 v44, -v34, v41, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v33.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v127
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v35, v35, v132
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v44, s1, v137, v36, v137
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v42
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v39, v38
	v_mul_f32_e32 v49, v44, v41
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v10, v136, v10
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v33, v42, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v46
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v34, v49, v44
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v10.h
	v_cmp_o_f32_e64 s1, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v49, v37, v41
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v37, v47, v43
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v34, -v34, v49, v44
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v10, v43, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v34, v34, v41, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v10.h, 0x7fff, v43.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v34, v36, v137
	v_div_scale_f32 v34, null, v37, v37, v131
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v5.l, 0x7fff, v42.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v4.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v36, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v132, v35, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v128
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v34, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v44, v42, v39
	v_fmac_f32_e32 v40, v13, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v13, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, s0, v131, v37, v131
	v_fma_f32 v47, -v38, v44, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v48, v41, v40
	v_fmac_f32_e32 v44, v47, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v13, v13, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v34, v48, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v43, 1.0, v13 :: v_dual_fmac_f32 v48, v36, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v46, v45
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v135, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v38, v44, v42
	v_div_scale_f32 v38, null, v43, v43, v128
	v_fma_f32 v34, -v34, v48, v41
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v33.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v13, v13, v39, v44
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v39, v38
	v_div_fmas_f32 v34, v34, v40, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v16
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_mov_b16_e32 v41.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v16, v33, v16, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v34, v37, v131
	v_fma_f32 v34, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v10.l, 0x7fff, v16.h, vcc_lo
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v16, v129, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v13, v13, v35, v132
	v_div_scale_f32 v35, null, v36, v36, v127
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v16.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v35
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v41, v16, v41, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v35, v37, 1.0
	v_fmac_f32_e32 v37, v40, v37
	v_fmac_f32_e32 v39, v34, v39
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, s1, v127, v36, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v124
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v29, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v34, v34
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v123
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, s0, v128, v43, v128
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v42, v30, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v34, v33
	v_exp_f32_e32 v34, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v38, v42, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v13, v130, v13 :: v_dual_fmac_f32 v42, v45, v39
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v13.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v35, v46, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v13, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v46, v45, v37 :: v_dual_and_b32 v47, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v13, v47, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v13, -v38, v42, v30
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v33, v13, v39, v42
	v_fma_f32 v13, -v35, v46, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v34, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v30, v30, v124
	v_div_fixup_f32 v33, v33, v43, v128
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.h, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v126, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v33.h
	v_and_b32_e32 v42, 1, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v35, v13, v37, v46
	v_rcp_f32_e32 v37, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v16, null, v29, v29, v123
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v35, v35, v36, v127
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v13.h, 0x7fff, v44.h, s3
	v_cndmask_b16 v13.l, 0x7fff, v41.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v16
	v_div_scale_f32 v32, s0, v124, v30, v124
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v34, v37, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v36, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v120
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v16, v38, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v40, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v31, s1, v123, v29, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v43, v32, v37
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v46, v31, v38
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v33, v42, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v34, v43, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v36, v40, v36
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v35, v125, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v33, v44
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v43, v45, v37
	v_fma_f32 v45, -v16, v46, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v34, v43, v32
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v39.l, v35.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v45, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v33, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v32, v32, v37, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v16, -v16, v46, v31
	v_div_scale_f32 v31, null, v34, v34, v120
	v_div_fixup_f32 v30, v32, v30, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v35, v39, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v16, v38, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v30, v122, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.h, 0x7fff, v42.h, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v36, v29, v123
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.h, v4.h
	v_cndmask_b16 v16.l, 0x7fff, v39.h, vcc_lo
	v_mov_b16_e32 v4.l, v30.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, s0, v120, v34, v120
	v_fma_f32 v35, -v31, v37, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v35, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v28, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v41, v30, v41, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v31, v42, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v115 :: v_dual_fmac_f32 v42, v44, v37
	v_exp_f32_e32 v19, v39
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v43
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v31, v42, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v35, v19, v35
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v121, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.h, 0x7fff, v41.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v29.h
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v33, v33, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v32
	v_fma_f32 v40, -v32, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v40, v36
	v_div_scale_f32 v40, s1, v119, v33, v119
	v_mul_f32_e32 v45, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v32, v45, v40
	v_dual_fmac_f32 v45, v30, v36 :: v_dual_add_f32 v30, 1.0, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v29, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v32, v45, v40
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v43, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v30, v30, v116
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v28, v37, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v42, 0, 0x42800000, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v36, v45
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v28, v34, v120
	v_rcp_f32_e32 v34, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v29, v31, v33, v119
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.l, 0x7fff, v38.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v32, v32, v115
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v118, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.h, v4.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v35, v34, 1.0
	v_rcp_f32_e32 v36, v31
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v28.h
	v_cmp_o_f32_e64 s1, v28, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v34, v33, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, vcc_lo, v116, v30, v116
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v29, v117, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v22, -v31, v36, 1.0
	v_dual_mul_f32 v40, v38, v34 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v29.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v112
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v36, v22, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v35, v40, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v22, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v37, s0, v115, v32, v115
	v_dual_fmac_f32 v40, v43, v34 :: v_dual_and_b32 v27, 1, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v44, v37, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v27, v29, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v35, -v35, v40, v38
	v_div_fmas_f32 v34, v35, v34, v40
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v30, v34, v30, v116
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v30, v114, v30 :: v_dual_and_b32 v39, 1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v28, v39, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v28, v22, v33
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v31, v44, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v30.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v22.h, 0x7fff, v39.h, s1
	v_cmp_o_f32_e64 s3, v30, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v44, v33, v36
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v33, v42, v41
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v31, v44, v37
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v31, v31, v36, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v33, v33, v112
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v29, v31, v32, v115
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v27.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v32, v34
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v27, v113, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v38, null, v28, v28, v111
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, s0, v111, v28, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v35, v38
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v27.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v36, -v34, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v32, v36, v32
	v_fma_f32 v31, -v38, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v31, v35
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v25, s1, v112, v33, v112
	v_mul_f32_e32 v39, v26, v35
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v108
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v25, v32
	v_fma_f32 v41, -v38, v39, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v107
	v_exp_f32_e32 v31, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v39, v41, v35
	v_fma_f32 v41, -v34, v42, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v27, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v38, v39, v26
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v31, v29
	v_exp_f32_e32 v31, v40
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v30, v43, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v41, v32
	v_div_fmas_f32 v26, v26, v35, v39
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v35.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v25, -v34, v42, v25
	v_div_fixup_f32 v26, v26, v28, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v30, v31, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v29, v29, v108
	v_div_fmas_f32 v32, v25, v32, v42
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v34, v31
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v26, v110, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v32, v33, v112
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v25.l, 0x7fff, v37.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v30, v30, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v26.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, s0, v108, v29, v108
	v_rcp_f32_e32 v33, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v31, v34, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v25.h, 0x7fff, v40.h, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v109, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v26, v26
	v_mov_b16_e32 v35.l, v28.h
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v27, v33, 1.0
	v_fmac_f32_e32 v34, v32, v34
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, s1, v107, v30, v107
	v_dual_fmac_f32 v33, v37, v33 :: v_dual_and_b32 v38, 1, v4
	v_mul_f32_e32 v39, v24, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v35, 1, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v31, v39, v24
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v104
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v26, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v28, v35, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v39, v41, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v36, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v31, v39, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v24, v24, v34, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v32, v36, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v42, v23, v33
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v24, v29, v108
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v31, 1.0, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v41, -v27, v42, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v24, v106, v24
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v24.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v42, v41, v33
	v_fma_f32 v23, -v27, v42, v23
	v_div_scale_f32 v27, null, v31, v31, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v23, v33, v42
	v_rcp_f32_e32 v33, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_cndmask_b16 v23.h, 0x7fff, v38.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v29, v32, v30, v107
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v35.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v21, s0, v104, v31, v104
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v28, v105, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v29, -v27, v33, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v103
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v33, v29, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v38, v21, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v20, v35
	v_ldexp_f32 v26, v26, v37
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v100
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v27, v38, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v24, v37, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v40, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v20, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v26, v26, v103
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.h, 0x7fff, v37.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v27, v38, v21
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v32, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v21, v21, v33, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v21, v31, v104
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v30, v32, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v21, v102, v21 :: v_dual_fmac_f32 v32, v36, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v36, s1, v103, v26, v103
	s_mov_b32 vcc_lo, s1
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v21.h
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v37
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v36, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v28.h
	v_cmp_o_f32_e64 s1, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v30, v41, v36
	v_dual_fmac_f32 v41, v24, v32 :: v_dual_and_b32 v34, 1, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v29, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v34, v28, v34, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v30, v41, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v30, null, v24, v24, v99
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v32, v41
	v_rcp_f32_e32 v31, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v27, v26, v103
	v_div_scale_f32 v27, null, v29, v29, v100
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.l, 0x7fff, v34.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v30, v31, 1.0
	v_rcp_f32_e32 v32, v27
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v31, v28, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, vcc_lo, v99, v24, v99
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v26, v101, v26 :: v_dual_fmac_f32 v33, 0xbfb8aa3b, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v17, -v27, v32, 1.0
	v_mul_f32_e32 v35, v34, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.l, v26.h
	v_cmp_o_f32_e64 s3, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v39, -v30, v35, v34
	v_fmac_f32_e32 v32, v17, v32
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, s0, v100, v29, v100
	v_dual_fmac_f32 v35, v39, v31 :: v_dual_and_b32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v40, v33, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v18, v26, v18, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v27, v40, v33
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v4
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v37, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.h, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_fmac_f32 v40, v28, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v21, v38, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v30, v35, v34
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v17, v17, v96
	v_fma_f32 v27, -v27, v40, v33
	v_div_fmas_f32 v21, v21, v31, v35
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v30, v28
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v18.h, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v27, v27, v32, v40
	v_div_fixup_f32 v21, v21, v24, v99
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v32, null, v26, v26, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v18, v27, v29, v100
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v35, 0, 0x42800000, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v28, v30, 1.0
	v_rcp_f32_e32 v27, v32
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v15, v98, v18 :: v_dual_mul_f32 v18, v97, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v38.h, s1
	v_mov_b16_e32 v4.l, v18.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v24, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v29, vcc_lo, v96, v17, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v14, -v32, v27, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v35, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v33, v29, v30
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v18, v18
	v_mov_b16_e32 v36.l, v15.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v14, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v15, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v37, -v28, v33, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v24, 0xbfb8aa3b, v91 :: v_dual_fmac_f32 v33, v37, v30
	v_exp_f32_e32 v14, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, s0, v95, v26, v95
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v18, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v28, -v28, v33, v29
	v_mul_f32_e32 v38, v24, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v28, v28, v30, v33
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v14, v14, v21
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v21, -v32, v38, v24
	s_mov_b32 vcc_lo, s0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.h, 0x7fff, v37.h, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v17, v28, v17, v96
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v36, 1, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v21, v27
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v94, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v32, v38, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v15, v36, 0x7fff
	v_mov_b16_e32 v4.l, v17.h
	v_mov_b16_e32 v36.h, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v18, v27, v38
	v_div_scale_f32 v24, null, v21, v21, v92
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v18, v18, v26, v95
	v_rcp_f32_e32 v27, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.l, 0x7fff, v32.h, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v8
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v18, v93, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v18.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v26, -v24, v27, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_and_b32 v15, 1, v36
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v29, null, v14, v14, v91
	v_div_scale_f32 v12, s0, v91, v14, v91
	v_div_scale_f32 v26, s1, v92, v21, v92
	v_rcp_f32_e32 v30, v29
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v15, v18, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v38, v26, v27
	v_fma_f32 v36, -v24, v38, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v28, v30
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v35, v12, v30
	v_fma_f32 v37, -v29, v35, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v34, 0xbfb8aa3b, v88 :: v_dual_fmac_f32 v35, v37, v30
	v_exp_f32_e32 v34, v34
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v17, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v29, v35, v12
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v11, v34, v28
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v12, v12, v30, v35
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v12, v12, v14, v91
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_mul_f32 v12, v89, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v12.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v38, v36, v27
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v12, v12
	v_mov_b16_e32 v36.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v24, -v24, v38, v26
	v_div_scale_f32 v26, null, v11, v11, v88
	v_div_fmas_f32 v24, v24, v27, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v27, v26
	v_div_fixup_f32 v14, v24, v21, v92
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v87
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_mov_b16_e32 v24.h, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v14, v90, v14
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v17, v29
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v18, -v26, v27, 1.0
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v15.h, vcc_lo
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v24.l, v14.h
	v_and_b32_e32 v15, 1, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v27, v18, v27
	v_div_scale_f32 v18, s0, v88, v11, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v24, 1, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v17, v17, v28
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v29, v18, v27
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v12, v15, 0x7fff
	v_add3_u32 v24, v14, v24, 0x7fff
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_fmac_f32 v32, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v12, -v26, v29, v18
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v28, null, v17, v17, v87
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v14, 0, 0x42800000, s3
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v30, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v32, v32
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cndmask_b16 v9.l, 0x7fff, v24.h, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v8, -v28, v30, 1.0
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_ldexp_f32 v15, v32, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v30, v8, v30
	v_fmac_f32_e32 v29, v12, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v8, s3, v87, v17, v87
	v_fma_f32 v18, -v26, v29, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v7, v18, v27, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v79
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v7, v11, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v85, v7
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v7.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v18, v26, v18
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v83 :: v_dual_and_b32 v41, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v6, v14, v12
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v12, 1.0, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v29, null, v12, v12, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v80
	v_exp_f32_e32 v11, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v11, v11, v14
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v24, v8, v30
	v_div_scale_f32 v14, null, v18, v18, v79
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v27, -v28, v24, v8
	v_fmac_f32_e32 v24, v27, v30
	v_rcp_f32_e32 v27, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v28, v24, v8
	v_rcp_f32_e32 v28, v14
	v_div_fmas_f32 v8, v8, v30, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v29, v27, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, null, v11, v11, v80
	v_div_fixup_f32 v8, v8, v17, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, v24, v27
	v_div_scale_f32 v15, null, v6, v6, v83
	v_div_scale_f32 v17, vcc_lo, v84, v12, v84
	v_div_scale_f32 v34, s0, v83, v6, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v26, v15
	v_mul_f32_e32 v32, v17, v27
	v_fma_f32 v35, -v14, v28, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v29, v32, v17
	v_fmac_f32_e32 v28, v35, v28
	v_div_scale_f32 v35, s1, v79, v18, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v24, -v15, v26, 1.0
	v_fmac_f32_e32 v32, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v35, v28
	v_fmac_f32_e32 v26, v24, v26
	v_rcp_f32_e32 v24, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v29, v32, v17
	v_fma_f32 v29, -v14, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v34, v26
	v_div_fmas_f32 v17, v17, v27, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v29, v28
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v37, -v15, v38, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v30, v24, 1.0
	v_fma_f32 v14, -v14, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v37, v26
	v_fmac_f32_e32 v24, v39, v24
	v_div_scale_f32 v39, s3, v80, v11, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v15, -v15, v38, v34
	v_mul_f32_e32 v37, v39, v24
	v_div_fixup_f32 v12, v17, v12, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v15, v15, v26, v38
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v27, -v30, v37, v39
	v_div_fmas_f32 v14, v14, v28, v40
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v6, v15, v6, v83
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v81, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v27, v24
	v_div_fixup_f32 v14, v14, v18, v79
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v18.h, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v82, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v12.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v15, -v30, v37, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v6, v6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v15, v15, v24, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v7, v41, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v7, v73, v14 :: v_dual_and_b32 v14, 1, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v15, v11, v80
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v86, v8
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v6.h
	v_mov_b16_e32 v15.h, v4.h
	v_mov_b16_e32 v4.l, v7.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v76, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, v8.h
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	v_and_b32_e32 v15, 1, v15
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_mov_b16_e32 v18.l, v11.h
	v_and_b32_e32 v26, 1, v36
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v14, v12, v14, 0x7fff
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v17, v8, v26, 0x7fff
	v_add3_u32 v8, v6, v15, 0x7fff
	v_and_b32_e32 v15, 1, v18
	v_add3_u32 v4, v7, v4, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v14.h, s0
	v_mov_b32_e32 v14, 0x5410
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s1
	v_add3_u32 v6, v11, v15, 0x7fff
	v_mov_b32_e32 v15, 0x7632
	v_cndmask_b16 v24.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b32_e64 v14, 0x1054, v14, s2
	v_cndmask_b32_e64 v11, v25, v19, s2
	v_cndmask_b32_e64 v12, v19, v25, s2
	v_cndmask_b32_e64 v15, 0x3276, v15, s2
	v_cndmask_b32_e64 v17, v33, v20, s2
	v_lshl_or_b32 v14, v14, 8, v14
	v_cndmask_b32_e64 v18, v20, v33, s2
	v_cndmask_b32_e64 v19, v21, v31, s2
	v_lshl_or_b32 v15, v15, 8, v15
	v_cndmask_b32_e64 v20, v31, v21, s2
	v_cndmask_b32_e64 v21, v7, v9, s2
	v_cndmask_b32_e64 v7, v9, v7, s2
	v_and_b32_e32 v9, 0x540054, v14
	v_and_b32_e32 v14, 0x760076, v15
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s3
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s4
	v_cndmask_b32_e64 v6, v13, v5, s2
	v_cndmask_b32_e64 v5, v5, v13, s2
	v_cndmask_b32_e64 v8, v16, v10, s2
	v_cndmask_b32_e64 v10, v10, v16, s2
	v_cndmask_b32_e64 v16, v22, v23, s2
	v_lshl_or_b32 v9, v9, 4, v9
	v_lshl_or_b32 v14, v14, 4, v14
	v_cndmask_b32_e64 v13, v23, v22, s2
	v_cndmask_b32_e64 v22, v4, v24, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e64 v4, v24, v4, s2
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v9
	v_and_b32_e32 v23, 0x7060706, v14
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v5, v6, v18
	v_perm_b32 v5, v5, v6, v23
	v_perm_b32 v6, v10, v8, v18
	v_perm_b32 v7, v10, v8, v23
	v_perm_b32 v8, v12, v11, v18
	v_perm_b32 v9, v12, v11, v23
	v_perm_b32 v10, v15, v13, v18
	v_perm_b32 v11, v15, v13, v23
	v_perm_b32 v14, v20, v19, v18
	v_perm_b32 v15, v20, v19, v23
	v_add_lshl_u32 v20, v2, v1, 1
	v_add_lshl_u32 v1, v3, v1, 1
	v_perm_b32 v12, v16, v17, v18
	v_perm_b32 v13, v16, v17, v23
	v_add_lshl_u32 v2, v2, v0, 1
	v_perm_b32 v16, v24, v21, v18
	v_perm_b32 v17, v24, v21, v23
	v_perm_b32 v18, v25, v22, v18
	v_perm_b32 v19, v25, v22, v23
	v_add_lshl_u32 v0, v3, v0, 1
	s_clause 0x3
	buffer_store_b128 v[4:7], v20, s[20:23], 0 offen
	buffer_store_b128 v[8:11], v1, s[20:23], 0 offen
	buffer_store_b128 v[12:15], v2, s[20:23], 0 offen
	buffer_store_b128 v[16:19], v0, s[20:23], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 216
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 216
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14312
; TotalNumSgprs: 34
; NumVgprs: 256
; ScratchSize: 216
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 216
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc32_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 53
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
