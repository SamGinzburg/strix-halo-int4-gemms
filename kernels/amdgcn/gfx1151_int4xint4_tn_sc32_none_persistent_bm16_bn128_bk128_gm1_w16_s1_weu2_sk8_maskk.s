	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
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
	s_ashr_i32 s34, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s35, s34, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s35
	s_cbranch_scc1 .LBB0_15
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[30:31], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	v_lshlrev_b32_e32 v10, 4, v0
	v_bfe_i32 v13, v0, 3, 1
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_and_b32_e32 v5, 0x1e0, v0
	v_and_b32_e32 v11, 0x180, v0
	v_lshrrev_b32_e32 v4, 4, v0
	v_and_b32_e32 v10, 0x70, v10
	v_bfe_u32 v3, v0, 4, 4
	v_and_b32_e32 v8, 15, v0
	v_lshrrev_b32_e32 v11, 5, v11
	v_lshrrev_b32_e32 v6, 5, v0
	v_and_or_b32 v18, 0x88, v13, v10
	v_lshlrev_b32_e32 v13, 1, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v7, 2, v0
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v12, 7, v0
	v_bfe_i32 v9, v0, 7, 1
	v_and_b32_e32 v13, 60, v13
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 31
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
	s_lshr_b32 s1, s1, 27
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s36, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_lshl_or_b32 v5, v5, 2, v13
	s_ashr_i32 s37, s1, 5
	s_cmp_gt_i32 s0, 31
.Ltmp18:
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v4, 1, v4
	s_cselect_b32 s38, -1, 0
	s_abs_i32 s39, s34
	v_or_b32_e32 v21, 0x3f0, v0
	s_cvt_f32_u32 s0, s39
	v_or_b32_e32 v22, 0x7f0, v0
	v_lshlrev_b32_e32 v0, 6, v0
	v_xor_b32_e32 v5, v5, v11
	v_rcp_iflag_f32_e32 v13, s0
	s_sub_i32 s1, 0, s39
	v_and_b32_e32 v2, 0x7c, v7
	v_and_b32_e32 v9, 0x88, v9
	v_and_or_b32 v11, v0, 64, v5
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v0, 0xfc, v4
	v_xor_b32_e32 v19, 8, v18
	v_lshl_or_b32 v10, v8, 9, v2
	v_xor_b32_e32 v17, v9, v1
	v_xor_b32_e32 v38, 0x810, v11
	v_readfirstlane_b32 s0, v13
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_and_b32_e32 v0, 2, v4
	v_mad_u64_u32 v[12:13], null, s29, v12, v[1:2]
	s_mul_f32 s0, s0, 0x4f7ffffe
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:24
	scratch_store_b32 off, v8, off offset:8
	v_or_b32_e32 v0, 0x7c, v4
	s_cvt_u32_f32 s0, s0
	v_xor_b32_e32 v23, 4, v10
	v_xor_b32_e32 v24, 8, v10
	v_xor_b32_e32 v25, 12, v10
	s_mul_i32 s1, s1, s0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	s_mul_hi_u32 s1, s0, s1
	v_xor_b32_e32 v26, 16, v10
	s_add_i32 s44, s0, s1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s0, s3, 4
	v_xor_b32_e32 v27, 20, v10
	v_or_b32_e32 v13, s0, v6
	v_or_b32_e32 v15, s0, v8
	v_xor_b32_e32 v28, 24, v10
	v_xor_b32_e32 v29, 28, v10
	v_xor_b32_e32 v30, 32, v10
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_mad_u64_u32 v[0:1], null, s29, v13, v[2:3]
	v_xor_b32_e32 v31, 36, v10
	v_xor_b32_e32 v32, 40, v10
	v_xor_b32_e32 v33, 44, v10
	v_xor_b32_e32 v34, 48, v10
	v_xor_b32_e32 v5, 52, v10
	v_xor_b32_e32 v36, 56, v10
	scratch_store_b64 off, v[0:1], off offset:32 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s28, v15, v[3:4]
	v_xor_b32_e32 v37, 60, v10
	v_xor_b32_e32 v39, 0x1020, v11
	v_xor_b32_e32 v40, 0x1830, v11
	v_add_nc_u32_e32 v9, 0, v8
	v_add_nc_u32_e32 v17, 0, v17
	v_add_nc_u32_e32 v18, 0, v18
	scratch_store_b64 off, v[0:1], off offset:40 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v19, 0, v19
	v_add_nc_u32_e32 v20, 0, v7
	v_add_nc_u32_e32 v21, 0, v21
	v_add_nc_u32_e32 v22, 0, v22
	v_add_nc_u32_e32 v1, 0, v23
	v_add_nc_u32_e32 v2, 0, v24
	v_add_nc_u32_e32 v8, 0, v25
	v_add_nc_u32_e32 v14, 0, v26
	v_add_nc_u32_e32 v16, 0, v27
	v_add_nc_u32_e32 v23, 0, v28
	v_add_nc_u32_e32 v24, 0, v29
	v_add_nc_u32_e32 v30, 0, v30
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v32
	v_add_nc_u32_e32 v33, 0, v33
	v_add_nc_u32_e32 v34, 0, v34
	v_add_nc_u32_e32 v35, 0, v5
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v37, 0, v37
	v_add_nc_u32_e32 v25, 0, v38
	v_add_nc_u32_e32 v26, 0, v39
	v_add_nc_u32_e32 v27, 0, v40
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s20, s4
	s_and_b32 s21, s5, 0xffff
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s5, s7, 0xffff
	s_mov_b32 s4, s6
	s_mov_b32 s12, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_lshl_b32 s40, s29, 2
	s_lshl_b32 s41, s29, 3
	s_mul_i32 s42, s29, 12
	s_ashr_i32 s43, s34, 31
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s45, s29, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s46, s37, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s47, s29, 4
	s_lshl_b32 s28, s28, 4
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v10, off offset:12
	scratch_store_b32 off, v11, off offset:16
	scratch_store_b32 off, v1, off offset:48
	scratch_store_b32 off, v2, off offset:52
	scratch_store_b32 off, v8, off offset:56
	scratch_store_b32 off, v14, off offset:60
	scratch_store_b32 off, v16, off offset:64
	scratch_store_b32 off, v23, off offset:68
	scratch_store_b32 off, v24, off offset:72
	scratch_store_b32 off, v25, off offset:76
	scratch_store_b32 off, v26, off offset:80
	scratch_store_b32 off, v27, off offset:84
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_7 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
                                        ;     Child Loop BB0_13 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s0, s2
	s_ashr_i32 s1, s2, 31
	s_mul_hi_u32 s3, s0, s44
	s_xor_b32 s1, s1, s43
	s_mul_i32 s6, s3, s39
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	s_sub_i32 s0, s0, s6
	s_add_i32 s6, s3, 1
	s_sub_i32 s7, s0, s39
	s_cmp_ge_u32 s0, s39
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v4, 0
	s_cselect_b32 s3, s6, s3
	s_cselect_b32 s0, s7, s0
	s_add_i32 s6, s3, 1
	s_cmp_ge_u32 s0, s39
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	s_cselect_b32 s0, s6, s3
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v64, 0
	s_xor_b32 s0, s0, s1
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v76, 0
	s_sub_i32 s3, s0, s1
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v42, 0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s0, s33, s3
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s10, s3, s34
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s6, s0, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s10, s2, s10
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s0, s6
	s_abs_i32 s11, s10
	s_cvt_f32_u32 s1, s0
	s_sub_i32 s7, 0, s0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v47, s1
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v72, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s1, v47
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v78, 0
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v52, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s1, s1
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v65, 0
	s_mul_i32 s7, s7, s1
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v79, 0
	s_mul_hi_u32 s7, s1, s7
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v95, 0
	s_add_i32 s1, s1, s7
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v97, 0
	s_mul_hi_u32 s7, s11, s1
	s_xor_b32 s1, s10, s6
	s_mul_i32 s13, s7, s0
	s_ashr_i32 s1, s1, 31
	s_sub_i32 s11, s11, s13
	s_add_i32 s13, s7, 1
	s_sub_i32 s14, s11, s0
	s_cmp_ge_u32 s11, s0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v99, 0
	s_cselect_b32 s7, s13, s7
	s_cselect_b32 s11, s14, s11
	s_add_i32 s13, s7, 1
	s_cmp_ge_u32 s11, s0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v53, 0
	s_cselect_b32 s0, s13, s7
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v55, 0
	s_xor_b32 s0, s0, s1
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v57, 0
	s_sub_i32 s49, s0, s1
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v59, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s6, s49, s6
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v66, 0
	s_sub_i32 s6, s10, s6
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v93, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s6, s6, s3
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_not1_b32 vcc_lo, exec_lo, s38
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s48, s6, 4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	s_lshl_b32 s3, s1, 8
	s_lshl_b32 s1, s1, 7
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v5, 0
	s_lshl_b32 s50, s0, 8
	s_mov_b32 s51, 0
	s_mov_b32 s52, s37
	scratch_store_b64 off, v[12:13], off    ; 8-byte Folded Spill
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v6, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v3, s48, v0
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	v_mul_lo_u32 v103, s46, v3
	v_mov_b32_e32 v3, 0
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v100, s3, v0
	scratch_load_b64 v[0:1], off, off offset:32 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v4, s0, 7, v0
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	v_subrev_nc_u32_e32 v104, s1, v4
	v_mov_b32_e32 v4, 0
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v101, s3, v0
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v102, s3, v0
	scratch_load_b64 v[0:1], off, off offset:40 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v105, s48, v0
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
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_add_nc_u32_e32 v106, s51, v15
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v164, s19 :: v_dual_add_nc_u32 v107, s51, v13
	.loc	1 259 55                        ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e32 vcc_lo, 16, v15
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v163, s18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s1, s36, v106
	.loc	1 259 55 is_stmt 0              ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e64 s0, 16, v13
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s3, s36, v107
	.loc	1 270 30 is_stmt 1              ; generate_amdgcn.py:270:30
	s_mov_b32 s6, s22
	s_mov_b32 s7, s23
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s22
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 s0, s3, s0
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	v_cndmask_b32_e32 v106, 0x80000000, v105, vcc_lo
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e64 v107, 0x80000000, v104, s0
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	buffer_load_u8 v106, v106, s[20:23], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b32 v108, v107, s[4:7], 0 offen
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s11, s23
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v161, s16 :: v_dual_add_nc_u32 v230, s50, v101
	v_dual_mov_b32 v162, s17 :: v_dual_add_nc_u32 v137, s50, v102
	v_dual_mov_b32 v160, s15 :: v_dual_add_nc_u32 v231, s50, v100
	v_dual_mov_b32 v159, s14 :: v_dual_mov_b32 v158, s13
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s52, s52, -1
	s_add_i32 s51, s51, 16
	s_cmp_lg_u32 s52, 0
	v_add_nc_u32_e32 v100, s45, v100
	v_add_nc_u32_e32 v102, s45, v102
	v_add_nc_u32_e32 v104, s47, v104
	.loc	1 263 30                        ; generate_amdgcn.py:263:30
	s_waitcnt vmcnt(1)
	ds_store_b8 v17, v106
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[106:107], v18
	ds_load_b64 v[221:222], v19
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v20, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v229, v103, s[8:11], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v108, v9 offset:640
	ds_load_u8 v109, v9 offset:512
	ds_load_u8 v110, v9
	ds_load_u8 v111, v9 offset:128
	ds_load_u8 v112, v9 offset:144
	ds_load_u8 v113, v9 offset:896
	ds_load_u8 v114, v9 offset:912
	ds_load_u8 v115, v9 offset:928
	ds_load_u8 v116, v9 offset:944
	ds_load_u8 v117, v9 offset:960
	ds_load_u8 v118, v9 offset:976
	ds_load_u8 v119, v9 offset:992
	ds_load_u8 v120, v9 offset:768
	ds_load_u8 v121, v9 offset:784
	ds_load_u8 v122, v9 offset:800
	ds_load_u8 v123, v9 offset:816
	ds_load_u8 v124, v9 offset:832
	ds_load_u8 v125, v9 offset:848
	ds_load_u8 v126, v9 offset:864
	ds_load_u8 v127, v9 offset:656
	ds_load_u8 v128, v9 offset:672
	ds_load_u8 v129, v9 offset:688
	ds_load_u8 v130, v9 offset:704
	ds_load_u8 v131, v9 offset:720
	ds_load_u8 v132, v9 offset:736
	ds_load_u8 v133, v9 offset:752
	ds_load_u8 v134, v9 offset:528
	ds_load_u8 v135, v9 offset:544
	ds_load_u8 v136, v9 offset:560
	ds_load_u8 v138, v9 offset:576
	ds_load_u8 v139, v9 offset:592
	ds_load_u8 v140, v9 offset:608
	ds_load_u8 v141, v9 offset:624
	ds_load_u8 v142, v9 offset:880
	ds_load_u8 v143, v9 offset:160
	ds_load_u8 v144, v9 offset:176
	ds_load_u8 v145, v9 offset:192
	ds_load_u8 v146, v9 offset:208
	ds_load_u8 v147, v9 offset:224
	ds_load_u8 v148, v9 offset:240
	ds_load_u8 v149, v9 offset:16
	ds_load_u8 v150, v9 offset:32
	ds_load_u8 v151, v9 offset:48
	ds_load_u8 v152, v9 offset:64
	ds_load_u8 v153, v9 offset:80
	ds_load_u8 v154, v9 offset:96
	ds_load_u8 v155, v9 offset:112
	ds_load_u8 v156, v9 offset:256
	ds_load_u8 v165, v9 offset:384
	ds_load_u8 v166, v9 offset:400
	ds_load_u8 v167, v9 offset:416
	ds_load_u8 v168, v9 offset:432
	ds_load_u8 v169, v9 offset:448
	ds_load_u8 v170, v9 offset:464
	ds_load_u8 v171, v9 offset:480
	ds_load_u8 v172, v9 offset:496
	ds_load_u8 v173, v9 offset:272
	ds_load_u8 v174, v9 offset:288
	ds_load_u8 v175, v9 offset:304
	ds_load_u8 v176, v9 offset:320
	ds_load_u8 v177, v9 offset:336
	ds_load_u8 v178, v9 offset:352
	ds_load_u8 v179, v9 offset:368
	ds_load_u8 v223, v9 offset:1664
	ds_load_u8 v224, v9 offset:1536
	ds_load_u8 v227, v9 offset:1520
	ds_load_u8 v233, v9 offset:1776
	ds_load_u8 v234, v9 offset:1904
	ds_load_u8 v235, v9 offset:1024
	ds_load_u8 v236, v9 offset:1152
	ds_load_u8 v237, v9 offset:1136
	ds_load_u8 v238, v9 offset:1408
	ds_load_u8 v239, v9 offset:1280
	ds_load_u8 v240, v9 offset:1264
	ds_load_u8 v241, v9 offset:1392
	ds_load_u8 v242, v9 offset:1552
	ds_load_u8 v243, v9 offset:1680
	ds_load_u8 v244, v9 offset:1696
	ds_load_u8 v245, v9 offset:1712
	ds_load_u8 v246, v9 offset:1728
	ds_load_u8 v247, v9 offset:1744
	ds_load_u8 v248, v9 offset:1760
	ds_load_u8 v249, v9 offset:1568
	ds_load_u8 v250, v9 offset:1584
	ds_load_u8 v251, v9 offset:1600
	ds_load_u8 v252, v9 offset:1616
	ds_load_u8 v253, v9 offset:1632
	ds_load_u8 v254, v9 offset:1936
	ds_load_u8 v255, v9 offset:1808
	ds_load_u8 v12, v9 offset:1824
	ds_load_u8 v14, v9 offset:1840
	ds_load_u8 v16, v9 offset:1856
	ds_load_u8 v1, v9 offset:1872
	ds_load_u8 v2, v9 offset:1888
	ds_load_u8 v8, v9 offset:1952
	ds_load_u8 v0, v9 offset:1968
	ds_load_u8 v38, v9 offset:1984
	ds_load_u8 v39, v9 offset:2000
	ds_load_u8 v40, v9 offset:2016
	ds_load_u8 v180, v21
	ds_load_u8 v11, v22
	ds_load_u8 v10, v9 offset:1040
	ds_load_u8 v23, v9 offset:1168
	ds_load_u8 v24, v9 offset:1184
	ds_load_u8 v25, v9 offset:1200
	ds_load_u8 v26, v9 offset:1216
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_perm_b32 v109, v120, v113, 0xc0c0004
	v_perm_b32 v110, v110, v111, 0xc0c0004
	s_waitcnt lgkmcnt(57)
	v_perm_b32 v111, v156, v165, 0xc0c0004
	v_perm_b32 v113, v134, v127, 0xc0c0004
	v_perm_b32 v114, v121, v114, 0xc0c0004
	v_perm_b32 v112, v149, v112, 0xc0c0004
	v_perm_b32 v121, v135, v128, 0xc0c0004
	v_perm_b32 v115, v122, v115, 0xc0c0004
	s_waitcnt lgkmcnt(49)
	v_perm_b32 v120, v173, v166, 0xc0c0004
	v_perm_b32 v122, v150, v143, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v128, v174, v167, 0xc0c0004
	v_perm_b32 v129, v136, v129, 0xc0c0004
	v_perm_b32 v116, v123, v116, 0xc0c0004
	v_perm_b32 v123, v151, v144, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v135, v175, v168, 0xc0c0004
	v_perm_b32 v130, v138, v130, 0xc0c0004
	v_perm_b32 v117, v124, v117, 0xc0c0004
	v_perm_b32 v124, v152, v145, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v136, v176, v169, 0xc0c0004
	v_perm_b32 v131, v139, v131, 0xc0c0004
	v_perm_b32 v118, v125, v118, 0xc0c0004
	v_perm_b32 v125, v153, v146, 0xc0c0004
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v138, v177, v170, 0xc0c0004
	v_perm_b32 v132, v140, v132, 0xc0c0004
	v_perm_b32 v126, v126, v119, 0xc0c0004
	v_perm_b32 v139, v154, v147, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v140, v178, v171, 0xc0c0004
	v_perm_b32 v143, v155, v148, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v144, v179, v172, 0xc0c0004
	v_perm_b32 v133, v141, v133, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v141, v142, v180, 0xc0c0004
	v_lshl_or_b32 v109, v109, 16, v108
	v_lshl_or_b32 v108, v111, 16, v110
	v_lshl_or_b32 v111, v114, 16, v113
	v_lshl_or_b32 v110, v120, 16, v112
	v_lshl_or_b32 v113, v115, 16, v121
	v_lshl_or_b32 v112, v128, 16, v122
	v_lshl_or_b32 v115, v116, 16, v129
	v_lshl_or_b32 v114, v135, 16, v123
	v_lshl_or_b32 v117, v117, 16, v130
	v_lshl_or_b32 v116, v136, 16, v124
	v_lshl_or_b32 v119, v118, 16, v131
	v_lshl_or_b32 v118, v138, 16, v125
	v_lshl_or_b32 v121, v126, 16, v132
	v_lshl_or_b32 v120, v140, 16, v139
	v_lshl_or_b32 v122, v144, 16, v143
	v_lshl_or_b32 v123, v141, 16, v133
	ds_load_u8 v29, v9 offset:1056
	ds_load_u8 v156, v9 offset:1072
	ds_load_u8 v27, v9 offset:1232
	ds_load_u8 v28, v9 offset:1248
	ds_load_u8 v127, v9 offset:1088
	ds_load_u8 v125, v9 offset:1344
	ds_load_u8 v131, v9 offset:1360
	ds_load_u8 v134, v9 offset:1104
	ds_load_u8 v228, v9 offset:1648
	ds_load_u8 v225, v9 offset:1920
	ds_load_u8 v226, v9 offset:1792
	ds_load_u8 v124, v9 offset:1472
	ds_load_u8 v130, v9 offset:1488
	ds_load_u8 v136, v9 offset:1504
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v10, v10, v23, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v232, v230, s[24:27], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v8, v12, v8, 0xc0c0004
	ds_load_u8 v23, v9 offset:1376
	v_perm_b32 v0, v14, v0, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x5
	buffer_load_u16 v128, v230, s[24:27], 0 offen offset:92
	buffer_load_u16 v129, v230, s[24:27], 0 offen offset:96
	buffer_load_u16 v133, v230, s[24:27], 0 offen offset:112
	buffer_load_u16 v140, v230, s[24:27], 0 offen offset:140
	buffer_load_u16 v141, v230, s[24:27], 0 offen offset:144
	buffer_load_u16 v142, v230, s[24:27], 0 offen offset:148
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v12, v29, v24, 0xc0c0004
	v_perm_b32 v1, v1, v39, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x4
	buffer_load_u16 v138, v230, s[24:27], 0 offen offset:132
	buffer_load_u16 v139, v230, s[24:27], 0 offen offset:136
	buffer_load_u16 v143, v230, s[24:27], 0 offen offset:152
	buffer_load_u16 v144, v230, s[24:27], 0 offen offset:156
	buffer_load_u16 v145, v230, s[24:27], 0 offen offset:160
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v103, 2, v103
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v229, 16, v229
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v157, s12
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[108:109], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[110:111], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[112:113], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[114:115], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[116:117], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[205:212], v[118:119], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[213:220], v[120:121], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[122:123], v[106:107], v[157:164] neg_lo:[1,1,0]
	ds_load_u8 v135, v9 offset:1120
	ds_load_u8 v106, v9 offset:1296
	ds_load_u8 v107, v9 offset:1424
	ds_load_u8 v112, v9 offset:1440
	ds_load_u8 v113, v9 offset:1312
	ds_load_u8 v119, v9 offset:1328
	ds_load_u8 v118, v9 offset:1456
	v_perm_b32 v108, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v109, v226, v225, 0xc0c0004
	v_perm_b32 v110, v235, v236, 0xc0c0004
	v_perm_b32 v111, v239, v238, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v117, v230, s[24:27], 0 offen offset:48
	buffer_load_u16 v121, v230, s[24:27], 0 offen offset:64
	buffer_load_u16 v122, v230, s[24:27], 0 offen offset:68
	buffer_load_u16 v123, v230, s[24:27], 0 offen offset:72
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v147, v109, 16, v108
	v_perm_b32 v108, v242, v243, 0xc0c0004
	v_perm_b32 v109, v255, v254, 0xc0c0004
	v_lshl_or_b32 v146, v111, 16, v110
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v110, v230, s[24:27], 0 offen offset:20
	buffer_load_u16 v111, v230, s[24:27], 0 offen offset:24
	buffer_load_u16 v115, v230, s[24:27], 0 offen offset:40
	buffer_load_u16 v116, v230, s[24:27], 0 offen offset:44
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v107, v106, v107, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v24, v113, v112, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v106, v230, s[24:27], 0 offen offset:4
	buffer_load_u16 v112, v230, s[24:27], 0 offen offset:28
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v149, v109, 16, v108
	v_lshl_or_b32 v148, v107, 16, v10
	v_perm_b32 v10, v249, v244, 0xc0c0004
	v_lshl_or_b32 v150, v24, 16, v12
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v119, v118, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v118, v230, s[24:27], 0 offen offset:52
	buffer_load_u16 v119, v230, s[24:27], 0 offen offset:56
	buffer_load_u16 v120, v230, s[24:27], 0 offen offset:60
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v151, v8, 16, v10
	v_perm_b32 v8, v250, v245, 0xc0c0004
	v_perm_b32 v10, v156, v25, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x4
	buffer_load_u16 v107, v230, s[24:27], 0 offen offset:8
	buffer_load_u16 v108, v230, s[24:27], 0 offen offset:12
	buffer_load_u16 v109, v230, s[24:27], 0 offen offset:16
	buffer_load_u16 v113, v230, s[24:27], 0 offen offset:32
	buffer_load_u16 v114, v230, s[24:27], 0 offen offset:36
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v153, v0, 16, v8
	v_lshl_or_b32 v152, v12, 16, v10
	v_perm_b32 v0, v251, v246, 0xc0c0004
	v_perm_b32 v8, v16, v38, 0xc0c0004
	v_perm_b32 v10, v127, v26, 0xc0c0004
	v_perm_b32 v12, v125, v124, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v124, v230, s[24:27], 0 offen offset:76
	buffer_load_u16 v127, v230, s[24:27], 0 offen offset:88
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v155, v8, 16, v0
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v125, v230, s[24:27], 0 offen offset:80
	buffer_load_u16 v126, v230, s[24:27], 0 offen offset:84
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v154, v12, 16, v10
	v_perm_b32 v8, v134, v27, 0xc0c0004
	v_perm_b32 v10, v131, v130, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v130, v230, s[24:27], 0 offen offset:100
	buffer_load_u16 v134, v230, s[24:27], 0 offen offset:116
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v0, v252, v247, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[165:172], v[146:147], v[221:222], v[165:172] neg_lo:[1,1,0]
	v_lshl_or_b32 v223, v10, 16, v8
	v_perm_b32 v8, v23, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[173:180], v[148:149], v[221:222], v[173:180] neg_lo:[1,1,0]
	v_lshl_or_b32 v224, v1, 16, v0
	v_perm_b32 v0, v253, v248, 0xc0c0004
	v_perm_b32 v1, v2, v40, 0xc0c0004
	v_perm_b32 v2, v135, v28, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[181:188], v[150:151], v[221:222], v[181:188] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[152:153], v[221:222], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[154:155], v[221:222], v[197:204] neg_lo:[1,1,0]
	v_lshl_or_b32 v226, v1, 16, v0
	v_lshl_or_b32 v225, v8, 16, v2
	v_perm_b32 v0, v237, v240, 0xc0c0004
	v_perm_b32 v1, v241, v227, 0xc0c0004
	v_perm_b32 v2, v228, v233, 0xc0c0004
	v_perm_b32 v8, v234, v11, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[205:212], v[223:224], v[221:222], v[205:212] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v25, v176
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v227, v1, 16, v0
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v0, v165
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v228, v8, 16, v2
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v1, v166
	v_cvt_f32_i32_e32 v176, v185
	v_cvt_f32_i32_e32 v185, v194
	v_cvt_f32_i32_e32 v194, v203
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[157:164], v[227:228], v[221:222], v[157:164] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v203, v212
	v_mul_f32_e32 v0, v0, v229
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[213:220], v[225:226], v[221:222], v[213:220] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v16, v173
	v_cvt_f32_i32_e32 v212, v157
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v157, 16, v232
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v24, v175
	v_cvt_f32_i32_e32 v26, v177
	v_cvt_f32_i32_e32 v27, v178
	v_cvt_f32_i32_e32 v28, v179
	v_cvt_f32_i32_e32 v29, v180
	v_cvt_f32_i32_e32 v38, v181
	v_cvt_f32_i32_e32 v39, v182
	v_cvt_f32_i32_e32 v175, v184
	v_cvt_f32_i32_e32 v177, v186
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v88, v0, v157
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v157, v1, v229
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v131, v230, s[24:27], 0 offen offset:104
	buffer_load_u16 v132, v230, s[24:27], 0 offen offset:108
	buffer_load_u16 v135, v230, s[24:27], 0 offen offset:120
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v2, v167
	v_cvt_f32_i32_e32 v8, v168
	v_cvt_f32_i32_e32 v10, v169
	v_cvt_f32_i32_e32 v11, v170
	v_cvt_f32_i32_e32 v12, v171
	v_cvt_f32_i32_e32 v14, v172
	v_cvt_f32_i32_e32 v23, v174
	v_cvt_f32_i32_e32 v40, v183
	v_cvt_f32_i32_e32 v178, v187
	v_cvt_f32_i32_e32 v179, v188
	v_cvt_f32_i32_e32 v180, v189
	v_cvt_f32_i32_e32 v181, v190
	v_cvt_f32_i32_e32 v182, v191
	v_cvt_f32_i32_e32 v183, v192
	v_cvt_f32_i32_e32 v184, v193
	v_cvt_f32_i32_e32 v186, v195
	v_cvt_f32_i32_e32 v187, v196
	v_cvt_f32_i32_e32 v188, v197
	v_cvt_f32_i32_e32 v189, v198
	v_cvt_f32_i32_e32 v190, v199
	v_cvt_f32_i32_e32 v191, v200
	v_cvt_f32_i32_e32 v192, v201
	v_cvt_f32_i32_e32 v193, v202
	v_cvt_f32_i32_e32 v195, v204
	v_cvt_f32_i32_e32 v196, v205
	v_cvt_f32_i32_e32 v197, v206
	v_cvt_f32_i32_e32 v198, v207
	v_cvt_f32_i32_e32 v199, v208
	v_cvt_f32_i32_e32 v200, v209
	v_cvt_f32_i32_e32 v201, v210
	v_cvt_f32_i32_e32 v202, v211
	v_cvt_f32_i32_e32 v204, v213
	v_cvt_f32_i32_e32 v205, v214
	v_cvt_f32_i32_e32 v206, v215
	v_cvt_f32_i32_e32 v207, v216
	v_cvt_f32_i32_e32 v208, v217
	v_cvt_f32_i32_e32 v209, v218
	v_cvt_f32_i32_e32 v210, v219
	v_cvt_f32_i32_e32 v211, v220
	v_cvt_f32_i32_e32 v213, v158
	v_cvt_f32_i32_e32 v214, v159
	v_cvt_f32_i32_e32 v215, v160
	v_cvt_f32_i32_e32 v216, v161
	v_cvt_f32_i32_e32 v217, v162
	v_cvt_f32_i32_e32 v218, v163
	v_cvt_f32_i32_e32 v219, v164
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x15
	buffer_load_u16 v136, v230, s[24:27], 0 offen offset:128
	buffer_load_u16 v137, v137, s[24:27], 0 offen
	buffer_load_u16 v146, v230, s[24:27], 0 offen offset:164
	buffer_load_u16 v147, v230, s[24:27], 0 offen offset:168
	buffer_load_u16 v148, v230, s[24:27], 0 offen offset:172
	buffer_load_u16 v149, v230, s[24:27], 0 offen offset:176
	buffer_load_u16 v150, v230, s[24:27], 0 offen offset:180
	buffer_load_u16 v151, v230, s[24:27], 0 offen offset:184
	buffer_load_u16 v152, v230, s[24:27], 0 offen offset:188
	buffer_load_u16 v153, v230, s[24:27], 0 offen offset:192
	buffer_load_u16 v154, v230, s[24:27], 0 offen offset:196
	buffer_load_u16 v155, v230, s[24:27], 0 offen offset:200
	buffer_load_u16 v156, v230, s[24:27], 0 offen offset:204
	buffer_load_u16 v220, v230, s[24:27], 0 offen offset:208
	buffer_load_u16 v221, v230, s[24:27], 0 offen offset:212
	buffer_load_u16 v222, v230, s[24:27], 0 offen offset:216
	buffer_load_u16 v223, v230, s[24:27], 0 offen offset:220
	buffer_load_u16 v224, v230, s[24:27], 0 offen offset:224
	buffer_load_u16 v225, v230, s[24:27], 0 offen offset:228
	buffer_load_u16 v226, v230, s[24:27], 0 offen offset:232
	buffer_load_u16 v227, v230, s[24:27], 0 offen offset:236
	buffer_load_u16 v228, v230, s[24:27], 0 offen offset:240
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v0, 16, v106
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v98, v157, v0
	.loc	1 274 24 is_stmt 0              ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v164, v16, v229
	v_mul_f32_e32 v169, v27, v229
	v_mul_f32_e32 v170, v28, v229
	v_mul_f32_e32 v171, v29, v229
	v_mul_f32_e32 v172, v38, v229
	v_mul_f32_e32 v173, v39, v229
	s_waitcnt vmcnt(36)
	v_dual_mul_f32 v175, v175, v229 :: v_dual_lshlrev_b32 v28, 16, v120
	v_dual_mul_f32 v177, v177, v229 :: v_dual_lshlrev_b32 v38, 16, v122
	v_dual_mul_f32 v158, v2, v229 :: v_dual_lshlrev_b32 v27, 16, v119
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v1, 16, v107
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v159, v8, v229
	v_mul_f32_e32 v160, v10, v229
	v_mul_f32_e32 v161, v11, v229
	v_mul_f32_e32 v162, v12, v229
	s_waitcnt vmcnt(34)
	v_dual_mul_f32 v163, v14, v229 :: v_dual_lshlrev_b32 v2, 16, v108
	v_dual_mul_f32 v165, v23, v229 :: v_dual_lshlrev_b32 v10, 16, v110
	v_dual_mul_f32 v166, v24, v229 :: v_dual_lshlrev_b32 v39, 16, v123
	v_dual_mul_f32 v167, v25, v229 :: v_dual_lshlrev_b32 v12, 16, v112
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v168, v26, v229 :: v_dual_lshlrev_b32 v107, 16, v126
	v_mul_f32_e32 v174, v40, v229
	v_mul_f32_e32 v176, v176, v229
	v_dual_mul_f32 v178, v178, v229 :: v_dual_lshlrev_b32 v119, 16, v138
	v_dual_mul_f32 v179, v179, v229 :: v_dual_lshlrev_b32 v40, 16, v124
	v_mul_f32_e32 v180, v180, v229
	v_dual_mul_f32 v181, v181, v229 :: v_dual_lshlrev_b32 v108, 16, v127
	v_dual_mul_f32 v182, v182, v229 :: v_dual_lshlrev_b32 v123, 16, v142
	v_mul_f32_e32 v183, v183, v229
	v_mul_f32_e32 v184, v184, v229
	v_mul_f32_e32 v185, v185, v229
	v_mul_f32_e32 v186, v186, v229
	v_mul_f32_e32 v187, v187, v229
	v_mul_f32_e32 v188, v188, v229
	v_dual_mul_f32 v189, v189, v229 :: v_dual_lshlrev_b32 v120, 16, v139
	v_mul_f32_e32 v190, v190, v229
	v_dual_mul_f32 v191, v191, v229 :: v_dual_lshlrev_b32 v124, 16, v143
	v_mul_f32_e32 v192, v192, v229
	v_mul_f32_e32 v193, v193, v229
	v_mul_f32_e32 v194, v194, v229
	v_mul_f32_e32 v195, v195, v229
	v_mul_f32_e32 v196, v196, v229
	v_mul_f32_e32 v197, v197, v229
	v_mul_f32_e32 v198, v198, v229
	v_mul_f32_e32 v199, v199, v229
	v_mul_f32_e32 v200, v200, v229
	v_mul_f32_e32 v201, v201, v229
	v_mul_f32_e32 v202, v202, v229
	v_mul_f32_e32 v203, v203, v229
	v_dual_mul_f32 v204, v204, v229 :: v_dual_fmac_f32 v93, v159, v2
	v_mul_f32_e32 v205, v205, v229
	v_mul_f32_e32 v207, v207, v229
	v_dual_mul_f32 v208, v208, v229 :: v_dual_fmac_f32 v87, v161, v10
	v_mul_f32_e32 v209, v209, v229
	v_dual_mul_f32 v210, v210, v229 :: v_dual_fmac_f32 v83, v163, v12
	v_dual_mul_f32 v213, v213, v229 :: v_dual_fmac_f32 v92, v175, v40
	v_dual_mul_f32 v219, v219, v229 :: v_dual_fmac_f32 v86, v177, v107
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v8, 16, v109
	v_lshlrev_b32_e32 v11, 16, v111
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v215, v215, v229 :: v_dual_lshlrev_b32 v16, 16, v114
	v_dual_mul_f32 v212, v212, v229 :: v_dual_lshlrev_b32 v23, 16, v115
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v85, v162, v11 :: v_dual_mul_f32 v216, v216, v229
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v24, 16, v116
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v214, v214, v229
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v53, v171, v28 :: v_dual_lshlrev_b32 v14, 16, v113
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v211, v211, v229 :: v_dual_lshlrev_b32 v26, 16, v118
	v_mul_f32_e32 v218, v218, v229
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v97, v173, v38 :: v_dual_lshlrev_b32 v106, 16, v125
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v109, 16, v128
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v115, 16, v134
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v217, v217, v229 :: v_dual_fmac_f32 v90, v176, v106
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v55, v170, v27
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v206, v206, v229 :: v_dual_fmac_f32 v91, v160, v8
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v229, v230, s[24:27], 0 offen offset:244
	buffer_load_u16 v230, v230, s[24:27], 0 offen offset:248
	buffer_load_u16 v231, v231, s[24:27], 0 offen
	v_lshlrev_b32_e32 v111, 16, v130
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v113, 16, v132
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v95, v174, v39 :: v_dual_lshlrev_b32 v110, 16, v129
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v112, 16, v131
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v116, 16, v135
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v56, v185, v115 :: v_dual_lshlrev_b32 v29, 16, v121
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v121, 16, v140
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v79, v180, v110 :: v_dual_lshlrev_b32 v114, 16, v133
	v_dual_fmac_f32 v65, v181, v111 :: v_dual_lshlrev_b32 v122, 16, v141
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v125, 16, v144
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v58, v184, v114 :: v_dual_lshlrev_b32 v25, 16, v117
	v_dual_fmac_f32 v89, v189, v119 :: v_dual_lshlrev_b32 v126, 16, v145
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v118, 16, v136
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v127, 16, v146
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v54, v186, v116 :: v_dual_lshlrev_b32 v117, 16, v137
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v128, 16, v147
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v129, 16, v148
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v131, 16, v150
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v81, v190, v120 :: v_dual_lshlrev_b32 v130, 16, v149
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v132, 16, v151
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v133, 16, v152
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v135, 16, v154
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v136, 16, v155
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v137, 16, v156
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v51, v196, v126 :: v_dual_lshlrev_b32 v134, 16, v153
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v138, 16, v220
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v94, v188, v118 :: v_dual_lshlrev_b32 v139, 16, v221
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v140, 16, v222
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v141, 16, v223
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v142, 16, v224
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v74, v192, v122 :: v_dual_lshlrev_b32 v143, 16, v225
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v144, 16, v226
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v145, 16, v227
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v146, 16, v228
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v84, v178, v108 :: v_dual_add_nc_u32 v101, s45, v101
	v_dual_fmac_f32 v62, v182, v112 :: v_dual_add_nc_u32 v105, s28, v105
	v_dual_fmac_f32 v96, v158, v1 :: v_dual_fmac_f32 v77, v204, v134
	v_fmac_f32_e32 v80, v164, v14
	v_dual_fmac_f32 v66, v165, v16 :: v_dual_fmac_f32 v63, v166, v23
	v_fmac_f32_e32 v61, v167, v24
	v_fmac_f32_e32 v59, v168, v25
	v_fmac_f32_e32 v57, v169, v26
	v_dual_fmac_f32 v99, v172, v29 :: v_dual_fmac_f32 v70, v194, v124
	v_dual_fmac_f32 v82, v179, v109 :: v_dual_fmac_f32 v49, v198, v128
	v_dual_fmac_f32 v60, v183, v113 :: v_dual_fmac_f32 v75, v206, v136
	v_dual_fmac_f32 v52, v187, v117 :: v_dual_fmac_f32 v71, v208, v138
	v_dual_fmac_f32 v68, v195, v125 :: v_dual_fmac_f32 v67, v210, v140
	v_dual_fmac_f32 v50, v197, v127 :: v_dual_fmac_f32 v47, v199, v129
	v_dual_fmac_f32 v46, v200, v130 :: v_dual_fmac_f32 v41, v203, v133
	v_dual_fmac_f32 v44, v201, v131 :: v_dual_fmac_f32 v73, v207, v137
	v_dual_fmac_f32 v76, v205, v135 :: v_dual_fmac_f32 v45, v215, v145
	v_dual_fmac_f32 v64, v211, v141 :: v_dual_fmac_f32 v43, v216, v146
	v_dual_fmac_f32 v72, v193, v123 :: v_dual_fmac_f32 v3, v212, v142
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v147, 16, v229
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v148, 16, v230
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v78, v191, v121 :: v_dual_lshlrev_b32 v149, 16, v231
	v_dual_fmac_f32 v69, v209, v139 :: v_dual_fmac_f32 v42, v202, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v48, v213, v143 :: v_dual_fmac_f32 v5, v218, v148
	v_dual_fmac_f32 v4, v214, v144 :: v_dual_fmac_f32 v7, v217, v147
	v_fmac_f32_e32 v6, v219, v149
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_clause 0xc                            ; 56-byte Folded Reload
	scratch_load_b32 v10, off, off offset:12
	scratch_load_b32 v11, off, off offset:16
	scratch_load_b64 v[0:1], off, off
	scratch_load_b32 v1, off, off offset:48
	scratch_load_b32 v2, off, off offset:52
	scratch_load_b32 v8, off, off offset:56
	scratch_load_b32 v14, off, off offset:60
	scratch_load_b32 v16, off, off offset:64
	scratch_load_b32 v23, off, off offset:68
	scratch_load_b32 v24, off, off offset:72
	scratch_load_b32 v25, off, off offset:76
	scratch_load_b32 v26, off, off offset:80
	scratch_load_b32 v27, off, off offset:84
	s_waitcnt vmcnt(10)
	v_mov_b32_e32 v12, v0
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v0, 0, v10
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s0, s49, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s48, s48, s29
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v0, v88, v99 offset1:32
	ds_store_2addr_b32 v0, v94, v77 offset0:64 offset1:96
	s_waitcnt vmcnt(9)
	ds_store_2addr_b32 v1, v98, v97 offset1:32
	ds_store_2addr_b32 v1, v89, v76 offset0:64 offset1:96
	s_waitcnt vmcnt(8)
	ds_store_2addr_b32 v2, v96, v95 offset1:32
	ds_store_2addr_b32 v2, v81, v75 offset0:64 offset1:96
	s_waitcnt vmcnt(7)
	ds_store_2addr_b32 v8, v93, v92 offset1:32
	ds_store_2addr_b32 v8, v78, v73 offset0:64 offset1:96
	s_waitcnt vmcnt(6)
	ds_store_2addr_b32 v14, v91, v90 offset1:32
	ds_store_2addr_b32 v14, v74, v71 offset0:64 offset1:96
	s_waitcnt vmcnt(5)
	ds_store_2addr_b32 v16, v87, v86 offset1:32
	ds_store_2addr_b32 v16, v72, v69 offset0:64 offset1:96
	s_waitcnt vmcnt(4)
	ds_store_2addr_b32 v23, v85, v84 offset1:32
	ds_store_2addr_b32 v23, v70, v67 offset0:64 offset1:96
	s_waitcnt vmcnt(3)
	ds_store_2addr_b32 v24, v83, v82 offset1:32
	ds_store_2addr_b32 v24, v68, v64 offset0:64 offset1:96
	ds_store_2addr_b32 v30, v80, v79 offset1:32
	ds_store_2addr_b32 v30, v51, v3 offset0:64 offset1:96
	v_add3_u32 v3, s48, s0, v12
	ds_store_2addr_b32 v31, v66, v65 offset1:32
	ds_store_2addr_b32 v31, v50, v48 offset0:64 offset1:96
	ds_store_2addr_b32 v32, v63, v62 offset1:32
	ds_store_2addr_b32 v32, v49, v4 offset0:64 offset1:96
	ds_store_2addr_b32 v33, v61, v60 offset1:32
	ds_store_2addr_b32 v33, v47, v45 offset0:64 offset1:96
	ds_store_2addr_b32 v34, v59, v58 offset1:32
	ds_store_2addr_b32 v34, v46, v43 offset0:64 offset1:96
	ds_store_2addr_b32 v35, v57, v56 offset1:32
	ds_store_2addr_b32 v35, v44, v7 offset0:64 offset1:96
	ds_store_2addr_b32 v36, v55, v54 offset1:32
	ds_store_2addr_b32 v36, v42, v5 offset0:64 offset1:96
	ds_store_2addr_b32 v37, v53, v52 offset1:32
	ds_store_2addr_b32 v37, v41, v6 offset0:64 offset1:96
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v4, 31, v3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v0, 0, v11
	ds_load_b32 v44, v0
	s_waitcnt vmcnt(2)
	ds_load_b32 v43, v25
	s_waitcnt vmcnt(1)
	ds_load_b32 v42, v26
	s_waitcnt vmcnt(0)
	ds_load_b32 v41, v27
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[45:46], 2, v[3:4]
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v4, vcc_lo, s30, v45
	v_add_co_ci_u32_e64 v5, null, s31, v46, vcc_lo
	global_load_b32 v7, v[4:5], off
.LBB0_7:                                ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v6, v7, v44
	global_atomic_cmpswap_b32 v0, v[4:5], v[6:7], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v7
	v_mov_b32_e32 v7, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_7
; %bb.8:                                ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
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
.LBB0_9:                                ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v6, v7, v43
	global_atomic_cmpswap_b32 v0, v[4:5], v[6:7], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v7
	v_mov_b32_e32 v7, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_9
; %bb.10:                               ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v4, s41, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v4, vcc_lo, s30, v4
	v_add_co_ci_u32_e64 v5, null, s31, v5, vcc_lo
	global_load_b32 v7, v[4:5], off
.LBB0_11:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v6, v7, v42
	global_atomic_cmpswap_b32 v0, v[4:5], v[6:7], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v7
	v_mov_b32_e32 v7, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v3, s42, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v3, vcc_lo, s30, v3
	v_add_co_ci_u32_e64 v4, null, s31, v4, vcc_lo
	global_load_b32 v6, v[3:4], off
.LBB0_13:                               ; %atomicrmw.start
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v5, v6, v41
	global_atomic_cmpswap_b32 v0, v[3:4], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v6
	v_mov_b32_e32 v6, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s35
	s_cbranch_scc1 .LBB0_2
.LBB0_15:                               ; %._crit_edge9
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 92
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.private_seg_size, 92
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6912
; TotalNumSgprs: 55
; NumVgprs: 256
; ScratchSize: 92
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 55
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
    .private_segment_fixed_size: 92
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 22
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
