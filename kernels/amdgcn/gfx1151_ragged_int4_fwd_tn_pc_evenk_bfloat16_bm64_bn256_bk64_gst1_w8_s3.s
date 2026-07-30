	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 544 0                         ; ragged.py:544:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x4c
	s_load_b32 s3, s[0:1], 0x58
.Ltmp0:
	.loc	1 572 25 prologue_end           ; ragged.py:572:25
	s_abs_i32 s8, s2
	v_mov_b32_e32 v121, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:570:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:570:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 572 25 is_stmt 1              ; ragged.py:572:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 574 33                        ; ragged.py:574:33
	s_sub_i32 s3, s3, s12
	.loc	1 575 24                        ; ragged.py:575:24
	s_mul_i32 s4, s12, s4
	.loc	1 574 22                        ; ragged.py:574:22
	s_min_i32 s3, s3, 1
	.loc	1 575 24                        ; ragged.py:575:24
	s_sub_i32 s2, s2, s4
	.loc	1 577 17                        ; ragged.py:577:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s20, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s20, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s13, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 576 34                        ; ragged.py:576:34
	s_mul_i32 s3, s13, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 576 20 is_stmt 0              ; ragged.py:576:20
	s_add_i32 s2, s2, s12
	.loc	1 579 20 is_stmt 1              ; ragged.py:579:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 580 23                        ; ragged.py:580:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	.loc	1 579 20                        ; ragged.py:579:20
	s_load_b64 s[20:21], s[4:5], 0x0
	.loc	1 580 23                        ; ragged.py:580:23
	s_load_b64 s[16:17], s[6:7], 0x0
	.loc	1 581 24                        ; ragged.py:581:24
	s_add_u32 s4, s8, s2
	s_addc_u32 s5, s9, s3
	.loc	1 582 22                        ; ragged.py:582:22
	s_add_u32 s6, s10, s2
	s_addc_u32 s7, s11, s3
	.loc	1 584 18                        ; ragged.py:584:18
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s21, s13, 8
	.loc	1 594 19                        ; ragged.py:594:19
	s_cmp_gt_i32 s19, 0
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v14, s21, v121
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s2, s18, v14
	.loc	1 594 19                        ; ragged.py:594:19
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_mov_b32 s3, -1
.LBB0_2:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[22:23], s[4:5], 0x0
	s_load_b64 s[24:25], s[6:7], 0x0
	v_dual_mov_b32 v23, 0 :: v_dual_and_b32 v8, 15, v121
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_mov_b32_e32 v108, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	.loc	1 603 35 is_stmt 1              ; ragged.py:603:35
	s_mul_i32 s4, s19, s18
	v_lshrrev_b32_e32 v5, 1, v121
	v_mad_u64_u32 v[67:68], null, s4, s20, v[14:15]
	.loc	1 583 18                        ; ragged.py:583:18
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v4, 63, v121
	v_or_b32_e32 v6, 0x3f0, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v0, v14 :: v_dual_and_b32 v5, 0x70, v5
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 594 19                        ; ragged.py:594:19
	v_mad_u64_u32 v[68:69], null, s18, 3, v[67:68]
	s_load_b32 s1, s[0:1], 0x48
	v_or_b32_e32 v7, 0x7f0, v121
	v_or_b32_e32 v11, 0x1700, v121
	scratch_store_b64 off, v[0:1], off offset:24 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v2, s3, s16, v4
	.loc	1 594 19                        ; ragged.py:594:19
	v_mad_u64_u32 v[69:70], null, s18, 5, v[67:68]
	v_mad_u64_u32 v[70:71], null, s18, 6, v[67:68]
	v_mad_u64_u32 v[71:72], null, s18, 7, v[67:68]
	v_mad_u64_u32 v[72:73], null, s18, 9, v[67:68]
	v_mad_u64_u32 v[73:74], null, s18, 10, v[67:68]
	v_mad_u64_u32 v[74:75], null, s18, 11, v[67:68]
	v_mad_u64_u32 v[75:76], null, s18, 12, v[67:68]
	v_mad_u64_u32 v[76:77], null, s18, 13, v[67:68]
	v_mad_u64_u32 v[77:78], null, s18, 14, v[67:68]
	v_mad_u64_u32 v[78:79], null, s18, 15, v[67:68]
	v_mad_u64_u32 v[79:80], null, s18, 17, v[67:68]
	v_mad_u64_u32 v[80:81], null, s18, 18, v[67:68]
	v_mad_u64_u32 v[81:82], null, s18, 19, v[67:68]
	v_mad_u64_u32 v[82:83], null, s18, 20, v[67:68]
	v_mad_u64_u32 v[83:84], null, s18, 21, v[67:68]
	v_mad_u64_u32 v[84:85], null, s18, 22, v[67:68]
	v_mad_u64_u32 v[85:86], null, s18, 23, v[67:68]
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_ci_u32_e64 v3, null, s17, 0, s3
	.loc	1 594 13                        ; ragged.py:594:13
	v_add_nc_u32_e32 v98, 0, v8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off
	scratch_store_b32 off, v121, off offset:16
	v_add_nc_u32_e32 v0, 0, v7
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v107, 0, v11
	v_mov_b32_e32 v11, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:20
	scratch_store_b32 off, v0, off offset:4
	v_or_b32_e32 v8, 0xb00, v121
	.loc	1 594 19 is_stmt 0              ; ragged.py:594:19
	v_mad_u64_u32 v[86:87], null, s18, 24, v[67:68]
	v_mad_u64_u32 v[87:88], null, s18, 25, v[67:68]
	v_mad_u64_u32 v[88:89], null, s18, 26, v[67:68]
	v_mad_u64_u32 v[89:90], null, s18, 27, v[67:68]
	v_mad_u64_u32 v[90:91], null, s18, 28, v[67:68]
	.loc	1 585 21 is_stmt 1              ; ragged.py:585:21
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e32 vcc_lo, s[22:23], v[2:3]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s0, s[24:25], v[2:3]
	v_or_b32_e32 v2, 0x300, v121
	v_or_b32_e32 v3, 0x700, v121
	v_or_b32_e32 v9, 0xf00, v121
	v_or_b32_e32 v10, 0x1300, v121
	v_or_b32_e32 v12, 0x1b00, v121
	v_or_b32_e32 v13, 0x1f00, v121
	v_add_nc_u32_e32 v0, 0, v8
	.loc	1 594 19 is_stmt 1              ; ragged.py:594:19
	v_mad_u64_u32 v[91:92], null, s18, 29, v[67:68]
	v_mad_u64_u32 v[92:93], null, s18, 30, v[67:68]
	v_mad_u64_u32 v[93:94], null, s18, 31, v[67:68]
	.loc	1 589 18                        ; ragged.py:589:18
	v_lshrrev_b32_e32 v97, 6, v121
	v_add_nc_u32_e32 v66, s16, v4
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v100, 0, v2
	v_dual_mov_b32 v4, v1 :: v_dual_add_nc_u32 v101, 0, v3
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v106, 0, v10
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v108, 0, v12
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v109, 0, v13
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_add_nc_u32_e32 v99, v98, v5
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v0, 0, v9
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v20, v1
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v110, 0, v121
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 594 13                        ; ragged.py:594:13
	s_mov_b32 s3, 0
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 vcc_lo, vcc_lo, s0
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v94, s3, v97
	.loc	1 594 19                        ; ragged.py:594:19
	v_add_nc_u32_e32 v118, s18, v67
	v_lshl_add_u32 v119, s18, 1, v67
	.loc	1 603 61                        ; ragged.py:603:61
	s_mul_i32 s0, s3, s18
	.loc	1 594 19                        ; ragged.py:594:19
	v_lshl_add_u32 v121, s18, 2, v67
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[94:95], null, v94, s1, v[66:67]
	.loc	1 594 19                        ; ragged.py:594:19
	v_lshl_add_u32 v125, s18, 3, v67
	v_lshl_add_u32 v133, s18, 4, v67
	v_add_nc_u32_e32 v118, s0, v118
	v_add_nc_u32_e32 v119, s0, v119
	v_add_nc_u32_e32 v120, s0, v68
	v_add_nc_u32_e32 v121, s0, v121
	.loc	1 604 30                        ; ragged.py:604:30
	v_cndmask_b32_e32 v111, 0x80000000, v94, vcc_lo
	.loc	1 589 18                        ; ragged.py:589:18
	v_or_b32_e32 v94, 4, v97
	v_add_nc_u32_e32 v122, s0, v69
	v_add_nc_u32_e32 v123, s0, v70
	v_add_nc_u32_e32 v124, s0, v71
	v_add_nc_u32_e32 v125, s0, v125
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v94, s3, v94
	v_add_nc_u32_e32 v126, s0, v72
	v_add_nc_u32_e32 v127, s0, v73
	v_add_nc_u32_e32 v128, s0, v74
	v_add_nc_u32_e32 v129, s0, v75
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[94:95], null, v94, s1, v[66:67]
	v_add_nc_u32_e32 v130, s0, v76
	v_add_nc_u32_e32 v131, s0, v77
	v_add_nc_u32_e32 v132, s0, v78
	v_add_nc_u32_e32 v133, s0, v133
	v_add_nc_u32_e32 v134, s0, v79
	v_add_nc_u32_e32 v135, s0, v80
	.loc	1 604 30 is_stmt 0              ; ragged.py:604:30
	v_cndmask_b32_e32 v112, 0x80000000, v94, vcc_lo
	.loc	1 589 18 is_stmt 1              ; ragged.py:589:18
	v_or_b32_e32 v94, 8, v97
	v_add_nc_u32_e32 v136, s0, v81
	v_add_nc_u32_e32 v137, s0, v82
	v_add_nc_u32_e32 v138, s0, v83
	v_add_nc_u32_e32 v139, s0, v84
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v94, s3, v94
	v_add_nc_u32_e32 v140, s0, v85
	v_add_nc_u32_e32 v141, s0, v86
	v_add_nc_u32_e32 v142, s0, v87
	v_add_nc_u32_e32 v143, s0, v88
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[94:95], null, v94, s1, v[66:67]
	v_add_nc_u32_e32 v144, s0, v89
	v_add_nc_u32_e32 v145, s0, v90
	v_add_nc_u32_e32 v146, s0, v91
	v_add_nc_u32_e32 v147, s0, v92
	v_add_nc_u32_e32 v148, s0, v93
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v118, 0x80000000, v118, s2
	.loc	1 604 30                        ; ragged.py:604:30
	v_cndmask_b32_e32 v113, 0x80000000, v94, vcc_lo
	.loc	1 589 18                        ; ragged.py:589:18
	v_or_b32_e32 v94, 12, v97
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v119, 0x80000000, v119, s2
	v_cndmask_b32_e64 v120, 0x80000000, v120, s2
	v_cndmask_b32_e64 v121, 0x80000000, v121, s2
	v_cndmask_b32_e64 v122, 0x80000000, v122, s2
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v94, s3, v94
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v123, 0x80000000, v123, s2
	v_cndmask_b32_e64 v124, 0x80000000, v124, s2
	v_cndmask_b32_e64 v125, 0x80000000, v125, s2
	v_cndmask_b32_e64 v126, 0x80000000, v126, s2
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[94:95], null, v94, s1, v[66:67]
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v127, 0x80000000, v127, s2
	v_cndmask_b32_e64 v128, 0x80000000, v128, s2
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	v_cndmask_b32_e64 v131, 0x80000000, v131, s2
	v_cndmask_b32_e64 v132, 0x80000000, v132, s2
	.loc	1 604 30                        ; ragged.py:604:30
	v_cndmask_b32_e32 v114, 0x80000000, v94, vcc_lo
	.loc	1 589 18                        ; ragged.py:589:18
	v_or_b32_e32 v94, 16, v97
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v133, 0x80000000, v133, s2
	v_cndmask_b32_e64 v134, 0x80000000, v134, s2
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	v_cndmask_b32_e64 v136, 0x80000000, v136, s2
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v94, s3, v94
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v137, 0x80000000, v137, s2
	v_cndmask_b32_e64 v138, 0x80000000, v138, s2
	v_cndmask_b32_e64 v139, 0x80000000, v139, s2
	v_cndmask_b32_e64 v140, 0x80000000, v140, s2
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[94:95], null, v94, s1, v[66:67]
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v141, 0x80000000, v141, s2
	v_cndmask_b32_e64 v142, 0x80000000, v142, s2
	v_cndmask_b32_e64 v143, 0x80000000, v143, s2
	v_cndmask_b32_e64 v144, 0x80000000, v144, s2
	v_cndmask_b32_e64 v145, 0x80000000, v145, s2
	v_cndmask_b32_e64 v146, 0x80000000, v146, s2
	.loc	1 604 30                        ; ragged.py:604:30
	v_cndmask_b32_e32 v115, 0x80000000, v94, vcc_lo
	.loc	1 589 18                        ; ragged.py:589:18
	v_or_b32_e32 v94, 20, v97
	.loc	1 605 30                        ; ragged.py:605:30
	v_cndmask_b32_e64 v147, 0x80000000, v147, s2
	v_cndmask_b32_e64 v148, 0x80000000, v148, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v94, s3, v94
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[94:95], null, v94, s1, v[66:67]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 604 30 is_stmt 0              ; ragged.py:604:30
	v_cndmask_b32_e32 v116, 0x80000000, v94, vcc_lo
	.loc	1 589 18 is_stmt 1              ; ragged.py:589:18
	v_or_b32_e32 v94, 24, v97
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v94, s3, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[94:95], null, v94, s1, v[66:67]
	.loc	1 604 30 is_stmt 0              ; ragged.py:604:30
	v_cndmask_b32_e32 v117, 0x80000000, v94, vcc_lo
	.loc	1 589 18 is_stmt 1              ; ragged.py:589:18
	v_or_b32_e32 v94, 28, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 595 22                        ; ragged.py:595:22
	v_or_b32_e32 v94, s3, v94
	.loc	1 616 17                        ; ragged.py:616:17
	s_add_i32 s3, s3, 32
	.loc	1 594 19                        ; ragged.py:594:19
	s_cmp_lt_i32 s3, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 604 38                        ; ragged.py:604:38
	v_mad_u64_u32 v[94:95], null, v94, s1, v[66:67]
	.loc	1 605 38                        ; ragged.py:605:38
	v_add_nc_u32_e32 v95, s0, v67
	.loc	1 605 30 is_stmt 0              ; ragged.py:605:30
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 604 30 is_stmt 1              ; ragged.py:604:30
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 605 30                        ; ragged.py:605:30
	s_clause 0x1f
	buffer_load_u8 v217, v95, s[12:15], 0 offen
	buffer_load_u8 v218, v118, s[12:15], 0 offen
	buffer_load_u8 v219, v119, s[12:15], 0 offen
	buffer_load_u8 v220, v120, s[12:15], 0 offen
	buffer_load_u8 v221, v121, s[12:15], 0 offen
	buffer_load_u8 v222, v122, s[12:15], 0 offen
	buffer_load_u8 v223, v123, s[12:15], 0 offen
	buffer_load_u8 v224, v124, s[12:15], 0 offen
	buffer_load_u8 v225, v125, s[12:15], 0 offen
	buffer_load_u8 v226, v126, s[12:15], 0 offen
	buffer_load_u8 v227, v127, s[12:15], 0 offen
	buffer_load_u8 v228, v128, s[12:15], 0 offen
	buffer_load_u8 v229, v129, s[12:15], 0 offen
	buffer_load_u8 v230, v130, s[12:15], 0 offen
	buffer_load_u8 v231, v131, s[12:15], 0 offen
	buffer_load_u8 v232, v132, s[12:15], 0 offen
	buffer_load_u8 v233, v133, s[12:15], 0 offen
	buffer_load_u8 v234, v134, s[12:15], 0 offen
	buffer_load_u8 v235, v135, s[12:15], 0 offen
	buffer_load_u8 v236, v136, s[12:15], 0 offen
	buffer_load_u8 v237, v137, s[12:15], 0 offen
	buffer_load_u8 v238, v138, s[12:15], 0 offen
	buffer_load_u8 v239, v139, s[12:15], 0 offen
	buffer_load_u8 v240, v140, s[12:15], 0 offen
	buffer_load_u8 v241, v141, s[12:15], 0 offen
	buffer_load_u8 v242, v142, s[12:15], 0 offen
	buffer_load_u8 v243, v143, s[12:15], 0 offen
	buffer_load_u8 v244, v144, s[12:15], 0 offen
	buffer_load_u8 v245, v145, s[12:15], 0 offen
	buffer_load_u8 v246, v146, s[12:15], 0 offen
	buffer_load_u8 v247, v147, s[12:15], 0 offen
	buffer_load_u8 v248, v148, s[12:15], 0 offen
	.loc	1 604 30                        ; ragged.py:604:30
	s_clause 0x7
	buffer_load_u8 v95, v111, s[4:7], 0 offen
	buffer_load_u8 v111, v112, s[4:7], 0 offen
	buffer_load_u8 v112, v113, s[4:7], 0 offen
	buffer_load_u8 v113, v115, s[4:7], 0 offen
	buffer_load_u8 v115, v116, s[4:7], 0 offen
	buffer_load_u8 v116, v117, s[4:7], 0 offen
	buffer_load_u8 v94, v94, s[4:7], 0 offen
	buffer_load_u8 v114, v114, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v110, v95
	s_waitcnt vmcnt(6)
	ds_store_b8 v110, v111 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v110, v112 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v110, v113 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v110, v115 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v100, v114
	ds_store_b8 v110, v116 offset:1536
	ds_store_b8 v101, v94
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 606 27                        ; ragged.py:606:27
	ds_load_u8 v94, v98 offset:320
	ds_load_u8 v95, v98 offset:256
	ds_load_u8 v249, v98 offset:336
	ds_load_u8 v250, v98 offset:272
	ds_load_u8 v215, v98 offset:352
	ds_load_u8 v216, v98 offset:288
	ds_load_u8 v207, v98 offset:368
	ds_load_u8 v208, v98 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v98 offset:448
	ds_load_u8 v111, v98 offset:384
	ds_load_u8 v251, v98 offset:464
	ds_load_u8 v252, v98 offset:400
	ds_load_u8 v253, v98 offset:480
	ds_load_u8 v254, v98 offset:416
	ds_load_u8 v209, v98 offset:496
	ds_load_u8 v210, v98 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v95, v111, v95, 0xc0c0004
	ds_load_u8 v111, v98 offset:64
	ds_load_u8 v112, v98
	ds_load_u8 v255, v98 offset:80
	ds_load_u8 v96, v98 offset:96
	ds_load_u8 v211, v98 offset:112
	ds_load_u8 v65, v98 offset:16
	ds_load_u8 v102, v98 offset:32
	ds_load_u8 v212, v98 offset:48
	v_lshl_or_b32 v95, v95, 16, v94
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	ds_load_u8 v112, v98 offset:192
	ds_load_u8 v113, v98 offset:128
	ds_load_u8 v0, v98 offset:208
	ds_load_u8 v103, v98 offset:144
	ds_load_u8 v104, v98 offset:224
	ds_load_u8 v105, v98 offset:160
	ds_load_u8 v213, v98 offset:240
	ds_load_u8 v214, v98 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v65, v65, v255, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v96, v102, v96, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v199, v98 offset:960
	ds_load_u8 v200, v98 offset:896
	ds_load_u8 v167, v98 offset:1024
	ds_load_u8 v174, v98 offset:976
	ds_load_u8 v175, v98 offset:912
	ds_load_u8 v169, v98 offset:992
	ds_load_u8 v170, v98 offset:928
	ds_load_u8 v168, v98 offset:944
	ds_load_u8 v201, v98 offset:832
	ds_load_u8 v202, v98 offset:768
	ds_load_u8 v181, v98 offset:848
	ds_load_u8 v183, v98 offset:784
	ds_load_u8 v177, v98 offset:864
	ds_load_u8 v178, v98 offset:800
	ds_load_u8 v171, v98 offset:880
	ds_load_u8 v172, v98 offset:816
	ds_load_u8 v203, v98 offset:704
	ds_load_u8 v204, v98 offset:640
	ds_load_u8 v187, v98 offset:720
	ds_load_u8 v188, v98 offset:656
	ds_load_u8 v184, v98 offset:736
	ds_load_u8 v186, v98 offset:672
	ds_load_u8 v179, v98 offset:752
	ds_load_u8 v182, v98 offset:688
	ds_load_u8 v205, v98 offset:576
	ds_load_u8 v206, v98 offset:512
	ds_load_u8 v194, v98 offset:592
	ds_load_u8 v195, v98 offset:528
	ds_load_u8 v192, v98 offset:608
	ds_load_u8 v193, v98 offset:544
	ds_load_u8 v189, v98 offset:624
	ds_load_u8 v190, v98 offset:560
	ds_load_u8 v173, v98 offset:1216
	ds_load_u8 v176, v98 offset:1280
	ds_load_u8 v140, v98 offset:1232
	ds_load_u8 v141, v98 offset:1168
	ds_load_u8 v138, v98 offset:1248
	ds_load_u8 v139, v98 offset:1184
	ds_load_u8 v136, v98 offset:1264
	ds_load_u8 v137, v98 offset:1200
	ds_load_u8 v180, v98 offset:1152
	ds_load_u8 v185, v98 offset:1088
	ds_load_u8 v147, v98 offset:1104
	ds_load_u8 v148, v98 offset:1040
	ds_load_u8 v145, v98 offset:1120
	ds_load_u8 v146, v98 offset:1056
	ds_load_u8 v142, v98 offset:1136
	ds_load_u8 v143, v98 offset:1072
	ds_load_u8 v191, v98 offset:1472
	ds_load_u8 v135, v98 offset:1536
	ds_load_u8 v155, v98 offset:1488
	ds_load_u8 v157, v98 offset:1424
	ds_load_u8 v152, v98 offset:1504
	ds_load_u8 v154, v98 offset:1440
	ds_load_u8 v149, v98 offset:1520
	ds_load_u8 v150, v98 offset:1456
	ds_load_u8 v196, v98 offset:1408
	ds_load_u8 v197, v98 offset:1344
	ds_load_u8 v164, v98 offset:1360
	ds_load_u8 v165, v98 offset:1296
	ds_load_u8 v161, v98 offset:1376
	ds_load_u8 v162, v98 offset:1312
	ds_load_u8 v158, v98 offset:1392
	ds_load_u8 v159, v98 offset:1328
	ds_load_u8 v144, v98 offset:1984
	ds_load_u8 v115, v98 offset:2000
	ds_load_u8 v117, v98 offset:1936
	ds_load_u8 v113, v98 offset:2016
	ds_load_u8 v114, v98 offset:1952
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v0, v103, v0, 0xc0c0004
	v_perm_b32 v102, v105, v104, 0xc0c0004
	v_lshl_or_b32 v94, v112, 16, v111
	scratch_load_b32 v111, off, off         ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v198, v111
	scratch_load_b32 v111, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v111, v111
	ds_load_u8 v112, v98 offset:1968
	ds_load_u8 v151, v98 offset:1920
	ds_load_u8 v153, v98 offset:1856
	ds_load_u8 v122, v98 offset:1872
	ds_load_u8 v124, v98 offset:1808
	ds_load_u8 v119, v98 offset:1888
	ds_load_u8 v120, v98 offset:1824
	ds_load_u8 v116, v98 offset:1904
	ds_load_u8 v118, v98 offset:1840
	ds_load_u8 v156, v98 offset:1728
	ds_load_u8 v160, v98 offset:1792
	ds_load_u8 v127, v98 offset:1744
	ds_load_u8 v128, v98 offset:1680
	ds_load_u8 v125, v98 offset:1760
	ds_load_u8 v126, v98 offset:1696
	ds_load_u8 v121, v98 offset:1776
	ds_load_u8 v123, v98 offset:1712
	ds_load_u8 v163, v98 offset:1664
	ds_load_u8 v166, v98 offset:1600
	ds_load_u8 v133, v98 offset:1616
	ds_load_u8 v134, v98 offset:1552
	ds_load_u8 v131, v98 offset:1632
	ds_load_u8 v132, v98 offset:1568
	ds_load_u8 v129, v98 offset:1648
	ds_load_u8 v130, v98 offset:1584
	.loc	1 605 30                        ; ragged.py:605:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v110, v217
	ds_store_b8 v110, v218 offset:256
	ds_store_b8 v110, v219 offset:512
	ds_store_b8 v110, v221 offset:1024
	ds_store_b8 v110, v222 offset:1280
	ds_store_b8 v110, v223 offset:1536
	ds_store_b8 v110, v225 offset:2048
	ds_store_b8 v110, v226 offset:2304
	ds_store_b8 v110, v227 offset:2560
	ds_store_b8 v110, v229 offset:3072
	ds_store_b8 v110, v230 offset:3328
	ds_store_b8 v110, v231 offset:3584
	ds_store_b8 v110, v233 offset:4096
	ds_store_b8 v110, v234 offset:4352
	ds_store_b8 v110, v235 offset:4608
	ds_store_b8 v110, v237 offset:5120
	ds_store_b8 v110, v238 offset:5376
	ds_store_b8 v110, v239 offset:5632
	ds_store_b8 v110, v241 offset:6144
	ds_store_b8 v110, v242 offset:6400
	ds_store_b8 v110, v243 offset:6656
	ds_store_b8 v110, v245 offset:7168
	ds_store_b8 v110, v246 offset:7424
	ds_store_b8 v110, v247 offset:7680
	ds_store_b8 v100, v220
	ds_store_b8 v101, v224
	scratch_load_b32 v217, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v217, v228
	scratch_load_b32 v217, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v217, v232
	ds_store_b8 v106, v236
	ds_store_b8 v107, v240
	ds_store_b8 v108, v244
	ds_store_b8 v109, v248
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 606 27                        ; ragged.py:606:27
	ds_load_u8 v217, v99 offset:1280
	ds_load_u8 v218, v99 offset:1024
	ds_load_u8 v219, v99 offset:1920
	ds_load_u8 v220, v99 offset:1664
	ds_load_u8 v221, v99 offset:1408
	ds_load_u8 v222, v99 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	ds_load_u8 v218, v99 offset:1792
	ds_load_u8 v223, v99 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v219, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v221, v222, v221, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v220, v219, 16, v221
	v_perm_b32 v221, v250, v249, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v223, v218, 0xc0c0004
	ds_load_u8 v223, v99 offset:256
	ds_load_u8 v224, v99
	ds_load_u8 v225, v99 offset:896
	ds_load_u8 v226, v99 offset:640
	ds_load_u8 v227, v99 offset:384
	ds_load_u8 v228, v99 offset:128
	v_lshl_or_b32 v218, v218, 16, v217
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v223, v224, v223, 0xc0c0004
	ds_load_u8 v224, v99 offset:768
	ds_load_u8 v229, v99 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v222, v228, v227, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v224, v229, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v217, v224, 16, v223
	v_perm_b32 v223, v226, v225, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[217:218], v[94:95], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v219, v223, 16, v222
	v_perm_b32 v222, v252, v251, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[219:220], v[94:95], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v222, v222, 16, v221
	v_lshl_or_b32 v221, v0, 16, v65
	v_perm_b32 v0, v216, v215, 0xc0c0004
	v_perm_b32 v65, v254, v253, 0xc0c0004
	v_lshl_or_b32 v215, v102, 16, v96
	v_perm_b32 v96, v212, v211, 0xc0c0004
	v_perm_b32 v102, v214, v213, 0xc0c0004
	v_perm_b32 v94, v206, v205, 0xc0c0004
	v_lshl_or_b32 v216, v65, 16, v0
	v_perm_b32 v0, v208, v207, 0xc0c0004
	v_perm_b32 v65, v210, v209, 0xc0c0004
	v_lshl_or_b32 v207, v102, 16, v96
	v_perm_b32 v96, v204, v203, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[217:218], v[215:216], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[219:220], v[215:216], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v208, v65, 16, v0
	v_perm_b32 v0, v202, v201, 0xc0c0004
	v_perm_b32 v65, v200, v199, 0xc0c0004
	v_lshl_or_b32 v94, v96, 16, v94
	v_wmma_i32_16x16x16_iu4 v[17:24], v[217:218], v[221:222], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[217:218], v[207:208], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[219:220], v[207:208], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v65, 16, v0
	ds_load_u8 v0, v99 offset:3328
	ds_load_u8 v65, v99 offset:3072
	ds_load_u8 v96, v99 offset:3968
	ds_load_u8 v102, v99 offset:3712
	ds_load_u8 v103, v99 offset:3456
	ds_load_u8 v104, v99 offset:3200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[219:220], v[221:222], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v65, v0, 0xc0c0004
	ds_load_u8 v65, v99 offset:3840
	ds_load_u8 v105, v99 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v105, v65, 0xc0c0004
	ds_load_u8 v105, v99 offset:2304
	ds_load_u8 v199, v99 offset:2048
	ds_load_u8 v201, v99 offset:2944
	ds_load_u8 v202, v99 offset:2688
	ds_load_u8 v203, v99 offset:2432
	ds_load_u8 v204, v99 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v105, v199, v105, 0xc0c0004
	ds_load_u8 v199, v99 offset:2816
	ds_load_u8 v200, v99 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v199, v200, v199, 0xc0c0004
	v_lshl_or_b32 v200, v65, 16, v0
	v_perm_b32 v0, v104, v103, 0xc0c0004
	v_perm_b32 v65, v102, v96, 0xc0c0004
	v_perm_b32 v96, v204, v203, 0xc0c0004
	v_perm_b32 v102, v202, v201, 0xc0c0004
	v_lshl_or_b32 v199, v199, 16, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v202, v65, 16, v0
	v_perm_b32 v0, v183, v181, 0xc0c0004
	v_lshl_or_b32 v201, v102, 16, v96
	v_perm_b32 v65, v175, v174, 0xc0c0004
	v_perm_b32 v96, v195, v194, 0xc0c0004
	v_perm_b32 v102, v188, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[199:200], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[201:202], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v65, 16, v0
	v_perm_b32 v0, v178, v177, 0xc0c0004
	v_lshl_or_b32 v174, v102, 16, v96
	v_perm_b32 v65, v170, v169, 0xc0c0004
	v_perm_b32 v96, v193, v192, 0xc0c0004
	v_perm_b32 v102, v186, v184, 0xc0c0004
	v_perm_b32 v94, v167, v185, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[199:200], v[174:175], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v170, v65, 16, v0
	v_perm_b32 v0, v190, v189, 0xc0c0004
	v_lshl_or_b32 v169, v102, 16, v96
	v_perm_b32 v65, v182, v179, 0xc0c0004
	v_perm_b32 v96, v172, v171, 0xc0c0004
	v_perm_b32 v102, v168, v198, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[201:202], v[174:175], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[199:200], v[169:170], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v171, v65, 16, v0
	v_perm_b32 v0, v176, v197, 0xc0c0004
	v_lshl_or_b32 v172, v102, 16, v96
	v_perm_b32 v65, v196, v191, 0xc0c0004
	v_perm_b32 v96, v180, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[201:202], v[169:170], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[199:200], v[171:172], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v65, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v94, v96, 16, v94
	ds_load_u8 v0, v99 offset:5376
	ds_load_u8 v65, v99 offset:5120
	ds_load_u8 v96, v99 offset:6016
	ds_load_u8 v102, v99 offset:5760
	ds_load_u8 v103, v99 offset:5504
	ds_load_u8 v104, v99 offset:5248
	v_wmma_i32_16x16x16_iu4 v[57:64], v[201:202], v[171:172], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v65, v0, 0xc0c0004
	ds_load_u8 v65, v99 offset:5888
	ds_load_u8 v105, v99 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v105, v65, 0xc0c0004
	ds_load_u8 v105, v99 offset:4352
	ds_load_u8 v167, v99 offset:4096
	ds_load_u8 v169, v99 offset:4992
	ds_load_u8 v170, v99 offset:4736
	ds_load_u8 v171, v99 offset:4480
	ds_load_u8 v172, v99 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v105, v167, v105, 0xc0c0004
	ds_load_u8 v167, v99 offset:4864
	ds_load_u8 v168, v99 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	v_lshl_or_b32 v168, v65, 16, v0
	v_perm_b32 v0, v104, v103, 0xc0c0004
	v_perm_b32 v65, v102, v96, 0xc0c0004
	v_perm_b32 v96, v172, v171, 0xc0c0004
	v_perm_b32 v102, v170, v169, 0xc0c0004
	v_lshl_or_b32 v167, v167, 16, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v170, v65, 16, v0
	v_perm_b32 v0, v165, v164, 0xc0c0004
	v_lshl_or_b32 v169, v102, 16, v96
	v_perm_b32 v65, v157, v155, 0xc0c0004
	v_perm_b32 v96, v148, v147, 0xc0c0004
	v_perm_b32 v102, v141, v140, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[167:168], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[169:170], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v141, v65, 16, v0
	v_perm_b32 v0, v162, v161, 0xc0c0004
	v_lshl_or_b32 v140, v102, 16, v96
	v_perm_b32 v65, v154, v152, 0xc0c0004
	v_perm_b32 v96, v146, v145, 0xc0c0004
	v_perm_b32 v102, v139, v138, 0xc0c0004
	v_perm_b32 v94, v135, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[167:168], v[140:141], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v65, 16, v0
	v_perm_b32 v0, v159, v158, 0xc0c0004
	v_lshl_or_b32 v138, v102, 16, v96
	v_perm_b32 v65, v150, v149, 0xc0c0004
	v_perm_b32 v96, v143, v142, 0xc0c0004
	v_perm_b32 v102, v137, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[169:170], v[140:141], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[167:168], v[138:139], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v137, v65, 16, v0
	v_perm_b32 v0, v160, v153, 0xc0c0004
	v_lshl_or_b32 v136, v102, 16, v96
	v_perm_b32 v65, v151, v144, 0xc0c0004
	v_perm_b32 v96, v163, v156, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[169:170], v[138:139], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[167:168], v[136:137], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v95, v65, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v94, v96, 16, v94
	ds_load_u8 v0, v99 offset:7424
	ds_load_u8 v65, v99 offset:7168
	ds_load_u8 v96, v99 offset:8064
	ds_load_u8 v102, v99 offset:7808
	ds_load_u8 v103, v99 offset:7552
	ds_load_u8 v104, v99 offset:7296
	v_wmma_i32_16x16x16_iu4 v[57:64], v[169:170], v[136:137], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v65, v0, 0xc0c0004
	ds_load_u8 v65, v99 offset:7936
	ds_load_u8 v105, v99 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v105, v65, 0xc0c0004
	ds_load_u8 v105, v99 offset:6400
	ds_load_u8 v135, v99 offset:6144
	ds_load_u8 v137, v99 offset:7040
	ds_load_u8 v138, v99 offset:6784
	ds_load_u8 v139, v99 offset:6528
	ds_load_u8 v140, v99 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v105, v135, v105, 0xc0c0004
	ds_load_u8 v135, v99 offset:6912
	ds_load_u8 v136, v99 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_lshl_or_b32 v136, v65, 16, v0
	v_perm_b32 v0, v104, v103, 0xc0c0004
	v_perm_b32 v65, v102, v96, 0xc0c0004
	v_perm_b32 v96, v140, v139, 0xc0c0004
	v_perm_b32 v102, v138, v137, 0xc0c0004
	v_lshl_or_b32 v135, v135, 16, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v138, v65, 16, v0
	v_perm_b32 v0, v124, v122, 0xc0c0004
	v_lshl_or_b32 v137, v102, 16, v96
	v_perm_b32 v65, v117, v115, 0xc0c0004
	v_perm_b32 v96, v134, v133, 0xc0c0004
	v_perm_b32 v102, v128, v127, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[135:136], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v128, v65, 16, v0
	v_perm_b32 v0, v120, v119, 0xc0c0004
	v_lshl_or_b32 v127, v102, 16, v96
	v_perm_b32 v65, v114, v113, 0xc0c0004
	v_perm_b32 v96, v132, v131, 0xc0c0004
	v_perm_b32 v102, v126, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[135:136], v[127:128], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v114, v65, 16, v0
	v_perm_b32 v0, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v113, v102, 16, v96
	v_perm_b32 v65, v123, v121, 0xc0c0004
	v_perm_b32 v96, v118, v116, 0xc0c0004
	v_perm_b32 v102, v112, v111, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[127:128], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[135:136], v[113:114], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v65, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[137:138], v[113:114], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v112, v102, 16, v96
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[135:136], v[111:112], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[137:138], v[111:112], v[57:64] neg_lo:[1,1,0]
	.loc	1 594 19                        ; ragged.py:594:19
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %._crit_edge.loopexit
	.loc	1 617 19                        ; ragged.py:617:19
	v_cvt_f32_i32_e32 v101, v8
	v_cvt_f32_i32_e32 v94, v14
	v_cvt_f32_i32_e32 v93, v15
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v121, off, off offset:16
	scratch_load_b32 v8, off, off offset:20
	scratch_load_b64 v[14:15], off, off offset:24
	v_cvt_f32_i32_e32 v108, v1
	v_cvt_f32_i32_e32 v107, v2
	v_cvt_f32_i32_e32 v106, v3
	v_cvt_f32_i32_e32 v105, v4
	v_cvt_f32_i32_e32 v104, v5
	v_cvt_f32_i32_e32 v103, v6
	v_cvt_f32_i32_e32 v102, v7
	v_cvt_f32_i32_e32 v100, v9
	v_cvt_f32_i32_e32 v99, v10
	v_cvt_f32_i32_e32 v98, v11
	v_cvt_f32_i32_e32 v97, v12
	v_cvt_f32_i32_e32 v95, v13
	v_cvt_f32_i32_e32 v92, v16
	v_cvt_f32_i32_e32 v91, v17
	v_cvt_f32_i32_e32 v90, v18
	v_cvt_f32_i32_e32 v89, v19
	v_cvt_f32_i32_e32 v88, v20
	v_cvt_f32_i32_e32 v87, v21
	v_cvt_f32_i32_e32 v86, v22
	v_cvt_f32_i32_e32 v85, v23
	v_cvt_f32_i32_e32 v84, v24
	v_cvt_f32_i32_e32 v83, v25
	v_cvt_f32_i32_e32 v82, v26
	v_cvt_f32_i32_e32 v81, v27
	v_cvt_f32_i32_e32 v80, v28
	v_cvt_f32_i32_e32 v79, v29
	v_cvt_f32_i32_e32 v78, v30
	v_cvt_f32_i32_e32 v77, v31
	v_cvt_f32_i32_e32 v76, v32
	v_cvt_f32_i32_e32 v75, v33
	v_cvt_f32_i32_e32 v74, v34
	v_cvt_f32_i32_e32 v73, v35
	v_cvt_f32_i32_e32 v72, v36
	v_cvt_f32_i32_e32 v71, v37
	v_cvt_f32_i32_e32 v70, v38
	v_cvt_f32_i32_e32 v69, v39
	v_cvt_f32_i32_e32 v68, v40
	v_cvt_f32_i32_e32 v67, v41
	v_cvt_f32_i32_e32 v66, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v42, v44
	v_cvt_f32_i32_e32 v41, v45
	v_cvt_f32_i32_e32 v40, v46
	v_cvt_f32_i32_e32 v39, v47
	v_cvt_f32_i32_e32 v38, v48
	v_cvt_f32_i32_e32 v37, v49
	v_cvt_f32_i32_e32 v36, v50
	v_cvt_f32_i32_e32 v35, v51
	v_cvt_f32_i32_e32 v34, v52
	v_cvt_f32_i32_e32 v33, v53
	v_cvt_f32_i32_e32 v32, v54
	v_cvt_f32_i32_e32 v31, v55
	v_cvt_f32_i32_e32 v30, v56
	v_cvt_f32_i32_e32 v29, v57
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v25, v61
	v_cvt_f32_i32_e32 v24, v62
	v_cvt_f32_i32_e32 v23, v63
	v_cvt_f32_i32_e32 v22, v64
.LBB0_6:                                ; %._crit_edge
	.loc	1 583 32                        ; ragged.py:583:32
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, 48, v8
	v_or_b32_e32 v4, 16, v8
	.loc	1 619 36                        ; ragged.py:619:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s9, 0xffff
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 583 18                        ; ragged.py:583:18
	v_add_co_u32 v1, s0, s16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s17, 0, s0
	.loc	1 583 32 is_stmt 0              ; ragged.py:583:32
	v_or_b32_e32 v0, 32, v8
	.loc	1 619 36 is_stmt 1              ; ragged.py:619:36
	s_mov_b32 s60, s8
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v21.h, 0
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e32 vcc_lo, s[22:23], v[1:2]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s4, s[24:25], v[1:2]
	.loc	1 583 18 is_stmt 1              ; ragged.py:583:18
	v_add_co_u32 v2, s0, s16, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s17, 0, s0
	v_add_co_u32 v4, s0, s16, v4
	v_add_co_ci_u32_e64 v5, null, s17, 0, s0
	v_add_co_u32 v6, s0, s16, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v7, null, s17, 0, s0
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s1, s[22:23], v[4:5]
	.loc	1 585 48 is_stmt 0              ; ragged.py:585:48
	v_cmp_gt_i64_e64 s6, s[24:25], v[4:5]
	.loc	1 585 21                        ; ragged.py:585:21
	v_cmp_le_i64_e64 s0, s[22:23], v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s3, s[22:23], v[6:7]
	.loc	1 585 48                        ; ragged.py:585:48
	v_cmp_gt_i64_e64 s7, s[24:25], v[6:7]
	v_cmp_gt_i64_e64 s5, s[24:25], v[2:3]
	.loc	1 619 36 is_stmt 1              ; ragged.py:619:36
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 619 36                        ; ragged.py:619:36
	v_lshlrev_b32_e32 v0, 1, v6
	v_lshlrev_b32_e32 v3, 1, v4
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 585 20                        ; ragged.py:585:20
	s_and_b32 s3, s3, s7
	s_and_b32 s1, s1, s6
	s_and_b32 s0, s0, s5
	.loc	1 619 36                        ; ragged.py:619:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_clause 0x3
	buffer_load_u16 v0, v0, s[60:63], 0 offen
	buffer_load_u16 v44, v3, s[60:63], 0 offen
	buffer_load_u16 v45, v2, s[60:63], 0 offen
	buffer_load_u16 v46, v1, s[60:63], 0 offen
	.loc	1 623 21                        ; ragged.py:623:21
	s_mul_i32 s4, s18, s20
	.loc	1 622 36                        ; ragged.py:622:36
	s_and_b32 s61, s11, 0xffff
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v1, v14, s4, 1
	s_mov_b32 s60, s10
	.loc	1 679 9                         ; ragged.py:679:9
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s58, s62
	s_mov_b32 s59, s63
	.loc	1 622 36                        ; ragged.py:622:36
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	buffer_load_u16 v47, v1, s[60:63], 0 offen
	.loc	1 627 17                        ; ragged.py:627:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 619 36                        ; ragged.py:619:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 620 17                        ; ragged.py:620:17
	v_dual_mul_f32 v71, v71, v45 :: v_dual_lshlrev_b32 v0, 16, v0
	v_dual_mul_f32 v54, v105, v0 :: v_dual_and_b32 v1, 0xf0, v121
	v_dual_mul_f32 v53, v106, v0 :: v_dual_lshlrev_b32 v2, 1, v121
	v_dual_mul_f32 v56, v103, v0 :: v_dual_lshlrev_b32 v3, 5, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 627 17                        ; ragged.py:627:17
	v_lshl_add_u32 v6, v1, 2, 0
	.loc	1 620 17                        ; ragged.py:620:17
	v_dual_mul_f32 v55, v104, v0 :: v_dual_and_b32 v2, 28, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v58, v101, v0 :: v_dual_and_b32 v3, 32, v3
	.loc	1 627 17                        ; ragged.py:627:17
	v_lshl_add_u32 v48, v1, 1, 0
	.loc	1 620 17                        ; ragged.py:620:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v57, v102, v0 :: v_dual_lshlrev_b32 v50, 16, v46
	.loc	1 627 17                        ; ragged.py:627:17
	v_add3_u32 v49, v6, v3, v2
	.loc	1 620 17                        ; ragged.py:620:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v59, v100, v0 :: v_dual_lshlrev_b32 v46, 16, v47
	v_mul_f32_e32 v60, v99, v0
	v_dual_mul_f32 v75, v75, v45 :: v_dual_add_nc_u32 v4, s16, v8
	v_dual_mul_f32 v69, v69, v45 :: v_dual_lshlrev_b32 v44, 16, v44
	.loc	1 584 36                        ; ragged.py:584:36
	v_lshrrev_b32_e32 v5, 1, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v20, v4, s18
	.loc	1 620 17                        ; ragged.py:620:17
	v_dual_mul_f32 v72, v72, v45 :: v_dual_add_nc_u32 v1, 16, v4
	v_dual_mul_f32 v70, v70, v45 :: v_dual_add_nc_u32 v7, 32, v4
	v_dual_mul_f32 v73, v73, v45 :: v_dual_add_nc_u32 v4, 48, v4
	v_mul_f32_e32 v51, v108, v0
	v_mul_f32_e32 v52, v107, v0
	v_dual_mul_f32 v61, v98, v0 :: v_dual_mul_f32 v68, v68, v45
	v_dual_mul_f32 v62, v97, v0 :: v_dual_mul_f32 v67, v67, v45
	v_dual_mul_f32 v63, v95, v0 :: v_dual_mul_f32 v66, v66, v45
	v_dual_mul_f32 v64, v94, v0 :: v_dual_mul_f32 v95, v40, v45
	v_mul_f32_e32 v65, v93, v0
	v_dual_mul_f32 v0, v92, v0 :: v_dual_mul_f32 v93, v42, v45
	v_dual_mul_f32 v91, v91, v44 :: v_dual_mul_f32 v94, v41, v45
	v_dual_mul_f32 v90, v90, v44 :: v_dual_mul_f32 v37, v37, v50
	v_dual_mul_f32 v89, v89, v44 :: v_dual_mul_f32 v96, v39, v45
	v_dual_mul_f32 v88, v88, v44 :: v_dual_mul_f32 v97, v38, v45
	v_dual_mul_f32 v87, v87, v44 :: v_dual_mul_f32 v36, v36, v50
	v_dual_mul_f32 v86, v86, v44 :: v_dual_mul_f32 v101, v32, v50
	v_dual_mul_f32 v85, v85, v44 :: v_dual_mul_f32 v98, v35, v50
	v_dual_mul_f32 v84, v84, v44 :: v_dual_mul_f32 v99, v34, v50
	v_dual_mul_f32 v83, v83, v44 :: v_dual_mul_f32 v100, v33, v50
	v_dual_mul_f32 v82, v82, v44 :: v_dual_mul_f32 v31, v31, v50
	v_dual_mul_f32 v81, v81, v44 :: v_dual_mul_f32 v30, v30, v50
	v_dual_mul_f32 v80, v80, v44 :: v_dual_mul_f32 v29, v29, v50
	v_dual_mul_f32 v79, v79, v44 :: v_dual_mul_f32 v28, v28, v50
	v_dual_mul_f32 v78, v78, v44 :: v_dual_mul_f32 v27, v27, v50
	v_dual_mul_f32 v77, v77, v44 :: v_dual_mul_f32 v26, v26, v50
	v_dual_mul_f32 v76, v76, v44 :: v_dual_mul_f32 v25, v25, v50
	v_mul_f32_e32 v74, v74, v45
	v_mul_f32_e32 v92, v43, v45
	.loc	1 627 17                        ; ragged.py:627:17
	ds_store_b32 v49, v46
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v48
	ds_load_b128 v[42:45], v48 offset:16
	ds_load_b128 v[32:35], v48 offset:512
	ds_load_b128 v[46:49], v48 offset:528
	.loc	1 620 17                        ; ragged.py:620:17
	v_mul_f32_e32 v24, v24, v50
	v_mul_f32_e32 v23, v23, v50
	v_mul_f32_e32 v22, v22, v50
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v15, s21, v5
	.loc	1 680 13                        ; ragged.py:680:13
	v_mul_lo_u32 v19, v1, s18
	v_mul_lo_u32 v16, v7, s18
	v_mul_lo_u32 v1, v4, s18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v2, 0x87, v15
	v_or_b32_e32 v3, 0x86, v15
	v_or_b32_e32 v4, 0x85, v15
	v_or_b32_e32 v5, 0x84, v15
	v_or_b32_e32 v6, 0x83, v15
	v_or_b32_e32 v7, 0x82, v15
	v_or_b32_e32 v8, 0x81, v15
	v_or_b32_e32 v9, 0x80, v15
	.loc	1 627 17                        ; ragged.py:627:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v50, v51, v38 :: v_dual_mul_f32 v51, v52, v39
	v_dual_mul_f32 v52, v53, v40 :: v_dual_mul_f32 v53, v54, v41
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v54, v55, v42 :: v_dual_mul_f32 v55, v56, v43
	v_dual_mul_f32 v56, v57, v44 :: v_dual_mul_f32 v57, v58, v45
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v58, v59, v32 :: v_dual_mul_f32 v59, v60, v33
	v_dual_mul_f32 v60, v61, v34 :: v_dual_mul_f32 v61, v62, v35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v62, v63, v46 :: v_dual_mul_f32 v89, v89, v40
	v_dual_mul_f32 v90, v90, v39 :: v_dual_mul_f32 v85, v85, v44
	v_dual_mul_f32 v88, v88, v41 :: v_dual_mul_f32 v83, v83, v32
	v_dual_mul_f32 v63, v64, v47 :: v_dual_mul_f32 v64, v65, v48
	v_dual_mul_f32 v65, v91, v38 :: v_dual_mul_f32 v0, v0, v49
	v_dual_mul_f32 v87, v87, v42 :: v_dual_mul_f32 v86, v86, v43
	v_dual_mul_f32 v81, v81, v34 :: v_dual_mul_f32 v84, v84, v45
	v_dual_mul_f32 v79, v79, v46 :: v_dual_mul_f32 v82, v82, v33
	v_dual_mul_f32 v77, v77, v48 :: v_dual_mul_f32 v80, v80, v35
	v_dual_mul_f32 v75, v75, v38 :: v_dual_mul_f32 v78, v78, v47
	v_dual_mul_f32 v73, v73, v40 :: v_dual_mul_f32 v76, v76, v49
	v_dual_mul_f32 v71, v71, v42 :: v_dual_mul_f32 v74, v74, v39
	v_dual_mul_f32 v69, v69, v44 :: v_dual_mul_f32 v72, v72, v41
	v_dual_mul_f32 v67, v67, v32 :: v_dual_mul_f32 v70, v70, v43
	v_mul_f32_e32 v91, v92, v34
	v_mul_f32_e32 v68, v68, v45
	v_mul_f32_e32 v66, v66, v33
	v_dual_mul_f32 v92, v93, v35 :: v_dual_mul_f32 v93, v94, v46
	v_dual_mul_f32 v94, v95, v47 :: v_dual_mul_f32 v37, v37, v38
	v_dual_mul_f32 v95, v96, v48 :: v_dual_mul_f32 v96, v97, v49
	v_dual_mul_f32 v31, v31, v44 :: v_dual_mul_f32 v36, v36, v39
	v_mul_f32_e32 v29, v29, v32
	v_dual_mul_f32 v38, v98, v40 :: v_dual_mul_f32 v39, v99, v41
	v_dual_mul_f32 v40, v100, v42 :: v_dual_mul_f32 v23, v23, v48
	v_dual_mul_f32 v41, v101, v43 :: v_dual_mul_f32 v30, v30, v45
	v_dual_mul_f32 v27, v27, v34 :: v_dual_mul_f32 v28, v28, v33
	v_dual_mul_f32 v25, v25, v46 :: v_dual_mul_f32 v26, v26, v35
	.loc	1 679 9                         ; ragged.py:679:9
	v_bfe_u32 v32, v50, 16, 1
	v_bfe_u32 v33, v51, 16, 1
	v_bfe_u32 v35, v53, 16, 1
	v_bfe_u32 v42, v54, 16, 1
	v_bfe_u32 v43, v55, 16, 1
	v_bfe_u32 v44, v56, 16, 1
	v_bfe_u32 v45, v57, 16, 1
	v_bfe_u32 v46, v58, 16, 1
	v_bfe_u32 v102, v90, 16, 1
	v_bfe_u32 v103, v89, 16, 1
	v_bfe_u32 v104, v88, 16, 1
	.loc	1 627 17                        ; ragged.py:627:17
	v_mul_f32_e32 v24, v24, v47
	.loc	1 679 9                         ; ragged.py:679:9
	v_cmp_o_f32_e64 s19, v50, v50
	v_cmp_o_f32_e64 s20, v51, v51
	v_cmp_o_f32_e64 s22, v53, v53
	v_cmp_o_f32_e64 s23, v54, v54
	v_cmp_o_f32_e64 s24, v55, v55
	v_cmp_o_f32_e64 s25, v56, v56
	v_cmp_o_f32_e64 s26, v57, v57
	v_cmp_o_f32_e64 s27, v58, v58
	v_bfe_u32 v47, v59, 16, 1
	v_cmp_o_f32_e64 s37, v90, v90
	v_cmp_o_f32_e64 s38, v89, v89
	v_cmp_o_f32_e64 s39, v88, v88
	v_bfe_u32 v105, v87, 16, 1
	v_bfe_u32 v106, v86, 16, 1
	v_bfe_u32 v120, v72, 16, 1
	v_add3_u32 v32, v50, v32, 0x7fff
	v_add3_u32 v33, v51, v33, 0x7fff
	v_add3_u32 v35, v53, v35, 0x7fff
	v_add3_u32 v42, v54, v42, 0x7fff
	v_add3_u32 v43, v55, v43, 0x7fff
	v_add3_u32 v44, v56, v44, 0x7fff
	v_add3_u32 v45, v57, v45, 0x7fff
	v_add3_u32 v46, v58, v46, 0x7fff
	v_add3_u32 v54, v90, v102, 0x7fff
	v_add3_u32 v55, v89, v103, 0x7fff
	v_add3_u32 v56, v88, v104, 0x7fff
	v_bfe_u32 v34, v52, 16, 1
	v_cmp_o_f32_e64 s28, v59, v59
	v_cmp_o_f32_e64 s40, v87, v87
	v_cmp_o_f32_e64 s41, v86, v86
	v_bfe_u32 v107, v85, 16, 1
	v_add3_u32 v47, v59, v47, 0x7fff
	v_add3_u32 v57, v87, v105, 0x7fff
	v_add3_u32 v58, v86, v106, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s19
	v_cndmask_b16 v32.h, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s22
	v_cndmask_b16 v35.h, 0x7fff, v45.h, s26
	v_cndmask_b16 v42.l, 0x7fff, v46.h, s27
	v_cndmask_b16 v45.h, 0x7fff, v54.h, s37
	v_cndmask_b16 v46.l, 0x7fff, v55.h, s38
	v_cndmask_b16 v46.h, 0x7fff, v56.h, s39
	v_add3_u32 v54, v72, v120, 0x7fff
	v_cmp_o_f32_e64 s19, v72, v72
	v_bfe_u32 v55, v71, 16, 1
	v_bfe_u32 v56, v70, 16, 1
	v_bfe_u32 v48, v60, 16, 1
	v_add3_u32 v34, v52, v34, 0x7fff
	v_cmp_o_f32_e64 s21, v52, v52
	v_cmp_o_f32_e64 s42, v85, v85
	v_bfe_u32 v108, v84, 16, 1
	v_add3_u32 v59, v85, v107, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v42.h, s23
	v_cndmask_b16 v42.h, 0x7fff, v47.h, s28
	v_cndmask_b16 v47.l, 0x7fff, v57.h, s40
	v_cndmask_b16 v47.h, 0x7fff, v58.h, s41
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s19
	v_bfe_u32 v57, v69, 16, 1
	v_add3_u32 v55, v71, v55, 0x7fff
	v_cmp_o_f32_e64 s19, v71, v71
	v_add3_u32 v56, v70, v56, 0x7fff
	v_cmp_o_f32_e64 s20, v70, v70
	v_bfe_u32 v58, v68, 16, 1
	v_add3_u32 v48, v60, v48, 0x7fff
	v_cmp_o_f32_e64 s29, v60, v60
	v_cmp_o_f32_e64 s43, v84, v84
	v_add3_u32 v60, v84, v108, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s21
	v_cndmask_b16 v48.l, 0x7fff, v59.h, s42
	v_add3_u32 v57, v69, v57, 0x7fff
	v_cmp_o_f32_e64 s21, v69, v69
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s19
	v_cndmask_b16 v55.h, 0x7fff, v56.h, s20
	v_bfe_u32 v56, v67, 16, 1
	v_bfe_u32 v59, v66, 16, 1
	v_add3_u32 v58, v68, v58, 0x7fff
	v_cmp_o_f32_e64 s19, v68, v68
	.loc	1 627 17                        ; ragged.py:627:17
	v_mul_f32_e32 v22, v22, v49
	.loc	1 679 9                         ; ragged.py:679:9
	v_bfe_u32 v49, v61, 16, 1
	v_bfe_u32 v97, v62, 16, 1
	v_bfe_u32 v109, v83, 16, 1
	v_bfe_u32 v110, v82, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v48.h, s29
	v_cndmask_b16 v48.h, 0x7fff, v60.h, s43
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s21
	v_add3_u32 v56, v67, v56, 0x7fff
	v_cmp_o_f32_e64 s20, v67, v67
	v_add3_u32 v59, v66, v59, 0x7fff
	v_cmp_o_f32_e64 s21, v66, v66
	v_cndmask_b16 v57.h, 0x7fff, v58.h, s19
	v_bfe_u32 v58, v91, 16, 1
	v_bfe_u32 v60, v92, 16, 1
	v_cmp_o_f32_e64 s30, v61, v61
	v_cmp_o_f32_e64 s31, v62, v62
	v_cmp_o_f32_e64 s44, v83, v83
	v_cmp_o_f32_e64 s45, v82, v82
	v_add3_u32 v49, v61, v49, 0x7fff
	v_add3_u32 v50, v62, v97, 0x7fff
	v_add3_u32 v61, v83, v109, 0x7fff
	v_add3_u32 v62, v82, v110, 0x7fff
	v_cndmask_b16 v56.l, 0x7fff, v56.h, s20
	v_cndmask_b16 v56.h, 0x7fff, v59.h, s21
	v_bfe_u32 v59, v93, 16, 1
	v_add3_u32 v58, v91, v58, 0x7fff
	v_cmp_o_f32_e64 s19, v91, v91
	v_add3_u32 v60, v92, v60, 0x7fff
	v_cmp_o_f32_e64 s20, v92, v92
	v_bfe_u32 v98, v63, 16, 1
	v_bfe_u32 v111, v81, 16, 1
	v_cndmask_b16 v34.h, 0x7fff, v43.h, s24
	v_cndmask_b16 v43.h, 0x7fff, v49.h, s30
	v_cndmask_b16 v49.l, 0x7fff, v61.h, s44
	v_cndmask_b16 v49.h, 0x7fff, v62.h, s45
	v_add3_u32 v59, v93, v59, 0x7fff
	v_cmp_o_f32_e64 s21, v93, v93
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s19
	v_bfe_u32 v61, v94, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s20
	v_bfe_u32 v60, v95, 16, 1
	v_bfe_u32 v62, v96, 16, 1
	v_cmp_o_f32_e64 s33, v63, v63
	v_cmp_o_f32_e64 s46, v81, v81
	v_add3_u32 v51, v63, v98, 0x7fff
	v_add3_u32 v63, v81, v111, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s21
	v_add3_u32 v61, v94, v61, 0x7fff
	v_cmp_o_f32_e64 s19, v94, v94
	v_add3_u32 v60, v95, v60, 0x7fff
	v_cmp_o_f32_e64 s20, v95, v95
	v_add3_u32 v62, v96, v62, 0x7fff
	v_cmp_o_f32_e64 s21, v96, v96
	v_cndmask_b16 v50.l, 0x7fff, v63.h, s46
	v_cndmask_b16 v59.h, 0x7fff, v61.h, s19
	v_bfe_u32 v61, v37, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s20
	v_bfe_u32 v63, v36, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v62.h, s21
	v_bfe_u32 v62, v38, 16, 1
	v_add3_u32 v61, v37, v61, 0x7fff
	v_cmp_o_f32_e64 s19, v37, v37
	v_add3_u32 v37, v36, v63, 0x7fff
	v_cmp_o_f32_e64 s20, v36, v36
	v_add3_u32 v36, v38, v62, 0x7fff
	v_cmp_o_f32_e64 s21, v38, v38
	v_bfe_u32 v38, v39, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v61.h, s19
	v_bfe_u32 v61, v40, 16, 1
	v_bfe_u32 v62, v41, 16, 1
	v_cmp_o_f32_e64 s19, v39, v39
	v_add3_u32 v38, v39, v38, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s20
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s21
	v_add3_u32 v39, v40, v61, 0x7fff
	v_cmp_o_f32_e64 s20, v40, v40
	v_add3_u32 v40, v41, v62, 0x7fff
	v_cmp_o_f32_e64 s21, v41, v41
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s19
	v_bfe_u32 v38, v31, 16, 1
	v_bfe_u32 v41, v30, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v40.h, s21
	v_bfe_u32 v40, v29, 16, 1
	v_add3_u32 v38, v31, v38, 0x7fff
	v_cmp_o_f32_e64 s19, v31, v31
	v_add3_u32 v31, v30, v41, 0x7fff
	v_cmp_o_f32_e64 s20, v30, v30
	v_add3_u32 v30, v29, v40, 0x7fff
	v_cmp_o_f32_e64 s21, v29, v29
	v_cndmask_b16 v29.l, 0x7fff, v38.h, s19
	v_bfe_u32 v38, v28, 16, 1
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s20
	v_bfe_u32 v31, v27, 16, 1
	v_bfe_u32 v40, v26, 16, 1
	v_cmp_o_f32_e64 s19, v28, v28
	v_add3_u32 v38, v28, v38, 0x7fff
	v_cmp_o_f32_e64 s20, v27, v27
	v_add3_u32 v28, v27, v31, 0x7fff
	v_add3_u32 v27, v26, v40, 0x7fff
	v_bfe_u32 v101, v65, 16, 1
	v_bfe_u32 v119, v73, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s21
	v_cmp_o_f32_e64 s21, v26, v26
	v_bfe_u32 v26, v25, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s20
	v_bfe_u32 v28, v24, 16, 1
	v_bfe_u32 v31, v23, 16, 1
	v_cmp_o_f32_e64 s36, v65, v65
	v_bfe_u32 v117, v75, 16, 1
	v_bfe_u32 v118, v74, 16, 1
	v_cmp_o_f32_e64 s54, v73, v73
	v_add3_u32 v53, v65, v101, 0x7fff
	v_add3_u32 v73, v73, v119, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v38.h, s19
	v_add3_u32 v26, v25, v26, 0x7fff
	v_cmp_o_f32_e64 s19, v25, v25
	v_add3_u32 v25, v24, v28, 0x7fff
	v_bfe_u32 v28, v22, 16, 1
	v_cmp_o_f32_e64 s20, v24, v24
	v_add3_u32 v24, v23, v31, 0x7fff
	v_and_b32_e32 v31, 16, v121
	v_cmp_o_f32_e64 s52, v75, v75
	v_cmp_o_f32_e64 s53, v74, v74
	v_add3_u32 v75, v75, v117, 0x7fff
	v_add3_u32 v74, v74, v118, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v44.h, s25
	v_cndmask_b16 v45.l, 0x7fff, v53.h, s36
	v_cndmask_b16 v54.l, 0x7fff, v73.h, s54
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s21
	v_cmp_o_f32_e64 s21, v23, v23
	v_add3_u32 v23, v22, v28, 0x7fff
	v_cmp_o_f32_e64 s22, v22, v22
	v_cndmask_b16 v22.l, 0x7fff, v26.h, s19
	v_cmp_eq_u32_e64 s19, 0, v31
	v_cndmask_b16 v53.l, 0x7fff, v75.h, s52
	v_cndmask_b16 v53.h, 0x7fff, v74.h, s53
	v_cndmask_b16 v22.h, 0x7fff, v25.h, s20
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s21
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s22
	v_cndmask_b32_e64 v24, v34, v32, s19
	v_cndmask_b32_e64 v25, v32, v34, s19
	v_cndmask_b32_e64 v26, v35, v33, s19
	v_cndmask_b32_e64 v28, v33, v35, s19
	v_cndmask_b32_e64 v34, v47, v45, s19
	v_cndmask_b32_e64 v35, v45, v47, s19
	v_cndmask_b32_e64 v38, v48, v46, s19
	v_cndmask_b32_e64 v40, v46, v48, s19
	v_cndmask_b32_e64 v47, v57, v54, s19
	v_cndmask_b32_e64 v48, v54, v57, s19
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v45, v55, v53, s19
	v_cndmask_b32_e64 v46, v53, v55, s19
	v_cndmask_b32_e64 v53, v39, v37, s19
	v_cndmask_b32_e64 v37, v37, v39, s19
	v_cndmask_b32_e64 v39, v29, v36, s19
	v_cndmask_b32_e64 v29, v36, v29, s19
	v_cndmask_b32_e64 v36, v22, v30, s19
	v_cndmask_b32_e64 v22, v30, v22, s19
	v_cndmask_b32_e64 v30, v23, v27, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v23, v27, v23, s19
	v_cndmask_b32_e64 v27, 0x1054, v54, s19
	v_bfe_u32 v99, v64, 16, 1
	v_bfe_u32 v100, v0, 16, 1
	v_bfe_u32 v112, v80, 16, 1
	v_bfe_u32 v113, v79, 16, 1
	v_bfe_u32 v114, v78, 16, 1
	v_bfe_u32 v115, v77, 16, 1
	v_bfe_u32 v116, v76, 16, 1
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	v_lshl_or_b32 v27, v27, 8, v27
	v_cmp_o_f32_e64 s34, v64, v64
	v_cmp_o_f32_e64 s35, v0, v0
	v_cmp_o_f32_e64 s47, v80, v80
	v_cmp_o_f32_e64 s48, v79, v79
	v_cmp_o_f32_e64 s49, v78, v78
	v_cmp_o_f32_e64 s50, v77, v77
	v_cmp_o_f32_e64 s51, v76, v76
	v_add3_u32 v52, v64, v99, 0x7fff
	v_add3_u32 v0, v0, v100, 0x7fff
	v_add3_u32 v64, v80, v112, 0x7fff
	v_add3_u32 v65, v79, v113, 0x7fff
	v_add3_u32 v78, v78, v114, 0x7fff
	v_add3_u32 v77, v77, v115, 0x7fff
	v_add3_u32 v76, v76, v116, 0x7fff
	v_lshl_or_b32 v54, v54, 8, v54
	v_and_b32_e32 v27, 0x540054, v27
	v_cndmask_b16 v44.l, 0x7fff, v50.h, s31
	v_cndmask_b16 v44.h, 0x7fff, v51.h, s33
	v_cndmask_b16 v0.l, 0x7fff, v52.h, s34
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s35
	v_cndmask_b16 v50.h, 0x7fff, v64.h, s47
	v_cndmask_b16 v51.l, 0x7fff, v65.h, s48
	v_cndmask_b16 v51.h, 0x7fff, v78.h, s49
	v_cndmask_b16 v52.l, 0x7fff, v77.h, s50
	v_cndmask_b16 v52.h, 0x7fff, v76.h, s51
	v_and_b32_e32 v54, 0x760076, v54
	v_lshl_or_b32 v27, v27, 4, v27
	.loc	1 584 18                        ; ragged.py:584:18
	v_or_b32_e32 v10, 7, v15
	v_or_b32_e32 v11, 6, v15
	v_or_b32_e32 v12, 5, v15
	v_or_b32_e32 v13, 4, v15
	v_or_b32_e32 v14, 3, v15
	v_or_b32_e32 v17, 2, v15
	v_or_b32_e32 v18, 1, v15
	s_mov_b32 s20, 0x76543210
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s16, s18, v15
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v31, v44, v42, s19
	v_cndmask_b32_e64 v32, v42, v44, s19
	v_cndmask_b32_e64 v33, v0, v43, s19
	v_cndmask_b32_e64 v0, v43, v0, s19
	v_cndmask_b32_e64 v42, v49, v51, s19
	v_cndmask_b32_e64 v43, v52, v50, s19
	v_cndmask_b32_e64 v44, v50, v52, s19
	v_cndmask_b32_e64 v50, v56, v59, s19
	v_cndmask_b32_e64 v52, v58, v60, s19
	v_permlanex16_b32 v25, v25, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v27, 0x5040504, v27
	.loc	1 586 20                        ; ragged.py:586:20
	v_cmp_gt_i32_e64 s2, s18, v2
	v_cmp_gt_i32_e64 s4, s18, v3
	v_cmp_gt_i32_e64 s5, s18, v4
	v_cmp_gt_i32_e64 s6, s18, v5
	v_cmp_gt_i32_e64 s7, s18, v6
	v_cmp_gt_i32_e64 s8, s18, v7
	v_cmp_gt_i32_e64 s9, s18, v8
	v_cmp_gt_i32_e64 s10, s18, v9
	v_cmp_gt_i32_e64 s11, s18, v10
	v_cmp_gt_i32_e64 s12, s18, v11
	v_cmp_gt_i32_e64 s13, s18, v12
	v_cmp_gt_i32_e64 s14, s18, v13
	v_cmp_gt_i32_e64 s15, s18, v14
	v_cmp_gt_i32_e64 s17, s18, v17
	v_cmp_gt_i32_e64 s18, s18, v18
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v84, v15, v20, 1
	v_add_lshl_u32 v85, v18, v20, 1
	v_cndmask_b32_e64 v41, v51, v49, s19
	v_cndmask_b32_e64 v49, v59, v56, s19
	v_cndmask_b32_e64 v51, v60, v58, s19
	v_permlanex16_b32 v28, v28, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v40, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v44, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v48, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v52, v52, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v37, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v29, v29, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v25, v24, v27
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s16, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v86, v17, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s18, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v24, v25, v24, v54
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s17, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v25, v28, v26, v27
	v_perm_b32 v26, v28, v26, v54
	v_perm_b32 v28, v32, v31, v27
	v_perm_b32 v31, v32, v31, v54
	v_perm_b32 v32, v0, v33, v27
	v_perm_b32 v0, v0, v33, v54
	v_perm_b32 v33, v35, v34, v27
	v_perm_b32 v34, v35, v34, v54
	v_perm_b32 v35, v40, v38, v27
	v_perm_b32 v38, v40, v38, v54
	v_perm_b32 v40, v42, v41, v27
	v_perm_b32 v41, v42, v41, v54
	v_perm_b32 v42, v44, v43, v27
	v_perm_b32 v43, v44, v43, v54
	v_perm_b32 v44, v46, v45, v27
	v_perm_b32 v45, v46, v45, v54
	v_perm_b32 v46, v48, v47, v27
	v_perm_b32 v47, v48, v47, v54
	v_perm_b32 v48, v50, v49, v27
	v_perm_b32 v49, v50, v49, v54
	v_perm_b32 v50, v52, v51, v27
	v_perm_b32 v51, v52, v51, v54
	v_perm_b32 v52, v37, v53, v27
	v_perm_b32 v37, v37, v53, v54
	v_perm_b32 v53, v29, v39, v27
	v_perm_b32 v29, v29, v39, v54
	v_perm_b32 v39, v22, v36, v27
	v_perm_b32 v27, v23, v30, v27
	v_perm_b32 v23, v23, v30, v54
	v_mov_b16_e32 v30.l, v55.h
	v_mov_b16_e32 v30.h, v21.h
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	buffer_store_b16 v55, v84, s[56:59], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	v_mov_b16_e32 v21.l, v24.h
	s_clause 0x1
	buffer_store_b16 v30, v85, s[56:59], 0 offen
	buffer_store_b16 v24, v86, s[56:59], 0 offen
	v_add_lshl_u32 v24, v13, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s15, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v84, v11, v20, 1
	v_cndmask_b32_e64 v30, 0x80000000, v55, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s14, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v55, v12, v20, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s13, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_perm_b32 v22, v22, v36, v54
	v_mov_b16_e32 v36.h, v21.h
	v_mov_b16_e32 v54.h, v21.h
	v_mov_b16_e32 v56.h, v21.h
	v_mov_b16_e32 v57.h, v21.h
	v_mov_b16_e32 v58.h, v21.h
	v_mov_b16_e32 v59.h, v21.h
	v_mov_b16_e32 v60.h, v21.h
	v_mov_b16_e32 v61.h, v21.h
	v_mov_b16_e32 v62.h, v21.h
	v_mov_b16_e32 v63.h, v21.h
	v_mov_b16_e32 v64.h, v21.h
	v_mov_b16_e32 v65.h, v21.h
	v_mov_b16_e32 v66.h, v21.h
	v_mov_b16_e32 v67.h, v21.h
	v_mov_b16_e32 v68.h, v21.h
	v_mov_b16_e32 v69.h, v21.h
	v_mov_b16_e32 v70.h, v21.h
	v_mov_b16_e32 v71.h, v21.h
	v_mov_b16_e32 v72.h, v21.h
	v_mov_b16_e32 v73.h, v21.h
	v_mov_b16_e32 v74.h, v21.h
	v_mov_b16_e32 v75.h, v21.h
	v_mov_b16_e32 v76.h, v21.h
	v_mov_b16_e32 v77.h, v21.h
	v_mov_b16_e32 v78.h, v21.h
	v_mov_b16_e32 v79.h, v21.h
	v_mov_b16_e32 v80.h, v21.h
	v_mov_b16_e32 v81.h, v21.h
	v_mov_b16_e32 v82.h, v21.h
	v_mov_b16_e32 v83.h, v21.h
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s12, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v21, v30, s[56:59], 0 offen
	buffer_store_b16 v25, v24, s[56:59], 0 offen
	v_add_lshl_u32 v21, v10, v20, 1
	v_mov_b16_e32 v54.l, v25.h
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	v_add_lshl_u32 v24, v9, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s11, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v25, v8, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s10, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v36.l, v26.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[56:59], 0 offen
	buffer_store_b16 v26, v84, s[56:59], 0 offen
	v_add_lshl_u32 v26, v7, v20, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s9, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v57.l, v28.h
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s8, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v36, v21, s[56:59], 0 offen
	buffer_store_b16 v28, v24, s[56:59], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v26, s19
	v_add_lshl_u32 v21, v6, v20, 1
	v_add_lshl_u32 v24, v5, v20, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s7, s3
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v57, v25, s[56:59], 0 offen
	buffer_store_b16 v31, v26, s[56:59], 0 offen
	v_add_lshl_u32 v25, v4, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s6, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v26, v3, v20, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s5, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v56.l, v31.h
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s19, s4, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v59.l, v32.h
	v_cndmask_b32_e64 v26, 0x80000000, v26, s19
	v_add_lshl_u32 v20, v2, v20, 1
	v_mov_b16_e32 v58.l, v0.h
	s_clause 0x3
	buffer_store_b16 v56, v21, s[56:59], 0 offen
	buffer_store_b16 v32, v24, s[56:59], 0 offen
	buffer_store_b16 v59, v25, s[56:59], 0 offen
	buffer_store_b16 v0, v26, s[56:59], 0 offen
	v_add_lshl_u32 v0, v15, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s2, s3
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v18, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s16, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v24, v17, v19, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s18, s1
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[56:59], 0 offen
	buffer_store_b16 v33, v0, s[56:59], 0 offen
	v_add_lshl_u32 v0, v14, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s17, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v61.l, v33.h
	v_add_lshl_u32 v20, v13, v19, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s15, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v60.l, v34.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s14, s1
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v61, v21, s[56:59], 0 offen
	buffer_store_b16 v34, v24, s[56:59], 0 offen
	v_add_lshl_u32 v21, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	v_add_lshl_u32 v24, v11, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s13, s1
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v60, v0, s[56:59], 0 offen
	buffer_store_b16 v35, v20, s[56:59], 0 offen
	v_add_lshl_u32 v0, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s12, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v63.l, v35.h
	v_add_lshl_u32 v20, v9, v19, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s11, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v62.l, v38.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s10, s1
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v63, v21, s[56:59], 0 offen
	buffer_store_b16 v38, v24, s[56:59], 0 offen
	v_add_lshl_u32 v21, v8, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	v_add_lshl_u32 v24, v7, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s9, s1
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v62, v0, s[56:59], 0 offen
	buffer_store_b16 v40, v20, s[56:59], 0 offen
	v_add_lshl_u32 v0, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s8, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v20, v5, v19, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s7, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v65.l, v40.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s6, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v64.l, v41.h
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	s_clause 0x1
	buffer_store_b16 v65, v21, s[56:59], 0 offen
	buffer_store_b16 v41, v24, s[56:59], 0 offen
	v_add_lshl_u32 v21, v4, v19, 1
	v_add_lshl_u32 v24, v3, v19, 1
	s_clause 0x1
	buffer_store_b16 v64, v0, s[56:59], 0 offen
	buffer_store_b16 v42, v20, s[56:59], 0 offen
	v_add_lshl_u32 v0, v2, v19, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s5, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v19, v15, v16, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s3, s4, s1
	s_and_b32 s1, s2, s1
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v67.l, v42.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s16, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v66.l, v43.h
	v_add_lshl_u32 v20, v18, v16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_clause 0x1
	buffer_store_b16 v67, v21, s[56:59], 0 offen
	buffer_store_b16 v43, v24, s[56:59], 0 offen
	v_add_lshl_u32 v21, v17, v16, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s18, s0
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v66, v0, s[56:59], 0 offen
	buffer_store_b16 v44, v19, s[56:59], 0 offen
	v_add_lshl_u32 v0, v14, v16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s17, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v69.l, v44.h
	v_add_lshl_u32 v19, v13, v16, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s15, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v68.l, v45.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s14, s0
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v69, v20, s[56:59], 0 offen
	buffer_store_b16 v45, v21, s[56:59], 0 offen
	v_add_lshl_u32 v20, v12, v16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_add_lshl_u32 v21, v11, v16, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s13, s0
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v68, v0, s[56:59], 0 offen
	buffer_store_b16 v46, v19, s[56:59], 0 offen
	v_add_lshl_u32 v0, v10, v16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s12, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v71.l, v46.h
	v_add_lshl_u32 v19, v9, v16, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s11, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v70.l, v47.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s10, s0
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v71, v20, s[56:59], 0 offen
	buffer_store_b16 v47, v21, s[56:59], 0 offen
	v_add_lshl_u32 v20, v8, v16, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	v_add_lshl_u32 v21, v7, v16, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s9, s0
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x1
	buffer_store_b16 v70, v0, s[56:59], 0 offen
	buffer_store_b16 v48, v19, s[56:59], 0 offen
	v_add_lshl_u32 v0, v6, v16, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s8, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v19, v5, v16, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s7, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v73.l, v48.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s6, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v72.l, v49.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_clause 0x1
	buffer_store_b16 v73, v20, s[56:59], 0 offen
	buffer_store_b16 v49, v21, s[56:59], 0 offen
	v_add_lshl_u32 v20, v4, v16, 1
	s_clause 0x1
	buffer_store_b16 v72, v0, s[56:59], 0 offen
	buffer_store_b16 v50, v19, s[56:59], 0 offen
	v_add_lshl_u32 v0, v2, v16, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s5, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v21, v3, v16, 1
	v_add_lshl_u32 v15, v15, v1, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s1, s4, s0
	s_and_b32 s0, s2, s0
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v74.l, v51.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s16, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v75.l, v50.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	v_add_lshl_u32 v16, v18, v1, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s0
	v_add_lshl_u32 v17, v17, v1, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s18, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x3
	buffer_store_b16 v75, v20, s[56:59], 0 offen
	buffer_store_b16 v51, v21, s[56:59], 0 offen
	buffer_store_b16 v74, v0, s[56:59], 0 offen
	buffer_store_b16 v52, v15, s[56:59], 0 offen
	v_add_lshl_u32 v0, v14, v1, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s17, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v13, v13, v1, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s15, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v76.l, v37.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s14, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v77.l, v52.h
	v_add_lshl_u32 v12, v12, v1, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s0
	v_add_lshl_u32 v11, v11, v1, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s13, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x3
	buffer_store_b16 v77, v16, s[56:59], 0 offen
	buffer_store_b16 v37, v17, s[56:59], 0 offen
	buffer_store_b16 v76, v0, s[56:59], 0 offen
	buffer_store_b16 v53, v13, s[56:59], 0 offen
	v_add_lshl_u32 v0, v10, v1, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s12, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v9, v9, v1, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s11, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v78.l, v29.h
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s10, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v79.l, v53.h
	v_add_lshl_u32 v8, v8, v1, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_add_lshl_u32 v7, v7, v1, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s9, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	s_clause 0x3
	buffer_store_b16 v79, v12, s[56:59], 0 offen
	buffer_store_b16 v29, v11, s[56:59], 0 offen
	buffer_store_b16 v78, v0, s[56:59], 0 offen
	buffer_store_b16 v39, v9, s[56:59], 0 offen
	v_add_lshl_u32 v0, v6, v1, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s8, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v5, v5, v1, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s7, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v4, v4, v1, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s6, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_add_lshl_u32 v3, v3, v1, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s5, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v80.l, v22.h
	v_mov_b16_e32 v81.l, v39.h
	v_cndmask_b32_e64 v2, 0x80000000, v4, s0
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 s0, s4, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_mov_b16_e32 v83.l, v27.h
	.loc	1 682 18                        ; ragged.py:682:18
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 679 9                         ; ragged.py:679:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_mov_b16_e32 v82.l, v23.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x6
	buffer_store_b16 v81, v8, s[56:59], 0 offen
	buffer_store_b16 v22, v7, s[56:59], 0 offen
	buffer_store_b16 v80, v0, s[56:59], 0 offen
	buffer_store_b16 v27, v5, s[56:59], 0 offen
	buffer_store_b16 v83, v2, s[56:59], 0 offen
	buffer_store_b16 v23, v3, s[56:59], 0 offen
	buffer_store_b16 v82, v1, s[56:59], 0 offen
	.loc	1 544 5                         ; ragged.py:544:5
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 36
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
		.amdhsa_next_free_sgpr 64
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 36
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14004
; TotalNumSgprs: 66
; NumVgprs: 256
; ScratchSize: 36
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 66
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 36
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 8
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
