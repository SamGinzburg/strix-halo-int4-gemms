	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 702 0                         ; ragged.py:702:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[34:35], s[0:1], 0x54
.Ltmp0:
	.loc	1 730 25 prologue_end           ; ragged.py:730:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 741 18                        ; ragged.py:741:18
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:728:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:728:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
.Ltmp2:
	.loc	1 730 25 is_stmt 1              ; ragged.py:730:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v148, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v158, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v162, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v164, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v166, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v168, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v170, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v172, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v167, 0 :: v_dual_and_b32 v18, 0xf0, v0
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 732 33                        ; ragged.py:732:33
	s_sub_i32 s5, s35, s4
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
	s_lshl_b64 s[28:29], s[2:3], 3
	s_add_u32 s2, s20, s28
	s_addc_u32 s3, s21, s29
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 739 24                        ; ragged.py:739:24
	s_add_u32 s2, s22, s28
	s_addc_u32 s3, s23, s29
	.loc	1 740 22                        ; ragged.py:740:22
	s_add_u32 s4, s24, s28
	s_addc_u32 s5, s25, s29
	.loc	1 739 24                        ; ragged.py:739:24
	s_load_b64 s[16:17], s[2:3], 0x0
	.loc	1 740 22                        ; ragged.py:740:22
	s_load_b64 s[22:23], s[4:5], 0x0
	v_mov_b32_e32 v171, 0
	.loc	1 742 18                        ; ragged.py:742:18
	s_lshl_b32 s24, s6, 8
	s_mov_b32 s25, 0
	.loc	1 741 18                        ; ragged.py:741:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s20, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s21, 0, s2
	.loc	1 824 25                        ; ragged.py:824:25
	v_add_nc_u32_e32 v10, s20, v1
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
	v_cmp_le_i64_e32 vcc_lo, s[16:17], v[2:3]
	.loc	1 743 48 is_stmt 0              ; ragged.py:743:48
	v_cmp_gt_i64_e64 s2, s[22:23], v[2:3]
	.loc	1 824 25 is_stmt 1              ; ragged.py:824:25
	v_add_nc_u32_e32 v2, 16, v10
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e64 s3, s[16:17], v[4:5]
	v_cmp_le_i64_e64 s6, s[16:17], v[6:7]
	v_cmp_le_i64_e64 s7, s[16:17], v[8:9]
	.loc	1 743 48 is_stmt 0              ; ragged.py:743:48
	v_cmp_gt_i64_e64 s4, s[22:23], v[4:5]
	.loc	1 743 21                        ; ragged.py:743:21
	scratch_store_b32 off, v2, off offset:52 ; 4-byte Folded Spill
	.loc	1 824 25 is_stmt 1              ; ragged.py:824:25
	v_add_nc_u32_e32 v2, 32, v10
	.loc	1 743 48                        ; ragged.py:743:48
	v_cmp_gt_i64_e64 s8, s[22:23], v[6:7]
	v_cmp_gt_i64_e64 s9, s[22:23], v[8:9]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:56
	scratch_store_b32 off, v10, off offset:48
	.loc	1 824 25                        ; ragged.py:824:25
	v_add_nc_u32_e32 v2, 48, v10
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 793 19                        ; ragged.py:793:19
	s_cmp_lt_i32 s34, 1
	.loc	1 743 20                        ; ragged.py:743:20
	scratch_store_b32 off, v2, off offset:60 ; 4-byte Folded Spill
	.loc	1 793 19                        ; ragged.py:793:19
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s35, s[0:1], 0x50
	s_load_b32 s36, s[0:1], 0x48
	s_load_b256 s[8:15], s[0:1], 0x0
	v_dual_mov_b32 v172, 0 :: v_dual_and_b32 v3, 63, v0
	.loc	1 741 18 is_stmt 1              ; ragged.py:741:18
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v174, 0, v1
	v_dual_mov_b32 v170, 0 :: v_dual_lshlrev_b32 v15, 5, v0
	v_lshrrev_b32_e32 v10, 1, v0
	v_dual_mov_b32 v171, 0 :: v_dual_lshlrev_b32 v16, 2, v18
	v_dual_mov_b32 v168, 0 :: v_dual_lshlrev_b32 v17, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v167, 0 :: v_dual_and_b32 v10, 0x70, v10
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v19, s24, v0
	v_or_b32_e32 v4, 0x300, v0
	v_or_b32_e32 v5, 0x700, v0
	.loc	1 737 20                        ; ragged.py:737:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s28
	s_addc_u32 s1, s7, s29
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v175, v174, v10
	.loc	1 831 25                        ; ragged.py:831:25
	s_load_b32 s6, s[0:1], 0x0
	.loc	1 741 18                        ; ragged.py:741:18
	v_add_co_u32 v1, s0, s20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s21, 0, s0
	v_dual_mov_b32 v163, 0 :: v_dual_lshlrev_b32 v10, 1, v18
	v_mov_b32_e32 v166, 0
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e32 vcc_lo, s[16:17], v[1:2]
	.loc	1 743 48 is_stmt 0              ; ragged.py:743:48
	v_cmp_gt_i64_e64 s1, s[22:23], v[1:2]
	v_and_b32_e32 v1, 32, v15
	v_dual_mov_b32 v165, 0 :: v_dual_and_b32 v2, 28, v17
	v_or_b32_e32 v6, 0x3f0, v0
	v_or_b32_e32 v7, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, 0, v16, v1
	v_or_b32_e32 v8, 0xb00, v0
	v_or_b32_e32 v9, 0xf00, v0
	v_or_b32_e32 v11, 0x1300, v0
	v_or_b32_e32 v12, 0x1700, v0
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v1, v1, v2
	v_or_b32_e32 v13, 0x1b00, v0
	v_or_b32_e32 v14, 0x1f00, v0
	.loc	1 807 39 is_stmt 1              ; ragged.py:807:39
	s_mul_i32 s7, s35, s33
	scratch_store_b32 off, v1, off offset:72 ; 4-byte Folded Spill
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v1, 0, v10
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s7, s6, v[19:20]
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s0, s33, v19
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v66, s20, v3
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v176, 0, v0
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v177, 0, v4
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v178, 0, v5
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v179, 0, v6
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v180, 0, v7
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v181, 0, v8
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v182, 0, v9
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v183, 0, v11
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v184, 0, v12
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v185, 0, v13
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v186, 0, v14
	scratch_store_b32 off, v1, off offset:76 ; 4-byte Folded Spill
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v1, v19
	v_mov_b32_e32 v57, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s16, s12
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s37, vcc_lo, s1
	s_and_b32 s29, s11, 0xffff
	s_and_b32 s17, s13, 0xffff
	.loc	1 831 25                        ; ragged.py:831:25
	s_mul_i32 s38, s34, s6
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s28, s10
	s_mov_b32 s30, s18
	s_mov_b32 s31, s19
	scratch_store_b64 off, v[1:2], off offset:64 ; 8-byte Folded Spill
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v70, off offset:44
	scratch_store_b32 off, v51, off offset:40
	scratch_store_b32 off, v69, off offset:36
	scratch_store_b32 off, v53, off offset:32
	scratch_store_b32 off, v52, off offset:28
	scratch_store_b32 off, v65, off offset:24
	scratch_store_b32 off, v59, off offset:20
	scratch_store_b32 off, v54, off offset:16
	scratch_store_b32 off, v55, off offset:12
	scratch_store_b32 off, v58, off offset:8
	scratch_store_b32 off, v57, off offset:4
	scratch_store_b32 off, v56, off
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v173
	v_mov_b32_e32 v3, v173
	v_dual_mov_b32 v4, v173 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v173
	v_dual_mov_b32 v6, v173 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v173
	v_dual_mov_b32 v8, v173 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v173 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v173
	v_dual_mov_b32 v12, v173 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v173
	v_dual_mov_b32 v14, v173 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v173
	v_dual_mov_b32 v16, v173 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v173
	v_mov_b32_e32 v19, v173
	v_mov_b32_e32 v20, v173
	v_mov_b32_e32 v21, v173
	v_mov_b32_e32 v22, v173
	v_mov_b32_e32 v23, v173
	v_mov_b32_e32 v24, v173
	v_mov_b32_e32 v26, v173
	v_mov_b32_e32 v27, v173
	v_mov_b32_e32 v28, v173
	v_mov_b32_e32 v29, v173
	v_mov_b32_e32 v30, v173
	v_mov_b32_e32 v31, v173
	v_mov_b32_e32 v32, v173
	v_mov_b32_e32 v34, v173
	v_mov_b32_e32 v35, v173
	v_mov_b32_e32 v36, v173
	v_mov_b32_e32 v37, v173
	v_mov_b32_e32 v38, v173
	v_mov_b32_e32 v39, v173
	v_mov_b32_e32 v40, v173
	v_mov_b32_e32 v42, v173
	v_mov_b32_e32 v43, v173
	v_mov_b32_e32 v44, v173
	v_mov_b32_e32 v45, v173
	v_mov_b32_e32 v46, v173
	v_mov_b32_e32 v47, v173
	v_mov_b32_e32 v48, v173
	v_mov_b32_e32 v50, v173
	v_mov_b32_e32 v51, v173
	v_mov_b32_e32 v52, v173
	v_mov_b32_e32 v53, v173
	v_mov_b32_e32 v54, v173
	v_mov_b32_e32 v55, v173
	v_mov_b32_e32 v56, v173
	v_mov_b32_e32 v58, v173
	v_mov_b32_e32 v59, v173
	v_mov_b32_e32 v60, v173
	v_mov_b32_e32 v61, v173
	v_mov_b32_e32 v62, v173
	v_mov_b32_e32 v63, v173
	v_mov_b32_e32 v64, v173
	.loc	1 795 28 is_stmt 1              ; ragged.py:795:28
	s_lshl_b32 s14, s25, 6
	s_mov_b32 s1, 0
	s_mov_b32 s15, -1
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 798 26                        ; ragged.py:798:26
	s_or_b32 s9, s1, s14
	.loc	1 790 28                        ; ragged.py:790:28
	v_lshrrev_b32_e32 v65, 6, v0
	.loc	1 798 26                        ; ragged.py:798:26
	s_or_b32 s8, s9, 1
	s_or_b32 s7, s9, 2
	s_or_b32 s6, s9, 3
	s_or_b32 s1, s9, 4
	s_or_b32 s65, s9, 5
	s_or_b32 s64, s9, 6
	s_or_b32 s63, s9, 7
	s_or_b32 s62, s9, 8
	s_or_b32 s61, s9, 9
	s_or_b32 s60, s9, 10
	s_or_b32 s59, s9, 11
	s_or_b32 s58, s9, 12
	s_or_b32 s57, s9, 13
	s_or_b32 s56, s9, 14
	s_or_b32 s55, s9, 15
	s_or_b32 s54, s9, 16
	s_or_b32 s53, s9, 17
	s_or_b32 s52, s9, 18
	s_or_b32 s51, s9, 19
	s_or_b32 s50, s9, 20
	s_or_b32 s49, s9, 21
	s_or_b32 s48, s9, 22
	s_or_b32 s47, s9, 23
	s_or_b32 s46, s9, 24
	s_or_b32 s45, s9, 25
	s_or_b32 s44, s9, 26
	s_or_b32 s43, s9, 27
	s_or_b32 s42, s9, 28
	s_or_b32 s41, s9, 29
	s_or_b32 s40, s9, 30
	s_or_b32 s39, s9, 31
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[68:69], null, s9, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cmp_lt_i32 s9, s35
	.loc	1 798 26                        ; ragged.py:798:26
	v_or_b32_e32 v65, s9, v65
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s8, s35
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s7, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[69:70], null, s8, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s6, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[70:71], null, s7, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s1, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[71:72], null, s6, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s65, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[72:73], null, s1, s33, v[67:68]
	v_mad_u64_u32 v[73:74], null, s65, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s64, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[74:75], null, s64, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s63, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[75:76], null, s63, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s62, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[76:77], null, s62, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s61, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[77:78], null, s61, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s60, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[78:79], null, s60, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s59, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[79:80], null, s59, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s58, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[80:81], null, s58, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s57, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[81:82], null, s57, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s56, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[82:83], null, s56, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s55, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[83:84], null, s55, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s54, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[84:85], null, s54, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s53, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[85:86], null, s53, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s52, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[86:87], null, s52, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s51, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[87:88], null, s51, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s50, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[88:89], null, s50, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s49, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[89:90], null, s49, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s48, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[90:91], null, s48, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s47, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[91:92], null, s47, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s46, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[92:93], null, s46, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s45, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[93:94], null, s45, s33, v[67:68]
	v_mad_u64_u32 v[94:95], null, s44, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s44, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[95:96], null, s43, s33, v[67:68]
	v_mad_u64_u32 v[96:97], null, s42, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s43, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[97:98], null, s41, s33, v[67:68]
	.loc	1 798 26                        ; ragged.py:798:26
	v_or_b32_e32 v102, 4, v65
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[98:99], null, s40, s33, v[67:68]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s42, s35
	.loc	1 809 42                        ; ragged.py:809:42
	v_mad_u64_u32 v[99:100], null, s39, s33, v[67:68]
	.loc	1 798 26                        ; ragged.py:798:26
	v_or_b32_e32 v103, 8, v65
	.loc	1 808 42                        ; ragged.py:808:42
	v_mad_u64_u32 v[100:101], null, v65, s36, v[66:67]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s41, s35
	.loc	1 798 26                        ; ragged.py:798:26
	v_or_b32_e32 v104, 12, v65
	.loc	1 799 31                        ; ragged.py:799:31
	v_cmp_gt_i32_e32 vcc_lo, s35, v65
	v_cmp_gt_i32_e64 s1, s35, v102
	.loc	1 808 42                        ; ragged.py:808:42
	v_mad_u64_u32 v[101:102], null, v102, s36, v[66:67]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s40, s35
	.loc	1 798 26                        ; ragged.py:798:26
	v_or_b32_e32 v105, 16, v65
	.loc	1 799 31                        ; ragged.py:799:31
	v_cmp_gt_i32_e64 s6, s35, v103
	.loc	1 808 42                        ; ragged.py:808:42
	v_mad_u64_u32 v[102:103], null, v103, s36, v[66:67]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s39, s35
	.loc	1 798 26                        ; ragged.py:798:26
	v_or_b32_e32 v150, 20, v65
	.loc	1 799 31                        ; ragged.py:799:31
	v_cmp_gt_i32_e64 s7, s35, v104
	.loc	1 808 42                        ; ragged.py:808:42
	v_mad_u64_u32 v[103:104], null, v104, s36, v[66:67]
	.loc	1 799 31                        ; ragged.py:799:31
	s_cselect_b32 s39, -1, 0
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 vcc_lo, s37, vcc_lo
	.loc	1 798 26                        ; ragged.py:798:26
	v_or_b32_e32 v152, 24, v65
	v_or_b32_e32 v169, 28, v65
	.loc	1 799 31                        ; ragged.py:799:31
	v_cmp_gt_i32_e64 s8, s35, v105
	.loc	1 808 42                        ; ragged.py:808:42
	v_mad_u64_u32 v[104:105], null, v105, s36, v[66:67]
	.loc	1 808 34 is_stmt 0              ; ragged.py:808:34
	v_cndmask_b32_e32 v65, 0x80000000, v100, vcc_lo
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 vcc_lo, s37, s1
	.loc	1 808 42                        ; ragged.py:808:42
	v_mad_u64_u32 v[155:156], null, v150, s36, v[66:67]
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e32 v100, 0x80000000, v101, vcc_lo
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 vcc_lo, s37, s6
	.loc	1 799 31 is_stmt 1              ; ragged.py:799:31
	v_cmp_gt_i32_e64 s9, s35, v150
	.loc	1 808 42                        ; ragged.py:808:42
	v_mad_u64_u32 v[187:188], null, v152, s36, v[66:67]
	.loc	1 808 34 is_stmt 0              ; ragged.py:808:34
	v_cndmask_b32_e32 v101, 0x80000000, v102, vcc_lo
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 vcc_lo, s37, s7
	.loc	1 799 31 is_stmt 1              ; ragged.py:799:31
	v_cmp_gt_i32_e64 s10, s35, v152
	.loc	1 808 42                        ; ragged.py:808:42
	v_mad_u64_u32 v[188:189], null, v169, s36, v[66:67]
	.loc	1 808 34 is_stmt 0              ; ragged.py:808:34
	v_cndmask_b32_e32 v102, 0x80000000, v103, vcc_lo
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 vcc_lo, s37, s8
	.loc	1 799 31 is_stmt 1              ; ragged.py:799:31
	v_cmp_gt_i32_e64 s11, s35, v169
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e32 v103, 0x80000000, v104, vcc_lo
	.loc	1 808 66 is_stmt 0              ; ragged.py:808:66
	s_and_b32 vcc_lo, s37, s9
	s_mov_b32 s1, 32
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e32 v104, 0x80000000, v155, vcc_lo
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 vcc_lo, s37, s10
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e32 v105, 0x80000000, v187, vcc_lo
	.loc	1 808 66                        ; ragged.py:808:66
	s_and_b32 vcc_lo, s37, s11
	.loc	1 808 34                        ; ragged.py:808:34
	v_cndmask_b32_e32 v150, 0x80000000, v188, vcc_lo
	.loc	1 809 66 is_stmt 1              ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s66
	.loc	1 809 34 is_stmt 0              ; ragged.py:809:34
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s67
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s68
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s69
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v71, 0x80000000, v71, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s70
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v72, 0x80000000, v72, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s65
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s64
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s63
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v75, 0x80000000, v75, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s62
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v76, 0x80000000, v76, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s61
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s60
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v78, 0x80000000, v78, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s59
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v79, 0x80000000, v79, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s58
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v80, 0x80000000, v80, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s57
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v81, 0x80000000, v81, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s56
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v82, 0x80000000, v82, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s55
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v83, 0x80000000, v83, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s54
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s53
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v85, 0x80000000, v85, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s52
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v86, 0x80000000, v86, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s51
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v87, 0x80000000, v87, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s50
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v88, 0x80000000, v88, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s49
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v89, 0x80000000, v89, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s48
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v90, 0x80000000, v90, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s47
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v91, 0x80000000, v91, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s46
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v92, 0x80000000, v92, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s45
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v93, 0x80000000, v93, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s44
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s43
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v95, 0x80000000, v95, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s42
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v96, 0x80000000, v96, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s41
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v97, 0x80000000, v97, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s40
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	.loc	1 809 66                        ; ragged.py:809:66
	s_and_b32 vcc_lo, s0, s39
	.loc	1 809 34                        ; ragged.py:809:34
	v_cndmask_b32_e32 v99, 0x80000000, v99, vcc_lo
	.loc	1 808 34 is_stmt 1              ; ragged.py:808:34
	s_clause 0x7
	buffer_load_u8 v65, v65, s[20:23], 0 offen
	buffer_load_u8 v100, v100, s[20:23], 0 offen
	buffer_load_u8 v152, v101, s[20:23], 0 offen
	buffer_load_u8 v155, v103, s[20:23], 0 offen
	buffer_load_u8 v104, v104, s[20:23], 0 offen
	buffer_load_u8 v156, v102, s[20:23], 0 offen
	buffer_load_u8 v105, v105, s[20:23], 0 offen
	buffer_load_u8 v150, v150, s[20:23], 0 offen
	.loc	1 809 34                        ; ragged.py:809:34
	s_clause 0x1f
	buffer_load_u8 v191, v68, s[28:31], 0 offen
	buffer_load_u8 v192, v69, s[28:31], 0 offen
	buffer_load_u8 v193, v70, s[28:31], 0 offen
	buffer_load_u8 v101, v71, s[28:31], 0 offen
	buffer_load_u8 v194, v72, s[28:31], 0 offen
	buffer_load_u8 v195, v73, s[28:31], 0 offen
	buffer_load_u8 v196, v74, s[28:31], 0 offen
	buffer_load_u8 v102, v75, s[28:31], 0 offen
	buffer_load_u8 v198, v76, s[28:31], 0 offen
	buffer_load_u8 v199, v77, s[28:31], 0 offen
	buffer_load_u8 v200, v78, s[28:31], 0 offen
	buffer_load_u8 v103, v79, s[28:31], 0 offen
	buffer_load_u8 v201, v80, s[28:31], 0 offen
	buffer_load_u8 v202, v81, s[28:31], 0 offen
	buffer_load_u8 v203, v82, s[28:31], 0 offen
	buffer_load_u8 v189, v83, s[28:31], 0 offen
	buffer_load_u8 v205, v84, s[28:31], 0 offen
	buffer_load_u8 v206, v85, s[28:31], 0 offen
	buffer_load_u8 v207, v86, s[28:31], 0 offen
	buffer_load_u8 v190, v87, s[28:31], 0 offen
	buffer_load_u8 v208, v88, s[28:31], 0 offen
	buffer_load_u8 v209, v89, s[28:31], 0 offen
	buffer_load_u8 v210, v90, s[28:31], 0 offen
	buffer_load_u8 v197, v91, s[28:31], 0 offen
	buffer_load_u8 v211, v92, s[28:31], 0 offen
	buffer_load_u8 v212, v93, s[28:31], 0 offen
	buffer_load_u8 v213, v94, s[28:31], 0 offen
	buffer_load_u8 v204, v95, s[28:31], 0 offen
	buffer_load_u8 v214, v96, s[28:31], 0 offen
	buffer_load_u8 v215, v97, s[28:31], 0 offen
	buffer_load_u8 v216, v98, s[28:31], 0 offen
	buffer_load_u8 v217, v99, s[28:31], 0 offen
	.loc	1 808 34                        ; ragged.py:808:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 797 23                        ; ragged.py:797:23
	s_and_b32 vcc_lo, exec_lo, s15
	s_mov_b32 s15, 0
	.loc	1 808 34                        ; ragged.py:808:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v176, v65
	s_waitcnt vmcnt(38)
	ds_store_b8 v176, v100 offset:256
	s_waitcnt vmcnt(37)
	ds_store_b8 v176, v152 offset:512
	s_waitcnt vmcnt(36)
	ds_store_b8 v176, v155 offset:1024
	s_waitcnt vmcnt(35)
	ds_store_b8 v176, v104 offset:1280
	s_waitcnt vmcnt(34)
	ds_store_b8 v177, v156
	s_waitcnt vmcnt(33)
	ds_store_b8 v176, v105 offset:1536
	s_waitcnt vmcnt(32)
	ds_store_b8 v178, v150
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 810 31                        ; ragged.py:810:31
	ds_load_u8 v68, v174 offset:448
	ds_load_u8 v69, v174 offset:384
	ds_load_u8 v70, v174 offset:320
	ds_load_u8 v71, v174 offset:256
	ds_load_u8 v72, v174 offset:704
	ds_load_u8 v73, v174 offset:640
	ds_load_u8 v76, v174 offset:720
	ds_load_u8 v104, v174 offset:576
	ds_load_u8 v105, v174 offset:512
	ds_load_u8 v77, v174 offset:592
	ds_load_u8 v78, v174 offset:528
	ds_load_u8 v81, v174 offset:608
	ds_load_u8 v84, v174 offset:544
	ds_load_u8 v152, v174 offset:960
	ds_load_u8 v155, v174 offset:896
	ds_load_u8 v79, v174 offset:976
	ds_load_u8 v228, v174 offset:912
	ds_load_u8 v87, v174 offset:992
	ds_load_u8 v88, v174 offset:928
	ds_load_u8 v156, v174 offset:832
	ds_load_u8 v169, v174 offset:768
	ds_load_u8 v232, v174 offset:848
	ds_load_u8 v233, v174 offset:784
	ds_load_u8 v89, v174 offset:864
	ds_load_u8 v90, v174 offset:800
	ds_load_u8 v74, v174 offset:192
	ds_load_u8 v75, v174 offset:128
	ds_load_u8 v82, v174 offset:208
	ds_load_u8 v83, v174 offset:144
	ds_load_u8 v91, v174 offset:224
	ds_load_u8 v92, v174 offset:160
	ds_load_u8 v80, v174 offset:240
	ds_load_u8 v220, v174 offset:64
	ds_load_u8 v221, v174
	ds_load_u8 v246, v174 offset:464
	ds_load_u8 v247, v174 offset:400
	ds_load_u8 v93, v174 offset:480
	ds_load_u8 v94, v174 offset:416
	ds_load_u8 v85, v174 offset:496
	ds_load_u8 v86, v174 offset:432
	ds_load_u8 v65, v174 offset:336
	ds_load_u8 v150, v174 offset:272
	ds_load_u8 v99, v174 offset:352
	ds_load_u8 v100, v174 offset:288
	ds_load_u8 v96, v174 offset:368
	ds_load_u8 v97, v174 offset:304
	ds_load_u8 v187, v174 offset:80
	ds_load_u8 v98, v174 offset:96
	ds_load_u8 v95, v174 offset:112
	ds_load_u8 v188, v174 offset:16
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v71, v75, v74, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v69, v221, v220, 0xc0c0004
	ds_load_u8 v106, v174 offset:656
	ds_load_u8 v242, v174 offset:736
	ds_load_u8 v243, v174 offset:672
	ds_load_u8 v227, v174 offset:752
	ds_load_u8 v229, v174 offset:688
	v_perm_b32 v82, v83, v82, 0xc0c0004
	v_lshl_or_b32 v75, v68, 16, v70
	v_perm_b32 v68, v169, v156, 0xc0c0004
	v_lshl_or_b32 v74, v71, 16, v69
	v_perm_b32 v69, v155, v152, 0xc0c0004
	v_perm_b32 v71, v73, v72, 0xc0c0004
	v_perm_b32 v70, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v65, v150, v65, 0xc0c0004
	v_perm_b32 v79, v228, v79, 0xc0c0004
	v_lshl_or_b32 v73, v69, 16, v68
	ds_load_u8 v68, v174 offset:1344
	ds_load_u8 v69, v174 offset:1280
	ds_load_u8 v225, v174 offset:1264
	ds_load_u8 v107, v174 offset:1360
	ds_load_u8 v248, v174 offset:1376
	ds_load_u8 v230, v174 offset:1392
	ds_load_u8 v231, v174 offset:1328
	v_lshl_or_b32 v72, v71, 16, v70
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v218, v174 offset:32
	ds_load_u8 v219, v174 offset:48
	ds_load_u8 v221, v174 offset:176
	ds_load_u8 v220, v174 offset:944
	ds_load_u8 v224, v174 offset:624
	ds_load_u8 v226, v174 offset:560
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v76, v106, v76, 0xc0c0004
	ds_load_u8 v222, v174 offset:880
	ds_load_u8 v223, v174 offset:816
	v_perm_b32 v92, v92, v91, 0xc0c0004
	v_perm_b32 v88, v88, v87, 0xc0c0004
	v_perm_b32 v87, v97, v96, 0xc0c0004
	v_lshl_or_b32 v78, v76, 16, v77
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v174 offset:1408
	ds_load_u8 v70, v174 offset:1472
	ds_load_u8 v108, v174 offset:1488
	ds_load_u8 v249, v174 offset:1504
	ds_load_u8 v234, v174 offset:1520
	ds_load_u8 v235, v174 offset:1456
	v_perm_b32 v86, v86, v85, 0xc0c0004
	v_perm_b32 v84, v84, v81, 0xc0c0004
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_perm_b32 v89, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v90, v219, v95, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v91, v221, v80, 0xc0c0004
	v_perm_b32 v95, v229, v227, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v94, v226, v224, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v69, v69, v70, 0xc0c0004
	ds_load_u8 v70, v174 offset:1024
	ds_load_u8 v71, v174 offset:1088
	ds_load_u8 v109, v174 offset:1104
	ds_load_u8 v253, v174 offset:1120
	ds_load_u8 v236, v174 offset:1136
	ds_load_u8 v237, v174 offset:1072
	v_lshl_or_b32 v94, v95, 16, v94
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v70, v71, 0xc0c0004
	ds_load_u8 v71, v174 offset:1152
	ds_load_u8 v104, v174 offset:1216
	ds_load_u8 v110, v174 offset:1232
	ds_load_u8 v255, v174 offset:1248
	ds_load_u8 v238, v174 offset:1200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v104, v71, v104, 0xc0c0004
	v_lshl_or_b32 v71, v69, 16, v68
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v70, v104, 16, v70
	ds_load_u8 v68, v174 offset:1792
	ds_load_u8 v69, v174 offset:1856
	ds_load_u8 v104, v174 offset:1872
	ds_load_u8 v169, v174 offset:1888
	ds_load_u8 v239, v174 offset:1904
	ds_load_u8 v240, v174 offset:1840
	ds_load_u8 v241, v174 offset:1776
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v68, v68, v69, 0xc0c0004
	ds_load_u8 v69, v174 offset:1920
	ds_load_u8 v155, v174 offset:1984
	ds_load_u8 v105, v174 offset:2000
	ds_load_u8 v152, v174 offset:2016
	ds_load_u8 v252, v179
	ds_load_u8 v244, v180
	ds_load_u8 v245, v174 offset:1968
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v69, v69, v155, 0xc0c0004
	ds_load_u8 v156, v174 offset:1536
	ds_load_u8 v254, v174 offset:1600
	ds_load_u8 v111, v174 offset:1616
	ds_load_u8 v155, v174 offset:1632
	ds_load_u8 v250, v174 offset:1648
	ds_load_u8 v251, v174 offset:1584
	v_lshl_or_b32 v69, v69, 16, v68
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v219, v245, v244, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v156, v254, 0xc0c0004
	ds_load_u8 v113, v174 offset:1664
	ds_load_u8 v114, v174 offset:1728
	ds_load_u8 v115, v174 offset:1744
	ds_load_u8 v156, v174 offset:1760
	ds_load_u8 v254, v174 offset:1712
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v113, v113, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v68, v113, 16, v112
	v_perm_b32 v112, v247, v246, 0xc0c0004
	v_perm_b32 v113, v188, v187, 0xc0c0004
	v_lshl_or_b32 v83, v112, 16, v65
	v_perm_b32 v65, v233, v232, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v82, v82, 16, v113
	v_lshl_or_b32 v79, v79, 16, v65
	ds_load_u8 v65, v174 offset:1296
	ds_load_u8 v106, v174 offset:1312
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v65, v65, v107, 0xc0c0004
	ds_load_u8 v76, v174 offset:1424
	ds_load_u8 v107, v174 offset:1440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v228, v106, v248, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v76, v76, v108, 0xc0c0004
	ds_load_u8 v77, v174 offset:1040
	ds_load_u8 v108, v174 offset:1056
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v232, v107, v249, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v109, v77, v109, 0xc0c0004
	ds_load_u8 v77, v174 offset:1168
	ds_load_u8 v112, v174 offset:1184
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v233, v108, v253, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v110, v77, v110, 0xc0c0004
	v_lshl_or_b32 v77, v76, 16, v65
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v76, v110, 16, v109
	ds_load_u8 v65, v174 offset:1680
	ds_load_u8 v109, v174 offset:1696
	ds_load_u8 v110, v174 offset:1552
	ds_load_u8 v113, v174 offset:1568
	ds_load_u8 v114, v174 offset:1936
	ds_load_u8 v150, v174 offset:1952
	ds_load_u8 v187, v174 offset:1808
	ds_load_u8 v188, v174 offset:1824
	.loc	1 809 34                        ; ragged.py:809:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v176, v191
	s_waitcnt vmcnt(30)
	ds_store_b8 v176, v192 offset:256
	s_waitcnt vmcnt(29)
	ds_store_b8 v176, v193 offset:512
	s_waitcnt vmcnt(27)
	ds_store_b8 v176, v194 offset:1024
	s_waitcnt vmcnt(26)
	ds_store_b8 v176, v195 offset:1280
	s_waitcnt vmcnt(25)
	ds_store_b8 v176, v196 offset:1536
	s_waitcnt vmcnt(23)
	ds_store_b8 v176, v198 offset:2048
	s_waitcnt vmcnt(22)
	ds_store_b8 v176, v199 offset:2304
	s_waitcnt vmcnt(21)
	ds_store_b8 v176, v200 offset:2560
	s_waitcnt vmcnt(19)
	ds_store_b8 v176, v201 offset:3072
	s_waitcnt vmcnt(18)
	ds_store_b8 v176, v202 offset:3328
	s_waitcnt vmcnt(17)
	ds_store_b8 v176, v203 offset:3584
	s_waitcnt vmcnt(15)
	ds_store_b8 v176, v205 offset:4096
	s_waitcnt vmcnt(14)
	ds_store_b8 v176, v206 offset:4352
	s_waitcnt vmcnt(13)
	ds_store_b8 v176, v207 offset:4608
	s_waitcnt vmcnt(11)
	ds_store_b8 v176, v208 offset:5120
	s_waitcnt vmcnt(10)
	ds_store_b8 v176, v209 offset:5376
	s_waitcnt vmcnt(9)
	ds_store_b8 v176, v210 offset:5632
	s_waitcnt vmcnt(7)
	ds_store_b8 v176, v211 offset:6144
	s_waitcnt vmcnt(6)
	ds_store_b8 v176, v212 offset:6400
	s_waitcnt vmcnt(5)
	ds_store_b8 v176, v213 offset:6656
	s_waitcnt vmcnt(3)
	ds_store_b8 v176, v214 offset:7168
	s_waitcnt vmcnt(2)
	ds_store_b8 v176, v215 offset:7424
	s_waitcnt vmcnt(1)
	ds_store_b8 v176, v216 offset:7680
	ds_store_b8 v177, v101
	ds_store_b8 v178, v102
	ds_store_b8 v181, v103
	ds_store_b8 v182, v189
	ds_store_b8 v183, v190
	ds_store_b8 v184, v197
	ds_store_b8 v185, v204
	s_waitcnt vmcnt(0)
	ds_store_b8 v186, v217
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 810 31                        ; ragged.py:810:31
	ds_load_u8 v102, v175 offset:1024
	ds_load_u8 v103, v175 offset:1792
	ds_load_u8 v194, v175 offset:1920
	ds_load_u8 v195, v175 offset:1664
	ds_load_u8 v197, v175 offset:1408
	ds_load_u8 v198, v175 offset:1152
	ds_load_u8 v189, v175
	ds_load_u8 v81, v175 offset:768
	ds_load_u8 v190, v175 offset:512
	ds_load_u8 v199, v175 offset:896
	ds_load_u8 v200, v175 offset:640
	ds_load_u8 v202, v175 offset:384
	ds_load_u8 v203, v175 offset:128
	v_perm_b32 v105, v114, v105, 0xc0c0004
	v_perm_b32 v110, v110, v111, 0xc0c0004
	v_perm_b32 v111, v65, v115, 0xc0c0004
	v_perm_b32 v65, v100, v99, 0xc0c0004
	ds_load_u8 v99, v175 offset:1280
	ds_load_u8 v114, v175 offset:1536
	ds_load_u8 v115, v175 offset:256
	v_perm_b32 v101, v243, v242, 0xc0c0004
	ds_load_u8 v106, v175 offset:3328
	ds_load_u8 v107, v175 offset:3072
	ds_load_u8 v108, v175 offset:3840
	ds_load_u8 v205, v175 offset:3968
	ds_load_u8 v206, v175 offset:3712
	ds_load_u8 v207, v175 offset:3456
	v_perm_b32 v242, v112, v255, 0xc0c0004
	ds_load_u8 v112, v175 offset:3584
	v_perm_b32 v247, v113, v155, 0xc0c0004
	ds_load_u8 v113, v175 offset:2816
	ds_load_u8 v191, v175 offset:2304
	ds_load_u8 v221, v175 offset:2944
	ds_load_u8 v192, v175 offset:2048
	v_perm_b32 v248, v109, v156, 0xc0c0004
	ds_load_u8 v109, v175 offset:2560
	ds_load_u8 v96, v175 offset:5376
	ds_load_u8 v97, v175 offset:5888
	ds_load_u8 v80, v175 offset:5632
	ds_load_u8 v85, v175 offset:5120
	v_perm_b32 v100, v218, v98, 0xc0c0004
	v_perm_b32 v246, v150, v152, 0xc0c0004
	v_perm_b32 v152, v220, v252, 0xc0c0004
	ds_load_u8 v220, v175 offset:3200
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v98, v102, v99, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v99, v114, v103, 0xc0c0004
	ds_load_u8 v114, v175 offset:2688
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v103, v189, v115, 0xc0c0004
	ds_load_u8 v115, v175 offset:2432
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v196, v107, v106, 0xc0c0004
	ds_load_u8 v106, v175 offset:6016
	ds_load_u8 v107, v175 offset:5760
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v201, v112, v108, 0xc0c0004
	ds_load_u8 v108, v175 offset:5504
	v_perm_b32 v104, v187, v104, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v208, v109, v113, 0xc0c0004
	ds_load_u8 v109, v175 offset:5248
	v_perm_b32 v150, v223, v222, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v210, v80, v97, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v209, v85, v96, 0xc0c0004
	ds_load_u8 v85, v175 offset:4352
	ds_load_u8 v80, v175 offset:4096
	ds_load_u8 v96, v175 offset:4992
	ds_load_u8 v97, v175 offset:4736
	ds_load_u8 v112, v175 offset:4480
	ds_load_u8 v113, v175 offset:4224
	v_perm_b32 v187, v238, v225, 0xc0c0004
	v_perm_b32 v155, v231, v230, 0xc0c0004
	v_perm_b32 v193, v190, v81, 0xc0c0004
	ds_load_u8 v81, v175 offset:2176
	v_perm_b32 v243, v188, v169, 0xc0c0004
	v_perm_b32 v156, v235, v234, 0xc0c0004
	v_perm_b32 v188, v251, v250, 0xc0c0004
	v_perm_b32 v217, v254, v241, 0xc0c0004
	v_perm_b32 v204, v192, v191, 0xc0c0004
	v_perm_b32 v102, v198, v197, 0xc0c0004
	v_perm_b32 v189, v195, v194, 0xc0c0004
	v_perm_b32 v190, v203, v202, 0xc0c0004
	v_perm_b32 v191, v200, v199, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v192, v220, v207, 0xc0c0004
	v_perm_b32 v194, v206, v205, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v197, v114, v221, 0xc0c0004
	v_perm_b32 v169, v237, v236, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v202, v97, v96, 0xc0c0004
	v_perm_b32 v211, v80, v85, 0xc0c0004
	ds_load_u8 v80, v175 offset:4864
	ds_load_u8 v85, v175 offset:4608
	v_lshl_or_b32 v97, v93, 16, v65
	v_lshl_or_b32 v96, v92, 16, v100
	v_lshl_or_b32 v92, v101, 16, v84
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v195, v81, v115, 0xc0c0004
	v_lshl_or_b32 v81, v105, 16, v104
	v_lshl_or_b32 v101, v86, 16, v87
	v_lshl_or_b32 v100, v91, 16, v90
	v_lshl_or_b32 v91, v156, 16, v155
	v_lshl_or_b32 v86, v217, 16, v188
	v_lshl_or_b32 v105, v99, 16, v98
	v_lshl_or_b32 v104, v193, 16, v103
	v_lshl_or_b32 v155, v208, 16, v204
	v_lshl_or_b32 v188, v210, 16, v209
	v_lshl_or_b32 v209, v189, 16, v102
	v_lshl_or_b32 v208, v191, 16, v190
	v_perm_b32 v198, v109, v108, 0xc0c0004
	v_perm_b32 v199, v107, v106, 0xc0c0004
	v_perm_b32 v200, v113, v112, 0xc0c0004
	v_lshl_or_b32 v93, v88, 16, v89
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v212, v85, v80, 0xc0c0004
	ds_load_u8 v80, v175 offset:7424
	ds_load_u8 v85, v175 offset:7168
	ds_load_u8 v222, v175 offset:8064
	ds_load_u8 v223, v175 offset:7808
	ds_load_u8 v224, v175 offset:7552
	ds_load_u8 v225, v175 offset:7296
	v_lshl_or_b32 v95, v152, 16, v150
	v_lshl_or_b32 v156, v201, 16, v196
	v_lshl_or_b32 v190, v194, 16, v192
	v_lshl_or_b32 v189, v197, 16, v195
	v_wmma_i32_16x16x16_iu4 v[1:8], v[104:105], v[74:75], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[208:209], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[104:105], v[82:83], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[208:209], v[82:83], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[104:105], v[96:97], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[208:209], v[96:97], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[104:105], v[100:101], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[208:209], v[100:101], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v218, v240, v239, 0xc0c0004
	v_lshl_or_b32 v89, v232, 16, v228
	v_lshl_or_b32 v88, v242, 16, v233
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v213, v85, v80, 0xc0c0004
	ds_load_u8 v80, v175 offset:7936
	ds_load_u8 v85, v175 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v205, v223, v222, 0xc0c0004
	v_lshl_or_b32 v90, v187, 16, v169
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v203, v225, v224, 0xc0c0004
	v_lshl_or_b32 v187, v212, 16, v211
	v_lshl_or_b32 v192, v199, 16, v198
	v_lshl_or_b32 v191, v202, 16, v200
	v_wmma_i32_16x16x16_iu4 v[1:8], v[155:156], v[72:73], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[189:190], v[72:73], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[155:156], v[78:79], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[189:190], v[78:79], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[155:156], v[92:93], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[189:190], v[92:93], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[155:156], v[94:95], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[189:190], v[94:95], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v84, v248, 16, v247
	v_lshl_or_b32 v87, v219, 16, v218
	v_lshl_or_b32 v103, v205, 16, v203
	v_wmma_i32_16x16x16_iu4 v[1:8], v[187:188], v[70:71], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[191:192], v[70:71], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v214, v85, v80, 0xc0c0004
	ds_load_u8 v80, v175 offset:6400
	ds_load_u8 v85, v175 offset:6144
	ds_load_u8 v226, v175 offset:7040
	ds_load_u8 v227, v175 offset:6784
	ds_load_u8 v229, v175 offset:6528
	ds_load_u8 v230, v175 offset:6272
	v_wmma_i32_16x16x16_iu4 v[17:24], v[187:188], v[76:77], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[191:192], v[76:77], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[187:188], v[88:89], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v99, v214, 16, v213
	v_wmma_i32_16x16x16_iu4 v[41:48], v[191:192], v[88:89], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[187:188], v[90:91], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[191:192], v[90:91], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v215, v85, v80, 0xc0c0004
	ds_load_u8 v80, v175 offset:6912
	ds_load_u8 v85, v175 offset:6656
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v207, v227, v226, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v206, v230, v229, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v102, v207, 16, v206
	v_wmma_i32_16x16x16_iu4 v[9:16], v[102:103], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[102:103], v[86:87], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v216, v85, v80, 0xc0c0004
	v_lshl_or_b32 v80, v111, 16, v110
	v_lshl_or_b32 v85, v246, 16, v243
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v98, v216, 16, v215
	v_wmma_i32_16x16x16_iu4 v[25:32], v[102:103], v[80:81], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[102:103], v[84:85], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[80:81], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[84:85], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[86:87], v[49:56] neg_lo:[1,1,0]
	.loc	1 797 23                        ; ragged.py:797:23
	s_cbranch_vccnz .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 824 25                        ; ragged.py:824:25
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v65, off, off offset:48
	scratch_load_b32 v68, off, off offset:52
	scratch_load_b32 v69, off, off offset:56
	scratch_load_b32 v70, off, off offset:60
	scratch_load_b64 v[71:72], off, off offset:64
	.loc	1 831 25                        ; ragged.py:831:25
	s_add_i32 s1, s25, s38
	.loc	1 830 40                        ; ragged.py:830:40
	s_mov_b32 s14, s18
	.loc	1 831 25                        ; ragged.py:831:25
	s_mul_i32 s1, s1, s33
	.loc	1 830 40                        ; ragged.py:830:40
	s_mov_b32 s15, s19
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v73, v2
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v72, v1
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v84, v13
	v_cvt_f32_i32_e32 v74, v3
	v_cvt_f32_i32_e32 v75, v4
	v_cvt_f32_i32_e32 v76, v5
	v_cvt_f32_i32_e32 v77, v6
	v_cvt_f32_i32_e32 v78, v7
	v_cvt_f32_i32_e32 v79, v8
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v81, v10
	v_cvt_f32_i32_e32 v82, v11
	v_cvt_f32_i32_e32 v83, v12
	v_cvt_f32_i32_e32 v85, v14
	v_cvt_f32_i32_e32 v86, v15
	v_cvt_f32_i32_e32 v87, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 824 25                        ; ragged.py:824:25
	v_mul_lo_u32 v65, v65, s34
	v_mul_lo_u32 v68, v68, s34
	v_mul_lo_u32 v69, v69, s34
	v_mul_lo_u32 v70, v70, s34
	.loc	1 830 40                        ; ragged.py:830:40
	v_add_lshl_u32 v71, v71, s1, 1
	.loc	1 823 40                        ; ragged.py:823:40
	v_add_lshl_u32 v65, s25, v65, 1
	v_add_lshl_u32 v68, s25, v68, 1
	v_add_lshl_u32 v69, s25, v69, 1
	v_add_lshl_u32 v70, s25, v70, 1
	.loc	1 830 40                        ; ragged.py:830:40
	v_cndmask_b32_e64 v71, 0x80000000, v71, s0
	.loc	1 823 40                        ; ragged.py:823:40
	v_cndmask_b32_e64 v65, 0x80000000, v65, s5
	v_cndmask_b32_e64 v68, 0x80000000, v68, s4
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	.loc	1 830 40                        ; ragged.py:830:40
	buffer_load_u16 v71, v71, s[12:15], 0 offen
	.loc	1 823 40                        ; ragged.py:823:40
	s_clause 0x3
	buffer_load_u16 v65, v65, s[16:19], 0 offen
	buffer_load_u16 v68, v68, s[16:19], 0 offen
	buffer_load_u16 v69, v69, s[16:19], 0 offen
	buffer_load_u16 v70, v70, s[16:19], 0 offen
	.loc	1 835 21                        ; ragged.py:835:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 837 17                        ; ragged.py:837:17
	s_add_i32 s25, s25, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 793 19                        ; ragged.py:793:19
	s_cmp_lg_u32 s25, s34
	.loc	1 823 40                        ; ragged.py:823:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 828 21                        ; ragged.py:828:21
	v_dual_mul_f32 v18, v18, v68 :: v_dual_lshlrev_b32 v65, 16, v65
	.loc	1 830 40                        ; ragged.py:830:40
	v_lshlrev_b32_e32 v1, 16, v71
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v71, v72, v65
	v_mul_f32_e32 v72, v73, v65
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v20, v20, v68 :: v_dual_lshlrev_b32 v69, 16, v69
	.loc	1 835 21                        ; ragged.py:835:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v13, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 828 21                        ; ragged.py:828:21
	v_dual_mul_f32 v73, v74, v65 :: v_dual_lshlrev_b32 v70, 16, v70
	v_dual_mul_f32 v74, v75, v65 :: v_dual_mul_f32 v17, v17, v68
	v_dual_mul_f32 v75, v76, v65 :: v_dual_mul_f32 v22, v22, v68
	v_dual_mul_f32 v76, v77, v65 :: v_dual_mul_f32 v19, v19, v68
	v_dual_mul_f32 v77, v78, v65 :: v_dual_mul_f32 v24, v24, v68
	v_dual_mul_f32 v78, v79, v65 :: v_dual_mul_f32 v21, v21, v68
	v_dual_mul_f32 v79, v80, v65 :: v_dual_mul_f32 v26, v26, v68
	v_dual_mul_f32 v80, v81, v65 :: v_dual_mul_f32 v23, v23, v68
	v_dual_mul_f32 v81, v82, v65 :: v_dual_mul_f32 v28, v28, v68
	v_dual_mul_f32 v82, v83, v65 :: v_dual_mul_f32 v25, v25, v68
	v_dual_mul_f32 v83, v84, v65 :: v_dual_mul_f32 v30, v30, v68
	v_dual_mul_f32 v84, v85, v65 :: v_dual_mul_f32 v27, v27, v68
	v_dual_mul_f32 v85, v86, v65 :: v_dual_mul_f32 v32, v32, v68
	v_dual_mul_f32 v65, v87, v65 :: v_dual_mul_f32 v50, v50, v70
	v_dual_mul_f32 v33, v33, v69 :: v_dual_mul_f32 v52, v52, v70
	v_dual_mul_f32 v35, v35, v69 :: v_dual_mul_f32 v54, v54, v70
	v_dual_mul_f32 v37, v37, v69 :: v_dual_mul_f32 v56, v56, v70
	v_dual_mul_f32 v38, v38, v69 :: v_dual_mul_f32 v49, v49, v70
	v_dual_mul_f32 v39, v39, v69 :: v_dual_mul_f32 v58, v58, v70
	v_dual_mul_f32 v40, v40, v69 :: v_dual_mul_f32 v51, v51, v70
	v_dual_mul_f32 v41, v41, v69 :: v_dual_mul_f32 v60, v60, v70
	v_dual_mul_f32 v42, v42, v69 :: v_dual_mul_f32 v53, v53, v70
	v_dual_mul_f32 v43, v43, v69 :: v_dual_mul_f32 v62, v62, v70
	v_dual_mul_f32 v44, v44, v69 :: v_dual_mul_f32 v55, v55, v70
	v_dual_mul_f32 v45, v45, v69 :: v_dual_mul_f32 v64, v64, v70
	v_dual_mul_f32 v46, v46, v69 :: v_dual_mul_f32 v57, v57, v70
	v_dual_mul_f32 v48, v48, v69 :: v_dual_mul_f32 v59, v59, v70
	v_mul_f32_e32 v61, v61, v70
	v_mul_f32_e32 v63, v63, v70
	scratch_load_b32 v70, off, off offset:44 ; 4-byte Folded Reload
	v_dual_mul_f32 v29, v29, v68 :: v_dual_mul_f32 v34, v34, v69
	v_dual_mul_f32 v31, v31, v68 :: v_dual_mul_f32 v36, v36, v69
	.loc	1 835 21                        ; ragged.py:835:21
	s_waitcnt vmcnt(1)
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v47, v47, v69
	scratch_load_b32 v69, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 836 17                        ; ragged.py:836:17
	s_waitcnt lgkmcnt(3)
	v_fmac_f32_e32 v170, v73, v3
	v_fmac_f32_e32 v116, v52, v4
	scratch_load_b32 v52, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v159, v83, v13 :: v_dual_fmac_f32 v154, v65, v16
	v_fmac_f32_e32 v123, v45, v13
	scratch_load_b32 v65, off, off offset:24 ; 4-byte Folded Reload
	v_fmac_f32_e32 v117, v51, v3
	scratch_load_b32 v51, off, off offset:40 ; 4-byte Folded Reload
	v_fmac_f32_e32 v121, v47, v15
	v_fmac_f32_e32 v172, v71, v1
	v_dual_fmac_f32 v153, v17, v1 :: v_dual_fmac_f32 v146, v22, v6
	v_dual_fmac_f32 v135, v33, v1 :: v_dual_fmac_f32 v128, v40, v8
	v_fmac_f32_e32 v119, v49, v1
	scratch_load_b32 v1, off, off offset:20 ; 4-byte Folded Reload
	v_dual_fmac_f32 v171, v72, v2 :: v_dual_fmac_f32 v164, v78, v8
	v_dual_fmac_f32 v168, v74, v4 :: v_dual_fmac_f32 v167, v75, v5
	v_dual_fmac_f32 v166, v76, v6 :: v_dual_fmac_f32 v165, v77, v7
	v_dual_fmac_f32 v162, v80, v10 :: v_dual_fmac_f32 v163, v79, v9
	v_dual_fmac_f32 v160, v82, v12 :: v_dual_fmac_f32 v161, v81, v11
	v_dual_fmac_f32 v158, v84, v14 :: v_dual_fmac_f32 v157, v85, v15
	v_dual_fmac_f32 v148, v20, v4 :: v_dual_fmac_f32 v151, v18, v2
	v_dual_fmac_f32 v144, v24, v8 :: v_dual_fmac_f32 v149, v19, v3
	v_dual_fmac_f32 v142, v26, v10 :: v_dual_fmac_f32 v147, v21, v5
	v_dual_fmac_f32 v140, v28, v12 :: v_dual_fmac_f32 v145, v23, v7
	v_dual_fmac_f32 v138, v30, v14 :: v_dual_fmac_f32 v143, v25, v9
	v_fmac_f32_e32 v136, v32, v16
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v70, v53, v5
	scratch_load_b32 v53, off, off offset:32 ; 4-byte Folded Reload
	v_dual_fmac_f32 v141, v27, v11 :: v_dual_fmac_f32 v134, v34, v2
	v_dual_fmac_f32 v139, v29, v13 :: v_dual_fmac_f32 v132, v36, v4
	v_dual_fmac_f32 v137, v31, v15 :: v_dual_fmac_f32 v130, v38, v6
	v_dual_fmac_f32 v133, v35, v3 :: v_dual_fmac_f32 v126, v42, v10
	v_dual_fmac_f32 v131, v37, v5 :: v_dual_fmac_f32 v124, v44, v12
	v_dual_fmac_f32 v129, v39, v7 :: v_dual_fmac_f32 v122, v46, v14
	v_dual_fmac_f32 v127, v41, v9 :: v_dual_fmac_f32 v120, v48, v16
	v_dual_fmac_f32 v125, v43, v11 :: v_dual_fmac_f32 v118, v50, v2
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v69, v55, v7
	scratch_load_b32 v55, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v52, v57, v9
	scratch_load_b32 v57, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v65, v58, v10
	scratch_load_b32 v58, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v51, v54, v6
	scratch_load_b32 v54, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v1, v59, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v59, v1
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v53, v56, v8
	scratch_load_b32 v56, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v55, v61, v13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v57, v63, v15 :: v_dual_fmac_f32 v58, v62, v14
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v54, v60, v12
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v56, v64, v16
	.loc	1 793 19                        ; ragged.py:793:19
	s_cbranch_scc1 .LBB0_2
; %bb.5:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_and_b32_e32 v18, 0xf0, v0
.LBB0_6:                                ; %._crit_edge
	.loc	1 840 13 is_stmt 1              ; ragged.py:840:13
	scratch_load_b32 v17, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 742 36                        ; ragged.py:742:36
	v_lshrrev_b32_e32 v1, 1, v18
	.loc	1 839 9                         ; ragged.py:839:9
	v_bfe_u32 v21, v172, 16, 1
	v_bfe_u32 v22, v171, 16, 1
	v_cmp_o_f32_e64 s19, v172, v172
	v_bfe_u32 v24, v170, 16, 1
	v_cmp_o_f32_e64 s20, v171, v171
	v_add3_u32 v23, v172, v21, 0x7fff
	v_add3_u32 v22, v171, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v170, v170
	v_add3_u32 v24, v170, v24, 0x7fff
	v_bfe_u32 v25, v167, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v168, 16, 1
	v_bfe_u32 v26, v166, 16, 1
	v_cmp_o_f32_e64 s19, v168, v168
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v168, v23, 0x7fff
	v_add3_u32 v25, v167, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v167, v167
	v_add3_u32 v26, v166, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v166, v166
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v165, 16, 1
	v_bfe_u32 v27, v164, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v163, 16, 1
	v_add3_u32 v23, v165, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v165, v165
	v_add3_u32 v27, v164, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v164, v164
	v_bfe_u32 v28, v162, 16, 1
	v_add3_u32 v26, v163, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v163, v163
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v161, 16, 1
	v_bfe_u32 v29, v160, 16, 1
	v_add3_u32 v28, v162, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v162, v162
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v161, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v161, v161
	v_add3_u32 v29, v160, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v160, v160
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v159, 16, 1
	v_bfe_u32 v30, v158, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v157, 16, 1
	v_add3_u32 v28, v159, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v159, v159
	v_add3_u32 v30, v158, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v158, v158
	v_bfe_u32 v31, v154, 16, 1
	v_add3_u32 v29, v157, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v157, v157
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v153, 16, 1
	v_bfe_u32 v32, v151, 16, 1
	v_add3_u32 v31, v154, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v154, v154
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v153, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v153, v153
	v_add3_u32 v32, v151, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v151, v151
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v149, 16, 1
	v_bfe_u32 v33, v148, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v147, 16, 1
	v_add3_u32 v31, v149, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v149, v149
	v_add3_u32 v33, v148, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v148, v148
	v_bfe_u32 v34, v146, 16, 1
	v_add3_u32 v32, v147, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v147, v147
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v145, 16, 1
	v_bfe_u32 v35, v144, 16, 1
	v_add3_u32 v34, v146, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v146, v146
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v145, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v145, v145
	v_add3_u32 v35, v144, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v144, v144
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v143, 16, 1
	v_bfe_u32 v36, v142, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v141, 16, 1
	v_add3_u32 v34, v143, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v143, v143
	v_add3_u32 v36, v142, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v142, v142
	v_bfe_u32 v37, v140, 16, 1
	v_add3_u32 v35, v141, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v141, v141
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v139, 16, 1
	v_bfe_u32 v38, v138, 16, 1
	v_add3_u32 v37, v140, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v140, v140
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v139, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v139, v139
	v_add3_u32 v38, v138, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v138, v138
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s19
	v_bfe_u32 v37, v137, 16, 1
	v_bfe_u32 v39, v136, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v135, 16, 1
	v_add3_u32 v37, v137, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v137, v137
	v_add3_u32 v39, v136, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v136, v136
	v_bfe_u32 v40, v134, 16, 1
	v_add3_u32 v38, v135, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v135, v135
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v133, 16, 1
	v_bfe_u32 v41, v132, 16, 1
	v_add3_u32 v40, v134, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v134, v134
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_add3_u32 v39, v133, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v133, v133
	v_add3_u32 v41, v132, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v132, v132
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s19
	v_bfe_u32 v40, v131, 16, 1
	v_bfe_u32 v42, v130, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s21
	v_bfe_u32 v41, v129, 16, 1
	v_add3_u32 v40, v131, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v131, v131
	v_add3_u32 v42, v130, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v130, v130
	v_bfe_u32 v43, v128, 16, 1
	v_add3_u32 v41, v129, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v129, v129
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s19
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v127, 16, 1
	v_bfe_u32 v44, v126, 16, 1
	v_add3_u32 v43, v128, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v128, v128
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_add3_u32 v42, v127, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v127, v127
	v_add3_u32 v44, v126, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v126, v126
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s19
	v_bfe_u32 v43, v125, 16, 1
	v_bfe_u32 v45, v124, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v123, 16, 1
	v_add3_u32 v43, v125, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v125, v125
	v_add3_u32 v45, v124, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v124, v124
	v_bfe_u32 v46, v122, 16, 1
	v_add3_u32 v44, v123, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v123, v123
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s19
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v121, 16, 1
	v_bfe_u32 v47, v120, 16, 1
	v_add3_u32 v46, v122, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v122, v122
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_add3_u32 v45, v121, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v121, v121
	v_add3_u32 v47, v120, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v120, v120
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s19
	v_bfe_u32 v46, v119, 16, 1
	v_bfe_u32 v48, v118, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s20
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s21
	v_bfe_u32 v47, v117, 16, 1
	v_add3_u32 v46, v119, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v119, v119
	v_add3_u32 v48, v118, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v118, v118
	v_bfe_u32 v49, v116, 16, 1
	v_add3_u32 v47, v117, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v117, v117
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s19
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s20
	v_bfe_u32 v48, v70, 16, 1
	v_bfe_u32 v50, v51, 16, 1
	v_add3_u32 v49, v116, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v116, v116
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_add3_u32 v48, v70, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v70, v70
	v_add3_u32 v50, v51, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v51, v51
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s19
	v_bfe_u32 v49, v69, 16, 1
	v_bfe_u32 v51, v53, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s20
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s21
	v_bfe_u32 v50, v52, 16, 1
	v_add3_u32 v49, v69, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v69, v69
	v_add3_u32 v51, v53, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v53, v53
	v_add3_u32 v50, v52, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v52, v52
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s19
	v_bfe_u32 v52, v65, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s20
	v_bfe_u32 v51, v59, 16, 1
	v_bfe_u32 v53, v54, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_add3_u32 v52, v65, v52, 0x7fff
	v_cmp_o_f32_e64 s19, v65, v65
	v_add3_u32 v51, v59, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v59, v59
	v_add3_u32 v53, v54, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v54, v54
	v_bfe_u32 v54, v55, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s19
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s20
	v_bfe_u32 v52, v58, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s21
	v_add3_u32 v53, v55, v54, 0x7fff
	v_bfe_u32 v54, v57, 16, 1
	v_cmp_o_f32_e64 s19, v55, v55
	v_bfe_u32 v55, v56, 16, 1
	v_add3_u32 v52, v58, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v58, v58
	v_add3_u32 v54, v57, v54, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v57, v57
	v_add3_u32 v55, v56, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v56, v56
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v54.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v55.h, s22
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v53, v25, v22, s19
	v_cndmask_b32_e64 v22, v22, v25, s19
	v_cndmask_b32_e64 v25, v23, v24, s19
	v_cndmask_b32_e64 v23, v24, v23, s19
	v_cndmask_b32_e64 v24, v28, v26, s19
	v_cndmask_b32_e64 v26, v26, v28, s19
	v_cndmask_b32_e64 v28, v29, v27, s19
	v_cndmask_b32_e64 v27, v27, v29, s19
	v_cndmask_b32_e64 v29, v32, v30, s19
	v_cndmask_b32_e64 v30, v30, v32, s19
	v_cndmask_b32_e64 v32, v33, v31, s19
	v_cndmask_b32_e64 v31, v31, v33, s19
	v_cndmask_b32_e64 v33, v36, v34, s19
	v_cndmask_b32_e64 v34, v34, v36, s19
	v_cndmask_b32_e64 v36, v37, v35, s19
	v_cndmask_b32_e64 v35, v35, v37, s19
	v_cndmask_b32_e64 v37, v40, v38, s19
	v_cndmask_b32_e64 v38, v38, v40, s19
	v_cndmask_b32_e64 v40, v41, v39, s19
	v_cndmask_b32_e64 v39, v39, v41, s19
	v_cndmask_b32_e64 v41, v44, v42, s19
	v_cndmask_b32_e64 v42, v42, v44, s19
	v_cndmask_b32_e64 v44, v45, v43, s19
	v_cndmask_b32_e64 v43, v43, v45, s19
	v_cndmask_b32_e64 v45, v48, v46, s19
	v_cndmask_b32_e64 v46, v46, v48, s19
	v_cndmask_b32_e64 v48, v49, v47, s19
	v_cndmask_b32_e64 v47, v47, v49, s19
	v_cndmask_b32_e64 v49, v52, v50, s19
	v_cndmask_b32_e64 v50, v50, v52, s19
	v_cndmask_b32_e64 v52, v0, v51, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v51, v0, s19
	v_cndmask_b32_e64 v51, 0x1054, v54, s19
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v11, s24, v1
	s_mov_b32 s20, 0x76543210
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v16, 1, v11
	v_or_b32_e32 v15, 2, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_lshl_or_b32 v54, v54, 8, v54
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s18, s33, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_and_b32_e32 v51, 0x540054, v51
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s17, s33, v16
	v_cmp_gt_i32_e64 s16, s33, v15
	.loc	1 839 9                         ; ragged.py:839:9
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_lshl_or_b32 v51, v51, 4, v51
	v_mov_b16_e32 v21.h, 0
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v51, 0x5040504, v51
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	.loc	1 840 13                        ; ragged.py:840:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v20, v17, s33
	scratch_load_b32 v17, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 839 9                         ; ragged.py:839:9
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_add_lshl_u32 v84, v11, v20, 1
	v_add_lshl_u32 v85, v16, v20, 1
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v53, v51
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s18, s5
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s17, s5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s16, s5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s15, s33, v14
	.loc	1 839 9                         ; ragged.py:839:9
	v_perm_b32 v22, v22, v53, v54
	v_perm_b32 v53, v23, v25, v51
	v_perm_b32 v23, v23, v25, v54
	v_perm_b32 v25, v26, v24, v51
	v_perm_b32 v24, v26, v24, v54
	v_perm_b32 v26, v27, v28, v51
	v_perm_b32 v27, v27, v28, v54
	v_perm_b32 v28, v30, v29, v51
	v_perm_b32 v29, v30, v29, v54
	v_perm_b32 v30, v31, v32, v51
	v_perm_b32 v31, v31, v32, v54
	v_perm_b32 v32, v34, v33, v51
	v_perm_b32 v33, v34, v33, v54
	v_perm_b32 v34, v35, v36, v51
	v_perm_b32 v35, v35, v36, v54
	v_perm_b32 v36, v38, v37, v51
	v_perm_b32 v37, v38, v37, v54
	v_perm_b32 v38, v39, v40, v51
	v_perm_b32 v39, v39, v40, v54
	v_perm_b32 v40, v42, v41, v51
	v_perm_b32 v41, v42, v41, v54
	v_perm_b32 v42, v43, v44, v51
	v_perm_b32 v43, v43, v44, v54
	v_perm_b32 v44, v46, v45, v51
	v_perm_b32 v45, v46, v45, v54
	v_perm_b32 v46, v47, v48, v51
	v_perm_b32 v47, v47, v48, v54
	v_perm_b32 v48, v50, v49, v51
	v_perm_b32 v49, v50, v49, v54
	v_perm_b32 v50, v0, v52, v51
	v_mov_b16_e32 v51.l, v55.h
	v_mov_b16_e32 v51.h, v21.h
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 839 9                         ; ragged.py:839:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s14, s33, v13
	v_cmp_gt_i32_e64 s13, s33, v12
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[20:23], 0 offen
	buffer_store_b16 v22, v86, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s15, s5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s12, s33, v10
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s14, s5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s13, s5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s11, s33, v9
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s12, s5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_perm_b32 v0, v0, v52, v54
	v_mov_b16_e32 v54.l, v53.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s10, s33, v8
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v52.h, v21.h
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
	buffer_store_b16 v21, v51, s[20:23], 0 offen
	buffer_store_b16 v53, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v9, v20, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s9, s33, v7
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s11, s5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s8, s33, v6
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v52.l, v23.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v23, v84, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s10, s5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v51, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s9, s5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s7, s33, v5
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s8, s5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v57.l, v25.h
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s6, s33, v4
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s19
	s_clause 0x1
	buffer_store_b16 v52, v21, s[20:23], 0 offen
	buffer_store_b16 v25, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v5, v20, 1
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s1, s33, v3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s7, s5
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s0, s33, v2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v51, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s6, s5
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s1, s5
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s0, s5
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v26, v22, s[20:23], 0 offen
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, vcc_lo, s5
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v58.l, v27.h
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s18, s4
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_mov_b16_e32 v61.l, v28.h
	v_mov_b16_e32 v60.l, v29.h
	v_mov_b16_e32 v63.l, v30.h
	v_mov_b16_e32 v62.l, v31.h
	v_mov_b16_e32 v65.l, v32.h
	v_mov_b16_e32 v64.l, v33.h
	v_mov_b16_e32 v67.l, v34.h
	v_mov_b16_e32 v66.l, v35.h
	v_mov_b16_e32 v69.l, v36.h
	v_mov_b16_e32 v68.l, v37.h
	v_mov_b16_e32 v71.l, v38.h
	v_mov_b16_e32 v70.l, v39.h
	v_mov_b16_e32 v73.l, v40.h
	v_mov_b16_e32 v72.l, v41.h
	v_mov_b16_e32 v74.l, v43.h
	v_mov_b16_e32 v75.l, v42.h
	v_mov_b16_e32 v76.l, v45.h
	v_mov_b16_e32 v77.l, v44.h
	v_mov_b16_e32 v78.l, v47.h
	v_mov_b16_e32 v79.l, v46.h
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	v_mov_b16_e32 v83.l, v50.h
	v_mov_b16_e32 v82.l, v0.h
	.loc	1 840 13                        ; ragged.py:840:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v19, v17, s33
	scratch_load_b32 v17, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v21, v11, v19, 1
	v_add_lshl_u32 v22, v16, v19, 1
	v_add_lshl_u32 v23, v15, v19, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s17, s4
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s16, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v20, v14, v19, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s15, s4
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s14, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s13, s4
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s12, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v20, v9, v19, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s11, s4
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v31, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s10, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s9, s4
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s8, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v20, v5, v19, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s7, s4
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v33, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s6, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s1, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s5, s0, s4
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v34, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, vcc_lo, s4
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v35, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s18, s3
	.loc	1 840 13                        ; ragged.py:840:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v18, v17, s33
	scratch_load_b32 v17, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v20, v11, v18, 1
	v_add_lshl_u32 v21, v16, v18, 1
	v_add_lshl_u32 v22, v15, v18, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s17, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v36, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s16, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v19, v14, v18, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s15, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v37, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s14, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s13, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v38, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s12, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v19, v9, v18, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s11, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v39, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s10, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s9, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v40, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s8, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v19, v5, v18, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s7, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v41, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s6, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s1, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v42, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s0, s3
	s_and_b32 s3, vcc_lo, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s18, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v43, v22, s[20:23], 0 offen
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s1, s1, s2
	s_and_b32 s0, s0, s2
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 840 13                        ; ragged.py:840:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v17, v17, s33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_add_lshl_u32 v16, v16, v17, 1
	v_add_lshl_u32 v15, v15, v17, 1
	v_add_lshl_u32 v13, v13, v17, 1
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s17, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v44, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s16, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s15, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s14, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s13, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s12, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s11, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s10, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s9, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s8, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s7, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v1, v1, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s6, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v45, v15, s[20:23], 0 offen
	buffer_store_b16 v76, v11, s[20:23], 0 offen
	buffer_store_b16 v46, v13, s[20:23], 0 offen
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v47, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v9, s[20:23], 0 offen
	buffer_store_b16 v48, v8, s[20:23], 0 offen
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v49, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v5, s[20:23], 0 offen
	buffer_store_b16 v50, v4, s[20:23], 0 offen
	buffer_store_b16 v83, v3, s[20:23], 0 offen
	buffer_store_b16 v0, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 702 5                         ; ragged.py:702:5
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 84
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
		.amdhsa_next_free_sgpr 71
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 71
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 84
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15040
; TotalNumSgprs: 73
; NumVgprs: 256
; ScratchSize: 84
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 73
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 84
    .sgpr_count:     73
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 20
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
