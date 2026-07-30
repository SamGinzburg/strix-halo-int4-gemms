	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 702 0                         ; ragged.py:702:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s70, s[0:1], 0x4c
	s_load_b64 s[68:69], s[0:1], 0x54
.Ltmp0:
	.loc	1 730 25 prologue_end           ; ragged.py:730:25
	s_abs_i32 s7, s2
	s_load_b256 s[36:43], s[0:1], 0x28
	v_mov_b32_e32 v98, 0
	.loc	1 741 18                        ; ragged.py:741:18
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:728:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s70, 0xff
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:728:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
.Ltmp2:
	.loc	1 730 25 is_stmt 1              ; ragged.py:730:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v85, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v89, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v93, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v97, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v101, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v65, 0xf0, v0
	s_cselect_b32 s4, s8, s5
	s_mov_b32 s44, 0
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 732 33                        ; ragged.py:732:33
	s_sub_i32 s5, s69, s4
	.loc	1 733 24                        ; ragged.py:733:24
	s_mul_i32 s3, s4, s3
	.loc	1 732 22                        ; ragged.py:732:22
	s_min_i32 s5, s5, 1
	.loc	1 733 24                        ; ragged.py:733:24
	s_sub_i32 s2, s2, s3
	.loc	1 735 17                        ; ragged.py:735:17
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	.loc	1 741 32                        ; ragged.py:741:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 735 17                        ; ragged.py:735:17
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
	.loc	1 734 34                        ; ragged.py:734:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 734 20 is_stmt 0              ; ragged.py:734:20
	s_add_i32 s2, s2, s4
	.loc	1 737 20 is_stmt 1              ; ragged.py:737:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 738 23                        ; ragged.py:738:23
	s_lshl_b64 s[14:15], s[2:3], 3
	s_add_u32 s2, s36, s14
	s_addc_u32 s3, s37, s15
	s_load_b64 s[46:47], s[2:3], 0x0
	.loc	1 739 24                        ; ragged.py:739:24
	s_add_u32 s2, s38, s14
	s_addc_u32 s3, s39, s15
	.loc	1 740 22                        ; ragged.py:740:22
	s_add_u32 s4, s40, s14
	s_addc_u32 s5, s41, s15
	.loc	1 739 24                        ; ragged.py:739:24
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 740 22                        ; ragged.py:740:22
	s_load_b64 s[12:13], s[4:5], 0x0
	v_mov_b32_e32 v102, 0
	.loc	1 742 18                        ; ragged.py:742:18
	s_lshl_b32 s39, s6, 8
	.loc	1 741 18                        ; ragged.py:741:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s46, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s47, 0, s2
	.loc	1 824 25                        ; ragged.py:824:25
	v_add_nc_u32_e32 v151, s46, v1
	.loc	1 741 18                        ; ragged.py:741:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e32 vcc_lo, s[10:11], v[2:3]
	.loc	1 743 48 is_stmt 0              ; ragged.py:743:48
	v_cmp_gt_i64_e64 s2, s[12:13], v[2:3]
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e64 s3, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s5, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s6, s[10:11], v[8:9]
	.loc	1 743 48                        ; ragged.py:743:48
	v_cmp_gt_i64_e64 s7, s[12:13], v[4:5]
	v_cmp_gt_i64_e64 s8, s[12:13], v[6:7]
	v_cmp_gt_i64_e64 s9, s[12:13], v[8:9]
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v153, 32, v151
	.loc	1 824 25 is_stmt 1              ; ragged.py:824:25
	v_add_nc_u32_e32 v152, 16, v151
	v_add_nc_u32_e32 v154, 48, v151
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 793 19                        ; ragged.py:793:19
	s_cmp_lt_i32 s68, 1
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s40, s[0:1], 0x50
	s_load_b32 s41, s[0:1], 0x48
	.loc	1 742 36 is_stmt 1              ; ragged.py:742:36
	v_lshrrev_b32_e32 v2, 5, v0
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v4, 63, v0
	s_load_b256 s[48:55], s[0:1], 0x0
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v38, 0x7f, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 742 18 is_stmt 0              ; ragged.py:742:18
	v_or_b32_e32 v6, s39, v2
	.loc	1 741 18 is_stmt 1              ; ragged.py:741:18
	v_add_co_u32 v2, s0, s46, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s47, 0, s0
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v39, 5, v1
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v105, 0, v1
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e64 s0, s[10:11], v[2:3]
	.loc	1 743 48 is_stmt 0              ; ragged.py:743:48
	v_cmp_gt_i64_e64 s1, s[12:13], v[2:3]
	.loc	1 737 20 is_stmt 1              ; ragged.py:737:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s18, s6, s14
	s_addc_u32 s19, s7, s15
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v2, s39, v0
	.loc	1 831 25                        ; ragged.py:831:25
	s_load_b32 s37, s[18:19], 0x0
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v1, 5, v0
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	scratch_store_b32 off, v2, off          ; 4-byte Folded Spill
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s36, s70, v2
	v_bfe_i32 v2, v0, 7, 1
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v1, 32, v1
	v_mov_b32_e32 v97, 0
	.loc	1 805 39                        ; ragged.py:805:39
	s_mul_i32 s38, s40, s70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v2, 0x88, v2
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v40, 24, v3
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v46, 28, v3
	v_xor_b32_e32 v104, v2, v38
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v2, 2, v65
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s38, s38, s37
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v7, 8, v6
	v_or_b32_e32 v8, 16, v6
	v_add3_u32 v47, 0, v2, v1
	v_mad_u64_u32 v[2:3], null, v6, s40, s[38:39]
	v_or_b32_e32 v9, 24, v6
	v_or_b32_e32 v10, 32, v6
	v_or_b32_e32 v11, 40, v6
	v_or_b32_e32 v12, 48, v6
	v_or_b32_e32 v13, 56, v6
	v_or_b32_e32 v14, 64, v6
	scratch_store_b64 off, v[2:3], off offset:4 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v7, s[38:39]
	v_or_b32_e32 v15, 0x48, v6
	v_or_b32_e32 v16, 0x50, v6
	v_or_b32_e32 v17, 0x58, v6
	v_or_b32_e32 v18, 0x60, v6
	v_or_b32_e32 v19, 0x68, v6
	v_or_b32_e32 v20, 0x70, v6
	scratch_store_b64 off, v[2:3], off offset:12 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v8, s[38:39]
	v_or_b32_e32 v21, 0x78, v6
	v_or_b32_e32 v22, 0x80, v6
	v_or_b32_e32 v23, 0x88, v6
	v_or_b32_e32 v24, 0x90, v6
	v_or_b32_e32 v25, 0x98, v6
	.loc	1 741 18                        ; ragged.py:741:18
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v5, 0xe0, v0
	scratch_store_b64 off, v[2:3], off offset:20 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v9, s[38:39]
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v27, 0xa8, v6
	v_or_b32_e32 v28, 0xb0, v6
	v_or_b32_e32 v26, 0xa0, v6
	v_or_b32_e32 v29, 0xb8, v6
	v_or_b32_e32 v30, 0xc0, v6
	v_dual_mov_b32 v98, 0 :: v_dual_lshlrev_b32 v5, 4, v5
	scratch_store_b64 off, v[2:3], off offset:28 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v10, s[38:39]
	v_or_b32_e32 v31, 0xc8, v6
	v_or_b32_e32 v32, 0xd0, v6
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s20, s70, v23
	v_cmp_gt_i32_e64 s21, s70, v24
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v33, 0xd8, v6
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s22, s70, v25
	scratch_store_b64 off, v[2:3], off offset:36 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v11, s[38:39]
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v34, 0xe0, v6
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s23, s70, v26
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v35, 0xe8, v6
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s24, s70, v27
	v_or3_b32 v106, v39, v40, v5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v36, 0xf0, v6
	scratch_store_b64 off, v[2:3], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v12, s[38:39]
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s25, s70, v28
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v37, 0xf8, v6
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s26, s70, v29
	v_cmp_gt_i32_e64 s27, s70, v30
	v_cmp_gt_i32_e64 s28, s70, v31
	v_cmp_gt_i32_e64 s29, s70, v32
	scratch_store_b64 off, v[2:3], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v13, s[38:39]
	v_or_b32_e32 v41, 0x300, v0
	v_or_b32_e32 v42, 0x700, v0
	v_or_b32_e32 v38, 0x3f0, v0
	v_or_b32_e32 v39, 0x7f0, v0
	v_xor_b32_e32 v40, 0x110, v104
	v_xor_b32_e32 v43, 8, v106
	scratch_store_b64 off, v[2:3], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v14, s[38:39]
	v_xor_b32_e32 v44, 16, v106
	v_xor_b32_e32 v45, 24, v106
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v48, 1, v65
	v_cmp_gt_i32_e64 s30, s70, v33
	v_cmp_gt_i32_e64 s31, s70, v34
	scratch_store_b64 off, v[2:3], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v15, s[38:39]
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s69, s0, s1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s0, s70, v6
	v_cmp_gt_i32_e64 s1, s70, v7
	v_cmp_gt_i32_e64 s5, s70, v8
	v_cmp_gt_i32_e64 s6, s70, v9
	v_cmp_gt_i32_e64 s7, s70, v10
	scratch_store_b64 off, v[2:3], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v16, s[38:39]
	v_cmp_gt_i32_e64 s8, s70, v11
	v_cmp_gt_i32_e64 s9, s70, v12
	v_cmp_gt_i32_e64 s10, s70, v13
	v_cmp_gt_i32_e64 s11, s70, v14
	v_cmp_gt_i32_e64 s12, s70, v15
	v_cmp_gt_i32_e64 s13, s70, v16
	scratch_store_b64 off, v[2:3], off offset:84 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v17, s[38:39]
	v_cmp_gt_i32_e64 s14, s70, v17
	v_cmp_gt_i32_e64 s15, s70, v18
	v_cmp_gt_i32_e64 s16, s70, v19
	v_cmp_gt_i32_e64 s17, s70, v20
	v_cmp_gt_i32_e64 s18, s70, v21
	v_cmp_gt_i32_e64 s19, s70, v22
	scratch_store_b64 off, v[2:3], off offset:92 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v18, s[38:39]
	v_cmp_gt_i32_e64 s33, s70, v35
	v_cmp_gt_i32_e64 s34, s70, v36
	v_cmp_gt_i32_e64 s35, s70, v37
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v1, s46, v4
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v107, v47, v46
	scratch_store_b64 off, v[2:3], off offset:100 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v19, s[38:39]
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v108, 0, v41
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v109, 0, v42
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v110, 0, v38
	scratch_store_b64 off, v[2:3], off offset:108 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v20, s[38:39]
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v111, 0, v39
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v112, 0, v40
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v113, 0, v43
	scratch_store_b64 off, v[2:3], off offset:116 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v21, s[38:39]
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v114, 0, v44
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v115, 0, v45
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v116, 0, v48
	scratch_store_b64 off, v[2:3], off offset:124 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v22, s[38:39]
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v117, 0, v0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	scratch_store_b64 off, v[2:3], off offset:132 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v23, s[38:39]
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	scratch_store_b64 off, v[2:3], off offset:140 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v24, s[38:39]
	v_mad_u64_u32 v[23:24], null, s40, v27, s[38:39]
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v57, 0
	scratch_store_b64 off, v[2:3], off offset:148 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v25, s[38:39]
	v_mad_u64_u32 v[24:25], null, s40, v28, s[38:39]
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	scratch_store_b64 off, v[2:3], off offset:156 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s40, v26, s[38:39]
	v_mad_u64_u32 v[25:26], null, s40, v29, s[38:39]
	v_mad_u64_u32 v[26:27], null, s40, v30, s[38:39]
	v_mad_u64_u32 v[27:28], null, s40, v31, s[38:39]
	v_mad_u64_u32 v[28:29], null, s40, v32, s[38:39]
	v_mad_u64_u32 v[29:30], null, s40, v33, s[38:39]
	v_mad_u64_u32 v[30:31], null, s40, v34, s[38:39]
	v_mad_u64_u32 v[31:32], null, s40, v35, s[38:39]
	v_mad_u64_u32 v[32:33], null, s40, v36, s[38:39]
	v_mad_u64_u32 v[33:34], null, s40, v37, s[38:39]
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v34, 0
	.loc	1 831 25                        ; ragged.py:831:25
	s_mul_i32 s71, s68, s37
	s_and_b32 s57, s49, 0xffff
	s_mov_b32 s56, s48
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 s61, s51, 0xffff
	s_mov_b32 s60, s50
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s65, s55, 0xffff
	s_mov_b32 s64, s54
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s72, s44
	scratch_store_b64 off, v[2:3], off offset:164 ; 8-byte Folded Spill
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 790 28                        ; ragged.py:790:28
	v_lshrrev_b32_e32 v118, 6, v0
	.loc	1 795 28                        ; ragged.py:795:28
	s_lshl_b32 s38, s72, 5
	.loc	1 809 34                        ; ragged.py:809:34
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	v_add_nc_u32_e32 v18, 0, v104
	v_or_b32_e32 v120, s38, v118
	.loc	1 830 40                        ; ragged.py:830:40
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	.loc	1 823 40                        ; ragged.py:823:40
	s_mov_b32 s54, s58
	s_mov_b32 s55, s59
	v_mad_u64_u32 v[118:119], null, v120, s41, v[1:2]
	v_cmp_gt_i32_e64 s37, s40, v120
	v_mov_b32_e32 v20, v152
	v_dual_mov_b32 v22, v154 :: v_dual_mov_b32 v19, v151
	v_mov_b32_e32 v21, v153
	s_and_b32 s37, s69, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v121, 0x80000000, v118, s37
	v_or_b32_e32 v118, 4, v120
	v_cmp_gt_i32_e64 s37, s40, v118
	v_mad_u64_u32 v[118:119], null, v118, s41, v[1:2]
	s_and_b32 s37, s69, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v122, 0x80000000, v118, s37
	v_or_b32_e32 v118, 8, v120
	v_cmp_gt_i32_e64 s37, s40, v118
	v_mad_u64_u32 v[118:119], null, v118, s41, v[1:2]
	s_and_b32 s37, s69, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v123, 0x80000000, v118, s37
	v_or_b32_e32 v118, 12, v120
	v_cmp_gt_i32_e64 s37, s40, v118
	v_mad_u64_u32 v[118:119], null, v118, s41, v[1:2]
	s_and_b32 s37, s69, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v124, 0x80000000, v118, s37
	v_or_b32_e32 v118, 16, v120
	v_cmp_gt_i32_e64 s37, s40, v118
	v_mad_u64_u32 v[118:119], null, v118, s41, v[1:2]
	s_and_b32 s37, s69, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v125, 0x80000000, v118, s37
	v_or_b32_e32 v118, 20, v120
	v_cmp_gt_i32_e64 s37, s40, v118
	v_mad_u64_u32 v[118:119], null, v118, s41, v[1:2]
	s_and_b32 s37, s69, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v126, 0x80000000, v118, s37
	v_or_b32_e32 v118, 24, v120
	v_cmp_gt_i32_e64 s37, s40, v118
	v_mad_u64_u32 v[118:119], null, v118, s41, v[1:2]
	s_and_b32 s37, s69, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v127, 0x80000000, v118, s37
	v_or_b32_e32 v118, 28, v120
	v_cmp_gt_i32_e64 s37, s40, v118
	v_mad_u64_u32 v[118:119], null, v118, s41, v[1:2]
	scratch_load_b64 v[2:3], off, off offset:4 ; 8-byte Folded Reload
	.loc	1 790 28                        ; ragged.py:790:28
	v_and_b32_e32 v119, 31, v0
	s_and_b32 s37, s69, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v119, s38, v119
	v_cndmask_b32_e64 v118, 0x80000000, v118, s37
	v_cmp_gt_i32_e64 s37, s40, v119
	v_add_nc_u32_e32 v148, v23, v119
	v_add_nc_u32_e32 v149, v24, v119
	v_add_nc_u32_e32 v150, v25, v119
	v_add_nc_u32_e32 v151, v26, v119
	s_and_b32 s38, s0, s37
	v_add_nc_u32_e32 v152, v27, v119
	v_add_nc_u32_e32 v153, v28, v119
	v_add_nc_u32_e32 v154, v29, v119
	v_add_nc_u32_e32 v155, v30, v119
	v_add_nc_u32_e32 v156, v31, v119
	v_add_nc_u32_e32 v157, v32, v119
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v120, v2, v119
	scratch_load_b64 v[2:3], off, off offset:12 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v120, 0x80000000, v120, s38
	s_and_b32 s38, s1, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v128, v2, v119
	scratch_load_b64 v[2:3], off, off offset:20 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v128, 0x80000000, v128, s38
	s_and_b32 s38, s5, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, v2, v119
	scratch_load_b64 v[2:3], off, off offset:28 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v129, 0x80000000, v129, s38
	s_and_b32 s38, s6, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v130, v2, v119
	scratch_load_b64 v[2:3], off, off offset:36 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v130, 0x80000000, v130, s38
	s_and_b32 s38, s7, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, v2, v119
	scratch_load_b64 v[2:3], off, off offset:44 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v131, 0x80000000, v131, s38
	s_and_b32 s38, s8, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v132, v2, v119
	scratch_load_b64 v[2:3], off, off offset:52 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v132, 0x80000000, v132, s38
	s_and_b32 s38, s9, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v133, v2, v119
	scratch_load_b64 v[2:3], off, off offset:60 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v133, 0x80000000, v133, s38
	s_and_b32 s38, s10, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v134, v2, v119
	scratch_load_b64 v[2:3], off, off offset:68 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v134, 0x80000000, v134, s38
	s_and_b32 s38, s11, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v135, v2, v119
	scratch_load_b64 v[2:3], off, off offset:76 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v135, 0x80000000, v135, s38
	s_and_b32 s38, s12, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, v2, v119
	scratch_load_b64 v[2:3], off, off offset:84 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v136, 0x80000000, v136, s38
	s_and_b32 s38, s13, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v137, v2, v119
	scratch_load_b64 v[2:3], off, off offset:92 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v137, 0x80000000, v137, s38
	s_and_b32 s38, s14, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, v2, v119
	scratch_load_b64 v[2:3], off, off offset:100 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v138, 0x80000000, v138, s38
	s_and_b32 s38, s15, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, v2, v119
	scratch_load_b64 v[2:3], off, off offset:108 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v139, 0x80000000, v139, s38
	s_and_b32 s38, s16, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v140, v2, v119
	scratch_load_b64 v[2:3], off, off offset:116 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v140, 0x80000000, v140, s38
	s_and_b32 s38, s17, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v141, v2, v119
	scratch_load_b64 v[2:3], off, off offset:124 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v141, 0x80000000, v141, s38
	s_and_b32 s38, s18, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v142, v2, v119
	scratch_load_b64 v[2:3], off, off offset:132 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v142, 0x80000000, v142, s38
	s_and_b32 s38, s19, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v143, v2, v119
	scratch_load_b64 v[2:3], off, off offset:140 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v143, 0x80000000, v143, s38
	s_and_b32 s38, s20, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v144, v2, v119
	scratch_load_b64 v[2:3], off, off offset:148 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v144, 0x80000000, v144, s38
	s_and_b32 s38, s21, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v145, v2, v119
	scratch_load_b64 v[2:3], off, off offset:156 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v145, 0x80000000, v145, s38
	s_and_b32 s38, s22, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, v2, v119
	scratch_load_b64 v[2:3], off, off offset:164 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v146, 0x80000000, v146, s38
	s_and_b32 s38, s23, s37
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, v2, v119
	v_add_nc_u32_e32 v119, v33, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v147, 0x80000000, v147, s38
	s_and_b32 s38, s24, s37
	v_cndmask_b32_e64 v148, 0x80000000, v148, s38
	s_and_b32 s38, s25, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v149, 0x80000000, v149, s38
	s_and_b32 s38, s26, s37
	v_cndmask_b32_e64 v150, 0x80000000, v150, s38
	s_and_b32 s38, s27, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v151, 0x80000000, v151, s38
	s_and_b32 s38, s28, s37
	v_cndmask_b32_e64 v152, 0x80000000, v152, s38
	s_and_b32 s38, s29, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v153, 0x80000000, v153, s38
	s_and_b32 s38, s30, s37
	v_cndmask_b32_e64 v154, 0x80000000, v154, s38
	s_and_b32 s38, s31, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v155, 0x80000000, v155, s38
	s_and_b32 s38, s33, s37
	v_cndmask_b32_e64 v156, 0x80000000, v156, s38
	s_and_b32 s38, s34, s37
	s_and_b32 s37, s35, s37
	v_cndmask_b32_e64 v157, 0x80000000, v157, s38
	v_cndmask_b32_e64 v119, 0x80000000, v119, s37
	.loc	1 809 34                        ; ragged.py:809:34
	s_clause 0x1f
	buffer_load_u8 v120, v120, s[60:63], 0 offen
	buffer_load_u8 v128, v128, s[60:63], 0 offen
	buffer_load_u8 v129, v129, s[60:63], 0 offen
	buffer_load_u8 v130, v130, s[60:63], 0 offen
	buffer_load_u8 v131, v131, s[60:63], 0 offen
	buffer_load_u8 v132, v132, s[60:63], 0 offen
	buffer_load_u8 v133, v133, s[60:63], 0 offen
	buffer_load_u8 v134, v134, s[60:63], 0 offen
	buffer_load_u8 v135, v135, s[60:63], 0 offen
	buffer_load_u8 v136, v136, s[60:63], 0 offen
	buffer_load_u8 v137, v137, s[60:63], 0 offen
	buffer_load_u8 v138, v138, s[60:63], 0 offen
	buffer_load_u8 v139, v139, s[60:63], 0 offen
	buffer_load_u8 v140, v140, s[60:63], 0 offen
	buffer_load_u8 v141, v141, s[60:63], 0 offen
	buffer_load_u8 v142, v142, s[60:63], 0 offen
	buffer_load_u8 v143, v143, s[60:63], 0 offen
	buffer_load_u8 v144, v144, s[60:63], 0 offen
	buffer_load_u8 v145, v145, s[60:63], 0 offen
	buffer_load_u8 v146, v146, s[60:63], 0 offen
	buffer_load_u8 v147, v147, s[60:63], 0 offen
	buffer_load_u8 v148, v148, s[60:63], 0 offen
	buffer_load_u8 v149, v149, s[60:63], 0 offen
	buffer_load_u8 v150, v150, s[60:63], 0 offen
	buffer_load_u8 v151, v151, s[60:63], 0 offen
	buffer_load_u8 v152, v152, s[60:63], 0 offen
	buffer_load_u8 v153, v153, s[60:63], 0 offen
	buffer_load_u8 v154, v154, s[60:63], 0 offen
	buffer_load_u8 v155, v155, s[60:63], 0 offen
	buffer_load_u8 v156, v156, s[60:63], 0 offen
	buffer_load_u8 v157, v157, s[60:63], 0 offen
	buffer_load_u8 v119, v119, s[60:63], 0 offen
	.loc	1 808 34                        ; ragged.py:808:34
	s_clause 0x7
	buffer_load_u8 v121, v121, s[56:59], 0 offen
	buffer_load_u8 v122, v122, s[56:59], 0 offen
	buffer_load_u8 v123, v123, s[56:59], 0 offen
	buffer_load_u8 v125, v125, s[56:59], 0 offen
	buffer_load_u8 v126, v126, s[56:59], 0 offen
	buffer_load_u8 v127, v127, s[56:59], 0 offen
	buffer_load_u8 v118, v118, s[56:59], 0 offen
	buffer_load_u8 v124, v124, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 831 25                        ; ragged.py:831:25
	s_add_i32 s37, s72, s71
	.loc	1 808 34                        ; ragged.py:808:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v117, v121
	s_waitcnt vmcnt(6)
	ds_store_b8 v117, v122 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v117, v123 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v117, v125 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v117, v126 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v108, v124
	ds_store_b8 v117, v127 offset:1536
	ds_store_b8 v109, v118
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 810 31                        ; ragged.py:810:31
	ds_load_u8 v118, v105 offset:192
	ds_load_u8 v121, v105 offset:128
	ds_load_u8 v167, v105 offset:208
	ds_load_u8 v168, v105 offset:144
	ds_load_u8 v169, v105 offset:224
	ds_load_u8 v170, v105 offset:160
	ds_load_u8 v171, v105 offset:240
	ds_load_u8 v172, v105 offset:176
	ds_load_u8 v122, v105 offset:448
	ds_load_u8 v123, v105 offset:384
	ds_load_u8 v173, v105 offset:464
	ds_load_u8 v174, v105 offset:400
	ds_load_u8 v175, v105 offset:480
	ds_load_u8 v176, v105 offset:416
	ds_load_u8 v177, v105 offset:496
	ds_load_u8 v178, v105 offset:432
	ds_load_u8 v124, v105 offset:320
	ds_load_u8 v125, v105 offset:256
	ds_load_u8 v179, v105 offset:336
	ds_load_u8 v180, v105 offset:272
	ds_load_u8 v181, v105 offset:352
	ds_load_u8 v182, v105 offset:288
	ds_load_u8 v183, v105 offset:368
	ds_load_u8 v184, v105 offset:304
	ds_load_u8 v126, v105 offset:64
	ds_load_u8 v185, v105 offset:80
	ds_load_u8 v186, v105 offset:96
	ds_load_u8 v187, v105 offset:112
	ds_load_u8 v127, v105
	ds_load_u8 v188, v105 offset:16
	ds_load_u8 v189, v105 offset:32
	ds_load_u8 v190, v105 offset:48
	ds_load_u8 v158, v105 offset:960
	ds_load_u8 v159, v105 offset:896
	ds_load_u8 v160, v105 offset:1024
	ds_load_u8 v191, v105 offset:976
	ds_load_u8 v192, v105 offset:912
	ds_load_u8 v193, v105 offset:992
	ds_load_u8 v194, v105 offset:928
	ds_load_u8 v195, v105 offset:944
	ds_load_u8 v161, v105 offset:832
	ds_load_u8 v162, v105 offset:768
	ds_load_u8 v196, v105 offset:848
	ds_load_u8 v197, v105 offset:784
	ds_load_u8 v198, v105 offset:864
	ds_load_u8 v199, v105 offset:800
	ds_load_u8 v200, v105 offset:880
	ds_load_u8 v201, v105 offset:816
	ds_load_u8 v163, v105 offset:704
	ds_load_u8 v164, v105 offset:640
	ds_load_u8 v202, v105 offset:720
	ds_load_u8 v203, v105 offset:656
	ds_load_u8 v204, v105 offset:736
	ds_load_u8 v205, v105 offset:672
	ds_load_u8 v206, v105 offset:752
	ds_load_u8 v207, v105 offset:688
	ds_load_u8 v165, v105 offset:576
	ds_load_u8 v166, v105 offset:512
	ds_load_u8 v208, v105 offset:592
	ds_load_u8 v209, v105 offset:528
	ds_load_u8 v210, v105 offset:608
	ds_load_u8 v211, v105 offset:544
	ds_load_u8 v212, v105 offset:624
	ds_load_u8 v213, v105 offset:560
	ds_load_u8 v214, v105 offset:1216
	ds_load_u8 v215, v105 offset:1280
	ds_load_u8 v216, v105 offset:1232
	ds_load_u8 v217, v105 offset:1168
	ds_load_u8 v218, v105 offset:1248
	ds_load_u8 v219, v105 offset:1184
	ds_load_u8 v220, v105 offset:1264
	ds_load_u8 v221, v105 offset:1200
	ds_load_u8 v222, v105 offset:1152
	ds_load_u8 v223, v105 offset:1088
	ds_load_u8 v224, v105 offset:1104
	ds_load_u8 v225, v105 offset:1040
	ds_load_u8 v226, v105 offset:1120
	ds_load_u8 v227, v105 offset:1056
	ds_load_u8 v228, v105 offset:1136
	ds_load_u8 v229, v105 offset:1072
	ds_load_u8 v230, v105 offset:1472
	ds_load_u8 v231, v105 offset:1536
	ds_load_u8 v232, v105 offset:1488
	ds_load_u8 v233, v105 offset:1424
	ds_load_u8 v234, v105 offset:1504
	ds_load_u8 v235, v105 offset:1440
	ds_load_u8 v236, v105 offset:1520
	ds_load_u8 v237, v105 offset:1456
	ds_load_u8 v238, v105 offset:1408
	ds_load_u8 v239, v105 offset:1344
	ds_load_u8 v240, v105 offset:1360
	ds_load_u8 v241, v105 offset:1296
	ds_load_u8 v242, v105 offset:1376
	ds_load_u8 v243, v105 offset:1312
	ds_load_u8 v244, v105 offset:1392
	ds_load_u8 v245, v105 offset:1328
	ds_load_u8 v246, v105 offset:1984
	ds_load_u8 v247, v105 offset:2000
	ds_load_u8 v248, v105 offset:1936
	ds_load_u8 v249, v105 offset:2016
	ds_load_u8 v250, v105 offset:1952
	ds_load_u8 v251, v110
	ds_load_u8 v252, v111
	ds_load_u8 v253, v105 offset:1968
	ds_load_u8 v254, v105 offset:1920
	ds_load_u8 v255, v105 offset:1856
	ds_load_u8 v83, v105 offset:1872
	ds_load_u8 v67, v105 offset:1808
	ds_load_u8 v68, v105 offset:1888
	ds_load_u8 v69, v105 offset:1824
	ds_load_u8 v103, v105 offset:1904
	ds_load_u8 v65, v105 offset:1840
	ds_load_u8 v2, v105 offset:1728
	ds_load_u8 v3, v105 offset:1792
	ds_load_u8 v4, v105 offset:1744
	ds_load_u8 v5, v105 offset:1680
	ds_load_u8 v6, v105 offset:1760
	ds_load_u8 v7, v105 offset:1696
	ds_load_u8 v8, v105 offset:1776
	ds_load_u8 v9, v105 offset:1712
	ds_load_u8 v10, v105 offset:1664
	ds_load_u8 v11, v105 offset:1600
	ds_load_u8 v12, v105 offset:1616
	ds_load_u8 v13, v105 offset:1552
	ds_load_u8 v14, v105 offset:1632
	ds_load_u8 v15, v105 offset:1568
	ds_load_u8 v16, v105 offset:1648
	ds_load_u8 v17, v105 offset:1584
	.loc	1 809 34                        ; ragged.py:809:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v18, v120
	ds_store_b8 v18, v129 offset:512
	ds_store_b8 v18, v131 offset:1024
	ds_store_b8 v18, v133 offset:1536
	ds_store_b8 v18, v135 offset:2048
	ds_store_b8 v18, v137 offset:2560
	ds_store_b8 v18, v139 offset:3072
	ds_store_b8 v18, v141 offset:3584
	ds_store_b8 v18, v143 offset:4096
	ds_store_b8 v18, v145 offset:4608
	ds_store_b8 v18, v147 offset:5120
	ds_store_b8 v18, v149 offset:5632
	ds_store_b8 v18, v151 offset:6144
	ds_store_b8 v18, v153 offset:6656
	ds_store_b8 v18, v155 offset:7168
	ds_store_b8 v18, v157 offset:7680
	.loc	1 810 31                        ; ragged.py:810:31
	v_perm_b32 v18, v125, v124, 0xc0c0004
	v_perm_b32 v120, v123, v122, 0xc0c0004
	v_perm_b32 v122, v127, v126, 0xc0c0004
	.loc	1 809 34                        ; ragged.py:809:34
	ds_store_b8 v112, v128
	ds_store_b8 v112, v130 offset:512
	ds_store_b8 v112, v132 offset:1024
	ds_store_b8 v112, v134 offset:1536
	ds_store_b8 v112, v136 offset:2048
	ds_store_b8 v112, v138 offset:2560
	ds_store_b8 v112, v140 offset:3072
	ds_store_b8 v112, v142 offset:3584
	ds_store_b8 v112, v144 offset:4096
	ds_store_b8 v112, v146 offset:4608
	ds_store_b8 v112, v148 offset:5120
	ds_store_b8 v112, v150 offset:5632
	ds_store_b8 v112, v152 offset:6144
	ds_store_b8 v112, v154 offset:6656
	ds_store_b8 v112, v156 offset:7168
	ds_store_b8 v112, v119 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 810 31                        ; ragged.py:810:31
	v_lshl_or_b32 v127, v120, 16, v18
	v_perm_b32 v120, v166, v165, 0xc0c0004
	v_perm_b32 v118, v121, v118, 0xc0c0004
	v_perm_b32 v2, v10, v2, 0xc0c0004
	v_perm_b32 v11, v231, v11, 0xc0c0004
	v_perm_b32 v18, v162, v161, 0xc0c0004
	v_perm_b32 v121, v164, v163, 0xc0c0004
	v_lshl_or_b32 v126, v118, 16, v122
	v_perm_b32 v118, v159, v158, 0xc0c0004
	v_lshl_or_b32 v165, v2, 16, v11
	.loc	1 809 34                        ; ragged.py:809:34
	v_add_nc_u32_e32 v2, 0, v106
	ds_load_2addr_stride64_b64 v[145:148], v2 offset1:8
	ds_load_2addr_stride64_b64 v[149:152], v113 offset1:8
	ds_load_2addr_stride64_b64 v[153:156], v114 offset1:8
	.loc	1 810 31                        ; ragged.py:810:31
	v_mov_b32_e32 v136, s51
	v_lshl_or_b32 v162, v118, 16, v18
	v_lshl_or_b32 v161, v121, 16, v120
	v_perm_b32 v18, v215, v239, 0xc0c0004
	v_perm_b32 v118, v238, v230, 0xc0c0004
	v_perm_b32 v120, v160, v223, 0xc0c0004
	v_perm_b32 v121, v222, v214, 0xc0c0004
	v_dual_mov_b32 v135, s50 :: v_dual_mov_b32 v134, s49
	v_dual_mov_b32 v133, s48 :: v_dual_mov_b32 v132, s47
	v_dual_mov_b32 v131, s46 :: v_dual_mov_b32 v130, s45
	v_mov_b32_e32 v129, s44
	.loc	1 809 34                        ; ragged.py:809:34
	ds_load_2addr_stride64_b64 v[157:160], v115 offset1:8
	.loc	1 810 31                        ; ragged.py:810:31
	v_lshl_or_b32 v164, v118, 16, v18
	v_lshl_or_b32 v163, v121, 16, v120
	v_perm_b32 v3, v3, v255, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[145:146], v[126:127], v[129:136] neg_lo:[1,1,0]
	v_perm_b32 v18, v254, v246, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[137:144], v[147:148], v[126:127], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[149:150], v[161:162], v[118:125] neg_lo:[1,1,0]
	v_perm_b32 v126, v174, v173, 0xc0c0004
	v_lshl_or_b32 v166, v18, 16, v3
	v_wmma_i32_16x16x16_iu4 v[137:144], v[151:152], v[161:162], v[137:144] neg_lo:[1,1,0]
	v_perm_b32 v127, v188, v185, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[153:154], v[163:164], v[118:125] neg_lo:[1,1,0]
	v_perm_b32 v128, v168, v167, 0xc0c0004
	v_perm_b32 v67, v67, v83, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[137:144], v[155:156], v[163:164], v[137:144] neg_lo:[1,1,0]
	v_perm_b32 v83, v248, v247, 0xc0c0004
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[118:125], v[157:158], v[165:166], v[118:125] neg_lo:[1,1,0]
	v_perm_b32 v4, v5, v4, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[137:144], v[159:160], v[165:166], v[137:144] neg_lo:[1,1,0]
	v_lshl_or_b32 v164, v83, 16, v67
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v222, v125
	.loc	1 810 31                        ; ragged.py:810:31
	v_perm_b32 v125, v180, v179, 0xc0c0004
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v215, v124
	v_cvt_f32_i32_e32 v223, v137
	v_cvt_f32_i32_e32 v124, v138
	.loc	1 810 31                        ; ragged.py:810:31
	v_perm_b32 v137, v209, v208, 0xc0c0004
	v_lshl_or_b32 v126, v126, 16, v125
	v_lshl_or_b32 v125, v128, 16, v127
	v_perm_b32 v127, v197, v196, 0xc0c0004
	v_perm_b32 v128, v192, v191, 0xc0c0004
	v_perm_b32 v138, v203, v202, 0xc0c0004
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v18, v122
	v_cvt_f32_i32_e32 v214, v123
	v_cvt_f32_i32_e32 v123, v139
	v_cvt_f32_i32_e32 v122, v140
	.loc	1 810 31                        ; ragged.py:810:31
	v_lshl_or_b32 v128, v128, 16, v127
	v_lshl_or_b32 v127, v138, 16, v137
	v_perm_b32 v137, v241, v240, 0xc0c0004
	v_perm_b32 v138, v233, v232, 0xc0c0004
	v_perm_b32 v139, v225, v224, 0xc0c0004
	v_perm_b32 v140, v217, v216, 0xc0c0004
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v2, v118
	v_cvt_f32_i32_e32 v3, v119
	v_cvt_f32_i32_e32 v10, v120
	v_cvt_f32_i32_e32 v11, v121
	v_cvt_f32_i32_e32 v118, v141
	v_cvt_f32_i32_e32 v119, v142
	v_cvt_f32_i32_e32 v120, v143
	v_cvt_f32_i32_e32 v121, v144
	.loc	1 810 31                        ; ragged.py:810:31
	v_lshl_or_b32 v162, v138, 16, v137
	v_lshl_or_b32 v161, v140, 16, v139
	v_wmma_i32_16x16x16_iu4 v[137:144], v[145:146], v[125:126], v[129:136] neg_lo:[1,1,0]
	v_lshl_or_b32 v163, v4, 16, v12
	v_perm_b32 v69, v250, v249, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[149:150], v[127:128], v[137:144] neg_lo:[1,1,0]
	v_perm_b32 v6, v7, v6, 0xc0c0004
	v_perm_b32 v16, v17, v16, 0xc0c0004
	v_lshl_or_b32 v168, v69, 16, v68
	v_perm_b32 v8, v9, v8, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[137:144], v[153:154], v[161:162], v[137:144] neg_lo:[1,1,0]
	v_lshl_or_b32 v167, v6, 16, v14
	v_perm_b32 v9, v65, v103, 0xc0c0004
	v_perm_b32 v17, v253, v252, 0xc0c0004
	.loc	1 831 25                        ; ragged.py:831:25
	s_mul_i32 s37, s37, s70
	.loc	1 810 31                        ; ragged.py:810:31
	v_wmma_i32_16x16x16_iu4 v[137:144], v[157:158], v[163:164], v[137:144] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v4, v137
	v_cvt_f32_i32_e32 v5, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v12, v139
	v_cvt_f32_i32_e32 v13, v140
	v_cvt_f32_i32_e32 v67, v141
	v_cvt_f32_i32_e32 v83, v142
	v_cvt_f32_i32_e32 v173, v143
	v_cvt_f32_i32_e32 v174, v144
	.loc	1 810 31                        ; ragged.py:810:31
	v_wmma_i32_16x16x16_iu4 v[137:144], v[147:148], v[125:126], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[151:152], v[127:128], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[155:156], v[161:162], v[137:144] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[159:160], v[163:164], v[137:144] neg_lo:[1,1,0]
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v179, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v180, v138
	v_cvt_f32_i32_e32 v185, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v188, v140
	.loc	1 810 31                        ; ragged.py:810:31
	v_perm_b32 v137, v182, v181, 0xc0c0004
	v_perm_b32 v138, v176, v175, 0xc0c0004
	v_perm_b32 v139, v189, v186, 0xc0c0004
	v_perm_b32 v140, v170, v169, 0xc0c0004
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v125, v141
	v_cvt_f32_i32_e32 v126, v142
	.loc	1 810 31                        ; ragged.py:810:31
	v_lshl_or_b32 v162, v138, 16, v137
	v_perm_b32 v137, v199, v198, 0xc0c0004
	v_lshl_or_b32 v161, v140, 16, v139
	v_perm_b32 v138, v194, v193, 0xc0c0004
	v_perm_b32 v139, v211, v210, 0xc0c0004
	v_perm_b32 v140, v205, v204, 0xc0c0004
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v127, v143
	v_cvt_f32_i32_e32 v128, v144
	.loc	1 810 31                        ; ragged.py:810:31
	v_lshl_or_b32 v164, v138, 16, v137
	v_perm_b32 v137, v243, v242, 0xc0c0004
	v_lshl_or_b32 v163, v140, 16, v139
	v_perm_b32 v138, v235, v234, 0xc0c0004
	v_perm_b32 v139, v227, v226, 0xc0c0004
	v_perm_b32 v140, v219, v218, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v166, v138, 16, v137
	v_lshl_or_b32 v165, v140, 16, v139
	v_wmma_i32_16x16x16_iu4 v[137:144], v[145:146], v[161:162], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[149:150], v[163:164], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[153:154], v[165:166], v[137:144] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[157:158], v[167:168], v[137:144] neg_lo:[1,1,0]
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v6, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v7, v138
	v_cvt_f32_i32_e32 v14, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v15, v140
	v_cvt_f32_i32_e32 v68, v141
	v_cvt_f32_i32_e32 v69, v142
	v_cvt_f32_i32_e32 v169, v143
	v_cvt_f32_i32_e32 v170, v144
	.loc	1 810 31                        ; ragged.py:810:31
	v_wmma_i32_16x16x16_iu4 v[137:144], v[147:148], v[161:162], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[151:152], v[163:164], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[155:156], v[165:166], v[137:144] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[159:160], v[167:168], v[137:144] neg_lo:[1,1,0]
	v_lshl_or_b32 v167, v8, 16, v16
	v_lshl_or_b32 v168, v17, 16, v9
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v175, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v176, v138
	v_cvt_f32_i32_e32 v181, v139
	v_cvt_f32_i32_e32 v182, v140
	.loc	1 810 31                        ; ragged.py:810:31
	v_perm_b32 v137, v184, v183, 0xc0c0004
	v_perm_b32 v138, v178, v177, 0xc0c0004
	v_perm_b32 v139, v190, v187, 0xc0c0004
	v_perm_b32 v140, v172, v171, 0xc0c0004
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v186, v141
	v_cvt_f32_i32_e32 v189, v142
	.loc	1 810 31                        ; ragged.py:810:31
	v_lshl_or_b32 v162, v138, 16, v137
	v_perm_b32 v137, v213, v212, 0xc0c0004
	v_lshl_or_b32 v161, v140, 16, v139
	v_perm_b32 v138, v207, v206, 0xc0c0004
	v_perm_b32 v139, v201, v200, 0xc0c0004
	v_perm_b32 v140, v195, v251, 0xc0c0004
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v191, v143
	v_cvt_f32_i32_e32 v192, v144
	.loc	1 810 31                        ; ragged.py:810:31
	v_lshl_or_b32 v163, v138, 16, v137
	v_perm_b32 v137, v245, v244, 0xc0c0004
	v_lshl_or_b32 v164, v140, 16, v139
	v_perm_b32 v138, v237, v236, 0xc0c0004
	v_perm_b32 v139, v229, v228, 0xc0c0004
	v_perm_b32 v140, v221, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v166, v138, 16, v137
	v_lshl_or_b32 v165, v140, 16, v139
	v_wmma_i32_16x16x16_iu4 v[137:144], v[145:146], v[161:162], v[129:136] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[149:150], v[163:164], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[137:144], v[153:154], v[165:166], v[137:144] neg_lo:[1,1,0]
	v_dual_mov_b32 v153, v21 :: v_dual_mov_b32 v154, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[137:144], v[157:158], v[167:168], v[137:144] neg_lo:[1,1,0]
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v8, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v9, v138
	v_cvt_f32_i32_e32 v16, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v17, v140
	v_cvt_f32_i32_e32 v65, v141
	v_cvt_f32_i32_e32 v103, v142
	v_cvt_f32_i32_e32 v145, v143
	v_cvt_f32_i32_e32 v146, v144
	.loc	1 810 31                        ; ragged.py:810:31
	v_wmma_i32_16x16x16_iu4 v[137:144], v[147:148], v[161:162], v[129:136] neg_lo:[1,1,0]
	.loc	1 824 25                        ; ragged.py:824:25
	v_mul_lo_u32 v131, v153, s68
	v_mul_lo_u32 v132, v154, s68
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 810 31                        ; ragged.py:810:31
	v_wmma_i32_16x16x16_iu4 v[137:144], v[151:152], v[163:164], v[137:144] neg_lo:[1,1,0]
	v_mov_b32_e32 v151, v19
	.loc	1 830 40                        ; ragged.py:830:40
	scratch_load_b32 v19, off, off          ; 4-byte Folded Reload
	v_mov_b32_e32 v152, v20
	.loc	1 823 40                        ; ragged.py:823:40
	v_add_lshl_u32 v131, s72, v131, 1
	.loc	1 824 25                        ; ragged.py:824:25
	v_mul_lo_u32 v129, v151, s68
	.loc	1 823 40                        ; ragged.py:823:40
	v_add_lshl_u32 v132, s72, v132, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 824 25                        ; ragged.py:824:25
	v_mul_lo_u32 v130, v152, s68
	.loc	1 810 31                        ; ragged.py:810:31
	v_wmma_i32_16x16x16_iu4 v[137:144], v[155:156], v[165:166], v[137:144] neg_lo:[1,1,0]
	.loc	1 823 40                        ; ragged.py:823:40
	v_cndmask_b32_e64 v131, 0x80000000, v131, s2
	v_cndmask_b32_e32 v132, 0x80000000, v132, vcc_lo
	v_add_lshl_u32 v129, s72, v129, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 810 31                        ; ragged.py:810:31
	v_wmma_i32_16x16x16_iu4 v[137:144], v[159:160], v[167:168], v[137:144] neg_lo:[1,1,0]
	.loc	1 823 40                        ; ragged.py:823:40
	v_add_lshl_u32 v130, s72, v130, 1
	.loc	1 837 17                        ; ragged.py:837:17
	s_add_i32 s72, s72, 1
	.loc	1 823 40                        ; ragged.py:823:40
	v_cndmask_b32_e64 v129, 0x80000000, v129, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 823 40                        ; ragged.py:823:40
	v_cndmask_b32_e64 v130, 0x80000000, v130, s3
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 793 19                        ; ragged.py:793:19
	s_cmp_lg_u32 s72, s68
	.loc	1 830 40                        ; ragged.py:830:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v133, v19, s37, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v133, 0x80000000, v133, s36
	buffer_load_u16 v133, v133, s[64:67], 0 offen
	.loc	1 823 40                        ; ragged.py:823:40
	s_clause 0x3
	buffer_load_u16 v129, v129, s[52:55], 0 offen
	buffer_load_u16 v147, v130, s[52:55], 0 offen
	buffer_load_u16 v148, v131, s[52:55], 0 offen
	buffer_load_u16 v149, v132, s[52:55], 0 offen
	.loc	1 835 21                        ; ragged.py:835:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 830 40                        ; ragged.py:830:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v130, 16, v133
	.loc	1 823 40                        ; ragged.py:823:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v150, 16, v129
	.loc	1 835 21                        ; ragged.py:835:21
	ds_store_b32 v107, v130
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[129:132], v116
	ds_load_b128 v[133:136], v116 offset:16
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v2, v2, v150
	.loc	1 836 17                        ; ragged.py:836:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v2, v129
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v2, v3, v150
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v102, v2, v130
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v2, v10, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_dual_fmac_f32 v101, v2, v131 :: v_dual_mul_f32 v2, v11, v150
	v_fmac_f32_e32 v100, v2, v132
	.loc	1 823 40                        ; ragged.py:823:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v3, v4, v2
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v87, v3, v129
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v3, v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v86, v3, v130
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v3, v12, v2
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v85, v3, v131
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v3, v13, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v84, v3, v132
	.loc	1 823 40                        ; ragged.py:823:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v3, 16, v148
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v4, v6, v3
	v_mul_f32_e32 v13, v189, v3
	v_mul_f32_e32 v12, v186, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v70, v4, v129
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v4, v7, v3
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v66, v4, v130
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v4, v14, v3
	v_mul_f32_e32 v14, v191, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v64, v4, v131
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v4, v15, v3
	.loc	1 836 17                        ; ragged.py:836:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v63, v4, v132 :: v_dual_lshlrev_b32 v4, 16, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v8, v4
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v49, v5, v129
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v9, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 836 17                        ; ragged.py:836:17
	v_dual_fmac_f32 v48, v5, v130 :: v_dual_mul_f32 v5, v16, v4
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v6, v119, v150
	v_mul_f32_e32 v8, v121, v150
	v_mul_f32_e32 v7, v120, v150
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v47, v5, v131
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v17, v4
	v_mul_f32_e32 v11, v127, v2
	v_mul_f32_e32 v9, v125, v2
	v_mul_f32_e32 v10, v126, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_dual_fmac_f32 v46, v5, v132 :: v_dual_mul_f32 v5, v18, v150
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v99, v5, v133
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v214, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v98, v5, v134
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v215, v150
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v97, v5, v135
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v222, v150
	v_mul_f32_e32 v16, v142, v4
	v_mul_f32_e32 v15, v141, v4
	v_mul_f32_e32 v17, v143, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_dual_fmac_f32 v96, v5, v136 :: v_dual_mul_f32 v5, v67, v2
	v_dual_fmac_f32 v82, v5, v133 :: v_dual_mul_f32 v5, v83, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v5, v134
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v173, v2
	.loc	1 836 17                        ; ragged.py:836:17
	v_dual_fmac_f32 v80, v5, v135 :: v_dual_mul_f32 v5, v174, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v5, v136
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v68, v3
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v61, v5, v133
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v69, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v60, v5, v134
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v169, v3
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v59, v5, v135
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v170, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v58, v5, v136
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v65, v4
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v45, v5, v133
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v103, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v44, v5, v134
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v145, v4
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v43, v5, v135
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v146, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v42, v5, v136
	.loc	1 835 21                        ; ragged.py:835:21
	ds_load_b128 v[129:132], v116 offset:512
	ds_load_b128 v[133:136], v116 offset:528
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v223, v150
	.loc	1 836 17                        ; ragged.py:836:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v95, v5, v129 :: v_dual_fmac_f32 v36, v16, v134
	.loc	1 828 21                        ; ragged.py:828:21
	v_dual_mul_f32 v5, v124, v150 :: v_dual_fmac_f32 v74, v9, v133
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v52, v13, v134
	v_dual_fmac_f32 v90, v6, v134 :: v_dual_fmac_f32 v89, v7, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v5, v130
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v123, v150
	.loc	1 836 17                        ; ragged.py:836:17
	v_dual_fmac_f32 v73, v10, v134 :: v_dual_fmac_f32 v72, v11, v135
	v_fmac_f32_e32 v53, v12, v133
	v_fmac_f32_e32 v51, v14, v135
	v_fmac_f32_e32 v93, v5, v131
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v122, v150
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v37, v15, v133
	v_fmac_f32_e32 v35, v17, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v92, v5, v132 :: v_dual_mul_f32 v5, v179, v2
	v_dual_fmac_f32 v78, v5, v129 :: v_dual_mul_f32 v5, v180, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v5, v130
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v185, v2
	.loc	1 836 17                        ; ragged.py:836:17
	v_dual_fmac_f32 v76, v5, v131 :: v_dual_mul_f32 v5, v188, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 828 21                        ; ragged.py:828:21
	v_dual_mul_f32 v2, v128, v2 :: v_dual_fmac_f32 v75, v5, v132
	v_mul_f32_e32 v5, v175, v3
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v71, v2, v136
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v5, v129
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v176, v3
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v56, v5, v130
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v181, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v55, v5, v131
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v182, v3
	v_mul_f32_e32 v3, v192, v3
	.loc	1 836 17                        ; ragged.py:836:17
	v_fmac_f32_e32 v88, v8, v136
	v_fmac_f32_e32 v54, v5, v132
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v137, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 836 17                        ; ragged.py:836:17
	v_dual_fmac_f32 v50, v3, v136 :: v_dual_fmac_f32 v41, v5, v129
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v138, v4
	.loc	1 836 17                        ; ragged.py:836:17
	v_dual_fmac_f32 v40, v5, v130 :: v_dual_mul_f32 v5, v139, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v5, v131
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v5, v140, v4
	v_mul_f32_e32 v4, v144, v4
	.loc	1 836 17                        ; ragged.py:836:17
	v_dual_fmac_f32 v38, v5, v132 :: v_dual_mul_f32 v5, v118, v150
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v34, v4, v136 :: v_dual_fmac_f32 v91, v5, v133
	.loc	1 793 19                        ; ragged.py:793:19
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_and_b32_e32 v65, 0xf0, v0
.LBB0_4:                                ; %._crit_edge
	.loc	1 839 9 is_stmt 1               ; ragged.py:839:9
	v_bfe_u32 v21, v62, 16, 1
	v_bfe_u32 v22, v102, 16, 1
	v_cmp_o_f32_e64 s19, v62, v62
	v_bfe_u32 v24, v101, 16, 1
	v_cmp_o_f32_e64 s20, v102, v102
	v_add3_u32 v23, v62, v21, 0x7fff
	v_add3_u32 v22, v102, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v101, v101
	v_add3_u32 v24, v101, v24, 0x7fff
	v_bfe_u32 v25, v99, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v100, 16, 1
	v_bfe_u32 v26, v98, 16, 1
	v_cmp_o_f32_e64 s19, v100, v100
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v100, v23, 0x7fff
	v_add3_u32 v25, v99, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v99, v99
	v_add3_u32 v26, v98, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v98, v98
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v97, 16, 1
	v_bfe_u32 v27, v96, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v95, 16, 1
	v_add3_u32 v23, v97, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v97, v97
	v_add3_u32 v27, v96, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v96, v96
	v_bfe_u32 v28, v94, 16, 1
	v_add3_u32 v26, v95, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v95, v95
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v93, 16, 1
	v_bfe_u32 v29, v92, 16, 1
	v_add3_u32 v28, v94, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v94, v94
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v93, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v93, v93
	v_add3_u32 v29, v92, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v92, v92
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v91, 16, 1
	v_bfe_u32 v30, v90, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v89, 16, 1
	v_add3_u32 v28, v91, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v91, v91
	v_add3_u32 v30, v90, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v90, v90
	v_bfe_u32 v31, v88, 16, 1
	v_add3_u32 v29, v89, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v89, v89
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v87, 16, 1
	v_bfe_u32 v32, v86, 16, 1
	v_add3_u32 v31, v88, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v88, v88
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v87, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v87, v87
	v_add3_u32 v32, v86, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v86, v86
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v85, 16, 1
	v_bfe_u32 v33, v84, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v82, 16, 1
	v_add3_u32 v31, v85, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v85, v85
	v_add3_u32 v33, v84, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v84, v84
	v_bfe_u32 v62, v81, 16, 1
	.loc	1 742 36                        ; ragged.py:742:36
	v_lshrrev_b32_e32 v1, 1, v65
	.loc	1 839 9                         ; ragged.py:839:9
	v_add3_u32 v32, v82, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v82, v82
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v80, 16, 1
	v_bfe_u32 v65, v79, 16, 1
	v_add3_u32 v62, v81, v62, 0x7fff
	v_cmp_o_f32_e64 s19, v81, v81
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v80, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v65, v79, v65, 0x7fff
	v_cmp_o_f32_e64 s21, v79, v79
	v_cndmask_b16 v32.h, 0x7fff, v62.h, s19
	v_bfe_u32 v62, v78, 16, 1
	v_bfe_u32 v67, v77, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v65.h, s21
	v_bfe_u32 v65, v76, 16, 1
	v_add3_u32 v62, v78, v62, 0x7fff
	v_cmp_o_f32_e64 s19, v78, v78
	v_add3_u32 v67, v77, v67, 0x7fff
	v_cmp_o_f32_e64 s20, v77, v77
	v_bfe_u32 v68, v75, 16, 1
	v_add3_u32 v65, v76, v65, 0x7fff
	v_cmp_o_f32_e64 s21, v76, v76
	v_cndmask_b16 v62.l, 0x7fff, v62.h, s19
	v_cndmask_b16 v62.h, 0x7fff, v67.h, s20
	v_bfe_u32 v67, v74, 16, 1
	v_bfe_u32 v69, v73, 16, 1
	v_add3_u32 v68, v75, v68, 0x7fff
	v_cmp_o_f32_e64 s19, v75, v75
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s21
	v_add3_u32 v67, v74, v67, 0x7fff
	v_cmp_o_f32_e64 s20, v74, v74
	v_add3_u32 v69, v73, v69, 0x7fff
	v_cmp_o_f32_e64 s21, v73, v73
	v_cndmask_b16 v65.h, 0x7fff, v68.h, s19
	v_bfe_u32 v68, v72, 16, 1
	v_bfe_u32 v73, v71, 16, 1
	v_cndmask_b16 v67.l, 0x7fff, v67.h, s20
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s21
	v_bfe_u32 v69, v70, 16, 1
	v_add3_u32 v68, v72, v68, 0x7fff
	v_cmp_o_f32_e64 s19, v72, v72
	v_add3_u32 v72, v71, v73, 0x7fff
	v_cmp_o_f32_e64 s20, v71, v71
	v_add3_u32 v69, v70, v69, 0x7fff
	v_cmp_o_f32_e64 s21, v70, v70
	v_bfe_u32 v70, v66, 16, 1
	v_bfe_u32 v71, v64, 16, 1
	v_cndmask_b16 v68.l, 0x7fff, v68.h, s19
	v_cndmask_b16 v68.h, 0x7fff, v72.h, s20
	v_bfe_u32 v72, v63, 16, 1
	v_add3_u32 v70, v66, v70, 0x7fff
	v_cmp_o_f32_e64 s19, v66, v66
	v_add3_u32 v66, v64, v71, 0x7fff
	v_cmp_o_f32_e64 s20, v64, v64
	v_add3_u32 v64, v63, v72, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v69.h, s21
	v_cmp_o_f32_e64 s21, v63, v63
	v_bfe_u32 v63, v61, 16, 1
	v_cndmask_b16 v64.l, 0x7fff, v66.h, s20
	v_bfe_u32 v66, v60, 16, 1
	v_cndmask_b16 v69.h, 0x7fff, v70.h, s19
	v_bfe_u32 v70, v59, 16, 1
	v_add3_u32 v63, v61, v63, 0x7fff
	v_cmp_o_f32_e64 s19, v61, v61
	v_add3_u32 v61, v60, v66, 0x7fff
	v_cmp_o_f32_e64 s20, v60, v60
	v_cndmask_b16 v64.h, 0x7fff, v64.h, s21
	v_add3_u32 v60, v59, v70, 0x7fff
	v_cmp_o_f32_e64 s21, v59, v59
	v_cndmask_b16 v59.l, 0x7fff, v63.h, s19
	v_bfe_u32 v63, v58, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v61.h, s20
	v_bfe_u32 v61, v57, 16, 1
	v_bfe_u32 v66, v56, 16, 1
	v_cmp_o_f32_e64 s19, v58, v58
	v_add3_u32 v63, v58, v63, 0x7fff
	v_cmp_o_f32_e64 s20, v57, v57
	v_add3_u32 v58, v57, v61, 0x7fff
	v_add3_u32 v57, v56, v66, 0x7fff
	v_cndmask_b16 v60.l, 0x7fff, v60.h, s21
	v_cmp_o_f32_e64 s21, v56, v56
	v_bfe_u32 v56, v55, 16, 1
	v_cndmask_b16 v57.l, 0x7fff, v58.h, s20
	v_bfe_u32 v58, v54, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v63.h, s19
	v_bfe_u32 v61, v53, 16, 1
	v_add3_u32 v56, v55, v56, 0x7fff
	v_cmp_o_f32_e64 s19, v55, v55
	v_add3_u32 v55, v54, v58, 0x7fff
	v_cmp_o_f32_e64 s20, v54, v54
	v_cndmask_b16 v57.h, 0x7fff, v57.h, s21
	v_add3_u32 v54, v53, v61, 0x7fff
	v_cmp_o_f32_e64 s21, v53, v53
	v_cndmask_b16 v53.l, 0x7fff, v56.h, s19
	v_bfe_u32 v56, v52, 16, 1
	v_cndmask_b16 v53.h, 0x7fff, v55.h, s20
	v_bfe_u32 v55, v51, 16, 1
	v_bfe_u32 v58, v50, 16, 1
	v_cmp_o_f32_e64 s19, v52, v52
	v_add3_u32 v56, v52, v56, 0x7fff
	v_cmp_o_f32_e64 s20, v51, v51
	v_add3_u32 v52, v51, v55, 0x7fff
	v_add3_u32 v51, v50, v58, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v54.h, s21
	v_cmp_o_f32_e64 s21, v50, v50
	v_bfe_u32 v50, v49, 16, 1
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s20
	v_bfe_u32 v52, v48, 16, 1
	v_cndmask_b16 v54.h, 0x7fff, v56.h, s19
	v_bfe_u32 v55, v47, 16, 1
	v_add3_u32 v50, v49, v50, 0x7fff
	v_cmp_o_f32_e64 s19, v49, v49
	v_add3_u32 v49, v48, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v48, v48
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s21
	v_add3_u32 v48, v47, v55, 0x7fff
	v_cmp_o_f32_e64 s21, v47, v47
	v_cndmask_b16 v47.l, 0x7fff, v50.h, s19
	v_bfe_u32 v50, v46, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s20
	v_bfe_u32 v49, v45, 16, 1
	v_bfe_u32 v52, v44, 16, 1
	v_cmp_o_f32_e64 s19, v46, v46
	v_add3_u32 v50, v46, v50, 0x7fff
	v_cmp_o_f32_e64 s20, v45, v45
	v_add3_u32 v46, v45, v49, 0x7fff
	v_add3_u32 v45, v44, v52, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s21
	v_cmp_o_f32_e64 s21, v44, v44
	v_bfe_u32 v44, v43, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v46.h, s20
	v_bfe_u32 v46, v42, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s19
	v_bfe_u32 v49, v41, 16, 1
	v_add3_u32 v44, v43, v44, 0x7fff
	v_cmp_o_f32_e64 s19, v43, v43
	v_add3_u32 v43, v42, v46, 0x7fff
	v_cmp_o_f32_e64 s20, v42, v42
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s21
	v_add3_u32 v42, v41, v49, 0x7fff
	v_cmp_o_f32_e64 s21, v41, v41
	v_cndmask_b16 v41.l, 0x7fff, v44.h, s19
	v_bfe_u32 v44, v40, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s20
	v_bfe_u32 v43, v39, 16, 1
	v_bfe_u32 v46, v38, 16, 1
	v_cmp_o_f32_e64 s19, v40, v40
	v_add3_u32 v44, v40, v44, 0x7fff
	v_cmp_o_f32_e64 s20, v39, v39
	v_add3_u32 v40, v39, v43, 0x7fff
	v_add3_u32 v39, v38, v46, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s21
	v_cmp_o_f32_e64 s21, v38, v38
	v_bfe_u32 v38, v37, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v40.h, s20
	v_bfe_u32 v40, v36, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s19
	v_bfe_u32 v43, v35, 16, 1
	v_add3_u32 v38, v37, v38, 0x7fff
	v_cmp_o_f32_e64 s19, v37, v37
	v_add3_u32 v37, v36, v40, 0x7fff
	v_bfe_u32 v40, v34, 16, 1
	v_dual_mov_b32 v55, 0x7632 :: v_dual_and_b32 v0, 16, v0
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s21
	v_cmp_o_f32_e64 s20, v36, v36
	v_add3_u32 v36, v35, v43, 0x7fff
	v_cmp_o_f32_e64 s21, v35, v35
	v_add3_u32 v35, v34, v40, 0x7fff
	v_cmp_o_f32_e64 s22, v34, v34
	v_cndmask_b16 v34.l, 0x7fff, v38.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v34.h, 0x7fff, v37.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v36.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v35.h, s22
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v11, s39, v1
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v49, v54, v57, s19
	v_cndmask_b32_e64 v50, v57, v54, s19
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v52, v51, v53, s19
	v_cndmask_b32_e64 v51, v53, v51, s19
	v_cndmask_b32_e64 v53, v45, v47, s19
	v_cndmask_b32_e64 v45, v47, v45, s19
	v_cndmask_b32_e64 v47, v41, v48, s19
	v_cndmask_b32_e64 v41, v48, v41, s19
	v_cndmask_b32_e64 v48, v34, v42, s19
	v_cndmask_b32_e64 v34, v42, v34, s19
	v_cndmask_b32_e64 v42, v0, v39, s19
	v_cndmask_b32_e64 v0, v39, v0, s19
	v_cndmask_b32_e64 v39, 0x1054, v54, s19
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	.loc	1 840 13                        ; ragged.py:840:13
	v_mul_lo_u32 v20, v151, s70
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v35, v25, v22, s19
	v_cndmask_b32_e64 v22, v22, v25, s19
	v_lshl_or_b32 v39, v39, 8, v39
	v_lshl_or_b32 v54, v54, 8, v54
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v16, 1, v11
	s_mov_b32 s20, 0x76543210
	v_or_b32_e32 v15, 2, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_and_b32_e32 v39, 0x540054, v39
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s18, s70, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v25, v23, v24, s19
	v_cndmask_b32_e64 v23, v24, v23, s19
	v_lshl_or_b32 v39, v39, 4, v39
	v_cndmask_b32_e64 v24, v28, v26, s19
	v_cndmask_b32_e64 v26, v26, v28, s19
	v_cndmask_b32_e64 v28, v29, v27, s19
	v_cndmask_b32_e64 v27, v27, v29, s19
	v_cndmask_b32_e64 v29, v32, v30, s19
	v_cndmask_b32_e64 v30, v30, v32, s19
	v_cndmask_b32_e64 v32, v33, v31, s19
	v_cndmask_b32_e64 v31, v31, v33, s19
	v_cndmask_b32_e64 v36, v62, v67, s19
	v_cndmask_b32_e64 v38, v65, v68, s19
	v_cndmask_b32_e64 v43, v69, v59, s19
	v_cndmask_b32_e64 v46, v64, v60, s19
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v39, 0x5040504, v39
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s17, s70, v16
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v84, v11, v20, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s16, s70, v15
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v85, v16, v20, 1
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b32_e64 v33, v67, v62, s19
	v_cndmask_b32_e64 v37, v68, v65, s19
	v_cndmask_b32_e64 v40, v59, v69, s19
	v_cndmask_b32_e64 v44, v60, v64, s19
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v51, v51, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v45, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v41, v41, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v35, v39
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s18, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s17, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s16, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s15, s70, v14
	.loc	1 839 9                         ; ragged.py:839:9
	v_perm_b32 v22, v22, v35, v54
	v_perm_b32 v35, v23, v25, v39
	v_perm_b32 v23, v23, v25, v54
	v_perm_b32 v25, v26, v24, v39
	v_perm_b32 v24, v26, v24, v54
	v_perm_b32 v26, v27, v28, v39
	v_perm_b32 v27, v27, v28, v54
	v_perm_b32 v28, v30, v29, v39
	v_perm_b32 v29, v30, v29, v54
	v_perm_b32 v30, v31, v32, v39
	v_perm_b32 v31, v31, v32, v54
	v_perm_b32 v32, v36, v33, v39
	v_perm_b32 v33, v36, v33, v54
	v_perm_b32 v36, v38, v37, v39
	v_perm_b32 v37, v38, v37, v54
	v_perm_b32 v38, v43, v40, v39
	v_perm_b32 v40, v43, v40, v54
	v_perm_b32 v43, v46, v44, v39
	v_perm_b32 v44, v46, v44, v54
	v_perm_b32 v46, v50, v49, v39
	v_perm_b32 v49, v50, v49, v54
	v_perm_b32 v50, v51, v52, v39
	v_perm_b32 v51, v51, v52, v54
	v_perm_b32 v52, v45, v53, v39
	v_perm_b32 v45, v45, v53, v54
	v_perm_b32 v53, v41, v47, v39
	v_perm_b32 v41, v41, v47, v54
	v_perm_b32 v47, v34, v48, v39
	v_perm_b32 v39, v0, v42, v39
	v_perm_b32 v0, v0, v42, v54
	v_mov_b16_e32 v42.l, v55.h
	v_mov_b16_e32 v42.h, v21.h
	s_and_b32 s21, s43, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s42
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 839 9                         ; ragged.py:839:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s14, s70, v13
	v_cmp_gt_i32_e64 s13, s70, v12
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v42, v85, s[20:23], 0 offen
	buffer_store_b16 v22, v86, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s15, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s12, s70, v10
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v42, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s14, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s13, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s11, s70, v9
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s12, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_perm_b32 v34, v34, v48, v54
	v_mov_b16_e32 v54.l, v35.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s10, s70, v8
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v48.h, v21.h
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
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	s_clause 0x1
	buffer_store_b16 v21, v42, s[20:23], 0 offen
	buffer_store_b16 v35, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v9, v20, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s9, s70, v7
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s11, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s8, s70, v6
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v48.l, v23.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v23, v84, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s10, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v35, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s9, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s7, s70, v5
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s8, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v57.l, v25.h
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s6, s70, v4
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v35, 0x80000000, v35, s19
	s_clause 0x1
	buffer_store_b16 v48, v21, s[20:23], 0 offen
	buffer_store_b16 v25, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v5, v20, 1
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s5, s70, v3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 840 13                        ; ragged.py:840:13
	v_mul_lo_u32 v19, v152, s70
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s7, s4
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s1, s70, v2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v35, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s6, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s0, s70, v1
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s5, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s1, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v26, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s0, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s18, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v58.l, v27.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v15, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s17, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v61.l, v28.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s16, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s15, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s14, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v60.l, v29.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s13, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v63.l, v30.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s12, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s11, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v31, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s10, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v62.l, v31.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s9, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v65.l, v32.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s8, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 840 13                        ; ragged.py:840:13
	v_mul_lo_u32 v18, v153, s70
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s7, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v33, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s6, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v64.l, v33.h
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s5, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s1, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v67.l, v36.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v36, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s0, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v21, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s18, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v66.l, v37.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v37, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s17, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v69.l, v38.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s16, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v38, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v14, v18, 1
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s15, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v40, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s14, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v68.l, v40.h
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s13, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v71.l, v43.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s12, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v43, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v9, v18, 1
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s11, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v44, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s10, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v70.l, v44.h
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s9, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v73.l, v46.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s8, s2
	.loc	1 840 13                        ; ragged.py:840:13
	v_mul_lo_u32 v17, v154, s70
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v46, v20, s[20:23], 0 offen
	v_add_lshl_u32 v19, v5, v18, 1
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s7, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v49, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s6, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s5, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v72.l, v49.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v74.l, v51.h
	v_mov_b16_e32 v75.l, v50.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v50, v20, s[20:23], 0 offen
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v51, v22, s[20:23], 0 offen
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v52, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v76.l, v45.h
	v_mov_b16_e32 v77.l, v52.h
	v_mov_b16_e32 v78.l, v41.h
	v_mov_b16_e32 v79.l, v53.h
	v_mov_b16_e32 v80.l, v34.h
	v_mov_b16_e32 v81.l, v47.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v83.l, v39.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v45, v15, s[20:23], 0 offen
	buffer_store_b16 v76, v11, s[20:23], 0 offen
	buffer_store_b16 v53, v13, s[20:23], 0 offen
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v41, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v9, s[20:23], 0 offen
	buffer_store_b16 v47, v8, s[20:23], 0 offen
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v34, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v5, s[20:23], 0 offen
	buffer_store_b16 v39, v4, s[20:23], 0 offen
	buffer_store_b16 v83, v3, s[20:23], 0 offen
	buffer_store_b16 v0, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 702 5                         ; ragged.py:702:5
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 176
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
		.amdhsa_next_free_sgpr 73
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 73
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 176
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14228
; TotalNumSgprs: 75
; NumVgprs: 256
; ScratchSize: 176
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 75
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
	.short	728                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 176
    .sgpr_count:     75
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 43
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
