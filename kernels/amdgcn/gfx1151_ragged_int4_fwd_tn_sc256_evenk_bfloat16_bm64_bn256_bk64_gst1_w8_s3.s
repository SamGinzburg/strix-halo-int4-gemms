	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 544 0                         ; ragged.py:544:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[28:29], s[0:1], 0x54
.Ltmp0:
	.loc	1 572 25 prologue_end           ; ragged.py:572:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 583 18                        ; ragged.py:583:18
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v9, 15, v0
	v_mov_b32_e32 v57, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v98, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:570:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:570:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v102, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v104, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v106, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v108, 0
.Ltmp2:
	.loc	1 572 25 is_stmt 1              ; ragged.py:572:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v110, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v112, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v122, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v126, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v130, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v134, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v136, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v138, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v140, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v142, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_mov_b32_e32 v139, 0
	s_cselect_b32 s4, s8, s5
	v_mov_b32_e32 v141, 0
	s_xor_b32 s4, s4, s6
	v_mov_b32_e32 v143, 0
	s_sub_i32 s4, s4, s6
	.loc	1 584 36                        ; ragged.py:584:36
	v_and_b32_e32 v17, 0xf0, v0
	.loc	1 574 33                        ; ragged.py:574:33
	s_sub_i32 s5, s29, s4
	.loc	1 575 24                        ; ragged.py:575:24
	s_mul_i32 s3, s4, s3
	.loc	1 574 22                        ; ragged.py:574:22
	s_min_i32 s5, s5, 1
	.loc	1 575 24                        ; ragged.py:575:24
	s_sub_i32 s2, s2, s3
	.loc	1 577 17                        ; ragged.py:577:17
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s3, 1
	s_sub_i32 s10, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s3, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s7
	s_sub_i32 s6, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 576 34                        ; ragged.py:576:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 576 20 is_stmt 0              ; ragged.py:576:20
	s_add_i32 s2, s2, s4
	.loc	1 579 20 is_stmt 1              ; ragged.py:579:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 580 23                        ; ragged.py:580:23
	s_lshl_b64 s[30:31], s[2:3], 3
	s_add_u32 s2, s20, s30
	s_addc_u32 s3, s21, s31
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 581 24                        ; ragged.py:581:24
	s_add_u32 s2, s22, s30
	s_addc_u32 s3, s23, s31
	.loc	1 582 22                        ; ragged.py:582:22
	s_add_u32 s4, s24, s30
	s_addc_u32 s5, s25, s31
	.loc	1 581 24                        ; ragged.py:581:24
	s_load_b64 s[16:17], s[2:3], 0x0
	.loc	1 582 22                        ; ragged.py:582:22
	s_load_b64 s[22:23], s[4:5], 0x0
	v_mov_b32_e32 v137, 0
	.loc	1 584 18                        ; ragged.py:584:18
	s_lshl_b32 s24, s6, 8
	.loc	1 583 18                        ; ragged.py:583:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s20, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s21, 0, s2
	.loc	1 664 25                        ; ragged.py:664:25
	v_add_nc_u32_e32 v10, s20, v9
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e32 vcc_lo, s[16:17], v[1:2]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s2, s[22:23], v[1:2]
	.loc	1 664 25 is_stmt 1              ; ragged.py:664:25
	v_add_nc_u32_e32 v1, 16, v10
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s3, s[16:17], v[3:4]
	v_cmp_le_i64_e64 s5, s[16:17], v[5:6]
	v_cmp_le_i64_e64 s6, s[16:17], v[7:8]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s7, s[22:23], v[3:4]
	.loc	1 585 21                        ; ragged.py:585:21
	scratch_store_b32 off, v1, off offset:288 ; 4-byte Folded Spill
	.loc	1 664 25 is_stmt 1              ; ragged.py:664:25
	v_add_nc_u32_e32 v1, 32, v10
	.loc	1 585 48                        ; ragged.py:585:48
	v_cmp_gt_i64_e64 s8, s[22:23], v[5:6]
	v_cmp_gt_i64_e64 s9, s[22:23], v[7:8]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:292
	scratch_store_b32 off, v10, off offset:284
	.loc	1 664 25                        ; ragged.py:664:25
	v_add_nc_u32_e32 v1, 48, v10
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 634 19                        ; ragged.py:634:19
	s_cmp_lt_i32 s28, 1
	s_mov_b32 s6, 0
	.loc	1 585 20                        ; ragged.py:585:20
	scratch_store_b32 off, v1, off offset:296 ; 4-byte Folded Spill
	.loc	1 634 19                        ; ragged.py:634:19
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3
	s_load_b64 s[34:35], s[0:1], 0x20
	s_load_b32 s25, s[0:1], 0x50
	s_load_b32 s7, s[0:1], 0x48
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 584 18 is_stmt 1              ; ragged.py:584:18
	v_or_b32_e32 v18, s24, v0
	.loc	1 583 32                        ; ragged.py:583:32
	v_and_b32_e32 v2, 63, v0
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v11, 5, v0
	v_lshrrev_b32_e32 v7, 1, v0
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v13, 2, v17
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v14, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v1, 32, v11
	v_or_b32_e32 v8, 0xb00, v0
	v_dual_mov_b32 v139, 0 :: v_dual_and_b32 v14, 28, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v1, 0, v13, v1
	.loc	1 631 28                        ; ragged.py:631:28
	v_lshrrev_b32_e32 v151, 6, v0
	.loc	1 579 20                        ; ragged.py:579:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s34, s30
	s_addc_u32 s1, s35, s31
	.loc	1 647 39                        ; ragged.py:647:39
	s_mul_i32 s25, s25, s33
	.loc	1 671 25                        ; ragged.py:671:25
	s_load_b32 s29, s[0:1], 0x0
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v15, s0, s20, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v16, null, s21, 0, s0
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v167, 0, v9
	v_or_b32_e32 v3, 0x300, v0
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s1, s[16:17], v[15:16]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s5, s[22:23], v[15:16]
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v15, 0x70, v7
	v_mov_b32_e32 v7, v18
	v_or_b32_e32 v4, 0x700, v0
	v_or_b32_e32 v5, 0x3f0, v0
	v_or_b32_e32 v6, 0x7f0, v0
	v_or_b32_e32 v9, 0xf00, v0
	v_or_b32_e32 v10, 0x1300, v0
	v_or_b32_e32 v12, 0x1700, v0
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[7:8], off offset:300
	scratch_store_b32 off, v0, off offset:316
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[183:184], null, s25, s29, v[18:19]
	v_or_b32_e32 v7, 0x1b00, v0
	v_or_b32_e32 v11, 0x1f00, v0
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v13, 1, v17
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v169, 0, v0
	v_mad_u64_u32 v[71:72], null, s33, 3, v[183:184]
	v_mad_u64_u32 v[72:73], null, s33, 6, v[183:184]
	v_mad_u64_u32 v[73:74], null, s33, 7, v[183:184]
	v_mad_u64_u32 v[74:75], null, s33, 10, v[183:184]
	v_mad_u64_u32 v[75:76], null, s33, 11, v[183:184]
	v_mad_u64_u32 v[76:77], null, s33, 12, v[183:184]
	v_mad_u64_u32 v[77:78], null, s33, 13, v[183:184]
	v_mad_u64_u32 v[78:79], null, s33, 14, v[183:184]
	v_mad_u64_u32 v[79:80], null, s33, 15, v[183:184]
	v_mad_u64_u32 v[80:81], null, s33, 17, v[183:184]
	v_mad_u64_u32 v[81:82], null, s33, 18, v[183:184]
	v_mad_u64_u32 v[82:83], null, s33, 19, v[183:184]
	v_mad_u64_u32 v[83:84], null, s33, 20, v[183:184]
	v_mad_u64_u32 v[84:85], null, s33, 21, v[183:184]
	v_mad_u64_u32 v[85:86], null, s33, 22, v[183:184]
	v_mad_u64_u32 v[86:87], null, s33, 23, v[183:184]
	v_mad_u64_u32 v[87:88], null, s33, 24, v[183:184]
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v0, v1, v14
	v_mad_u64_u32 v[88:89], null, s33, 25, v[183:184]
	v_mad_u64_u32 v[153:154], null, s33, 29, v[183:184]
	v_mad_u64_u32 v[89:90], null, s33, 26, v[183:184]
	v_mad_u64_u32 v[154:155], null, s33, 30, v[183:184]
	v_mad_u64_u32 v[144:145], null, s33, 5, v[183:184]
	v_mad_u64_u32 v[149:150], null, s33, 9, v[183:184]
	v_mad_u64_u32 v[90:91], null, s33, 27, v[183:184]
	v_mad_u64_u32 v[170:171], null, s33, 28, v[183:184]
	v_mad_u64_u32 v[155:156], null, s33, 31, v[183:184]
	.loc	1 586 20 is_stmt 1              ; ragged.py:586:20
	v_cmp_gt_i32_e64 s0, s33, v18
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v168, v167, v15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:320
	scratch_store_b32 off, v0, off offset:308
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v67, s20, v2
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v152, 0, v3
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v93, 0, v4
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v182, 0, v5
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v176, 0, v6
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v146, 0, v8
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v147, 0, v9
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v148, 0, v10
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v68, 0, v12
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v69, 0, v7
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v70, 0, v11
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v0, 0, v13
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v57, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s8
	s_mov_b32 s8, s10
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s1, s1, s5
	s_and_b32 s17, s9, 0xffff
	s_and_b32 s9, s11, 0xffff
	.loc	1 671 25                        ; ragged.py:671:25
	s_mul_i32 s5, s28, s29
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s20, s14
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v143, off offset:280
	scratch_store_b32 off, v142, off offset:276
	scratch_store_b32 off, v141, off offset:272
	scratch_store_b32 off, v140, off offset:268
	scratch_store_b32 off, v139, off offset:264
	scratch_store_b32 off, v138, off offset:260
	scratch_store_b32 off, v137, off offset:256
	scratch_store_b32 off, v136, off offset:252
	scratch_store_b32 off, v135, off offset:248
	scratch_store_b32 off, v134, off offset:244
	scratch_store_b32 off, v133, off offset:240
	scratch_store_b32 off, v132, off offset:236
	scratch_store_b32 off, v131, off offset:232
	scratch_store_b32 off, v130, off offset:228
	scratch_store_b32 off, v129, off offset:224
	scratch_store_b32 off, v128, off offset:220
	scratch_store_b32 off, v127, off offset:216
	scratch_store_b32 off, v126, off offset:212
	scratch_store_b32 off, v125, off offset:208
	scratch_store_b32 off, v124, off offset:204
	scratch_store_b32 off, v123, off offset:200
	scratch_store_b32 off, v122, off offset:196
	scratch_store_b32 off, v121, off offset:192
	scratch_store_b32 off, v120, off offset:188
	scratch_store_b32 off, v119, off offset:184
	scratch_store_b32 off, v118, off offset:180
	scratch_store_b32 off, v117, off offset:176
	scratch_store_b32 off, v116, off offset:172
	scratch_store_b32 off, v115, off offset:168
	scratch_store_b32 off, v114, off offset:164
	scratch_store_b32 off, v113, off offset:160
	scratch_store_b32 off, v112, off offset:156
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v111, off offset:152
	scratch_store_b32 off, v110, off offset:148
	scratch_store_b32 off, v109, off offset:144
	scratch_store_b32 off, v108, off offset:140
	scratch_store_b32 off, v107, off offset:136
	scratch_store_b32 off, v106, off offset:132
	scratch_store_b32 off, v105, off offset:128
	scratch_store_b32 off, v104, off offset:124
	scratch_store_b32 off, v103, off offset:120
	scratch_store_b32 off, v102, off offset:116
	scratch_store_b32 off, v101, off offset:112
	scratch_store_b32 off, v100, off offset:108
	scratch_store_b32 off, v45, off offset:104
	scratch_store_b32 off, v99, off offset:100
	scratch_store_b32 off, v98, off offset:96
	scratch_store_b32 off, v47, off offset:92
	scratch_store_b32 off, v97, off offset:88
	scratch_store_b32 off, v49, off offset:84
	scratch_store_b32 off, v48, off offset:80
	scratch_store_b32 off, v96, off offset:76
	scratch_store_b32 off, v95, off offset:72
	scratch_store_b32 off, v50, off offset:68
	scratch_store_b32 off, v65, off offset:64
	scratch_store_b32 off, v52, off offset:60
	scratch_store_b32 off, v51, off offset:56
	scratch_store_b32 off, v59, off offset:52
	scratch_store_b32 off, v58, off offset:48
	scratch_store_b32 off, v55, off offset:44
	scratch_store_b32 off, v53, off offset:40
	scratch_store_b32 off, v54, off offset:36
	scratch_store_b32 off, v57, off offset:32
	scratch_store_b32 off, v56, off offset:28
	.loc	1 636 28 is_stmt 1              ; ragged.py:636:28
	s_lshl_b32 s14, s6, 7
	s_mov_b32 s15, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, v0
	v_mov_b32_e32 v3, v0
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v5, v0
	v_dual_mov_b32 v6, v0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v7, v0
	v_dual_mov_b32 v8, v0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v10, v0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v11, v0
	v_dual_mov_b32 v12, v0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v13, v0
	v_dual_mov_b32 v14, v0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
	v_mov_b32_e32 v64, v0
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 639 26                        ; ragged.py:639:26
	s_add_i32 s22, s15, s14
	.loc	1 631 28                        ; ragged.py:631:28
	v_or_b32_e32 v65, 4, v151
	.loc	1 639 26                        ; ragged.py:639:26
	v_or_b32_e32 v0, s22, v151
	v_lshl_add_u32 v108, s33, 3, v183
	v_add_nc_u32_e32 v101, s33, v183
	v_lshl_add_u32 v102, s33, 1, v183
	v_or_b32_e32 v65, s22, v65
	.loc	1 648 42                        ; ragged.py:648:42
	v_mad_u64_u32 v[94:95], null, v0, s7, v[67:68]
	v_lshl_add_u32 v104, s33, 2, v183
	v_lshl_add_u32 v116, s33, 4, v183
	.loc	1 649 34                        ; ragged.py:649:34
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 639 26                        ; ragged.py:639:26
	s_waitcnt vmcnt(0)
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[155:156], off offset:16
	scratch_store_b64 off, v[154:155], off offset:8
	scratch_store_b64 off, v[153:154], off
	v_mov_b32_e32 v91, v89
	.loc	1 648 34                        ; ragged.py:648:34
	v_cndmask_b32_e64 v0, 0x80000000, v94, s1
	.loc	1 648 42 is_stmt 0              ; ragged.py:648:42
	v_mad_u64_u32 v[94:95], null, v65, s7, v[67:68]
	v_mov_b32_e32 v92, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 648 34                        ; ragged.py:648:34
	v_cndmask_b32_e64 v65, 0x80000000, v94, s1
	.loc	1 631 28 is_stmt 1              ; ragged.py:631:28
	v_or_b32_e32 v94, 8, v151
	.loc	1 639 26                        ; ragged.py:639:26
	v_or_b32_e32 v94, s22, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 648 42                        ; ragged.py:648:42
	v_mad_u64_u32 v[94:95], null, v94, s7, v[67:68]
	.loc	1 648 34 is_stmt 0              ; ragged.py:648:34
	v_cndmask_b32_e64 v96, 0x80000000, v94, s1
	.loc	1 631 28 is_stmt 1              ; ragged.py:631:28
	v_or_b32_e32 v94, 12, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 639 26                        ; ragged.py:639:26
	v_or_b32_e32 v94, s22, v94
	.loc	1 648 42                        ; ragged.py:648:42
	v_mad_u64_u32 v[94:95], null, v94, s7, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 648 34 is_stmt 0              ; ragged.py:648:34
	v_cndmask_b32_e64 v97, 0x80000000, v94, s1
	.loc	1 631 28 is_stmt 1              ; ragged.py:631:28
	v_or_b32_e32 v94, 16, v151
	.loc	1 639 26                        ; ragged.py:639:26
	v_or_b32_e32 v94, s22, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 648 42                        ; ragged.py:648:42
	v_mad_u64_u32 v[94:95], null, v94, s7, v[67:68]
	.loc	1 648 34 is_stmt 0              ; ragged.py:648:34
	v_cndmask_b32_e64 v98, 0x80000000, v94, s1
	.loc	1 631 28 is_stmt 1              ; ragged.py:631:28
	v_or_b32_e32 v94, 20, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 639 26                        ; ragged.py:639:26
	v_or_b32_e32 v94, s22, v94
	.loc	1 648 42                        ; ragged.py:648:42
	v_mad_u64_u32 v[94:95], null, v94, s7, v[67:68]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 648 34 is_stmt 0              ; ragged.py:648:34
	v_cndmask_b32_e64 v99, 0x80000000, v94, s1
	.loc	1 631 28 is_stmt 1              ; ragged.py:631:28
	v_or_b32_e32 v94, 24, v151
	.loc	1 639 26                        ; ragged.py:639:26
	v_or_b32_e32 v94, s22, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 648 42                        ; ragged.py:648:42
	v_mad_u64_u32 v[94:95], null, v94, s7, v[67:68]
	.loc	1 648 34 is_stmt 0              ; ragged.py:648:34
	v_cndmask_b32_e64 v100, 0x80000000, v94, s1
	.loc	1 631 28 is_stmt 1              ; ragged.py:631:28
	v_or_b32_e32 v94, 28, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 639 26                        ; ragged.py:639:26
	v_or_b32_e32 v94, s22, v94
	.loc	1 647 65                        ; ragged.py:647:65
	s_mul_i32 s22, s22, s33
	v_add_nc_u32_e32 v108, s22, v108
	v_add_nc_u32_e32 v109, s22, v149
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 648 42                        ; ragged.py:648:42
	v_mad_u64_u32 v[94:95], null, v94, s7, v[67:68]
	.loc	1 649 42                        ; ragged.py:649:42
	v_add_nc_u32_e32 v95, s22, v183
	v_add_nc_u32_e32 v127, s22, v90
	v_dual_mov_b32 v90, v88 :: v_dual_add_nc_u32 v101, s22, v101
	v_add_nc_u32_e32 v102, s22, v102
	v_add_nc_u32_e32 v110, s22, v74
	v_add_nc_u32_e32 v103, s22, v71
	v_add_nc_u32_e32 v111, s22, v75
	v_add_nc_u32_e32 v104, s22, v104
	v_add_nc_u32_e32 v105, s22, v144
	v_add_nc_u32_e32 v106, s22, v72
	v_add_nc_u32_e32 v107, s22, v73
	v_add_nc_u32_e32 v112, s22, v76
	v_add_nc_u32_e32 v113, s22, v77
	v_add_nc_u32_e32 v114, s22, v78
	v_add_nc_u32_e32 v115, s22, v79
	v_add_nc_u32_e32 v116, s22, v116
	v_add_nc_u32_e32 v118, s22, v81
	v_add_nc_u32_e32 v120, s22, v83
	v_add_nc_u32_e32 v121, s22, v84
	v_add_nc_u32_e32 v122, s22, v85
	v_add_nc_u32_e32 v123, s22, v86
	v_add_nc_u32_e32 v124, s22, v87
	v_add_nc_u32_e32 v125, s22, v88
	v_add_nc_u32_e32 v126, s22, v89
	v_dual_mov_b32 v89, v87 :: v_dual_mov_b32 v88, v86
	v_dual_mov_b32 v87, v85 :: v_dual_mov_b32 v86, v84
	v_dual_mov_b32 v85, v83 :: v_dual_mov_b32 v84, v82
	v_add_nc_u32_e32 v131, s22, v155
	v_mov_b32_e32 v83, v81
	v_dual_mov_b32 v81, v79 :: v_dual_add_nc_u32 v130, s22, v154
	v_mov_b32_e32 v79, v77
	v_mov_b32_e32 v77, v75
	v_mov_b32_e32 v75, v73
	v_mov_b32_e32 v73, v144
	v_add_nc_u32_e32 v119, s22, v82
	v_dual_mov_b32 v82, v80 :: v_dual_add_nc_u32 v129, s22, v153
	.loc	1 649 34 is_stmt 0              ; ragged.py:649:34
	v_cndmask_b32_e64 v95, 0x80000000, v95, s0
	v_cndmask_b32_e64 v108, 0x80000000, v108, s0
	v_add_nc_u32_e32 v117, s22, v80
	v_add_nc_u32_e32 v128, s22, v170
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	v_mov_b32_e32 v80, v78
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_cndmask_b32_e64 v110, 0x80000000, v110, s0
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_mov_b32_e32 v78, v76
	v_cndmask_b32_e64 v111, 0x80000000, v111, s0
	.loc	1 648 34 is_stmt 1              ; ragged.py:648:34
	v_cndmask_b32_e64 v94, 0x80000000, v94, s1
	.loc	1 649 34                        ; ragged.py:649:34
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v112, 0x80000000, v112, s0
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	v_cndmask_b32_e64 v131, 0x80000000, v131, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e64 v106, 0x80000000, v106, s0
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	v_cndmask_b32_e64 v114, 0x80000000, v114, s0
	v_cndmask_b32_e64 v116, 0x80000000, v116, s0
	v_cndmask_b32_e64 v118, 0x80000000, v118, s0
	v_cndmask_b32_e64 v119, 0x80000000, v119, s0
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	v_cndmask_b32_e64 v121, 0x80000000, v121, s0
	v_cndmask_b32_e64 v122, 0x80000000, v122, s0
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	s_clause 0x7
	buffer_load_u8 v132, v95, s[8:11], 0 offen
	buffer_load_u8 v133, v101, s[8:11], 0 offen
	buffer_load_u8 v134, v102, s[8:11], 0 offen
	buffer_load_u8 v135, v103, s[8:11], 0 offen
	buffer_load_u8 v136, v104, s[8:11], 0 offen
	buffer_load_u8 v137, v105, s[8:11], 0 offen
	buffer_load_u8 v138, v106, s[8:11], 0 offen
	buffer_load_u8 v141, v107, s[8:11], 0 offen
	v_mov_b32_e32 v76, v74
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	v_mov_b32_e32 v74, v72
	v_cndmask_b32_e64 v115, 0x80000000, v115, s0
	v_mov_b32_e32 v72, v71
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	s_clause 0x17
	buffer_load_u8 v144, v108, s[8:11], 0 offen
	buffer_load_u8 v145, v109, s[8:11], 0 offen
	buffer_load_u8 v178, v110, s[8:11], 0 offen
	buffer_load_u8 v179, v111, s[8:11], 0 offen
	buffer_load_u8 v71, v112, s[8:11], 0 offen
	buffer_load_u8 v150, v113, s[8:11], 0 offen
	buffer_load_u8 v171, v114, s[8:11], 0 offen
	buffer_load_u8 v66, v115, s[8:11], 0 offen
	buffer_load_u8 v166, v116, s[8:11], 0 offen
	buffer_load_u8 v153, v117, s[8:11], 0 offen
	buffer_load_u8 v155, v118, s[8:11], 0 offen
	buffer_load_u8 v156, v119, s[8:11], 0 offen
	buffer_load_u8 v157, v120, s[8:11], 0 offen
	buffer_load_u8 v158, v121, s[8:11], 0 offen
	buffer_load_u8 v159, v122, s[8:11], 0 offen
	buffer_load_u8 v160, v123, s[8:11], 0 offen
	buffer_load_u8 v161, v124, s[8:11], 0 offen
	buffer_load_u8 v162, v125, s[8:11], 0 offen
	buffer_load_u8 v163, v126, s[8:11], 0 offen
	buffer_load_u8 v164, v127, s[8:11], 0 offen
	buffer_load_u8 v165, v128, s[8:11], 0 offen
	buffer_load_u8 v129, v129, s[8:11], 0 offen
	buffer_load_u8 v130, v130, s[8:11], 0 offen
	buffer_load_u8 v131, v131, s[8:11], 0 offen
	.loc	1 648 34                        ; ragged.py:648:34
	s_clause 0x7
	buffer_load_u8 v0, v0, s[16:19], 0 offen
	buffer_load_u8 v65, v65, s[16:19], 0 offen
	buffer_load_u8 v95, v96, s[16:19], 0 offen
	buffer_load_u8 v96, v98, s[16:19], 0 offen
	buffer_load_u8 v98, v99, s[16:19], 0 offen
	buffer_load_u8 v99, v100, s[16:19], 0 offen
	buffer_load_u8 v94, v94, s[16:19], 0 offen
	buffer_load_u8 v97, v97, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 660 21                        ; ragged.py:660:21
	s_add_i32 s10, s15, 32
	.loc	1 638 23                        ; ragged.py:638:23
	s_cmpk_lt_u32 s15, 0x60
	s_mov_b32 s15, s10
	.loc	1 648 34                        ; ragged.py:648:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v169, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v169, v65 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v169, v95 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v169, v96 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v169, v98 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v152, v97
	ds_store_b8 v169, v99 offset:1536
	ds_store_b8 v93, v94
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 650 31                        ; ragged.py:650:31
	ds_load_u8 v0, v167 offset:320
	ds_load_u8 v65, v167 offset:256
	ds_load_u8 v125, v167 offset:336
	ds_load_u8 v126, v167 offset:272
	ds_load_u8 v117, v167 offset:352
	ds_load_u8 v118, v167 offset:288
	ds_load_u8 v107, v167 offset:368
	ds_load_u8 v108, v167 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v65, v0, 0xc0c0004
	ds_load_u8 v65, v167 offset:448
	ds_load_u8 v94, v167 offset:384
	ds_load_u8 v127, v167 offset:464
	ds_load_u8 v128, v167 offset:400
	ds_load_u8 v119, v167 offset:480
	ds_load_u8 v120, v167 offset:416
	ds_load_u8 v111, v167 offset:496
	ds_load_u8 v112, v167 offset:432
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v65, v94, v65, 0xc0c0004
	ds_load_u8 v94, v167 offset:64
	ds_load_u8 v95, v167
	ds_load_u8 v172, v167 offset:80
	ds_load_u8 v121, v167 offset:96
	ds_load_u8 v113, v167 offset:112
	ds_load_u8 v173, v167 offset:16
	ds_load_u8 v122, v167 offset:32
	ds_load_u8 v114, v167 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v126, v128, v127, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v118, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v108, v112, v111, 0xc0c0004
	v_lshl_or_b32 v126, v126, 16, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v118, v118, 16, v117
	v_lshl_or_b32 v108, v108, 16, v107
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v167 offset:192
	ds_load_u8 v96, v167 offset:128
	ds_load_u8 v174, v167 offset:208
	ds_load_u8 v175, v167 offset:144
	ds_load_u8 v123, v167 offset:224
	ds_load_u8 v124, v167 offset:160
	ds_load_u8 v115, v167 offset:240
	ds_load_u8 v116, v167 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v127, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v119, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v96, v96, v95, 0xc0c0004
	v_lshl_or_b32 v95, v65, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v128, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v120, v124, v123, 0xc0c0004
	v_lshl_or_b32 v94, v96, 16, v94
	ds_load_u8 v101, v167 offset:960
	ds_load_u8 v102, v167 offset:896
	ds_load_u8 v238, v167 offset:1024
	ds_load_u8 v245, v167 offset:976
	ds_load_u8 v246, v167 offset:912
	ds_load_u8 v240, v167 offset:992
	ds_load_u8 v241, v167 offset:928
	ds_load_u8 v239, v167 offset:944
	ds_load_u8 v103, v167 offset:832
	ds_load_u8 v104, v167 offset:768
	ds_load_u8 v252, v167 offset:848
	ds_load_u8 v254, v167 offset:784
	ds_load_u8 v248, v167 offset:864
	ds_load_u8 v249, v167 offset:800
	ds_load_u8 v242, v167 offset:880
	ds_load_u8 v243, v167 offset:816
	ds_load_u8 v105, v167 offset:704
	ds_load_u8 v106, v167 offset:640
	ds_load_u8 v0, v167 offset:720
	ds_load_u8 v142, v167 offset:656
	ds_load_u8 v255, v167 offset:736
	ds_load_u8 v140, v167 offset:672
	ds_load_u8 v250, v167 offset:752
	ds_load_u8 v253, v167 offset:688
	ds_load_u8 v109, v167 offset:576
	ds_load_u8 v110, v167 offset:512
	ds_load_u8 v96, v167 offset:592
	ds_load_u8 v97, v167 offset:528
	ds_load_u8 v139, v167 offset:608
	ds_load_u8 v181, v167 offset:544
	ds_load_u8 v143, v167 offset:624
	ds_load_u8 v180, v167 offset:560
	ds_load_u8 v244, v167 offset:1216
	ds_load_u8 v247, v167 offset:1280
	ds_load_u8 v211, v167 offset:1232
	ds_load_u8 v212, v167 offset:1168
	ds_load_u8 v209, v167 offset:1248
	ds_load_u8 v210, v167 offset:1184
	ds_load_u8 v207, v167 offset:1264
	ds_load_u8 v208, v167 offset:1200
	ds_load_u8 v251, v167 offset:1152
	ds_load_u8 v154, v167 offset:1088
	ds_load_u8 v218, v167 offset:1104
	ds_load_u8 v219, v167 offset:1040
	ds_load_u8 v216, v167 offset:1120
	ds_load_u8 v217, v167 offset:1056
	ds_load_u8 v213, v167 offset:1136
	ds_load_u8 v214, v167 offset:1072
	ds_load_u8 v65, v167 offset:1472
	ds_load_u8 v206, v167 offset:1536
	ds_load_u8 v226, v167 offset:1488
	ds_load_u8 v228, v167 offset:1424
	ds_load_u8 v223, v167 offset:1504
	ds_load_u8 v225, v167 offset:1440
	ds_load_u8 v220, v167 offset:1520
	ds_load_u8 v221, v167 offset:1456
	ds_load_u8 v98, v167 offset:1408
	ds_load_u8 v99, v167 offset:1344
	ds_load_u8 v235, v167 offset:1360
	ds_load_u8 v236, v167 offset:1296
	ds_load_u8 v232, v167 offset:1376
	ds_load_u8 v233, v167 offset:1312
	ds_load_u8 v229, v167 offset:1392
	ds_load_u8 v230, v167 offset:1328
	ds_load_u8 v215, v167 offset:1984
	ds_load_u8 v186, v167 offset:2000
	ds_load_u8 v188, v167 offset:1936
	ds_load_u8 v177, v167 offset:2016
	ds_load_u8 v185, v167 offset:1952
	ds_load_u8 v100, v182
	ds_load_u8 v184, v176
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v112, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v0, v142, v0, 0xc0c0004
	v_lshl_or_b32 v125, v128, 16, v127
	v_lshl_or_b32 v117, v120, 16, v119
	v_lshl_or_b32 v107, v112, 16, v111
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v65, v98, v65, 0xc0c0004
	v_lshl_or_b32 v96, v0, 16, v96
	v_perm_b32 v0, v249, v248, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v100, v239, v100, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v184, off offset:24 ; 4-byte Folded Spill
	ds_load_u8 v184, v167 offset:1968
	ds_load_u8 v222, v167 offset:1920
	ds_load_u8 v224, v167 offset:1856
	ds_load_u8 v193, v167 offset:1872
	ds_load_u8 v195, v167 offset:1808
	ds_load_u8 v190, v167 offset:1888
	ds_load_u8 v191, v167 offset:1824
	ds_load_u8 v187, v167 offset:1904
	ds_load_u8 v189, v167 offset:1840
	ds_load_u8 v227, v167 offset:1728
	ds_load_u8 v231, v167 offset:1792
	ds_load_u8 v198, v167 offset:1744
	ds_load_u8 v199, v167 offset:1680
	ds_load_u8 v196, v167 offset:1760
	ds_load_u8 v197, v167 offset:1696
	ds_load_u8 v192, v167 offset:1776
	ds_load_u8 v194, v167 offset:1712
	ds_load_u8 v234, v167 offset:1664
	ds_load_u8 v237, v167 offset:1600
	ds_load_u8 v204, v167 offset:1616
	ds_load_u8 v205, v167 offset:1552
	ds_load_u8 v202, v167 offset:1632
	ds_load_u8 v203, v167 offset:1568
	ds_load_u8 v200, v167 offset:1648
	ds_load_u8 v201, v167 offset:1584
	.loc	1 649 34                        ; ragged.py:649:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v169, v132
	ds_store_b8 v169, v133 offset:256
	ds_store_b8 v169, v134 offset:512
	ds_store_b8 v169, v136 offset:1024
	ds_store_b8 v169, v137 offset:1280
	ds_store_b8 v169, v138 offset:1536
	ds_store_b8 v169, v144 offset:2048
	ds_store_b8 v169, v145 offset:2304
	ds_store_b8 v169, v178 offset:2560
	ds_store_b8 v169, v71 offset:3072
	ds_store_b8 v169, v150 offset:3328
	ds_store_b8 v169, v171 offset:3584
	ds_store_b8 v169, v166 offset:4096
	ds_store_b8 v169, v153 offset:4352
	ds_store_b8 v169, v155 offset:4608
	ds_store_b8 v169, v157 offset:5120
	ds_store_b8 v169, v158 offset:5376
	ds_store_b8 v169, v159 offset:5632
	ds_store_b8 v169, v161 offset:6144
	ds_store_b8 v169, v162 offset:6400
	ds_store_b8 v169, v163 offset:6656
	ds_store_b8 v169, v165 offset:7168
	ds_store_b8 v169, v129 offset:7424
	ds_store_b8 v169, v130 offset:7680
	ds_store_b8 v152, v135
	ds_store_b8 v93, v141
	ds_store_b8 v146, v179
	ds_store_b8 v147, v66
	ds_store_b8 v148, v156
	ds_store_b8 v68, v160
	ds_store_b8 v69, v164
	ds_store_b8 v70, v131
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 650 31                        ; ragged.py:650:31
	ds_load_u8 v129, v168 offset:1280
	ds_load_u8 v130, v168 offset:1024
	ds_load_u8 v131, v168 offset:1920
	ds_load_u8 v132, v168 offset:1664
	ds_load_u8 v133, v168 offset:1408
	ds_load_u8 v134, v168 offset:1152
	v_dual_mov_b32 v71, v72 :: v_dual_mov_b32 v72, v74
	v_mov_b32_e32 v74, v76
	v_mov_b32_e32 v76, v78
	v_mov_b32_e32 v78, v80
	v_mov_b32_e32 v80, v82
	v_mov_b32_e32 v82, v84
	v_mov_b32_e32 v84, v86
	v_mov_b32_e32 v86, v88
	v_mov_b32_e32 v88, v90
	v_mov_b32_e32 v90, v92
	scratch_load_b32 v66, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v168 offset:1792
	ds_load_u8 v135, v168 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v132, v131, 16, v133
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v135, v130, 0xc0c0004
	ds_load_u8 v135, v168 offset:256
	ds_load_u8 v136, v168
	ds_load_u8 v137, v168 offset:896
	ds_load_u8 v138, v168 offset:640
	ds_load_u8 v141, v168 offset:384
	ds_load_u8 v144, v168 offset:128
	v_lshl_or_b32 v130, v130, 16, v129
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	ds_load_u8 v136, v168 offset:768
	ds_load_u8 v145, v168 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v134, v144, v141, 0xc0c0004
	v_dual_mov_b32 v144, v73 :: v_dual_mov_b32 v73, v75
	v_mov_b32_e32 v75, v77
	v_mov_b32_e32 v77, v79
	v_mov_b32_e32 v79, v81
	v_mov_b32_e32 v81, v83
	v_mov_b32_e32 v83, v85
	v_mov_b32_e32 v85, v87
	v_mov_b32_e32 v87, v89
	v_mov_b32_e32 v89, v91
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v136, v145, v136, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v129, v136, 16, v135
	v_perm_b32 v135, v138, v137, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[129:130], v[94:95], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v131, v135, 16, v134
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[125:126], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[117:118], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v94, v104, v103, 0xc0c0004
	v_perm_b32 v95, v102, v101, 0xc0c0004
	v_perm_b32 v101, v110, v109, 0xc0c0004
	v_perm_b32 v102, v106, v105, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[131:132], v[107:108], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[125:126], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v95, 16, v94
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[117:118], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v94, v102, 16, v101
	ds_load_u8 v101, v168 offset:3328
	ds_load_u8 v102, v168 offset:3072
	ds_load_u8 v103, v168 offset:3968
	ds_load_u8 v104, v168 offset:3712
	ds_load_u8 v105, v168 offset:3456
	ds_load_u8 v106, v168 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v168 offset:3840
	ds_load_u8 v107, v168 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v103, 16, v105
	v_perm_b32 v105, v254, v252, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v107, v102, 0xc0c0004
	ds_load_u8 v107, v168 offset:2304
	ds_load_u8 v108, v168 offset:2048
	ds_load_u8 v109, v168 offset:2944
	ds_load_u8 v110, v168 offset:2688
	ds_load_u8 v111, v168 offset:2432
	ds_load_u8 v112, v168 offset:2176
	v_lshl_or_b32 v102, v102, 16, v101
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	ds_load_u8 v108, v168 offset:2816
	ds_load_u8 v113, v168 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v113, v108, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v101, v108, 16, v107
	v_perm_b32 v107, v110, v109, 0xc0c0004
	v_perm_b32 v108, v140, v255, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[101:102], v[94:95], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v103, v107, 16, v106
	v_perm_b32 v106, v246, v245, 0xc0c0004
	v_perm_b32 v107, v181, v139, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[103:104], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v94, v238, v154, 0xc0c0004
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[153:154], off, off
	scratch_load_b64 v[154:155], off, off offset:8
	scratch_load_b64 v[155:156], off, off offset:16
	v_lshl_or_b32 v97, v106, 16, v105
	v_perm_b32 v105, v241, v240, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[101:102], v[96:97], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v105, 16, v0
	v_lshl_or_b32 v105, v108, 16, v107
	v_perm_b32 v0, v180, v143, 0xc0c0004
	v_perm_b32 v107, v253, v250, 0xc0c0004
	v_perm_b32 v108, v243, v242, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[103:104], v[96:97], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[101:102], v[105:106], v[33:40] neg_lo:[1,1,0]
	v_perm_b32 v96, v251, v244, 0xc0c0004
	v_lshl_or_b32 v107, v107, 16, v0
	v_lshl_or_b32 v108, v100, 16, v108
	v_perm_b32 v0, v247, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[103:104], v[105:106], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v94, v96, 16, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[101:102], v[107:108], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v65, 16, v0
	ds_load_u8 v0, v168 offset:5376
	ds_load_u8 v65, v168 offset:5120
	ds_load_u8 v98, v168 offset:6016
	ds_load_u8 v99, v168 offset:5760
	ds_load_u8 v100, v168 offset:5504
	ds_load_u8 v101, v168 offset:5248
	v_wmma_i32_16x16x16_iu4 v[57:64], v[103:104], v[107:108], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v65, v0, 0xc0c0004
	ds_load_u8 v65, v168 offset:5888
	ds_load_u8 v96, v168 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v96, v65, 0xc0c0004
	ds_load_u8 v96, v168 offset:4352
	ds_load_u8 v97, v168 offset:4096
	ds_load_u8 v102, v168 offset:4992
	ds_load_u8 v103, v168 offset:4736
	ds_load_u8 v104, v168 offset:4480
	ds_load_u8 v105, v168 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v168 offset:4864
	ds_load_u8 v106, v168 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v106, v97, 0xc0c0004
	v_lshl_or_b32 v97, v65, 16, v0
	v_perm_b32 v0, v101, v100, 0xc0c0004
	v_perm_b32 v65, v99, v98, 0xc0c0004
	v_perm_b32 v98, v105, v104, 0xc0c0004
	v_perm_b32 v100, v103, v102, 0xc0c0004
	v_perm_b32 v102, v212, v211, 0xc0c0004
	v_perm_b32 v104, v210, v209, 0xc0c0004
	v_lshl_or_b32 v99, v65, 16, v0
	v_perm_b32 v0, v236, v235, 0xc0c0004
	v_lshl_or_b32 v98, v100, 16, v98
	v_perm_b32 v65, v228, v226, 0xc0c0004
	v_perm_b32 v100, v219, v218, 0xc0c0004
	v_lshl_or_b32 v96, v106, 16, v96
	v_perm_b32 v106, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v65, 16, v0
	v_lshl_or_b32 v100, v102, 16, v100
	v_perm_b32 v0, v233, v232, 0xc0c0004
	v_perm_b32 v65, v225, v223, 0xc0c0004
	v_perm_b32 v102, v217, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[96:97], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[96:97], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v65, 16, v0
	v_lshl_or_b32 v102, v104, 16, v102
	v_perm_b32 v0, v230, v229, 0xc0c0004
	v_perm_b32 v65, v221, v220, 0xc0c0004
	v_perm_b32 v104, v214, v213, 0xc0c0004
	v_perm_b32 v94, v206, v237, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[102:103], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[96:97], v[102:103], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v65, 16, v0
	v_lshl_or_b32 v104, v106, 16, v104
	v_perm_b32 v0, v231, v224, 0xc0c0004
	v_perm_b32 v65, v222, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[98:99], v[104:105], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[96:97], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v65, 16, v0
	ds_load_u8 v0, v168 offset:7424
	ds_load_u8 v65, v168 offset:7168
	ds_load_u8 v98, v168 offset:8064
	ds_load_u8 v99, v168 offset:7808
	ds_load_u8 v100, v168 offset:7552
	ds_load_u8 v101, v168 offset:7296
	v_perm_b32 v96, v234, v227, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v94, v96, 16, v94
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v65, v0, 0xc0c0004
	ds_load_u8 v65, v168 offset:7936
	ds_load_u8 v96, v168 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v96, v65, 0xc0c0004
	ds_load_u8 v96, v168 offset:6400
	ds_load_u8 v97, v168 offset:6144
	ds_load_u8 v102, v168 offset:7040
	ds_load_u8 v103, v168 offset:6784
	ds_load_u8 v104, v168 offset:6528
	ds_load_u8 v105, v168 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v168 offset:6912
	ds_load_u8 v106, v168 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v106, v97, 0xc0c0004
	v_lshl_or_b32 v97, v65, 16, v0
	v_perm_b32 v0, v101, v100, 0xc0c0004
	v_perm_b32 v65, v99, v98, 0xc0c0004
	v_perm_b32 v98, v105, v104, 0xc0c0004
	v_perm_b32 v100, v103, v102, 0xc0c0004
	v_perm_b32 v102, v199, v198, 0xc0c0004
	v_lshl_or_b32 v96, v106, 16, v96
	v_lshl_or_b32 v99, v65, 16, v0
	v_perm_b32 v0, v195, v193, 0xc0c0004
	v_perm_b32 v65, v188, v186, 0xc0c0004
	v_lshl_or_b32 v98, v100, 16, v98
	v_perm_b32 v100, v205, v204, 0xc0c0004
	v_perm_b32 v104, v197, v196, 0xc0c0004
	v_perm_b32 v105, v189, v187, 0xc0c0004
	v_lshl_or_b32 v101, v65, 16, v0
	v_perm_b32 v0, v191, v190, 0xc0c0004
	v_perm_b32 v65, v185, v177, 0xc0c0004
	v_lshl_or_b32 v100, v102, 16, v100
	v_perm_b32 v102, v203, v202, 0xc0c0004
	s_waitcnt vmcnt(3)
	v_perm_b32 v106, v184, v66, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[96:97], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v65, 16, v0
	v_perm_b32 v0, v201, v200, 0xc0c0004
	v_perm_b32 v65, v194, v192, 0xc0c0004
	v_lshl_or_b32 v102, v104, 16, v102
	v_lshl_or_b32 v105, v106, 16, v105
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[96:97], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v65, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[96:97], v[102:103], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[102:103], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[96:97], v[104:105], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[98:99], v[104:105], v[57:64] neg_lo:[1,1,0]
	.loc	1 638 23                        ; ragged.py:638:23
	s_cbranch_scc1 .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 664 25                        ; ragged.py:664:25
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v0, off, off offset:284
	scratch_load_b32 v65, off, off offset:288
	scratch_load_b32 v94, off, off offset:292
	scratch_load_b32 v95, off, off offset:296
	scratch_load_b64 v[96:97], off, off offset:300
	.loc	1 671 25                        ; ragged.py:671:25
	s_add_i32 s10, s6, s5
	.loc	1 670 40                        ; ragged.py:670:40
	s_mov_b32 s22, s18
	.loc	1 671 25                        ; ragged.py:671:25
	s_mul_i32 s10, s10, s33
	.loc	1 670 40                        ; ragged.py:670:40
	s_mov_b32 s23, s19
	.loc	1 663 40                        ; ragged.py:663:40
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	.loc	1 661 27                        ; ragged.py:661:27
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v97, v1
	v_cvt_f32_i32_e32 v98, v2
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v108, v12
	v_cvt_f32_i32_e32 v99, v3
	v_cvt_f32_i32_e32 v100, v4
	v_cvt_f32_i32_e32 v101, v5
	v_cvt_f32_i32_e32 v102, v6
	v_cvt_f32_i32_e32 v103, v7
	v_cvt_f32_i32_e32 v104, v8
	v_cvt_f32_i32_e32 v105, v9
	v_cvt_f32_i32_e32 v106, v10
	v_cvt_f32_i32_e32 v107, v11
	v_cvt_f32_i32_e32 v109, v13
	v_cvt_f32_i32_e32 v110, v14
	v_cvt_f32_i32_e32 v111, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 664 25                        ; ragged.py:664:25
	v_mul_lo_u32 v0, v0, s28
	v_mul_lo_u32 v65, v65, s28
	v_mul_lo_u32 v94, v94, s28
	v_mul_lo_u32 v95, v95, s28
	.loc	1 670 40                        ; ragged.py:670:40
	v_add_lshl_u32 v96, v96, s10, 1
	.loc	1 663 40                        ; ragged.py:663:40
	v_add_lshl_u32 v0, s6, v0, 1
	v_add_lshl_u32 v65, s6, v65, 1
	v_add_lshl_u32 v94, s6, v94, 1
	v_add_lshl_u32 v95, s6, v95, 1
	.loc	1 670 40                        ; ragged.py:670:40
	v_cndmask_b32_e64 v96, 0x80000000, v96, s0
	.loc	1 663 40                        ; ragged.py:663:40
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	v_cndmask_b32_e32 v95, 0x80000000, v95, vcc_lo
	.loc	1 670 40                        ; ragged.py:670:40
	buffer_load_u16 v96, v96, s[20:23], 0 offen
	.loc	1 663 40                        ; ragged.py:663:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	buffer_load_u16 v65, v65, s[12:15], 0 offen
	buffer_load_u16 v94, v94, s[12:15], 0 offen
	buffer_load_u16 v95, v95, s[12:15], 0 offen
	.loc	1 675 21                        ; ragged.py:675:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 677 17                        ; ragged.py:677:17
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 634 19                        ; ragged.py:634:19
	s_cmp_lg_u32 s6, s28
	.loc	1 663 40                        ; ragged.py:663:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 670 40                        ; ragged.py:670:40
	v_lshlrev_b32_e32 v1, 16, v96
	.loc	1 663 40                        ; ragged.py:663:40
	v_lshlrev_b32_e32 v96, 16, v0
	.loc	1 675 21                        ; ragged.py:675:21
	scratch_load_b32 v0, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 663 40                        ; ragged.py:663:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 668 21                        ; ragged.py:668:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v100, v100, v96 :: v_dual_lshlrev_b32 v95, 16, v95
	v_mul_f32_e32 v98, v98, v96
	v_dual_mul_f32 v18, v18, v65 :: v_dual_mul_f32 v97, v97, v96
	v_dual_mul_f32 v99, v99, v96 :: v_dual_mul_f32 v20, v20, v65
	v_dual_mul_f32 v101, v101, v96 :: v_dual_mul_f32 v22, v22, v65
	v_dual_mul_f32 v102, v102, v96 :: v_dual_mul_f32 v17, v17, v65
	v_dual_mul_f32 v103, v103, v96 :: v_dual_mul_f32 v24, v24, v65
	v_dual_mul_f32 v107, v107, v96 :: v_dual_mul_f32 v28, v28, v65
	v_dual_mul_f32 v16, v16, v96 :: v_dual_mul_f32 v27, v27, v65
	v_dual_mul_f32 v104, v104, v96 :: v_dual_mul_f32 v19, v19, v65
	v_dual_mul_f32 v106, v106, v96 :: v_dual_mul_f32 v21, v21, v65
	v_dual_mul_f32 v108, v108, v96 :: v_dual_mul_f32 v23, v23, v65
	v_dual_mul_f32 v41, v41, v94 :: v_dual_mul_f32 v58, v58, v95
	v_dual_mul_f32 v47, v47, v94 :: v_dual_mul_f32 v64, v64, v95
	v_dual_mul_f32 v111, v111, v96 :: v_dual_mul_f32 v32, v32, v65
	v_dual_mul_f32 v38, v38, v94 :: v_dual_mul_f32 v49, v49, v95
	v_dual_mul_f32 v48, v48, v94 :: v_dual_mul_f32 v59, v59, v95
	v_dual_mul_f32 v37, v37, v94 :: v_dual_mul_f32 v54, v54, v95
	v_dual_mul_f32 v39, v39, v94 :: v_dual_mul_f32 v56, v56, v95
	v_dual_mul_f32 v43, v43, v94 :: v_dual_mul_f32 v60, v60, v95
	v_dual_mul_f32 v45, v45, v94 :: v_dual_mul_f32 v62, v62, v95
	v_dual_mul_f32 v105, v105, v96 :: v_dual_mul_f32 v26, v26, v65
	v_dual_mul_f32 v109, v109, v96 :: v_dual_mul_f32 v30, v30, v65
	v_dual_mul_f32 v110, v110, v96 :: v_dual_mul_f32 v25, v25, v65
	v_dual_mul_f32 v33, v33, v94 :: v_dual_mul_f32 v50, v50, v95
	v_dual_mul_f32 v40, v40, v94 :: v_dual_mul_f32 v51, v51, v95
	v_dual_mul_f32 v29, v29, v65 :: v_dual_mul_f32 v34, v34, v94
	v_dual_mul_f32 v31, v31, v65 :: v_dual_mul_f32 v36, v36, v94
	v_dual_mul_f32 v35, v35, v94 :: v_dual_mul_f32 v52, v52, v95
	v_dual_mul_f32 v44, v44, v94 :: v_dual_mul_f32 v55, v55, v95
	v_dual_mul_f32 v46, v46, v94 :: v_dual_mul_f32 v57, v57, v95
	v_dual_mul_f32 v42, v42, v94 :: v_dual_mul_f32 v53, v53, v95
	.loc	1 675 21                        ; ragged.py:675:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v12, off, off offset:312
	scratch_load_b32 v143, off, off offset:280
	scratch_load_b32 v142, off, off offset:276
	scratch_load_b32 v141, off, off offset:272
	scratch_load_b32 v140, off, off offset:268
	scratch_load_b32 v139, off, off offset:264
	scratch_load_b32 v138, off, off offset:260
	scratch_load_b32 v137, off, off offset:256
	scratch_load_b32 v136, off, off offset:252
	scratch_load_b32 v135, off, off offset:248
	scratch_load_b32 v134, off, off offset:244
	scratch_load_b32 v133, off, off offset:240
	scratch_load_b32 v132, off, off offset:236
	scratch_load_b32 v131, off, off offset:232
	scratch_load_b32 v130, off, off offset:228
	scratch_load_b32 v129, off, off offset:224
	scratch_load_b32 v128, off, off offset:220
	scratch_load_b32 v127, off, off offset:216
	scratch_load_b32 v126, off, off offset:212
	scratch_load_b32 v125, off, off offset:208
	scratch_load_b32 v124, off, off offset:204
	scratch_load_b32 v123, off, off offset:200
	scratch_load_b32 v122, off, off offset:196
	scratch_load_b32 v121, off, off offset:192
	scratch_load_b32 v120, off, off offset:188
	scratch_load_b32 v65, off, off offset:64
	scratch_load_b32 v119, off, off offset:184
	scratch_load_b32 v118, off, off offset:180
	scratch_load_b32 v117, off, off offset:176
	scratch_load_b32 v116, off, off offset:172
	scratch_load_b32 v115, off, off offset:168
	scratch_load_b32 v114, off, off offset:164
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v113, off, off offset:160
	scratch_load_b32 v112, off, off offset:156
	s_waitcnt vmcnt(33)
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 668 21                        ; ragged.py:668:21
	v_mul_f32_e32 v61, v61, v95
	v_mul_f32_e32 v63, v63, v95
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v96, off, off offset:76
	scratch_load_b32 v95, off, off offset:72
	.loc	1 676 17                        ; ragged.py:676:17
	s_waitcnt vmcnt(31) lgkmcnt(3)
	v_dual_fmac_f32 v143, v97, v0 :: v_dual_fmac_f32 v140, v100, v3
	v_dual_fmac_f32 v142, v98, v1 :: v_dual_fmac_f32 v141, v99, v2
	s_waitcnt vmcnt(27) lgkmcnt(2)
	v_dual_fmac_f32 v136, v104, v7 :: v_dual_fmac_f32 v139, v101, v4
	s_waitcnt vmcnt(25) lgkmcnt(1)
	v_fmac_f32_e32 v134, v106, v9
	v_dual_fmac_f32 v138, v102, v5 :: v_dual_fmac_f32 v137, v103, v6
	s_waitcnt vmcnt(23)
	v_dual_fmac_f32 v132, v108, v11 :: v_dual_fmac_f32 v133, v107, v10
	s_waitcnt vmcnt(19) lgkmcnt(0)
	v_fmac_f32_e32 v128, v16, v15
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v103, off, off offset:120
	scratch_load_b32 v102, off, off offset:116
	scratch_load_b32 v101, off, off offset:112
	scratch_load_b32 v100, off, off offset:108
	scratch_load_b32 v16, off, off offset:104
	scratch_load_b32 v99, off, off offset:100
	scratch_load_b32 v98, off, off offset:96
	scratch_load_b32 v97, off, off offset:88
	s_waitcnt vmcnt(23)
	v_dual_fmac_f32 v129, v111, v14 :: v_dual_fmac_f32 v124, v20, v3
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v111, off, off offset:152
	scratch_load_b32 v108, off, off offset:140
	scratch_load_b32 v107, off, off offset:136
	scratch_load_b32 v106, off, off offset:132
	scratch_load_b32 v104, off, off offset:124
	v_dual_fmac_f32 v135, v105, v8 :: v_dual_fmac_f32 v130, v110, v13
	v_dual_fmac_f32 v131, v109, v12 :: v_dual_fmac_f32 v126, v18, v1
	s_waitcnt vmcnt(26)
	v_dual_fmac_f32 v127, v17, v0 :: v_dual_fmac_f32 v122, v22, v5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v110, off, off offset:148
	scratch_load_b32 v109, off, off offset:144
	scratch_load_b32 v105, off, off offset:128
	s_waitcnt vmcnt(27)
	v_dual_fmac_f32 v125, v19, v2 :: v_dual_fmac_f32 v120, v24, v7
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v123, v21, v4 :: v_dual_fmac_f32 v118, v26, v9
	s_waitcnt vmcnt(22)
	v_dual_fmac_f32 v121, v23, v6 :: v_dual_fmac_f32 v116, v28, v11
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v119, v25, v8 :: v_dual_fmac_f32 v114, v30, v13
	s_waitcnt vmcnt(18)
	v_dual_fmac_f32 v117, v27, v10 :: v_dual_fmac_f32 v112, v32, v15
	v_fmac_f32_e32 v115, v29, v12
	s_waitcnt vmcnt(17)
	v_dual_fmac_f32 v113, v31, v14 :: v_dual_fmac_f32 v96, v52, v3
	scratch_load_b32 v52, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v103, v41, v8 :: v_dual_fmac_f32 v102, v42, v9
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v101, v43, v10 :: v_dual_fmac_f32 v100, v44, v11
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v16, v45, v12 :: v_dual_fmac_f32 v99, v46, v13
	s_waitcnt vmcnt(10)
	v_fmac_f32_e32 v98, v47, v14
	scratch_load_b32 v47, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(10)
	v_fmac_f32_e32 v97, v49, v0
	scratch_load_b32 v49, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(10)
	v_fmac_f32_e32 v111, v33, v0
	scratch_load_b32 v0, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v108, v36, v3 :: v_dual_fmac_f32 v107, v37, v4
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v106, v38, v5
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v104, v40, v7
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v110, v34, v1 :: v_dual_fmac_f32 v109, v35, v2
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v105, v39, v6
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v47, v48, v15
	scratch_load_b32 v48, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v45, v16 :: v_dual_fmac_f32 v48, v51, v2
	scratch_load_b32 v51, off, off offset:56 ; 4-byte Folded Reload
	v_fmac_f32_e32 v65, v55, v6
	scratch_load_b32 v55, off, off offset:44 ; 4-byte Folded Reload
	v_fmac_f32_e32 v0, v58, v9
	v_fmac_f32_e32 v49, v50, v1
	scratch_load_b32 v50, off, off offset:68 ; 4-byte Folded Reload
	v_fmac_f32_e32 v95, v53, v4
	scratch_load_b32 v53, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v58, v0 :: v_dual_fmac_f32 v51, v57, v8
	scratch_load_b32 v57, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v50, v54, v5
	scratch_load_b32 v54, off, off offset:36 ; 4-byte Folded Reload
	v_fmac_f32_e32 v55, v59, v10
	scratch_load_b32 v59, off, off offset:52 ; 4-byte Folded Reload
	v_fmac_f32_e32 v52, v56, v7
	scratch_load_b32 v56, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v53, v60, v11
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v57, v63, v14 :: v_dual_fmac_f32 v54, v61, v12
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v59, v62, v13 :: v_dual_fmac_f32 v56, v64, v15
	.loc	1 634 19                        ; ragged.py:634:19
	s_cbranch_scc1 .LBB0_2
; %bb.5:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:316
	scratch_load_b32 v17, off, off offset:320
.LBB0_6:                                ; %._crit_edge
	.loc	1 584 36 is_stmt 1              ; ragged.py:584:36
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v1, 1, v17
	.loc	1 680 13                        ; ragged.py:680:13
	scratch_load_b32 v17, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 679 9                         ; ragged.py:679:9
	v_bfe_u32 v20, v143, 16, 1
	v_bfe_u32 v21, v142, 16, 1
	v_cmp_o_f32_e64 s19, v143, v143
	v_bfe_u32 v23, v141, 16, 1
	v_cmp_o_f32_e64 s20, v142, v142
	v_add3_u32 v22, v143, v20, 0x7fff
	v_add3_u32 v21, v142, v21, 0x7fff
	v_cmp_o_f32_e64 s21, v141, v141
	v_add3_u32 v23, v141, v23, 0x7fff
	v_bfe_u32 v24, v139, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s19
	v_bfe_u32 v22, v140, 16, 1
	v_bfe_u32 v25, v138, 16, 1
	v_cmp_o_f32_e64 s19, v140, v140
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s20
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s21
	v_add3_u32 v22, v140, v22, 0x7fff
	v_add3_u32 v24, v139, v24, 0x7fff
	v_cmp_o_f32_e64 s20, v139, v139
	v_add3_u32 v25, v138, v25, 0x7fff
	v_cmp_o_f32_e64 s21, v138, v138
	v_cndmask_b16 v23.h, 0x7fff, v22.h, s19
	v_bfe_u32 v22, v137, 16, 1
	v_bfe_u32 v26, v136, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s20
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s21
	v_bfe_u32 v25, v135, 16, 1
	v_add3_u32 v22, v137, v22, 0x7fff
	v_cmp_o_f32_e64 s19, v137, v137
	v_add3_u32 v26, v136, v26, 0x7fff
	v_cmp_o_f32_e64 s20, v136, v136
	v_bfe_u32 v27, v134, 16, 1
	v_add3_u32 v25, v135, v25, 0x7fff
	v_cmp_o_f32_e64 s21, v135, v135
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s19
	v_cndmask_b16 v22.h, 0x7fff, v26.h, s20
	v_bfe_u32 v26, v133, 16, 1
	v_bfe_u32 v28, v132, 16, 1
	v_add3_u32 v27, v134, v27, 0x7fff
	v_cmp_o_f32_e64 s19, v134, v134
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s21
	v_add3_u32 v26, v133, v26, 0x7fff
	v_cmp_o_f32_e64 s20, v133, v133
	v_add3_u32 v28, v132, v28, 0x7fff
	v_cmp_o_f32_e64 s21, v132, v132
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s19
	v_bfe_u32 v27, v131, 16, 1
	v_bfe_u32 v29, v130, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s20
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s21
	v_bfe_u32 v28, v129, 16, 1
	v_add3_u32 v27, v131, v27, 0x7fff
	v_cmp_o_f32_e64 s19, v131, v131
	v_add3_u32 v29, v130, v29, 0x7fff
	v_cmp_o_f32_e64 s20, v130, v130
	v_bfe_u32 v30, v128, 16, 1
	v_add3_u32 v28, v129, v28, 0x7fff
	v_cmp_o_f32_e64 s21, v129, v129
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s19
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s20
	v_bfe_u32 v29, v127, 16, 1
	v_bfe_u32 v31, v126, 16, 1
	v_add3_u32 v30, v128, v30, 0x7fff
	v_cmp_o_f32_e64 s19, v128, v128
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s21
	v_add3_u32 v29, v127, v29, 0x7fff
	v_cmp_o_f32_e64 s20, v127, v127
	v_add3_u32 v31, v126, v31, 0x7fff
	v_cmp_o_f32_e64 s21, v126, v126
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s19
	v_bfe_u32 v30, v125, 16, 1
	v_bfe_u32 v32, v124, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s20
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s21
	v_bfe_u32 v31, v123, 16, 1
	v_add3_u32 v30, v125, v30, 0x7fff
	v_cmp_o_f32_e64 s19, v125, v125
	v_add3_u32 v32, v124, v32, 0x7fff
	v_cmp_o_f32_e64 s20, v124, v124
	v_bfe_u32 v33, v122, 16, 1
	v_add3_u32 v31, v123, v31, 0x7fff
	v_cmp_o_f32_e64 s21, v123, v123
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s19
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s20
	v_bfe_u32 v32, v121, 16, 1
	v_bfe_u32 v34, v120, 16, 1
	v_add3_u32 v33, v122, v33, 0x7fff
	v_cmp_o_f32_e64 s19, v122, v122
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s21
	v_add3_u32 v32, v121, v32, 0x7fff
	v_cmp_o_f32_e64 s20, v121, v121
	v_add3_u32 v34, v120, v34, 0x7fff
	v_cmp_o_f32_e64 s21, v120, v120
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s19
	v_bfe_u32 v33, v119, 16, 1
	v_bfe_u32 v35, v118, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s20
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s21
	v_bfe_u32 v34, v117, 16, 1
	v_add3_u32 v33, v119, v33, 0x7fff
	v_cmp_o_f32_e64 s19, v119, v119
	v_add3_u32 v35, v118, v35, 0x7fff
	v_cmp_o_f32_e64 s20, v118, v118
	v_bfe_u32 v36, v116, 16, 1
	v_add3_u32 v34, v117, v34, 0x7fff
	v_cmp_o_f32_e64 s21, v117, v117
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s19
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s20
	v_bfe_u32 v35, v115, 16, 1
	v_bfe_u32 v37, v114, 16, 1
	v_add3_u32 v36, v116, v36, 0x7fff
	v_cmp_o_f32_e64 s19, v116, v116
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s21
	v_add3_u32 v35, v115, v35, 0x7fff
	v_cmp_o_f32_e64 s20, v115, v115
	v_add3_u32 v37, v114, v37, 0x7fff
	v_cmp_o_f32_e64 s21, v114, v114
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s19
	v_bfe_u32 v36, v113, 16, 1
	v_bfe_u32 v38, v112, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s20
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s21
	v_bfe_u32 v37, v111, 16, 1
	v_add3_u32 v36, v113, v36, 0x7fff
	v_cmp_o_f32_e64 s19, v113, v113
	v_add3_u32 v38, v112, v38, 0x7fff
	v_cmp_o_f32_e64 s20, v112, v112
	v_bfe_u32 v39, v110, 16, 1
	v_add3_u32 v37, v111, v37, 0x7fff
	v_cmp_o_f32_e64 s21, v111, v111
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s19
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s20
	v_bfe_u32 v38, v109, 16, 1
	v_bfe_u32 v40, v108, 16, 1
	v_add3_u32 v39, v110, v39, 0x7fff
	v_cmp_o_f32_e64 s19, v110, v110
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s21
	v_add3_u32 v38, v109, v38, 0x7fff
	v_cmp_o_f32_e64 s20, v109, v109
	v_add3_u32 v40, v108, v40, 0x7fff
	v_cmp_o_f32_e64 s21, v108, v108
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s19
	v_bfe_u32 v39, v107, 16, 1
	v_bfe_u32 v41, v106, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s20
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s21
	v_bfe_u32 v40, v105, 16, 1
	v_add3_u32 v39, v107, v39, 0x7fff
	v_cmp_o_f32_e64 s19, v107, v107
	v_add3_u32 v41, v106, v41, 0x7fff
	v_cmp_o_f32_e64 s20, v106, v106
	v_bfe_u32 v42, v104, 16, 1
	v_add3_u32 v40, v105, v40, 0x7fff
	v_cmp_o_f32_e64 s21, v105, v105
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s19
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s20
	v_bfe_u32 v41, v103, 16, 1
	v_bfe_u32 v43, v102, 16, 1
	v_add3_u32 v42, v104, v42, 0x7fff
	v_cmp_o_f32_e64 s19, v104, v104
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s21
	v_add3_u32 v41, v103, v41, 0x7fff
	v_cmp_o_f32_e64 s20, v103, v103
	v_add3_u32 v43, v102, v43, 0x7fff
	v_cmp_o_f32_e64 s21, v102, v102
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s19
	v_bfe_u32 v42, v101, 16, 1
	v_bfe_u32 v44, v100, 16, 1
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s20
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s21
	v_bfe_u32 v43, v45, 16, 1
	v_add3_u32 v42, v101, v42, 0x7fff
	v_cmp_o_f32_e64 s19, v101, v101
	v_add3_u32 v44, v100, v44, 0x7fff
	v_cmp_o_f32_e64 s20, v100, v100
	v_add3_u32 v43, v45, v43, 0x7fff
	v_cmp_o_f32_e64 s21, v45, v45
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s19
	v_bfe_u32 v45, v99, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s20
	v_bfe_u32 v44, v98, 16, 1
	v_bfe_u32 v46, v47, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s21
	v_add3_u32 v45, v99, v45, 0x7fff
	v_cmp_o_f32_e64 s19, v99, v99
	v_add3_u32 v44, v98, v44, 0x7fff
	v_cmp_o_f32_e64 s20, v98, v98
	v_add3_u32 v46, v47, v46, 0x7fff
	v_cmp_o_f32_e64 s21, v47, v47
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s19
	v_bfe_u32 v45, v97, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s20
	v_bfe_u32 v47, v49, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s21
	v_bfe_u32 v46, v48, 16, 1
	v_add3_u32 v45, v97, v45, 0x7fff
	v_cmp_o_f32_e64 s19, v97, v97
	v_add3_u32 v47, v49, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v49, v49
	v_add3_u32 v46, v48, v46, 0x7fff
	v_cmp_o_f32_e64 s21, v48, v48
	v_bfe_u32 v48, v96, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s19
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s20
	v_bfe_u32 v47, v95, 16, 1
	v_bfe_u32 v49, v50, 16, 1
	v_add3_u32 v48, v96, v48, 0x7fff
	v_cmp_o_f32_e64 s19, v96, v96
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s21
	v_add3_u32 v47, v95, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v95, v95
	v_add3_u32 v49, v50, v49, 0x7fff
	v_cmp_o_f32_e64 s21, v50, v50
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s19
	v_bfe_u32 v48, v65, 16, 1
	v_bfe_u32 v50, v52, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s20
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s21
	v_bfe_u32 v49, v51, 16, 1
	v_add3_u32 v48, v65, v48, 0x7fff
	v_cmp_o_f32_e64 s19, v65, v65
	v_add3_u32 v50, v52, v50, 0x7fff
	v_cmp_o_f32_e64 s20, v52, v52
	v_add3_u32 v49, v51, v49, 0x7fff
	v_cmp_o_f32_e64 s21, v51, v51
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s19
	v_bfe_u32 v51, v58, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s20
	v_bfe_u32 v50, v55, 16, 1
	v_bfe_u32 v52, v53, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s21
	v_add3_u32 v51, v58, v51, 0x7fff
	v_cmp_o_f32_e64 s19, v58, v58
	v_add3_u32 v50, v55, v50, 0x7fff
	v_cmp_o_f32_e64 s20, v55, v55
	v_add3_u32 v52, v53, v52, 0x7fff
	v_cmp_o_f32_e64 s21, v53, v53
	v_bfe_u32 v53, v54, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s19
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s20
	v_bfe_u32 v51, v59, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s21
	v_add3_u32 v52, v54, v53, 0x7fff
	v_bfe_u32 v53, v57, 16, 1
	v_cmp_o_f32_e64 s19, v54, v54
	v_bfe_u32 v54, v56, 16, 1
	v_add3_u32 v51, v59, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v59, v59
	v_add3_u32 v53, v57, v53, 0x7fff
	v_and_b32_e32 v55, 16, v0
	v_cmp_o_f32_e64 s21, v57, v57
	v_add3_u32 v54, v56, v54, 0x7fff
	v_cmp_o_f32_e64 s22, v56, v56
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s19
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s20
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s21
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v11, s24, v1
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s22
	v_mov_b32_e32 v54, 0x5410
	v_cmp_eq_u32_e64 s19, 0, v55
	v_mov_b32_e32 v55, 0x7632
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v16, 1, v11
	s_mov_b32 s20, 0x76543210
	v_or_b32_e32 v15, 2, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v53, v24, v21, s19
	v_cndmask_b32_e64 v21, v21, v24, s19
	v_cndmask_b32_e64 v24, v22, v23, s19
	v_cndmask_b32_e64 v22, v23, v22, s19
	v_cndmask_b32_e64 v23, v27, v25, s19
	v_cndmask_b32_e64 v25, v25, v27, s19
	v_cndmask_b32_e64 v27, v28, v26, s19
	v_cndmask_b32_e64 v26, v26, v28, s19
	v_cndmask_b32_e64 v28, v31, v29, s19
	v_cndmask_b32_e64 v29, v29, v31, s19
	v_cndmask_b32_e64 v31, v32, v30, s19
	v_cndmask_b32_e64 v30, v30, v32, s19
	v_cndmask_b32_e64 v32, v35, v33, s19
	v_cndmask_b32_e64 v33, v33, v35, s19
	v_cndmask_b32_e64 v35, v36, v34, s19
	v_cndmask_b32_e64 v34, v34, v36, s19
	v_cndmask_b32_e64 v36, v39, v37, s19
	v_cndmask_b32_e64 v37, v37, v39, s19
	v_cndmask_b32_e64 v39, v40, v38, s19
	v_cndmask_b32_e64 v38, v38, v40, s19
	v_cndmask_b32_e64 v40, v43, v41, s19
	v_cndmask_b32_e64 v41, v41, v43, s19
	v_cndmask_b32_e64 v43, v44, v42, s19
	v_cndmask_b32_e64 v42, v42, v44, s19
	v_cndmask_b32_e64 v44, v47, v45, s19
	v_cndmask_b32_e64 v45, v45, v47, s19
	v_cndmask_b32_e64 v47, v48, v46, s19
	v_cndmask_b32_e64 v46, v46, v48, s19
	v_cndmask_b32_e64 v48, v51, v49, s19
	v_cndmask_b32_e64 v49, v49, v51, s19
	v_cndmask_b32_e64 v51, v52, v50, s19
	v_cndmask_b32_e64 v50, v50, v52, s19
	v_cndmask_b32_e64 v52, 0x1054, v54, s19
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s18, s33, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_permlanex16_b32 v21, v21, s20, 0xfedcba98 op_sel:[1,0]
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s17, s33, v16
	.loc	1 679 9                         ; ragged.py:679:9
	v_lshl_or_b32 v52, v52, 8, v52
	v_lshl_or_b32 v54, v54, 8, v54
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s16, s33, v15
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v20.h, 0
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v52, 0x540054, v52
	v_and_b32_e32 v54, 0x760076, v54
	v_permlanex16_b32 v25, v25, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v52, v52, 4, v52
	v_lshl_or_b32 v54, v54, 4, v54
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v52, 0x5040504, v52
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	.loc	1 680 13                        ; ragged.py:680:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v87, v17, s33
	scratch_load_b32 v17, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 679 9                         ; ragged.py:679:9
	v_permlanex16_b32 v41, v41, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v45, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v49, s20, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v84, v11, v87, 1
	v_add_lshl_u32 v85, v16, v87, 1
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v21, v53, v52
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s18, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v86, v15, v87, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s17, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s16, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v21, v21, v53, v54
	v_perm_b32 v53, v22, v24, v52
	v_perm_b32 v22, v22, v24, v54
	v_perm_b32 v24, v25, v23, v52
	v_perm_b32 v23, v25, v23, v54
	v_perm_b32 v25, v26, v27, v52
	v_perm_b32 v26, v26, v27, v54
	v_perm_b32 v27, v29, v28, v52
	v_perm_b32 v28, v29, v28, v54
	v_perm_b32 v29, v30, v31, v52
	v_perm_b32 v30, v30, v31, v54
	v_perm_b32 v31, v33, v32, v52
	v_perm_b32 v32, v33, v32, v54
	v_perm_b32 v33, v34, v35, v52
	v_perm_b32 v34, v34, v35, v54
	v_perm_b32 v35, v37, v36, v52
	v_perm_b32 v36, v37, v36, v54
	v_perm_b32 v37, v38, v39, v52
	v_perm_b32 v38, v38, v39, v54
	v_perm_b32 v39, v41, v40, v52
	v_perm_b32 v40, v41, v40, v54
	v_perm_b32 v41, v42, v43, v52
	v_perm_b32 v42, v42, v43, v54
	v_perm_b32 v43, v45, v44, v52
	v_perm_b32 v44, v45, v44, v54
	v_perm_b32 v45, v46, v47, v52
	v_perm_b32 v46, v46, v47, v54
	v_perm_b32 v47, v49, v48, v52
	v_perm_b32 v48, v49, v48, v54
	v_perm_b32 v49, v50, v51, v52
	v_perm_b32 v50, v50, v51, v54
	v_mov_b16_e32 v51.l, v55.h
	v_mov_b16_e32 v51.h, v20.h
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s15, s33, v14
	.loc	1 679 9                         ; ragged.py:679:9
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s14, s33, v13
	.loc	1 679 9                         ; ragged.py:679:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v87, 1
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v20.l, v21.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[20:23], 0 offen
	buffer_store_b16 v21, v86, s[20:23], 0 offen
	v_add_lshl_u32 v21, v13, v87, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s15, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s13, s33, v12
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s14, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s12, s33, v10
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v55, v12, v87, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s11, s33, v9
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v84, v10, v87, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s13, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s10, s33, v8
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v52.h, v20.h
	v_mov_b16_e32 v54.h, v20.h
	v_mov_b16_e32 v56.h, v20.h
	v_mov_b16_e32 v57.h, v20.h
	v_mov_b16_e32 v58.h, v20.h
	v_mov_b16_e32 v59.h, v20.h
	v_mov_b16_e32 v60.h, v20.h
	v_mov_b16_e32 v61.h, v20.h
	v_mov_b16_e32 v62.h, v20.h
	v_mov_b16_e32 v63.h, v20.h
	v_mov_b16_e32 v64.h, v20.h
	v_mov_b16_e32 v65.h, v20.h
	v_mov_b16_e32 v66.h, v20.h
	v_mov_b16_e32 v67.h, v20.h
	v_mov_b16_e32 v68.h, v20.h
	v_mov_b16_e32 v69.h, v20.h
	v_mov_b16_e32 v70.h, v20.h
	v_mov_b16_e32 v71.h, v20.h
	v_mov_b16_e32 v72.h, v20.h
	v_mov_b16_e32 v73.h, v20.h
	v_mov_b16_e32 v74.h, v20.h
	v_mov_b16_e32 v75.h, v20.h
	v_mov_b16_e32 v76.h, v20.h
	v_mov_b16_e32 v77.h, v20.h
	v_mov_b16_e32 v78.h, v20.h
	v_mov_b16_e32 v79.h, v20.h
	v_mov_b16_e32 v80.h, v20.h
	v_mov_b16_e32 v81.h, v20.h
	v_mov_b16_e32 v82.h, v20.h
	v_mov_b16_e32 v83.h, v20.h
	s_clause 0x1
	buffer_store_b16 v20, v51, s[20:23], 0 offen
	buffer_store_b16 v53, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v9, v87, 1
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s12, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v54.l, v53.h
	v_add_lshl_u32 v21, v8, v87, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s11, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s9, s33, v7
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s10, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v52.l, v22.h
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s8, s33, v6
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v22, v84, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v87, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s7, s33, v5
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v51, v6, v87, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s9, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s6, s33, v4
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v52, v20, s[20:23], 0 offen
	buffer_store_b16 v24, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v5, v87, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s8, s4
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v1, 0x87, v11
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v57.l, v24.h
	v_add_lshl_u32 v21, v4, v87, 1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s7, s4
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s5, s33, v3
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s6, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v56.l, v23.h
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s0, s33, v1
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v57, v22, s[20:23], 0 offen
	buffer_store_b16 v23, v51, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v87, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	v_add_lshl_u32 v23, v2, v87, 1
	v_add_lshl_u32 v0, v1, v87, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s5, s4
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v56, v20, s[20:23], 0 offen
	buffer_store_b16 v25, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s1, s4
	s_and_b32 s4, s0, s4
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v59.l, v25.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s18, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v58.l, v26.h
	s_clause 0x1
	buffer_store_b16 v59, v22, s[20:23], 0 offen
	buffer_store_b16 v26, v23, s[20:23], 0 offen
	v_mov_b16_e32 v61.l, v27.h
	v_mov_b16_e32 v60.l, v28.h
	v_mov_b16_e32 v63.l, v29.h
	v_mov_b16_e32 v62.l, v30.h
	v_mov_b16_e32 v65.l, v31.h
	v_mov_b16_e32 v64.l, v32.h
	v_mov_b16_e32 v67.l, v33.h
	v_mov_b16_e32 v66.l, v34.h
	v_mov_b16_e32 v69.l, v35.h
	v_mov_b16_e32 v68.l, v36.h
	v_mov_b16_e32 v71.l, v37.h
	v_mov_b16_e32 v70.l, v38.h
	v_mov_b16_e32 v73.l, v39.h
	v_mov_b16_e32 v72.l, v40.h
	v_mov_b16_e32 v74.l, v42.h
	v_mov_b16_e32 v75.l, v41.h
	v_mov_b16_e32 v76.l, v44.h
	v_mov_b16_e32 v77.l, v43.h
	v_mov_b16_e32 v78.l, v46.h
	v_mov_b16_e32 v79.l, v45.h
	v_mov_b16_e32 v80.l, v48.h
	v_mov_b16_e32 v81.l, v47.h
	v_mov_b16_e32 v83.l, v49.h
	v_mov_b16_e32 v82.l, v50.h
	.loc	1 680 13                        ; ragged.py:680:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v19, v17, s33
	scratch_load_b32 v17, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v11, v19, 1
	v_add_lshl_u32 v21, v16, v19, 1
	v_add_lshl_u32 v22, v15, v19, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s17, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v58, v0, s[20:23], 0 offen
	buffer_store_b16 v27, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v14, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s16, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v13, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s15, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v61, v21, s[20:23], 0 offen
	buffer_store_b16 v28, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s14, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	v_add_lshl_u32 v22, v10, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s13, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v60, v0, s[20:23], 0 offen
	buffer_store_b16 v29, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v9, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s12, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v8, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s11, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v63, v21, s[20:23], 0 offen
	buffer_store_b16 v30, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s10, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	v_add_lshl_u32 v22, v6, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s9, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v62, v0, s[20:23], 0 offen
	buffer_store_b16 v31, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v5, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s8, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v4, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s7, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v65, v21, s[20:23], 0 offen
	buffer_store_b16 v32, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s6, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	v_add_lshl_u32 v22, v2, v19, 1
	s_clause 0x1
	buffer_store_b16 v64, v0, s[20:23], 0 offen
	buffer_store_b16 v33, v20, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s5, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s4, s1, s3
	s_and_b32 s3, s0, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s18, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v67, v21, s[20:23], 0 offen
	buffer_store_b16 v34, v22, s[20:23], 0 offen
	.loc	1 680 13                        ; ragged.py:680:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v18, v17, s33
	scratch_load_b32 v17, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v19, v11, v18, 1
	v_add_lshl_u32 v20, v16, v18, 1
	v_add_lshl_u32 v21, v15, v18, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s17, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v66, v0, s[20:23], 0 offen
	buffer_store_b16 v35, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v14, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s16, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v19, v13, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s15, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v69, v20, s[20:23], 0 offen
	buffer_store_b16 v36, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s14, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_lshl_u32 v21, v10, v18, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s13, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v68, v0, s[20:23], 0 offen
	buffer_store_b16 v37, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v9, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s12, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v19, v8, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s11, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v71, v20, s[20:23], 0 offen
	buffer_store_b16 v38, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s10, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	v_add_lshl_u32 v21, v6, v18, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s9, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v70, v0, s[20:23], 0 offen
	buffer_store_b16 v39, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v5, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s8, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v19, v4, v18, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s7, s2
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v73, v20, s[20:23], 0 offen
	buffer_store_b16 v40, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s6, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_clause 0x1
	buffer_store_b16 v72, v0, s[20:23], 0 offen
	buffer_store_b16 v41, v19, s[20:23], 0 offen
	v_add_lshl_u32 v0, v1, v18, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s5, s2
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v2, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	s_and_b32 s1, s1, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	s_clause 0x1
	buffer_store_b16 v75, v20, s[20:23], 0 offen
	buffer_store_b16 v42, v21, s[20:23], 0 offen
	.loc	1 680 13                        ; ragged.py:680:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v17, v17, s33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_add_lshl_u32 v16, v16, v17, 1
	v_add_lshl_u32 v15, v15, v17, 1
	v_add_lshl_u32 v12, v12, v17, 1
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v74, v0, s[20:23], 0 offen
	buffer_store_b16 v43, v11, s[20:23], 0 offen
	v_add_lshl_u32 v0, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v11, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v44, v15, s[20:23], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v76, v0, s[20:23], 0 offen
	buffer_store_b16 v45, v11, s[20:23], 0 offen
	v_add_lshl_u32 v0, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v46, v10, s[20:23], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v78, v0, s[20:23], 0 offen
	buffer_store_b16 v47, v8, s[20:23], 0 offen
	v_add_lshl_u32 v0, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v48, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v0, s[20:23], 0 offen
	buffer_store_b16 v49, v4, s[20:23], 0 offen
	buffer_store_b16 v83, v3, s[20:23], 0 offen
	buffer_store_b16 v50, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 544 5                         ; ragged.py:544:5
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 328
		.amdhsa_kernarg_size 112
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 328
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15920
; TotalNumSgprs: 38
; NumVgprs: 256
; ScratchSize: 328
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x4d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x27 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	570                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 112
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 328
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc256_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 81
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
