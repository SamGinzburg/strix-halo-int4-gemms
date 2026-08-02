	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_mov_b32_e32 v195, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v197, 15, v195
	v_lshlrev_b32_e32 v50, 4, v195
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s41, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s11, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s11
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s4
	v_readfirstlane_b32 s4, v0
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s11
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s9, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_load_b64 s[12:13], s[0:1], 0x38
	s_xor_b32 s10, s3, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s41, s10, s9
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s41, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_mov_b32 s8, 0
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s12, s2
	s_addc_u32 s7, s13, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v195
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow606
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[36:37], s[4:5], 0x0
	s_load_b64 s[38:39], s[6:7], 0x0
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v198, 0xf0, v195
	v_lshrrev_b32_e32 v196, 4, v195
	v_dual_mov_b32 v59, 0 :: v_dual_lshlrev_b32 v154, 4, v197
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v49, 3, v195
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v157, 0
	v_mov_b32_e32 v230, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s11, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s34, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 2, v195
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v4, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 32
	v_add_co_u32 v2, s0, s34, v10
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_add_co_ci_u32_e64 v3, null, s35, 0, s0
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s0, s4, s2
	s_addc_u32 s1, s5, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[6:7]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[24:25], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[36:37], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[4:5]
	v_cmp_gt_i64_e64 s7, s[38:39], v[6:7]
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v5, 2, v195
	v_bfe_i32 v6, v195, 5, 1
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v8, vcc_lo, v0, 48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[38:39], v[0:1]
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v0, s34, v197
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v5, 0x37c, v5
	v_dual_mov_b32 v199, 0 :: v_dual_and_b32 v6, 0x88, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v1, 16, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[2:3]
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mul_lo_u32 v0, s40, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[38:39], v[8:9]
	v_dual_mov_b32 v200, 0 :: v_dual_and_b32 v7, 0x70, v50
	v_bfe_i32 v8, v195, 3, 1
	v_xor_b32_e32 v5, v6, v5
	v_dual_mov_b32 v46, 0 :: v_dual_lshlrev_b32 v9, 5, v195
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v164, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_or_b32 v7, 0x88, v8, v7
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v0, 0, v5
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v195, off offset:152
	scratch_store_b32 off, v49, off offset:168
	scratch_store_b32 off, v154, off offset:128
	scratch_store_b32 off, v0, off offset:132
	v_xor_b32_e32 v6, 8, v7
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v0, 0, v7
	v_dual_mov_b32 v144, 0 :: v_dual_lshlrev_b32 v11, 1, v195
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v12, 2, v198
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v9, 32, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v196, off offset:156
	scratch_store_b32 off, v0, off offset:136
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v0, 0, v6
	v_dual_mov_b32 v230, 0 :: v_dual_and_b32 v11, 28, v11
	v_add3_u32 v9, 0, v12, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:140
	scratch_store_b32 off, v50, off offset:172
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v0, 0, v50
	scratch_store_b32 off, v197, off offset:160 ; 4-byte Folded Spill
	v_mov_b32_e32 v69, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v9, v11
	scratch_store_b32 off, v198, off offset:164 ; 4-byte Folded Spill
	s_and_b32 s1, s1, s5
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s3, s33, 1
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s5, s40, s24
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	scratch_load_b32 v191, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s3, s11
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s6, s8
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s6, s5, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s7
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_or_b32 s6, s6, 1
	s_lshl_b32 s7, s10, 8
	s_mul_i32 s6, s33, s6
	s_mul_i32 s5, s5, s33
	v_add3_u32 v12, s6, s7, v195
	s_lshl_b32 s5, s5, 1
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v10, s34, v10
	v_add3_u32 v13, s5, s7, v195
	s_lshl_b32 s5, s9, 8
	v_lshrrev_b32_e32 v8, 1, v195
	v_subrev_nc_u32_e32 v12, s5, v12
	v_mul_lo_u32 v3, s40, v3
	v_mul_lo_u32 v2, s40, v2
	v_mul_lo_u32 v1, s40, v1
	v_mul_lo_u32 v10, v10, s11
	v_dual_mov_b32 v157, 0 :: v_dual_lshlrev_b32 v194, 1, v12
	v_mul_lo_u32 v12, s33, v196
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v4, 0, v197
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v8, 0x70, v8
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v14, 1, v198
	v_subrev_nc_u32_e32 v13, s5, v13
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s42, s4, s24
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s4, 0
	v_dual_mov_b32 v152, 0 :: v_dual_lshlrev_b32 v161, 1, v3
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v153, 0 :: v_dual_lshlrev_b32 v162, 1, v2
	v_dual_mov_b32 v150, 0 :: v_dual_lshlrev_b32 v163, 1, v1
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v171, v4, v8
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v1, s4
	v_dual_mov_b32 v155, 0 :: v_dual_lshlrev_b32 v160, 1, v13
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshl_add_u32 v165, v49, 2, v10
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v166, 1, v12
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v173, 0, v14
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v2, s5
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v6, s9
	v_mov_b32_e32 v8, s11
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_add_u32 s43, s42, s33
	s_lshl_b32 s44, s33, 2
	s_lshl_b32 s45, s33, 5
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v9, s41, 8, v154
	v_dual_cndmask_b32 v0, 0x80000000, v165 :: v_dual_mov_b32 v185, v155
	v_mov_b32_e32 v186, v85
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v202, off offset:44
	scratch_store_b32 off, v44, off offset:40
	scratch_store_b32 off, v45, off offset:36
	scratch_store_b32 off, v201, off offset:32
	scratch_store_b32 off, v200, off offset:28
	scratch_store_b32 off, v199, off offset:24
	scratch_store_b32 off, v46, off offset:20
	scratch_store_b32 off, v47, off offset:16
	scratch_store_b32 off, v145, off offset:12
	scratch_store_b32 off, v147, off offset:8
	scratch_store_b32 off, v149, off offset:4
	scratch_store_b32 off, v112, off
	v_dual_mov_b32 v85, v57 :: v_dual_add_nc_u32 v184, v166, v9
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_b32 v0, v0, s[24:27], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v165, 16, v165
	s_add_i32 s40, s40, -1
	v_add_nc_u32_e32 v9, s42, v184
	s_cmp_lg_u32 s40, 0
	v_add_nc_u32_e32 v166, s45, v166
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_b128 v[25:28], v9, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v9, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[17:20], v0 offset1:32
	ds_load_2addr_b64 v[9:12], v0 offset0:64 offset1:96
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[21:24], v0 offset1:32
	ds_load_2addr_b64 v[13:16], v0 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v177, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v177, v[25:28]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v171 offset:1280
	ds_load_u8 v25, v171 offset:1024
	ds_load_u8 v37, v171 offset:1920
	ds_load_u8 v38, v171 offset:1664
	ds_load_u8 v39, v171 offset:1408
	ds_load_u8 v40, v171 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	ds_load_u8 v25, v171 offset:1792
	ds_load_u8 v26, v171 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v171 offset:256
	ds_load_u8 v27, v171
	ds_load_u8 v41, v171 offset:896
	ds_load_u8 v42, v171 offset:640
	ds_load_u8 v43, v171 offset:384
	ds_load_u8 v44, v171 offset:128
	v_lshl_or_b32 v34, v25, 16, v0
	ds_load_u8 v0, v171 offset:3328
	ds_load_u8 v25, v171 offset:3072
	ds_load_u8 v45, v171 offset:3968
	ds_load_u8 v46, v171 offset:3712
	ds_load_u8 v47, v171 offset:3456
	ds_load_u8 v167, v171 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v171 offset:768
	ds_load_u8 v28, v171 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v33, v27, 16, v26
	ds_load_u8 v25, v171 offset:3840
	ds_load_u8 v26, v171 offset:3584
	v_wmma_i32_16x16x16_iu4 v[199:206], v[33:34], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[238:245], v[33:34], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v171 offset:2304
	ds_load_u8 v27, v171 offset:2048
	ds_load_u8 v168, v171 offset:2944
	ds_load_u8 v169, v171 offset:2688
	ds_load_u8 v170, v171 offset:2432
	ds_load_u8 v172, v171 offset:2176
	v_lshl_or_b32 v36, v25, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v171 offset:2816
	ds_load_u8 v28, v171 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v35, v27, 16, v26
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[199:206], v[35:36], v[13:14], v[199:206] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[21:22], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[238:245], v[35:36], v[15:16], v[238:245] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v255, v204
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v29
	v_cvt_f32_i32_e32 v188, v25
	v_cvt_f32_i32_e32 v154, v26
	v_cvt_f32_i32_e32 v187, v27
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v25, v38, v37, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v30
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v26, v44, v43, 0xc0c0004
	v_perm_b32 v27, v42, v41, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v190, v28
	v_cvt_f32_i32_e32 v254, v205
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v31
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v37, v27, 16, v26
	v_perm_b32 v26, v172, v170, 0xc0c0004
	v_perm_b32 v27, v169, v168, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v172, v200
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	v_cvt_f32_i32_e32 v169, v201
	v_cvt_f32_i32_e32 v168, v202
	v_cvt_f32_i32_e32 v253, v206
	v_cvt_f32_i32_e32 v175, v241
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_perm_b32 v0, v40, v39, 0xc0c0004
	v_lshl_or_b32 v39, v27, 16, v26
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v57, v242
	v_cvt_f32_i32_e32 v174, v243
	v_cvt_f32_i32_e32 v149, v244
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v38, v25, 16, v0
	v_perm_b32 v0, v167, v47, 0xc0c0004
	v_perm_b32 v25, v46, v45, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v245
	v_cvt_f32_i32_e32 v159, v240
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[241:248], v[37:38], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v40, v25, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v49, v238
	v_cvt_f32_i32_e32 v50, v239
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[241:248], v[39:40], v[15:16], v[241:248] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[39:40], v[21:22], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v220, v247
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v25
	v_cvt_f32_i32_e32 v251, v242
	v_cvt_f32_i32_e32 v249, v243
	v_cvt_f32_i32_e32 v247, v244
	v_cvt_f32_i32_e32 v233, v245
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v30
	v_cvt_f32_i32_e32 v222, v246
	v_cvt_f32_i32_e32 v68, v248
	v_cvt_f32_i32_e32 v241, v241
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v31
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v26
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v27
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v28
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v29
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[19:20], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[25:32], v[35:36], v[23:24], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v237, v25
	v_cvt_f32_i32_e32 v155, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v176, v27
	v_cvt_f32_i32_e32 v179, v28
	v_cvt_f32_i32_e32 v232, v29
	v_cvt_f32_i32_e32 v231, v30
	v_cvt_f32_i32_e32 v67, v31
	v_cvt_f32_i32_e32 v183, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[19:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[39:40], v[23:24], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v196, v27
	v_cvt_f32_i32_e32 v27, v203
	v_cvt_f32_i32_e32 v198, v26
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v30
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v31
	v_cvt_f32_i32_e32 v31, v199
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[199:206], v[37:38], v[9:10], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[199:206], v[39:40], v[13:14], v[199:206] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v28
	v_cvt_f32_i32_e32 v224, v200
	v_cvt_f32_i32_e32 v223, v201
	v_cvt_f32_i32_e32 v221, v202
	v_cvt_f32_i32_e32 v112, v203
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v29
	v_cvt_f32_i32_e32 v145, v199
	v_cvt_f32_i32_e32 v199, v204
	v_cvt_f32_i32_e32 v197, v205
	v_cvt_f32_i32_e32 v195, v206
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s43, v184
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_b128 v[32:35], v0, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v177, v[32:35]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v171 offset:1280
	ds_load_u8 v25, v171 offset:1024
	ds_load_u8 v28, v171 offset:1920
	ds_load_u8 v40, v171 offset:1664
	ds_load_u8 v41, v171 offset:1408
	ds_load_u8 v42, v171 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	ds_load_u8 v25, v171 offset:1792
	ds_load_u8 v26, v171 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v40, v28, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v171 offset:256
	ds_load_u8 v29, v171
	ds_load_u8 v43, v171 offset:896
	ds_load_u8 v44, v171 offset:640
	ds_load_u8 v45, v171 offset:384
	ds_load_u8 v46, v171 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v29, v26, 0xc0c0004
	ds_load_u8 v26, v171 offset:768
	ds_load_u8 v30, v171 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v30, v26, 0xc0c0004
	v_lshl_or_b32 v26, v25, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v25, v30, 16, v29
	ds_load_u8 v0, v171 offset:3328
	ds_load_u8 v29, v171 offset:3072
	ds_load_u8 v47, v171 offset:3968
	ds_load_u8 v167, v171 offset:3712
	ds_load_u8 v170, v171 offset:3456
	ds_load_u8 v184, v171 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	ds_load_u8 v29, v171 offset:3840
	ds_load_u8 v30, v171 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v171 offset:2304
	ds_load_u8 v32, v171 offset:2048
	ds_load_u8 v192, v171 offset:2944
	ds_load_u8 v193, v171 offset:2688
	ds_load_u8 v200, v171 offset:2432
	ds_load_u8 v201, v171 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v32, v32, v30, 0xc0c0004
	ds_load_u8 v30, v171 offset:2816
	ds_load_u8 v33, v171 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v33, v30, 0xc0c0004
	v_lshl_or_b32 v30, v29, 16, v0
	v_perm_b32 v0, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v29, v33, 16, v32
	v_wmma_i32_16x16x16_iu4 v[32:39], v[25:26], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v213, v28, 16, v0
	v_perm_b32 v0, v184, v170, 0xc0c0004
	v_perm_b32 v28, v167, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[29:30], v[21:22], v[32:39] neg_lo:[1,1,0]
	v_lshl_or_b32 v215, v28, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v182, v32
	v_cvt_f32_i32_e32 v240, v33
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v32, v46, v45, 0xc0c0004
	v_perm_b32 v33, v44, v43, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v239, v34
	v_cvt_f32_i32_e32 v238, v35
	v_cvt_f32_i32_e32 v229, v36
	v_cvt_f32_i32_e32 v227, v37
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v212, v33, 16, v32
	v_perm_b32 v32, v201, v200, 0xc0c0004
	v_perm_b32 v33, v193, v192, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v226, v38
	v_cvt_f32_i32_e32 v225, v39
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[25:26], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v214, v33, 16, v32
	v_wmma_i32_16x16x16_iu4 v[32:39], v[212:213], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[29:30], v[13:14], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[214:215], v[21:22], v[32:39] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v252, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v250, v45
	v_cvt_f32_i32_e32 v248, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v37
	v_cvt_f32_i32_e32 v17, v32
	v_cvt_f32_i32_e32 v18, v38
	v_cvt_f32_i32_e32 v193, v33
	v_cvt_f32_i32_e32 v192, v34
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v39
	v_cvt_f32_i32_e32 v184, v35
	v_cvt_f32_i32_e32 v21, v36
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[32:39], v[25:26], v[19:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v246, v47
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[32:39], v[29:30], v[23:24], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v167, v32
	v_cvt_f32_i32_e32 v0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v170, v34
	v_cvt_f32_i32_e32 v28, v35
	v_cvt_f32_i32_e32 v245, v36
	v_cvt_f32_i32_e32 v244, v37
	v_cvt_f32_i32_e32 v243, v38
	v_cvt_f32_i32_e32 v242, v39
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[32:39], v[212:213], v[19:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[214:215], v[23:24], v[32:39] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v200, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v22, v39
	v_cvt_f32_i32_e32 v203, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v202, v34
	v_cvt_f32_i32_e32 v39, v40
	v_cvt_f32_i32_e32 v34, v41
	v_cvt_f32_i32_e32 v33, v42
	v_cvt_f32_i32_e32 v32, v43
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[212:213], v[9:10], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v201, v35
	v_cvt_f32_i32_e32 v23, v36
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v35, 0x80000000, v164, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[214:215], v[13:14], v[40:47] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v36, 0x80000000, v163, s1
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v19, v37
	v_cvt_f32_i32_e32 v20, v38
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v204, v40
	v_cvt_f32_i32_e32 v24, v45
	v_cvt_f32_i32_e32 v10, v46
	v_cvt_f32_i32_e32 v13, v47
	v_cvt_f32_i32_e32 v208, v41
	v_cvt_f32_i32_e32 v206, v42
	v_cvt_f32_i32_e32 v205, v43
	v_cvt_f32_i32_e32 v14, v44
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[25:26], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v163, 2, v163
	v_add_nc_u32_e32 v164, 2, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[29:30], v[15:16], v[40:47] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v177, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v178, v41
	v_cvt_f32_i32_e32 v9, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v181, v43
	v_cvt_f32_i32_e32 v30, v44
	v_cvt_f32_i32_e32 v25, v45
	v_cvt_f32_i32_e32 v29, v46
	v_cvt_f32_i32_e32 v26, v47
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[212:213], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[214:215], v[15:16], v[40:47] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v16, v44
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v44, v36, s[28:31], 0 offen
	v_cndmask_b32_e64 v36, 0x80000000, v162, s2
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v11, v45
	v_cvt_f32_i32_e32 v12, v46
	v_cvt_f32_i32_e32 v212, v40
	v_cvt_f32_i32_e32 v215, v41
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v45, v36, s[28:31], 0 offen
	v_cndmask_b32_e64 v36, 0x80000000, v161, s3
	buffer_load_u16 v46, v36, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v36, v160, s[16:19], 0 offen
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v214, v42
	v_cvt_f32_i32_e32 v213, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v15, v47
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v161, 2, v161
	v_add_nc_u32_e32 v162, 2, v162
	v_add_nc_u32_e32 v160, s44, v160
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v217, 16, v35
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v21, v217, v21 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v12, v12, v46
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v191, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v173
	ds_load_b128 v[40:43], v173 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v15, v15, v46 :: v_dual_lshlrev_b32 v44, 16, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v16, v46, v16 :: v_dual_mul_f32 v31, v45, v31
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v235, v31, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v45, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v100, v31, v36 :: v_dual_mul_f32 v31, v45, v169
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v45, v27
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v13, v13, v45
	v_mul_f32_e32 v10, v10, v45
	v_dual_mul_f32 v14, v45, v14 :: v_dual_fmac_f32 v101, v31, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v45, v168
	v_mul_f32_e32 v47, v217, v188
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v228, v27, v40 :: v_dual_mul_f32 v27, v45, v255
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v236, v31, v38
	v_dual_fmac_f32 v180, v47, v35 :: v_dual_mul_f32 v47, v217, v154
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v46, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v27, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v27, v45, v254 :: v_dual_fmac_f32 v146, v47, v36
	v_mul_f32_e32 v47, v217, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v234, v31, v35 :: v_dual_mul_f32 v31, v46, v50
	v_dual_fmac_f32 v92, v27, v42 :: v_dual_mul_f32 v27, v45, v253
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v138, v47, v37 :: v_dual_mul_f32 v47, v217, v190
	v_fmac_f32_e32 v75, v31, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v46, v159
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v27, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v46, v57
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v47, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v47, v44, v237
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v31, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v46, v175
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v207, v27, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v46, v174
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v47, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v47, v44, v155
	v_dual_mov_b32 v155, v185 :: v_dual_fmac_f32 v76, v31, v38
	scratch_load_b32 v31, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v27, v41
	v_fmac_f32_e32 v122, v47, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v47, v44, v176
	v_mul_f32_e32 v27, v46, v149
	v_dual_mov_b32 v57, v85 :: v_dual_mul_f32 v0, v44, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v22, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v128, v47, v37 :: v_dual_mul_f32 v47, v44, v179
	v_dual_fmac_f32 v48, v27, v42 :: v_dual_mul_f32 v27, v46, v147
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v23, v44, v23
	v_mul_f32_e32 v20, v20, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v47, v38
	scratch_load_b32 v47, off, off offset:16 ; 4-byte Folded Reload
	v_fmac_f32_e32 v189, v27, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v31, v217, v31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v31, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v31, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v27, v27, v217
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v217, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v31, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v31, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v217, v31
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v31, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v31, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v31, v217, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v31, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v44, v232
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v31, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v44, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v108, v31, v41 :: v_dual_mul_f32 v31, v44, v67
	v_fmac_f32_e32 v109, v31, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v44, v183
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v31, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[35:38], v173 offset:512
	ds_load_b128 v[40:43], v173 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v230, v27, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v217, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v27, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v217, v27
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v27, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v217, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v27, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v152, v27, v35 :: v_dual_mul_f32 v27, v44, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v27, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v44, v196
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v80, v27, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v44, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v81, v27, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v145, v45
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v27, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v45, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v55, v27, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v45, v223
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v56, v27, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v45, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v57, v27, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v241, v46
	v_dual_mov_b32 v85, v186 :: v_dual_fmac_f32 v140, v27, v35
	v_mul_f32_e32 v27, v46, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v51, v27, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v46, v249
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v52, v27, v37 :: v_dual_mul_f32 v27, v46, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v27, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v217, v27
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v106, v27, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v157, v27, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v217
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v155, v27, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v153, v27, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v44, v27
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v27, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v150, v27, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v148, v27, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v142, v27, v43 :: v_dual_mul_f32 v27, v45, v112
	v_fmac_f32_e32 v58, v27, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v199, v45
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v199, off, off offset:24
	scratch_load_b32 v154, off, off offset:128
	scratch_load_b32 v145, off, off offset:12
	scratch_load_b32 v147, off, off offset:8
	scratch_load_b32 v149, off, off offset:4
	scratch_load_b32 v112, off, off
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v27, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v197, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v61, v27, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v195, v45
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v54, v27, v43 :: v_dual_mul_f32 v27, v46, v233
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v145, v27, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v222, v46
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v139, v27, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v220, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v137, v27, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v68, v46
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v27, v43
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v27, v194, s[16:19], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v194, s44, v194
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v191, v27
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v173
	ds_load_b128 v[40:43], v173 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v27, v217, v182
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v135, v27, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v27, v217, v240
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v97, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v170
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v134, v27, v36 :: v_dual_mul_f32 v27, v217, v239
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v96, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v120, v27, v37 :: v_dual_mul_f32 v27, v217, v238
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v95, v0, v38 :: v_dual_mul_f32 v0, v45, v39
	v_fmac_f32_e32 v127, v27, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v27, v44, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v94, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v34
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v98, v27, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v72, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v149, v0, v38 :: v_dual_mul_f32 v0, v46, v177
	v_fmac_f32_e32 v218, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v46, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v216, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v46, v9
	scratch_load_b32 v9, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v211, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v46, v181
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v78, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v217, v229
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v114, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v217, v227
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v113, v0, v41 :: v_dual_mul_f32 v0, v217, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v111, v0, v42 :: v_dual_mul_f32 v0, v217, v225
	v_fmac_f32_e32 v112, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v115, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v244
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v110, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v243
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v89, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v242
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v88, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v66, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v250
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v65, v0, v41 :: v_dual_mul_f32 v0, v45, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v246
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v64, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v46, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v210, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v46, v25
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v209, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v46, v29
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v70, v0, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v46, v26
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[25:28], v173 offset:512
	ds_load_b128 v[29:32], v173 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v11, v46
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v69, v0, v43 :: v_dual_mul_f32 v0, v17, v217
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v18, v217
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v156, v0, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v217, v193
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v103, v21, v29
	v_fmac_f32_e32 v99, v23, v29
	v_fmac_f32_e32 v199, v22, v32
	v_fmac_f32_e32 v83, v14, v29
	v_dual_fmac_f32 v123, v0, v26 :: v_dual_mul_f32 v0, v217, v192
	v_fmac_f32_e32 v47, v10, v31
	v_fmac_f32_e32 v53, v16, v29
	v_dual_fmac_f32 v126, v12, v31 :: v_dual_fmac_f32 v129, v11, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v105, v0, v27 :: v_dual_mul_f32 v0, v217, v184
	v_fmac_f32_e32 v119, v15, v32
	v_fmac_f32_e32 v104, v0, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v44
	scratch_load_b32 v200, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v219, v0, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v203
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v107, v0, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v202
	scratch_load_b32 v202, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v102, v0, v27
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v201
	scratch_load_b32 v201, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v71, v0, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v204, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v158, v0, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v208
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v0, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v85, v0, v27 :: v_dual_mul_f32 v0, v45, v205
	v_fmac_f32_e32 v84, v0, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v212, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v143, v0, v25 :: v_dual_mul_f32 v0, v46, v215
	v_fmac_f32_e32 v62, v0, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v46, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v147, v0, v27 :: v_dual_mul_f32 v0, v46, v213
	v_fmac_f32_e32 v60, v0, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_mul_f32_e32 v18, v9, v217
	v_mul_f32_e32 v9, v24, v45
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v45, off, off offset:36
	scratch_load_b32 v46, off, off offset:20
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v200, v20, v31
	v_fmac_f32_e32 v144, v13, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v0, v0, v217 :: v_dual_mul_f32 v19, v19, v44
	scratch_load_b32 v44, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v202, v0, v30
	v_fmac_f32_e32 v201, v19, v30
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v45, v18, v32 :: v_dual_fmac_f32 v46, v9, v30
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v44, v17, v31
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v195, off, off offset:152
	scratch_load_b32 v196, off, off offset:156
	scratch_load_b32 v197, off, off offset:160
	scratch_load_b32 v198, off, off offset:164
	scratch_load_b32 v49, off, off offset:168
	scratch_load_b32 v50, off, off offset:172
	v_mov_b32_e32 v67, v180
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v1, 8, v195
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v156 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v135
	v_dual_mul_f32 v2, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v193, 0xbfb8aa3b, v111
	v_dual_mul_f32 v8, 0xbfb8aa3b, v134 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_mul_f32_e32 v192, 0xbfb8aa3b, v123
	v_mul_f32_e32 v186, 0xbfb8aa3b, v95
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v3
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v0, 0xbfb8aa3b, v202
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_cndmask_b32_e64 v12, 0, 0x42800000, s1
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v156
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v44
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v45
	v_exp_f32_e32 v13, v7
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v23, 0xbfb8aa3b, v112
	v_mul_f32_e32 v7, 0xbfb8aa3b, v114
	v_exp_f32_e32 v10, v10
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v202
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_dual_mul_f32 v177, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v174, 0xbfb8aa3b, v149
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v4, v13, v4
	v_exp_f32_e32 v2, v2
	v_mul_f32_e32 v13, 0xbfb8aa3b, v219
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v10, v10, v3
	v_dual_mul_f32 v3, 0xbfb8aa3b, v201 :: v_dual_mul_f32 v164, 0xbfb8aa3b, v218
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_dual_mul_f32 v13, 0xbfb8aa3b, v200 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v69
	v_dual_mul_f32 v5, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v127
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v0, v2, v0
	v_ldexp_f32 v11, v12, v11
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_add_f32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v194, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v14, 0xbfb8aa3b, v199
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v219
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v201
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v200
	v_exp_f32_e32 v12, v12
	v_mul_f32_e32 v182, 0xbfb8aa3b, v89
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_dual_mul_f32 v68, 0xbfb8aa3b, v103 :: v_dual_mul_f32 v191, 0xbfb8aa3b, v105
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v199
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v12, v12, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v158
	v_ldexp_f32 v13, v13, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v46
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v14, v15, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v18, 0xbfb8aa3b, v144
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v190, 0xbfb8aa3b, v104 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v97
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	v_ldexp_f32 v15, v17, v16
	v_mul_f32_e32 v17, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_mul_f32_e32 v176, 0xbfb8aa3b, v94
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_mul_f32_e32 v166, 0xbfb8aa3b, v84
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v144
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v158
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v46
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v47
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	v_mul_f32_e32 v163, 0xbfb8aa3b, v216
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, s1, v44, v10, v44
	v_div_scale_f32 v43, null, v12, v12, v219
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v188, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v88
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v16, v16, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v143
	v_ldexp_f32 v17, v17, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v129
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v18, v19, v18
	v_ldexp_f32 v19, v21, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v21, 0xbfb8aa3b, v119
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v4
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v20, 0xbfb8aa3b, v126
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v26, 0, 0x42800000, s0
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v143
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v29, v29, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v129
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v21, 0xbfb8aa3b, v126 :: v_dual_fmac_f32 v28, 0xbfb8aa3b, v119
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, vcc_lo, v156, v29, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v21
	v_exp_f32_e32 v28, v28
	v_mul_f32_e32 v21, 0xbfb8aa3b, v62
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_ldexp_f32 v25, v26, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_add_f32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v3, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_add_f32 v18, 1.0, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v183, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v184, 0xbfb8aa3b, v115
	v_ldexp_f32 v20, v31, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v26, v28, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v30, v33, 1.0
	v_div_scale_f32 v31, null, v10, v10, v44
	v_div_scale_f32 v28, null, v0, v0, v202
	v_fmac_f32_e32 v33, v27, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v35, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v3, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v180, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v173, 0xbfb8aa3b, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v36, v34, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v178, 0xbfb8aa3b, v71 :: v_dual_mul_f32 v179, 0xbfb8aa3b, v102
	v_dual_mul_f32 v175, 0xbfb8aa3b, v74 :: v_dual_mul_f32 v170, 0xbfb8aa3b, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v30, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v31, v35, 1.0
	v_fma_f32 v37, -v28, v27, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v169, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v172, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v36, v38, v33 :: v_dual_fmac_f32 v35, v39, v35
	v_div_scale_f32 v39, null, v11, v11, v45
	v_fmac_f32_e32 v27, v37, v27
	v_div_scale_f32 v37, s0, v202, v0, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v30, -v30, v36, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_mul_f32 v38, v37, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v171, 0xbfb8aa3b, v65 :: v_dual_mul_f32 v168, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v30, v33, v36
	v_rcp_f32_e32 v33, v43
	v_fma_f32 v34, -v28, v38, v37
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v39, v41, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v30, v29, v156
	v_div_scale_f32 v30, s2, v45, v11, v45
	v_fmac_f32_e32 v41, v36, v41
	v_mul_f32_e32 v42, v40, v35
	v_fmac_f32_e32 v38, v34, v27
	v_div_scale_f32 v36, s0, v219, v12, v219
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v167, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v160, 0xbfb8aa3b, v211
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v31, v42, v40
	v_fma_f32 v28, -v28, v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v165, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v162, 0xbfb8aa3b, v78
	v_dual_mul_f32 v161, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v34, v35
	v_fma_f32 v34, -v43, v33, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v28, v27, v38
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v28, -v31, v42, v40
	v_mul_f32_e32 v31, v30, v41
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, null, v13, v13, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v35, v42
	v_fma_f32 v37, -v39, v31, v30
	v_div_scale_f32 v40, null, v14, v14, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v35, v34
	v_div_fixup_f32 v10, v28, v10, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v37, v41
	v_rcp_f32_e32 v28, v40
	v_div_fixup_f32 v0, v27, v0, v202
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v24, 0xbfb8aa3b, v70 :: v_dual_mul_f32 v159, 0xbfb8aa3b, v209
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v39, v31, v30
	v_div_scale_f32 v39, null, v15, v15, v199
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v37, -v34, v35, 1.0
	v_mul_f32_e32 v38, v36, v33
	v_fma_f32 v42, -v40, v28, 1.0
	v_div_fmas_f32 v30, v30, v41, v31
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v35, v37, v35
	v_fma_f32 v27, -v43, v38, v36
	v_rcp_f32_e32 v37, v39
	v_fmac_f32_e32 v28, v42, v28
	v_div_scale_f32 v41, s2, v200, v14, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v27, v33
	v_div_scale_f32 v27, s1, v201, v13, v201
	v_div_scale_f32 v44, s0, v199, v15, v199
	v_fma_f32 v31, -v43, v38, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v39, v37, 1.0
	v_mul_f32_e32 v36, v27, v35
	v_div_scale_f32 v43, null, v16, v16, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v31, v31, v33, v38
	v_fmac_f32_e32 v37, v42, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v34, v36, v27
	v_div_fixup_f32 v11, v30, v11, v45
	v_rcp_f32_e32 v42, v43
	v_div_fixup_f32 v12, v31, v12, v219
	v_dual_mul_f32 v31, v44, v37 :: v_dual_mul_f32 v38, v41, v28
	v_fmac_f32_e32 v36, v33, v35
	v_div_scale_f32 v33, null, v17, v17, v46
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v40, v38, v41
	v_fma_f32 v27, -v34, v36, v27
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v43, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v3, 0xbfb8aa3b, v60 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v30, v28
	v_fma_f32 v30, -v39, v31, v44
	v_div_fmas_f32 v27, v27, v35, v36
	s_mov_b32 vcc_lo, s2
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v40, v38, v41
	v_fmac_f32_e32 v31, v30, v37
	v_fma_f32 v36, -v33, v34, 1.0
	v_div_fixup_f32 v13, v27, v13, v201
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v35, v28, v38
	v_fma_f32 v35, -v39, v31, v44
	v_fmac_f32_e32 v34, v36, v34
	v_div_scale_f32 v36, null, v18, v18, v47
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v39, s1, v46, v17, v46
	v_div_fmas_f32 v31, v35, v37, v31
	v_rcp_f32_e32 v35, v36
	v_fmac_f32_e32 v42, v45, v42
	v_div_scale_f32 v45, s3, v158, v16, v158
	v_mul_f32_e32 v37, v39, v34
	v_div_fixup_f32 v14, v28, v14, v200
	v_div_fixup_f32 v27, v31, v15, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v30, v45, v42
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v28, -v33, v37, v39
	v_div_scale_f32 v31, null, v19, v19, v144
	v_fma_f32 v38, -v43, v30, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v28, v34
	v_div_scale_f32 v28, s0, v47, v18, v47
	v_fmac_f32_e32 v30, v38, v42
	v_fma_f32 v38, -v36, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v15, -v43, v30, v45
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v32, v32, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v15, v15, v42, v30
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v30, v31
	v_div_fixup_f32 v40, v15, v16, v158
	v_fma_f32 v15, -v33, v37, v39
	v_rcp_f32_e32 v39, v38
	v_mul_f32_e32 v16, v28, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v31, v30, 1.0
	v_fma_f32 v41, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v41, v39
	v_div_fmas_f32 v15, v15, v34, v37
	v_fma_f32 v34, -v36, v16, v28
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v37, s1, v144, v19, v144
	v_div_fixup_f32 v42, v15, v17, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, v34, v35
	v_div_scale_f32 v34, s2, v143, v32, v143
	v_div_scale_f32 v41, null, v20, v20, v126
	v_fma_f32 v28, -v36, v16, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v34, v39
	v_div_scale_f32 v46, null, v26, v26, v119
	v_rcp_f32_e32 v45, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v28, v35, v16
	v_fma_f32 v28, -v38, v43, v34
	v_fmac_f32_e32 v30, v33, v30
	v_div_scale_f32 v33, null, v25, v25, v129
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v28, v39
	v_mul_f32_e32 v17, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v15, v33
	v_div_fixup_f32 v47, v16, v18, v47
	v_div_scale_f32 v28, s3, v126, v20, v126
	v_fma_f32 v36, -v31, v17, v37
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v17, v36, v30
	v_fma_f32 v44, -v33, v15, 1.0
	v_div_scale_f32 v36, s0, v129, v25, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v31, v17, v37
	v_fmac_f32_e32 v15, v44, v15
	v_fma_f32 v44, -v41, v45, 1.0
	v_fma_f32 v31, -v46, v35, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v16, v16, v30, v17
	v_mul_f32_e32 v18, v36, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v44, v45
	v_fma_f32 v17, -v38, v43, v34
	v_fmac_f32_e32 v35, v31, v35
	v_div_scale_f32 v31, s1, v119, v26, v119
	v_fma_f32 v30, -v33, v18, v36
	v_mul_f32_e32 v34, v28, v45
	v_div_fixup_f32 v37, v16, v19, v144
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, v30, v15
	v_fma_f32 v16, -v41, v34, v28
	v_div_fmas_f32 v17, v17, v39, v43
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v19, v31, v35
	v_fma_f32 v9, -v33, v18, v36
	v_fmac_f32_e32 v34, v16, v45
	v_div_fixup_f32 v30, v17, v32, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v16, -v46, v19, v31
	v_div_fmas_f32 v9, v9, v15, v18
	v_fma_f32 v15, -v41, v34, v28
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v19, v16, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v45, v34
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v9, v25, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v15, v20, v126
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v230, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v46, v19, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v183
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v16, v35, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_ldexp_f32 v6, v18, v17
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v134
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v157, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v8, v26, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v15
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v155, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v0, v0, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v152, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v31
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v6, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v18, v153, v11 :: v_dual_mul_f32 v15, v150, v13
	v_dual_mul_f32 v14, v148, v14 :: v_dual_mul_f32 v13, v142, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v120
	v_ldexp_f32 v5, v10, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v73, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v31, v29, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v36, v9
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, vcc_lo, v135, v0, v135
	v_fmac_f32_e32 v29, v8, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v11, v141, v42 :: v_dual_mul_f32 v10, v54, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v33, v33, v127
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v139, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v36, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v6, v137, v28 :: v_dual_mul_f32 v39, v34, v29
	v_mul_f32_e32 v8, v140, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v38
	v_div_scale_f32 v32, null, v27, v27, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v31, v39, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, s0, v134, v27, v134
	v_rcp_f32_e32 v35, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v40, v29
	v_fma_f32 v36, -v38, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v31, v39, v34
	v_div_scale_f32 v34, s1, v127, v33, v127
	v_fmac_f32_e32 v37, v36, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v61, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v32, v35, 1.0
	v_div_fmas_f32 v28, v28, v29, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v40, v34, v37 :: v_dual_mul_f32 v7, v136, v26
	v_div_scale_f32 v36, null, v25, v25, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v38, v40, v34
	v_fmac_f32_e32 v35, v41, v35
	v_rcp_f32_e32 v29, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v26, v37
	v_mul_f32_e32 v31, v30, v35
	v_div_fixup_f32 v0, v28, v0, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	v_exp_f32_e32 v26, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v38, v40, v34
	v_fma_f32 v39, -v32, v31, v30
	v_fma_f32 v28, -v36, v29, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v119, v67, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v39, v35
	v_fmac_f32_e32 v29, v28, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v26, v26, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v32, v31, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v30, v35, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v193
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v26, v26, v114
	v_div_fixup_f32 v27, v30, v27, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v37, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v34, v33, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v28, v32, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v121, v121, v30 :: v_dual_add_f32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, s2, v120, v25, v120
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v191
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_mul_f32 v31, v39, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v36, v31, v39
	v_fmac_f32_e32 v31, v35, v29
	v_div_scale_f32 v35, null, v28, v28, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v36, v31, v39
	v_fma_f32 v36, -v42, v32, 1.0
	v_div_scale_f32 v39, null, v34, v34, v111
	v_div_fmas_f32 v29, v33, v29, v31
	v_rcp_f32_e32 v31, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v33, s0, v114, v26, v114
	v_div_fixup_f32 v23, v29, v25, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v36, v33, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v120, v146, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v35, v31, 1.0
	v_rcp_f32_e32 v27, v39
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v38, -v42, v36, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v37, v31
	v_div_scale_f32 v37, s1, v113, v28, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v38, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v37, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v42, v36, v33
	v_fma_f32 v33, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v38, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v29, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v30, v32, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	v_cndmask_b32_e64 v36, 0, 0x42800000, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v23, v138, v23 :: v_dual_add_f32 v0, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v39, v27, 1.0
	v_div_fixup_f32 v26, v29, v26, v114
	v_fma_f32 v29, -v35, v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v0, v0, v112
	v_fmac_f32_e32 v27, v25, v27
	v_div_scale_f32 v25, s0, v111, v34, v111
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v32, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v123
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v37, v25, v27
	v_div_fmas_f32 v29, v29, v31, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v105
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v30, v32, 1.0
	v_div_fixup_f32 v28, v29, v28, v113
	v_fma_f32 v29, -v39, v37, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v38, v32
	v_div_scale_f32 v38, s1, v112, v0, v112
	v_fmac_f32_e32 v37, v29, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v35, v33
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v38, v32
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v25, -v39, v37, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v36, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v30, v33, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v27, v37
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v39, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v34, v111
	v_div_scale_f32 v41, null, v31, v31, v105
	v_fma_f32 v27, -v30, v33, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s2
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v113, v132, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v32, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v39, v35
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v103
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v111, v130, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v27, v0, v112
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v112, v131, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v29, v29, v123
	v_div_scale_f32 v33, vcc_lo, v123, v29, v123
	v_fma_f32 v35, -v41, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v114, v133, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v35, v38
	v_div_scale_f32 v35, s0, v105, v31, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v39, null, v32, v32, v104
	v_fma_f32 v42, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v34, v35, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v27, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, s1, v104, v32, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_rcp_f32_e32 v42, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v33, v40
	v_div_scale_f32 v27, null, v25, v25, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v36, v37, v33
	v_fmac_f32_e32 v37, v0, v40
	v_fma_f32 v0, -v41, v34, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v36, v37, v33
	v_fmac_f32_e32 v34, v0, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v39, v42, 1.0
	v_div_fmas_f32 v26, v26, v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v0, v42
	v_rcp_f32_e32 v0, v27
	v_fma_f32 v28, -v41, v34, v35
	v_div_fixup_f32 v26, v26, v29, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v37, s0, v103, v25, v103
	v_div_fmas_f32 v28, v28, v38, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v27, v0, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v34, v0
	v_div_fixup_f32 v28, v28, v31, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v29, v30, v42 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v39, v29, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v31, v31, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v37, v0
	v_fmac_f32_e32 v29, v35, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v27, v33, v37
	v_fma_f32 v30, -v39, v29, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v36, v34
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v95 :: v_dual_fmac_f32 v33, v40, v0
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v39, null, v31, v31, v98
	v_div_fmas_f32 v29, v30, v42, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v27, v33, v37
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v39
	v_div_scale_f32 v37, null, v30, v30, v97
	v_div_fmas_f32 v0, v27, v0, v33
	v_div_fixup_f32 v29, v29, v32, v104
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v104, v124, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v38, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v39, v36, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v105, v125, v29 :: v_dual_add_f32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v35, v36
	v_fma_f32 v38, -v37, v33, 1.0
	v_div_scale_f32 v35, vcc_lo, v98, v31, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v38, v33
	v_div_scale_f32 v38, s0, v97, v30, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v32, v35, v36
	v_div_fixup_f32 v0, v0, v25, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v28, v38, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v103, v118, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v34, v34, v95
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v106, v106, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v27, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v39, v32, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v40, v36
	v_div_scale_f32 v40, null, v0, v0, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v26, -v39, v32, v35
	v_fma_f32 v35, -v37, v28, v38
	v_fma_f32 v29, -v25, v27, 1.0
	v_div_scale_f32 v39, s1, v95, v34, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v26, v26, v36, v32
	v_fmac_f32_e32 v28, v35, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, s2
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v26, v26, v31, v98
	v_fma_f32 v31, -v37, v28, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s2, v96, v0, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	v_ldexp_f32 v32, v35, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v31, v33, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v30, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v29, v27
	v_rcp_f32_e32 v29, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v36, v39, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v37, -v25, v36, v39
	v_fma_f32 v41, -v40, v29, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v37, v27
	v_fmac_f32_e32 v29, v41, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v36, v39
	v_mul_f32_e32 v31, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v110
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v32, v32, v115
	v_div_fmas_f32 v25, v25, v27, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v40, v31, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v34, v95
	v_fmac_f32_e32 v31, v37, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v95, v117, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v40, v31, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v27, v27, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v33, v37, v33
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v38, v29, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v39, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v29, v0, v96
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v122, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v31, v31, v110
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, vcc_lo, v115, v32, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v98, v128, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v42, v33, v36 :: v_dual_add_f32 v27, 1.0, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v39, v42, v33
	v_div_scale_f32 v41, null, v27, v27, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v35, v38, 1.0
	v_fmac_f32_e32 v42, v30, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v29, v41
	v_fmac_f32_e32 v38, v34, v38
	v_div_scale_f32 v34, null, v0, v0, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v39, v42, v33
	v_div_fmas_f32 v28, v28, v36, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v34
	v_fma_f32 v30, -v41, v29, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v26, v28, v32, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v97, v116, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, s0, v110, v31, v110
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s1, v89, v27, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v34, v36, 1.0
	v_mul_f32_e32 v33, v25, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v32, v36
	v_fma_f32 v37, -v35, v33, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v41, v39, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v37, v38
	v_div_scale_f32 v37, s2, v88, v0, v88
	v_fmac_f32_e32 v39, v28, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v35, v33, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v30, -v41, v39, v30
	v_div_fmas_f32 v25, v25, v38, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v28, v28, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v31, v110
	v_mul_f32_e32 v33, v37, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v34, v33, v37
	v_div_fmas_f32 v29, v30, v29, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v42, null, v28, v28, v107
	v_fmac_f32_e32 v33, v38, v36
	v_div_fixup_f32 v27, v29, v27, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v41
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v175
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v34, v33, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v89, v109, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	v_ldexp_f32 v31, v31, v40
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v29, v0, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v88, v108, v25
	v_mul_f32_e32 v90, v90, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v0, v0, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v25, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v35, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v36, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v30, v30, v102
	v_fma_f32 v35, -v42, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v33, v34
	v_fmac_f32_e32 v32, v35, v32
	v_div_scale_f32 v35, s0, v107, v28, v107
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v37, v35, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v34, v33, 1.0
	v_fma_f32 v31, -v42, v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v38, v33
	v_div_scale_f32 v38, s1, v102, v30, v102
	v_fmac_f32_e32 v37, v31, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v31, v38, v33
	v_fma_f32 v27, -v42, v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v34, v31, v38
	v_div_fmas_f32 v27, v27, v32, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v35, v33
	v_div_fixup_f32 v27, v27, v28, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v34, v31, v38
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v79, v79, v27 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v33, 0, 0x42800000, s2
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v30, v102
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v87, v87, v26 :: v_dual_add_f32 v26, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v39, v25, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v173
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v80, v80, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v26, v26, v99
	v_fmac_f32_e32 v25, v29, v25
	v_div_scale_f32 v29, s0, v71, v0, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v29, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v39, v37, v29
	v_fma_f32 v38, -v32, v34, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v30, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v36, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s1, v99, v26, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v39, v37, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v35, v38, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v29, v25, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v39, -v32, v35, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v25, v0, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v39, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v81, v81, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v32, v35, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v39, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, vcc_lo, v94, v30, v94
	v_div_fixup_f32 v26, v29, v26, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v82, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v34, v34, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v29, v32
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, s1, v149, v34, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v0, v0, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v33, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v30, v30, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v33
	v_fma_f32 v42, -v33, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v42, v40
	v_rcp_f32_e32 v42, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v35, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v41, null, v31, v31, v74
	v_fma_f32 v25, -v33, v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v38, v41
	v_fmac_f32_e32 v37, v25, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v27, -v33, v37, v35
	v_fma_f32 v36, -v41, v38, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v27, v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v36, v38
	v_div_scale_f32 v36, s0, v74, v31, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v27, v27, v30, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v26, v36, v38
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v37, s0, v72, v0, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v41, v26, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v71, v235, v27 :: v_dual_fmac_f32 v26, v25, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v41, v26, v36
	v_fmac_f32_e32 v42, v25, v42
	v_rcp_f32_e32 v25, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v29, v38, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v32, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v26, v26, v31, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v28, v25, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v39, v29, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v30, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v35, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v37, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v28, v33, v37
	v_fma_f32 v32, -v39, v29, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v63
	v_exp_f32_e32 v36, v36
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v40, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v38, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v32, v42, v29
	v_fma_f32 v28, -v28, v33, v37
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v36, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v34, v149
	v_div_fmas_f32 v25, v28, v25, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v38, v35
	v_exp_f32_e32 v28, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_mul_f32 v73, v236, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v100, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v30, v30, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v101, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v32, v32, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v28, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v37
	v_rcp_f32_e32 v28, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v37, v33, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v25, v28, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_fmac_f32 v28, v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v31, v31, v66
	v_rcp_f32_e32 v36, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v39, v36, 1.0
	v_fmac_f32_e32 v36, v35, v36
	v_div_scale_f32 v35, vcc_lo, v66, v31, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v35, v36
	v_fma_f32 v40, -v39, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v34, v40, v36
	v_div_scale_f32 v40, null, v0, v0, v64
	v_fma_f32 v27, -v39, v34, v35
	v_div_scale_f32 v39, s1, v63, v32, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v29, v40
	v_div_fmas_f32 v27, v27, v36, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v36, v39, v28 :: v_dual_fmac_f32 v33, v38, v33
	v_div_scale_f32 v38, s0, v65, v30, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v31, v66
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v26, v38, v33
	v_fma_f32 v41, -v40, v29, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v37, v26, v38
	v_fmac_f32_e32 v29, v41, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v35, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, s2
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v37, v26, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v25, v36, v39
	v_div_scale_f32 v38, s2, v64, v0, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v37, v28
	v_div_fmas_f32 v26, v31, v33, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v36, v39
	v_div_fixup_f32 v26, v26, v30, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v34, v35, v34
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v28, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v28, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v32, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v39, null, v34, v34, v86
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v92, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v39
	v_mul_f32_e32 v31, v38, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v40, v31, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v28, 1.0, v28 :: v_dual_fmac_f32 v31, v37, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v28, v28, v84
	v_fma_f32 v38, -v40, v31, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v33, v37, v33
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v38, v29, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v29, v0, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v39, v36, 1.0
	v_rcp_f32_e32 v29, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v91, v26
	v_mul_f32_e32 v66, v93, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v31, v31, v85
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, vcc_lo, v86, v34, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v40, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, s0, v85, v31, v85
	v_mul_f32_e32 v42, v33, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v39, v42, v33
	v_fma_f32 v32, -v35, v38, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v30, v36
	v_fma_f32 v30, -v41, v29, 1.0
	v_fmac_f32_e32 v38, v32, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v39, v42, v33
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s1, v84, v28, v84
	v_mul_f32_e32 v32, v25, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v26, v26, v36, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v30, v29
	v_div_scale_f32 v33, null, v0, v0, v83
	v_fma_f32 v37, -v35, v32, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v228, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v41, v39, v30
	v_rcp_f32_e32 v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v218
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v37, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v27, v29
	v_div_fixup_f32 v26, v26, v34, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v35, v32, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v33, v36, 1.0
	v_fma_f32 v30, -v41, v39, v30
	v_div_scale_f32 v37, s2, v83, v0, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v216
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v55, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v27, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v34, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v38, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v27, v27, v218
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v32, v37, v36
	v_div_fmas_f32 v29, v30, v29, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v35, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v33, v32, v37
	v_div_fixup_f32 v28, v29, v28, v84
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v25, v25, v31, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v57, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v159
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v42, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, s0, v218, v27, v218
	v_fmac_f32_e32 v32, v38, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v33, v32, v37
	v_div_scale_f32 v33, null, v30, v30, v216
	v_mul_f32_e32 v37, v35, v34
	v_div_fmas_f32 v29, v29, v36, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v32, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v29, v0, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v58, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v33, v32, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v38, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v42, v37, v35
	v_div_scale_f32 v38, s1, v216, v30, v216
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v31, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v31, v38, v32
	v_fma_f32 v28, -v42, v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v33, v31, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v36, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v34, v37
	v_fmac_f32_e32 v31, v35, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v0, v0, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v34, v28, v27, v218
	v_fma_f32 v27, -v33, v31, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v32, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, s2
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v210
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v26, v26, v211
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v209
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	v_exp_f32_e32 v32, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v27, v30, v216
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v36, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v28, v33, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v31, v32, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v56, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v25, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_fmac_f32 v33, v38, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s1, v211, v26, v211
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v32, null, v24, v24, v210
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v39, v25, 1.0
	v_rcp_f32_e32 v22, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v29, v25
	v_div_scale_f32 v29, s0, v78, v0, v78
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v37, v29, v25
	v_fma_f32 v40, -v32, v22, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v39, v37, v29
	v_fmac_f32_e32 v22, v40, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v75, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v27, v25
	v_mul_f32_e32 v27, v38, v33
	v_fma_f32 v29, -v39, v37, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v28, v27, v38
	v_div_fmas_f32 v25, v29, v25, v37
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v27, v39, v33
	v_div_scale_f32 v39, null, v31, v31, v209
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v28, v27, v38
	v_rcp_f32_e32 v38, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v28, v33, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v36, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, vcc_lo, v210, v24, v210
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v39, v38, 1.0
	v_mul_f32_e32 v41, v33, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v35, v38
	v_div_scale_f32 v35, s0, v209, v31, v209
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v32, v41, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v27, v26, v211
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v76, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v37, v37, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v77, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v26, v35, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v36, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v25, v22
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v39, v26, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v32, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s2
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v25, v38
	v_div_scale_f32 v30, null, v0, v0, v69
	v_div_fmas_f32 v22, v29, v22, v41
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v39, v26, v35
	v_fma_f32 v25, -v42, v43, 1.0
	v_div_scale_f32 v35, s0, v69, v0, v69
	v_div_fixup_f32 v22, v22, v24, v210
	v_div_fmas_f32 v21, v29, v38, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v25, v43
	v_div_scale_f32 v25, s1, v70, v37, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v21, v21, v31, v209
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v234, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v147
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v26, v25, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v3, -v30, v29, 1.0
	v_fma_f32 v4, -v42, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v62 :: v_dual_fmac_f32 v26, v4, v43
	v_exp_f32_e32 v4, v33
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_exp_f32_e32 v2, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v42, v26, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v4, v4, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v3, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v2, v2, v24
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v53
	v_exp_f32_e32 v32, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v43, v26
	v_div_scale_f32 v31, null, v4, v4, v62
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v31
	v_div_fixup_f32 v25, v25, v37, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v24, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v26, v35, v29
	v_div_scale_f32 v24, null, v2, v2, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v25, v48, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v30, v26, v35
	v_rcp_f32_e32 v36, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v45, s2, v53, v3, v53
	v_fmac_f32_e32 v26, v34, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v26, v35
	v_fma_f32 v35, -v31, v33, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_fmac_f32 v33, v35, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v32, v32, v60
	v_fma_f32 v35, -v24, v36, 1.0
	v_div_scale_f32 v41, s1, v60, v32, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_fmac_f32_e32 v36, v35, v36
	v_div_scale_f32 v35, s0, v147, v2, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v35, v36
	v_div_fmas_f32 v26, v30, v29, v26
	v_div_scale_f32 v29, null, v3, v3, v53
	v_div_scale_f32 v30, vcc_lo, v62, v4, v62
	v_div_fixup_f32 v0, v26, v0, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v29
	v_fma_f32 v26, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v39, v30, v33 :: v_dual_mul_f32 v0, v189, v0
	v_fmac_f32_e32 v37, v26, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v42, -v31, v39, v30
	v_fma_f32 v26, -v29, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v26, v38
	v_fmac_f32_e32 v39, v42, v33
	v_fma_f32 v42, -v24, v43, v35
	v_mul_f32_e32 v44, v41, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v151, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v48, v45, v38
	v_fma_f32 v21, -v31, v39, v30
	v_fmac_f32_e32 v43, v42, v36
	v_fma_f32 v46, -v34, v44, v41
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v31, |v79|, |v80|, |v81|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v29, v48, v45
	v_div_fmas_f32 v21, v21, v33, v39
	v_fma_f32 v24, -v24, v43, v35
	v_dual_fmac_f32 v44, v46, v37 :: v_dual_mul_f32 v39, v207, v22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v4, v21, v4, v62
	v_fmac_f32_e32 v48, v30, v38
	v_div_fmas_f32 v24, v24, v36, v43
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v35, |v71|, |v72|
	v_max3_f32 v36, |v73|, |v63|, |v64|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v34, v44, v41
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v24, v2, v147
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v22, |v119|, |v120|
	v_max3_f32 v36, v35, |v74|, v36
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v51, v4
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fma_f32 v29, -v29, v48, v45
	v_div_fmas_f32 v30, v30, v37, v44
	s_mov_b32 vcc_lo, s2
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v121|, |v111|, |v112|
	v_max3_f32 v37, |v55|, |v56|, |v57|
.Ltmp16:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v38, v48
	v_div_fixup_f32 v21, v30, v32, v60
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v30, |v106|, |v19|, |v17|
	v_max3_f32 v32, |v82|, |v15|, |v14|
	v_max3_f32 v38, |v58|, |v11|, |v9|
.Ltmp18:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v29, v3, v53
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v29, |v103|, |v104|, |v105|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v59, v21
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, v22, |v23|, v24
	v_max_f32_e64 v24, |v95|, |v96|
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v145, v3
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v29, v30, |v18|
	v_max3_f32 v29, |v97|, |v87|, |v88|
	v_max3_f32 v3, |v113|, |v114|, |v20|
	v_max3_f32 v30, |v89|, |v90|, |v16|
	v_max3_f32 v37, v37, v38, |v10|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v24, v24, |v98|, v29
	v_max3_f32 v29, v31, v32, |v13|
	v_max3_f32 v31, |v65|, |v66|, |v12|
.Ltmp24:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v52, v2
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v21, v3, v22
	v_max_f32_e64 v21, |v47|, |v40|
	v_max3_f32 v3, v24, v30, v29
	v_max3_f32 v4, v36, v31, v37
	v_max3_f32 v22, |v27|, |v39|, |v26|
	v_max3_f32 v29, |v35|, |v32|, |v34|
	v_max3_f32 v30, |v33|, |v5|, |v6|
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v31, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v25|, |v0|, |v8|
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v37, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, v21, |v28|, v22
	v_max3_f32 v22, v29, v30, |v7|
	v_dual_max_f32 v29, v31, v31 :: v_dual_max_f32 v30, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v31, v37, v37
	v_max3_f32 v21, v21, v24, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v41, v2, v29 :: v_dual_max_f32 v42, v3, v30
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 4, v195
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v3, v49, 9, 0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v43, v4, v31 :: v_dual_lshlrev_b32 v24, 5, v49
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v4, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v22, 0x80, v195
	v_and_b32_e32 v31, 0x60, v195
	v_lshl_add_u32 v3, v2, 2, v3
	s_waitcnt vmcnt(0)
	v_and_or_b32 v29, 0x680, v50, v24
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v30, 1, v22
	v_xor_b32_e32 v36, v24, v31
	v_lshl_add_u32 v3, v1, 4, v3
	v_lshrrev_b32_e32 v37, 3, v22
	v_xor_b32_e32 v29, v29, v31
	v_lshl_add_u32 v38, v2, 6, 0
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v44, v21, v4
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v3, v3, v30, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v4, v38, v37, v29
	ds_store_b128 v3, v[41:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v3, v41 :: v_dual_mov_b32 v4, v42
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v37, v44, v44
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v21, v43
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v29, v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v44, v44 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_lshlrev_b32 v2, 5, v2
	v_max_f32_e32 v36, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v21, v21, v21
	v_max_f32_e32 v3, v29, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v29, v43, v43 :: v_dual_max_f32 v4, v36, v4
	v_dual_max_f32 v36, v44, v44 :: v_dual_max_f32 v21, v29, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v38, v3 :: v_dual_mov_b32 v41, v4
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v29, v37, v36
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v36, v21
	v_mov_b32_e32 v37, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v38
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v41, v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v38, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v4, v4, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v37, v37, v37
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v21, v36
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v41, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v29, v29, v37 :: v_dual_max_f32 v38, v38, v38
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v36, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v42, v41, v41 :: v_dual_max_f32 v41, v3, v38
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v37, v29 :: v_dual_max_f32 v42, v4, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v36, v36
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v36, 1, v31
.Ltmp61:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v31, v154, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v37, v37
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 3, v1
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v43, v21, v3 :: v_dual_add_nc_u32 v22, 0, v22
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v3, v49, 4, 0
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v44, v29, v4 :: v_dual_and_b32 v21, 63, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v22, v36, v1
	v_add3_u32 v1, v3, v2, v1
.Ltmp68:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v196
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v4, v[41:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v1
.Ltmp70:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v41, v41
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v41, 32, v196
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v22, 0x2b8cbccc, v1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v21
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v29, null, 0x40e00000, 0x40e00000, v22
	v_div_scale_f32 v45, vcc_lo, v22, 0x40e00000, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v38, v29
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v42, 0x2b8cbccc, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[38:39], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v50, null, 0x40e00000, 0x40e00000, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v29, v38, 1.0
	v_fmac_f32_e32 v38, v37, v38
	v_max_f32_e32 v36, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v43, 0x2b8cbccc, v36
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s0, s34, v41
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v41, v45, v38
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v37, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v46, null, 0x40e00000, 0x40e00000, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v3, -v29, v41, v45
	v_max_f32_e32 v44, v44, v44
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v196
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v48, v46
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[36:37]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v41, v3, v38 :: v_dual_max_f32 v44, 0x2b8cbccc, v44
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v29, -v29, v41, v45
	v_rcp_f32_e32 v45, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v46, v48, 1.0
	v_div_scale_f32 v51, null, 0x40e00000, 0x40e00000, v44
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[36:37]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v37.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s6, v43, 0x40e00000, v43
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[3:4]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v36, -v50, v45, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v45, v36, v45
	v_div_fmas_f32 v29, v29, v38, v41
	v_rcp_f32_e32 v41, v51
	v_mul_f32_e32 v38, v49, v48
	v_div_scale_f32 v36, s7, v42, 0x40e00000, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v29, 0x40e00000, v22
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v29, -v46, v38, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v53, v36, v45
	v_fma_f32 v52, -v51, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v29, v48
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v29.l, v22.h
	v_mov_b16_e32 v29.h, v37.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v41, v52, v41
	v_div_scale_f32 v52, s8, v44, 0x40e00000, v44
	v_fma_f32 v3, -v46, v38, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v29
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v29, -v50, v53, v36
	v_mul_f32_e32 v46, v52, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v3, v48, v38
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v22, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v53, v29, v45
	v_fma_f32 v29, -v51, v46, v52
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v38, v38, 0x40e00000, v43
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v48, 0xffff0000, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v36, -v50, v53, v36
	v_fmac_f32_e32 v46, v29, v41
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v196
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v37.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v29, v36, v45, v53
	v_fma_f32 v36, -v51, v46, v52
	s_mov_b32 vcc_lo, s8
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v29, v29, 0x40e00000, v42
	v_div_fmas_f32 v36, v36, v41, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v41, null, v48, v48, v120
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v42, 1, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v43, null, v48, v48, v119
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v49, v41
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v36, v36, 0x40e00000, v44
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v44.l, v29.h
	v_mov_b16_e32 v44.h, v37.h
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v38, v42, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v52, s8, v120, v48, v120
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v41, v49, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v37.l, v36.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v51, null, v48, v48, v121
	v_div_scale_f32 v60, null, v48, v48, v111
	v_dual_fmac_f32 v49, v42, v49 :: v_dual_and_b32 v4, 1, v44
	v_div_scale_f32 v44, null, v48, v48, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v43, v45, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v37, 1, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v53, v52, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v42, v44
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v29, v29, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, vcc_lo, v119, v48, v119
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v36, v37, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v54, s9, v23, v48, v23
	v_div_scale_f32 v61, null, v48, v48, v112
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v44, v42, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v68, null, v48, v48, v103
	v_rcp_f32_e32 v62, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v37, v42
	v_mul_f32_e32 v38, v46, v45
	v_rcp_f32_e32 v70, v68
	v_div_scale_f32 v76, null, v48, v48, v19
	v_div_scale_f32 v78, null, v48, v48, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v43, v38, v46
	v_div_scale_f32 v91, null, v83, v83, v89
	v_div_scale_f32 v92, null, v83, v83, v79
	v_fmac_f32_e32 v38, v50, v45
	v_rcp_f32_e32 v50, v51
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v59, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v43, -v43, v38, v46
	v_fma_f32 v46, -v41, v53, v52
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v36, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v38, v43, v45, v38
	v_rcp_f32_e32 v45, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v37, -v51, v50, 1.0
	v_fmac_f32_e32 v53, v46, v49
	v_mul_f32_e32 v43, v54, v42
	v_div_scale_f32 v46, s10, v121, v48, v121
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v67, -v60, v45, 1.0
	v_fmac_f32_e32 v50, v37, v50
	v_div_fixup_f32 v37, v38, v48, v119
	v_fma_f32 v38, -v41, v53, v52
	v_fma_f32 v41, -v44, v43, v54
	v_fmac_f32_e32 v45, v67, v45
	v_div_scale_f32 v67, null, v48, v48, v114
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v49, v53
	v_div_scale_f32 v49, s8, v111, v48, v111
	v_mul_f32_e32 v52, v46, v50
	v_fmac_f32_e32 v43, v41, v42
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v53, -v61, v62, 1.0
	v_div_fixup_f32 v38, v38, v48, v120
	v_fma_f32 v41, -v51, v52, v46
	v_fma_f32 v44, -v44, v43, v54
	v_div_scale_f32 v54, null, v48, v48, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v41, v50
	v_mul_f32_e32 v41, v49, v45
	v_div_fmas_f32 v42, v44, v42, v43
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v44, -v60, v41, v49
	v_div_fixup_f32 v23, v42, v48, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v44, v45
	v_fma_f32 v43, -v51, v52, v46
	v_rcp_f32_e32 v46, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v42, -v60, v41, v49
	v_div_fmas_f32 v43, v43, v50, v52
	v_rcp_f32_e32 v50, v67
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v49, s9, v113, v48, v113
	v_div_fmas_f32 v41, v42, v45, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v54, v46, 1.0
	v_div_fixup_f32 v43, v43, v48, v121
	v_fmac_f32_e32 v46, v52, v46
	v_div_scale_f32 v52, null, v48, v48, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v52
	v_fma_f32 v69, -v52, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v60, v69, v60
	v_fmac_f32_e32 v62, v53, v62
	v_div_scale_f32 v53, s11, v112, v48, v112
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v75, s11, v103, v48, v103
	v_mul_f32_e32 v51, v53, v62
	v_div_scale_f32 v69, null, v48, v48, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v61, v51, v53
	v_fmac_f32_e32 v51, v44, v62
	v_fma_f32 v44, -v67, v50, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v61, v51, v53
	v_fmac_f32_e32 v50, v44, v50
	v_div_scale_f32 v61, s8, v114, v48, v114
	v_mul_f32_e32 v53, v49, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v62, v51
	v_div_fixup_f32 v44, v41, v48, v111
	v_mul_f32_e32 v62, v61, v50
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v51, -v54, v53, v49
	v_div_fixup_f32 v45, v42, v48, v112
	v_div_scale_f32 v42, s10, v20, v48, v20
	v_fma_f32 v41, -v67, v62, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v51, v46
	v_fma_f32 v51, -v68, v70, 1.0
	v_dual_fmac_f32 v62, v41, v50 :: v_dual_mul_f32 v41, v42, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v54, v53, v49
	v_fmac_f32_e32 v70, v51, v70
	v_rcp_f32_e32 v54, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v52, v41, v42
	v_fmac_f32_e32 v41, v51, v60
	v_div_fmas_f32 v46, v49, v46, v53
	v_fma_f32 v49, -v67, v62, v61
	v_mul_f32_e32 v53, v75, v70
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v42, -v52, v41, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v61, -v69, v54, 1.0
	v_div_fmas_f32 v49, v49, v50, v62
	v_fma_f32 v62, -v68, v53, v75
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v67, null, v48, v48, v105
	v_div_fmas_f32 v41, v42, v60, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v53, v62, v70
	v_div_scale_f32 v62, null, v48, v48, v106
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v54, v61, v54
	v_fma_f32 v42, -v68, v53, v75
	v_rcp_f32_e32 v68, v62
	v_div_scale_f32 v61, s8, v104, v48, v104
	v_rcp_f32_e32 v50, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v42, v42, v70, v53
	v_div_fixup_f32 v51, v49, v48, v114
	v_div_scale_f32 v75, s9, v105, v48, v105
	v_div_fixup_f32 v20, v41, v48, v20
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v53, -v62, v68, 1.0
	v_div_scale_f32 v77, s8, v19, v48, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v67, v50, 1.0
	v_div_fixup_f32 v46, v46, v48, v113
	v_fmac_f32_e32 v68, v53, v68
	v_mul_f32_e32 v49, v61, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v50, v52, v50
	v_div_fixup_f32 v52, v42, v48, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v69, v49, v61
	v_mul_f32_e32 v70, v75, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v60, v54
	v_rcp_f32_e32 v60, v76
	v_fma_f32 v42, -v67, v70, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v42, v50
	v_fma_f32 v53, -v76, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v53, v60
	v_fma_f32 v41, -v69, v49, v61
	v_div_scale_f32 v61, s10, v106, v48, v106
	v_div_scale_f32 v69, null, v48, v48, v17
	v_div_fmas_f32 v41, v41, v54, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v61, v68
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v49, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v53, v41, v48, v104
	v_fma_f32 v41, -v67, v70, v75
	v_fma_f32 v54, -v62, v42, v61
	v_mul_f32_e32 v67, v77, v60
	v_rcp_f32_e32 v75, v78
	v_div_fmas_f32 v41, v41, v50, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v42, v54, v68
	v_fma_f32 v84, -v69, v49, 1.0
	v_fma_f32 v50, -v76, v67, v77
	v_div_scale_f32 v70, s9, v17, v48, v17
	v_div_fixup_f32 v54, v41, v48, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v84, v49
	v_fma_f32 v84, -v78, v75, 1.0
	v_fma_f32 v41, -v62, v42, v61
	v_fmac_f32_e32 v67, v50, v60
	v_div_scale_f32 v62, null, v83, v83, v95
	s_mov_b32 vcc_lo, s10
	v_dual_mul_f32 v50, v70, v49 :: v_dual_fmac_f32 v75, v84, v75
	v_div_scale_f32 v61, s11, v18, v48, v18
	v_div_fmas_f32 v41, v41, v68, v42
	v_fma_f32 v42, -v76, v67, v77
	v_rcp_f32_e32 v76, v62
	v_div_scale_f32 v84, null, v83, v83, v96
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v68, -v69, v50, v70
	v_mul_f32_e32 v77, v61, v75
	v_div_fmas_f32 v42, v42, v60, v67
	v_rcp_f32_e32 v67, v84
	v_div_fixup_f32 v60, v41, v48, v106
	v_fmac_f32_e32 v50, v68, v49
	v_fma_f32 v68, -v78, v77, v61
	v_fma_f32 v85, -v62, v76, 1.0
	v_div_fixup_f32 v19, v42, v48, v19
	v_div_scale_f32 v42, s8, v95, v83, v95
	v_fma_f32 v41, -v69, v50, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v77, v68, v75 :: v_dual_fmac_f32 v76, v85, v76
	v_fma_f32 v68, -v84, v67, 1.0
	v_div_scale_f32 v69, null, v83, v83, v98
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v70, null, v83, v83, v97
	v_div_fmas_f32 v41, v41, v49, v50
	v_fma_f32 v49, -v78, v77, v61
	v_dual_mul_f32 v50, v42, v76 :: v_dual_fmac_f32 v67, v68, v67
	v_rcp_f32_e32 v68, v69
	v_div_scale_f32 v61, s9, v96, v83, v96
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v85, v70
	v_div_fmas_f32 v49, v49, v75, v77
	v_fma_f32 v75, -v62, v50, v42
	v_mul_f32_e32 v77, v61, v67
	v_div_fixup_f32 v17, v41, v48, v17
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v69, v68, 1.0
	v_fmac_f32_e32 v50, v75, v76
	v_fma_f32 v41, -v84, v77, v61
	v_div_fixup_f32 v18, v49, v48, v18
	v_div_scale_f32 v48, s10, v98, v83, v98
	v_fmac_f32_e32 v68, v78, v68
	v_div_scale_f32 v49, null, v83, v83, v87
	v_fma_f32 v75, -v70, v85, 1.0
	v_fma_f32 v42, -v62, v50, v42
	v_fmac_f32_e32 v77, v41, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v49
	v_div_scale_f32 v86, s8, v87, v83, v87
	v_fmac_f32_e32 v85, v75, v85
	v_div_scale_f32 v75, s11, v97, v83, v97
	v_mul_f32_e32 v41, v48, v68
	v_div_fmas_f32 v42, v42, v76, v50
	v_fma_f32 v50, -v84, v77, v61
	v_div_scale_f32 v84, null, v83, v83, v88
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v76, v75, v85
	v_fma_f32 v61, -v69, v41, v48
	v_div_fmas_f32 v50, v50, v67, v77
	v_rcp_f32_e32 v77, v84
	v_fma_f32 v62, -v49, v78, 1.0
	v_fma_f32 v67, -v70, v76, v75
	v_fmac_f32_e32 v41, v61, v68
	v_div_fixup_f32 v61, v42, v83, v95
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v78, v62, v78
	v_div_fixup_f32 v62, v50, v83, v96
	v_fma_f32 v42, -v69, v41, v48
	v_fmac_f32_e32 v76, v67, v85
	v_fma_f32 v50, -v84, v77, 1.0
	v_mul_f32_e32 v48, v86, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v41, v42, v68, v41
	v_fma_f32 v42, -v70, v76, v75
	v_fmac_f32_e32 v77, v50, v77
	v_div_scale_f32 v70, s9, v88, v83, v88
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v67, -v49, v48, v86
	v_div_fmas_f32 v42, v42, v85, v76
	v_mul_f32_e32 v85, v70, v77
	v_rcp_f32_e32 v50, v91
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v75, null, v83, v83, v90
	v_div_fixup_f32 v68, v42, v83, v97
	v_fma_f32 v42, -v84, v85, v70
	v_fmac_f32_e32 v48, v67, v78
	v_div_fixup_f32 v67, v41, v83, v98
	v_rcp_f32_e32 v76, v75
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v42, v77
	v_fma_f32 v41, -v49, v48, v86
	v_div_scale_f32 v86, null, v83, v83, v16
	v_fma_f32 v69, -v91, v50, 1.0
	v_div_scale_f32 v49, s10, v89, v83, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v41, v41, v78, v48
	v_rcp_f32_e32 v48, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v50, v69, v50
	v_fma_f32 v69, -v75, v76, 1.0
	v_div_scale_f32 v78, s8, v90, v83, v90
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v69, v76
	v_div_fixup_f32 v69, v41, v83, v87
	v_fma_f32 v41, -v84, v85, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v86, v48, 1.0
	v_rcp_f32_e32 v87, v92
	v_mul_f32_e32 v84, v78, v76
	v_div_fmas_f32 v41, v41, v77, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v93, v48
	v_mul_f32_e32 v42, v49, v50
	v_div_scale_f32 v85, s9, v16, v83, v16
	v_fma_f32 v77, -v75, v84, v78
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v70, -v91, v42, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v92, v87, 1.0
	v_fmac_f32_e32 v84, v77, v76
	v_div_scale_f32 v77, s11, v79, v83, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v70, v50
	v_div_fixup_f32 v70, v41, v83, v88
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v88, null, v83, v83, v80
	v_fma_f32 v41, -v91, v42, v49
	v_mul_f32_e32 v49, v85, v48
	v_div_scale_f32 v93, null, v83, v83, v81
	v_mul_f32_e32 v91, v77, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v41, v41, v50, v42
	v_fma_f32 v50, -v86, v49, v85
	v_fma_f32 v42, -v75, v84, v78
	v_rcp_f32_e32 v78, v88
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v75, v41, v83, v89
	v_fmac_f32_e32 v49, v50, v48
	v_rcp_f32_e32 v50, v93
	v_div_fmas_f32 v42, v42, v76, v84
	v_fma_f32 v84, -v92, v91, v77
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v41, -v86, v49, v85
	v_div_scale_f32 v85, null, v83, v83, v82
	v_fma_f32 v94, -v88, v78, 1.0
	v_fmac_f32_e32 v91, v84, v87
	v_div_fixup_f32 v76, v42, v83, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v93, v50, 1.0
	v_div_scale_f32 v42, s8, v80, v83, v80
	v_fmac_f32_e32 v78, v94, v78
	v_div_fmas_f32 v41, v41, v48, v49
	v_fmac_f32_e32 v50, v84, v50
	v_rcp_f32_e32 v84, v85
	v_fma_f32 v48, -v92, v91, v77
	v_mul_f32_e32 v49, v42, v78
	v_div_scale_f32 v86, s9, v81, v83, v81
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, null, v83, v83, v15
	v_div_fmas_f32 v48, v48, v87, v91
	v_fma_f32 v87, -v88, v49, v42
	v_mul_f32_e32 v90, v86, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v85, v84, 1.0
	v_rcp_f32_e32 v92, v89
	v_div_fixup_f32 v16, v41, v83, v16
	v_div_fixup_f32 v77, v48, v83, v79
	v_fmac_f32_e32 v49, v87, v78
	v_fma_f32 v41, -v93, v90, v86
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v48, s10, v82, v83, v82
	v_div_scale_f32 v87, null, v83, v83, v14
	v_fma_f32 v42, -v88, v49, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v90, v41, v50 :: v_dual_mul_f32 v41, v48, v84
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v79, -v89, v92, 1.0
	v_rcp_f32_e32 v88, v87
	v_div_fmas_f32 v42, v42, v78, v49
	v_fma_f32 v49, -v93, v90, v86
	v_fma_f32 v78, -v85, v41, v48
	v_div_scale_f32 v93, null, v83, v83, v13
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v92, v79, v92
	v_div_scale_f32 v91, s11, v15, v83, v15
	v_fmac_f32_e32 v41, v78, v84
	v_div_fmas_f32 v49, v49, v50, v90
	v_rcp_f32_e32 v50, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v91, v92
	v_fma_f32 v79, -v87, v88, 1.0
	v_div_scale_f32 v94, s8, v14, v83, v14
	v_div_fixup_f32 v78, v42, v83, v80
	v_fma_f32 v90, -v89, v86, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v88, v79, v88
	v_div_fixup_f32 v79, v49, v83, v81
	v_div_scale_f32 v81, null, v59, v59, v71
	v_fma_f32 v49, -v93, v50, 1.0
	v_fma_f32 v42, -v85, v41, v48
	v_fmac_f32_e32 v86, v90, v92
	v_mul_f32_e32 v48, v94, v88
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v50, v49, v50
	v_rcp_f32_e32 v49, v81
	v_div_fmas_f32 v41, v42, v84, v41
	v_fma_f32 v42, -v89, v86, v91
	v_fma_f32 v80, -v87, v48, v94
	v_div_scale_f32 v85, null, v59, v59, v72
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s9, v13, v83, v13
	v_div_fmas_f32 v42, v42, v92, v86
	v_fmac_f32_e32 v48, v80, v88
	v_rcp_f32_e32 v86, v85
	v_fma_f32 v90, -v81, v49, 1.0
	v_mul_f32_e32 v89, v84, v50
	v_div_fixup_f32 v80, v41, v83, v82
	v_fma_f32 v41, -v87, v48, v94
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v49, v90, v49
	v_div_scale_f32 v90, null, v59, v59, v74
	v_div_fixup_f32 v15, v42, v83, v15
	v_fma_f32 v42, -v93, v89, v84
	v_div_scale_f32 v82, s10, v71, v59, v71
	v_fma_f32 v87, -v85, v86, 1.0
	v_div_fmas_f32 v41, v41, v88, v48
	v_rcp_f32_e32 v48, v90
	v_fmac_f32_e32 v89, v42, v50
	v_mul_f32_e32 v42, v82, v49
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, s8, v72, v59, v72
	v_div_scale_f32 v88, null, v59, v59, v73
	v_div_fixup_f32 v14, v41, v83, v14
	v_fma_f32 v41, -v93, v89, v84
	v_fma_f32 v84, -v81, v42, v82
	v_mul_f32_e32 v91, v87, v86
	v_rcp_f32_e32 v92, v88
	v_fma_f32 v93, -v90, v48, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v42, v84, v49
	v_div_fmas_f32 v41, v41, v50, v89
	v_fma_f32 v50, -v85, v91, v87
	v_fmac_f32_e32 v48, v93, v48
	v_div_scale_f32 v84, s9, v74, v59, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v41, v83, v13
	v_fma_f32 v89, -v88, v92, 1.0
	v_fma_f32 v41, -v81, v42, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v91, v50, v86 :: v_dual_mul_f32 v50, v84, v48
	v_div_scale_f32 v82, null, v59, v59, v63
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v92, v89, v92
	v_div_scale_f32 v81, s11, v73, v59, v73
	v_div_fmas_f32 v41, v41, v49, v42
	v_fma_f32 v42, -v85, v91, v87
	v_fma_f32 v49, -v90, v50, v84
	v_rcp_f32_e32 v83, v82
	v_div_scale_f32 v87, null, v59, v59, v64
	v_mul_f32_e32 v85, v81, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v49, v48
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v49, v87
	v_div_fmas_f32 v42, v42, v86, v91
	v_fma_f32 v86, -v88, v85, v81
	v_div_fixup_f32 v71, v41, v59, v71
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v82, v83, 1.0
	v_fma_f32 v41, -v90, v50, v84
	v_div_fixup_f32 v72, v42, v59, v72
	v_fmac_f32_e32 v85, v86, v92
	v_div_scale_f32 v42, s8, v63, v59, v63
	v_fmac_f32_e32 v83, v89, v83
	v_fma_f32 v84, -v87, v49, 1.0
	v_div_scale_f32 v86, null, v59, v59, v65
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v41, v41, v48, v50
	v_fma_f32 v48, -v88, v85, v81
	v_dual_mul_f32 v50, v42, v83 :: v_dual_fmac_f32 v49, v84, v49
	v_rcp_f32_e32 v81, v86
	v_div_scale_f32 v84, s9, v64, v59, v64
	v_div_scale_f32 v88, null, v59, v59, v66
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v89, v84, v49
	v_div_fmas_f32 v48, v48, v92, v85
	v_fma_f32 v85, -v82, v50, v42
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v86, v81, 1.0
	v_div_fixup_f32 v74, v41, v59, v74
	v_fma_f32 v41, -v87, v89, v84
	v_fmac_f32_e32 v50, v85, v83
	v_div_fixup_f32 v73, v48, v59, v73
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v48, s10, v65, v59, v65
	v_div_scale_f32 v85, null, v59, v59, v12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v42, -v82, v50, v42
	v_fmac_f32_e32 v89, v41, v49
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v41, v48, v81
	v_rcp_f32_e32 v82, v85
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s11, v66, v59, v66
	v_div_fmas_f32 v42, v42, v83, v50
	v_fma_f32 v50, -v87, v89, v84
	v_div_scale_f32 v92, null, v59, v59, v55
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v86, v41, v48
	v_mul_f32_e32 v84, v90, v91
	v_div_fmas_f32 v49, v50, v49, v89
	v_rcp_f32_e32 v50, v92
	v_fma_f32 v87, -v85, v82, 1.0
	v_fmac_f32_e32 v41, v83, v81
	v_fma_f32 v83, -v88, v84, v90
	v_div_fixup_f32 v64, v49, v59, v64
	v_div_fixup_f32 v63, v42, v59, v63
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, s8, v12, v59, v12
	v_fmac_f32_e32 v84, v83, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v92, v50, 1.0
	v_div_scale_f32 v83, null, v59, v59, v56
	v_fma_f32 v42, -v86, v41, v48
	v_mul_f32_e32 v48, v87, v82
	v_fmac_f32_e32 v50, v49, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v83
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v55, v59, v55
	v_div_fmas_f32 v41, v42, v81, v41
	v_fma_f32 v42, -v88, v84, v90
	v_fma_f32 v81, -v85, v48, v87
	v_div_scale_f32 v88, null, v59, v59, v57
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v83, v49, 1.0
	v_fmac_f32_e32 v48, v81, v82
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v42, v42, v91, v84
	v_mul_f32_e32 v84, v86, v50
	v_div_fixup_f32 v65, v41, v59, v65
	v_fma_f32 v41, -v85, v48, v87
	v_fmac_f32_e32 v49, v89, v49
	v_div_scale_f32 v89, null, v59, v59, v58
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v66, v42, v59, v66
	v_fma_f32 v42, -v92, v84, v86
	v_div_scale_f32 v85, s10, v56, v59, v56
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_fmas_f32 v41, v41, v82, v48
	v_rcp_f32_e32 v48, v89
	v_fmac_f32_e32 v84, v42, v50
	v_mul_f32_e32 v42, v85, v49
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v82, s8, v57, v59, v57
	v_div_scale_f32 v87, null, v59, v59, v11
	v_div_fixup_f32 v12, v41, v59, v12
	v_fma_f32 v41, -v92, v84, v86
	v_fma_f32 v86, -v83, v42, v85
	v_mul_f32_e32 v90, v82, v81
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v92, -v89, v48, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v42, v86, v49
	v_div_fmas_f32 v41, v41, v50, v84
	v_fma_f32 v50, -v88, v90, v82
	v_fmac_f32_e32 v48, v92, v48
	v_div_scale_f32 v84, s9, v58, v59, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v41, v41, v59, v55
	v_fma_f32 v86, -v87, v91, 1.0
	v_fma_f32 v55, -v83, v42, v85
	v_fmac_f32_e32 v90, v50, v81
	v_mul_f32_e32 v50, v84, v48
	v_div_scale_f32 v85, null, v59, v59, v9
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v83, s11, v11, v59, v11
	v_div_fmas_f32 v42, v55, v49, v42
	v_fma_f32 v49, -v88, v90, v82
	v_fma_f32 v55, -v89, v50, v84
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v88, null, v59, v59, v10
	v_mul_f32_e32 v86, v83, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v55, v48
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v55, v88
	v_div_fmas_f32 v49, v49, v81, v90
	v_fma_f32 v81, -v87, v86, v83
	v_div_fixup_f32 v42, v42, v59, v56
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v82, 1.0
	v_fma_f32 v56, -v89, v50, v84
	v_div_fixup_f32 v49, v49, v59, v57
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v57, s8, v9, v59, v9
	v_fmac_f32_e32 v82, v90, v82
	v_fma_f32 v81, -v88, v55, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v89, null, v36, v36, v40
	v_div_fmas_f32 v48, v56, v48, v50
	v_fma_f32 v50, -v87, v86, v83
	v_mul_f32_e32 v56, v57, v82
	v_fmac_f32_e32 v55, v81, v55
	v_div_scale_f32 v81, null, v36, v36, v47
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s9, v10, v59, v10
	v_div_fmas_f32 v50, v50, v91, v86
	v_rcp_f32_e32 v84, v81
	v_fma_f32 v86, -v85, v56, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v87, v83, v55
	v_div_fixup_f32 v48, v48, v59, v58
	v_rcp_f32_e32 v58, v89
	v_div_fixup_f32 v11, v50, v59, v11
	v_fmac_f32_e32 v56, v86, v82
	v_fma_f32 v50, -v88, v87, v83
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v91, null, v36, v36, v27
	v_fma_f32 v86, -v81, v84, 1.0
	v_fma_f32 v57, -v85, v56, v57
	v_div_scale_f32 v85, null, v36, v36, v28
	v_fmac_f32_e32 v87, v50, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v86, v84
	v_fma_f32 v90, -v89, v58, 1.0
	v_rcp_f32_e32 v86, v85
	v_div_fmas_f32 v56, v57, v82, v56
	v_fma_f32 v57, -v88, v87, v83
	v_div_scale_f32 v83, s8, v40, v36, v40
	v_fmac_f32_e32 v58, v90, v58
	v_div_scale_f32 v50, s10, v47, v36, v47
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v93, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v85, v86, 1.0
	v_mul_f32_e32 v92, v83, v58
	v_mul_f32_e32 v82, v50, v84
	v_div_fmas_f32 v55, v57, v55, v87
	v_div_fixup_f32 v9, v56, v59, v9
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v88, s11, v28, v36, v28
	v_fma_f32 v57, -v89, v92, v83
	v_fma_f32 v90, -v81, v82, v50
	v_div_fixup_f32 v10, v55, v59, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v87, v88, v86
	v_fma_f32 v56, -v91, v93, 1.0
	v_fmac_f32_e32 v92, v57, v58
	v_div_scale_f32 v57, null, v36, v36, v39
	v_fma_f32 v55, -v85, v87, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v90, v84 :: v_dual_fmac_f32 v93, v56, v93
	v_div_scale_f32 v56, s9, v27, v36, v27
	v_fmac_f32_e32 v87, v55, v86
	v_rcp_f32_e32 v55, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v50, -v81, v82, v50
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v59, -v89, v92, v83
	v_mul_f32_e32 v81, v56, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v50, v50, v84, v82
	v_div_scale_f32 v82, null, v36, v36, v26
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v57, v55, 1.0
	v_div_fmas_f32 v58, v59, v58, v92
	v_fma_f32 v59, -v85, v87, v88
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v85, -v91, v81, v56
	v_fmac_f32_e32 v55, v83, v55
	v_div_scale_f32 v83, s8, v39, v36, v39
	v_div_fixup_f32 v47, v50, v36, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v85, v93
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v50, v83, v55
	v_div_fmas_f32 v59, v59, v86, v87
	v_div_fixup_f32 v40, v58, v36, v40
	v_fma_f32 v58, -v82, v84, 1.0
	v_fma_f32 v56, -v91, v81, v56
	v_fma_f32 v85, -v57, v50, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v28, v59, v36, v28
	v_div_scale_f32 v59, null, v36, v36, v25
	v_fmac_f32_e32 v84, v58, v84
	v_div_scale_f32 v58, s10, v26, v36, v26
	v_div_fmas_f32 v56, v56, v93, v81
	v_fmac_f32_e32 v50, v85, v55
	v_rcp_f32_e32 v86, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v81, v58, v84
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v27, v56, v36, v27
	v_fma_f32 v56, -v57, v50, v83
	v_div_scale_f32 v85, null, v36, v36, v0
	v_fma_f32 v57, -v82, v81, v58
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v50, v56, v55, v50
	v_div_scale_f32 v55, null, v36, v36, v8
	v_fma_f32 v83, -v59, v86, 1.0
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v81, v57, v84
	v_rcp_f32_e32 v57, v55
	v_div_scale_f32 v56, s8, v25, v36, v25
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v83, null, v36, v36, v35
	v_div_fixup_f32 v39, v50, v36, v39
	v_fma_f32 v58, -v82, v81, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v85, v87, 1.0
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v55, v57, 1.0
	v_mul_f32_e32 v82, v56, v86
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v87, v50, v87
	v_div_scale_f32 v50, s9, v0, v36, v0
	v_fmac_f32_e32 v57, v88, v57
	v_div_scale_f32 v88, null, v36, v36, v32
	v_div_fmas_f32 v58, v58, v84, v81
	v_fma_f32 v81, -v59, v82, v56
	v_mul_f32_e32 v84, v50, v87
	v_div_scale_f32 v90, s10, v8, v36, v8
	v_fma_f32 v91, -v83, v89, 1.0
	v_rcp_f32_e32 v92, v88
	v_fmac_f32_e32 v82, v81, v86
	v_fma_f32 v81, -v85, v84, v50
	v_mul_f32_e32 v93, v90, v57
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s11, v35, v36, v35
	v_div_fixup_f32 v26, v58, v36, v26
	v_fma_f32 v56, -v59, v82, v56
	v_fmac_f32_e32 v84, v81, v87
	v_fma_f32 v58, -v55, v93, v90
	v_mul_f32_e32 v59, v91, v89
	v_fma_f32 v81, -v88, v92, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v50, -v85, v84, v50
	v_fmac_f32_e32 v93, v58, v57
	v_fma_f32 v58, -v83, v59, v91
	v_fmac_f32_e32 v92, v81, v92
	v_div_scale_f32 v81, s8, v32, v36, v32
	v_div_fmas_f32 v56, v56, v86, v82
	v_fma_f32 v55, -v55, v93, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v59, v58, v89 :: v_dual_mul_f32 v58, v81, v92
	v_div_scale_f32 v82, null, v36, v36, v34
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v25, v56, v36, v25
	v_div_fmas_f32 v50, v50, v87, v84
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v84, v82
	v_div_fmas_f32 v55, v55, v57, v93
	v_fma_f32 v57, -v83, v59, v91
	v_fma_f32 v83, -v88, v58, v81
	v_div_fixup_f32 v0, v50, v36, v0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v8, v55, v36, v8
	v_div_fmas_f32 v57, v57, v89, v59
	v_fmac_f32_e32 v58, v83, v92
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v56, -v82, v84, 1.0
	v_div_scale_f32 v55, null, v36, v36, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v88, v58, v81
	v_div_fixup_f32 v35, v57, v36, v35
	v_fmac_f32_e32 v84, v56, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v57, v55
	v_div_scale_f32 v56, null, v36, v36, v5
	v_div_fmas_f32 v50, v50, v92, v58
	v_div_scale_f32 v59, vcc_lo, v34, v36, v34
	v_div_scale_f32 v58, null, v36, v36, v6
	v_div_scale_f32 v86, null, v36, v36, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v59, v84
	v_rcp_f32_e32 v81, v56
	v_rcp_f32_e32 v83, v58
	v_div_fixup_f32 v32, v50, v36, v32
	v_fma_f32 v50, -v55, v57, 1.0
	v_fma_f32 v89, -v82, v85, v59
	v_rcp_f32_e32 v88, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v8, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v57, v50, v57
	v_fmac_f32_e32 v85, v89, v84
	v_div_scale_f32 v50, s8, v33, v36, v33
	v_fma_f32 v87, -v56, v81, 1.0
	v_fma_f32 v90, -v58, v83, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v82, v85, v59
	v_mul_f32_e32 v91, v50, v57
	v_fma_f32 v92, -v86, v88, 1.0
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, s9, v5, v36, v5
	v_div_fmas_f32 v59, v59, v84, v85
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, s10, v6, v36, v6
	v_div_fixup_f32 v34, v59, v36, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v70
	v_rndne_f32_e32 v70, v71
	v_rndne_f32_e32 v71, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v55, v91, v50
	v_dual_mul_f32 v93, v87, v81 :: v_dual_mul_f32 v94, v90, v83
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v73, v73, s8, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_med3_f32 v71, v71, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v89, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v82, -v56, v93, v87
	v_fma_f32 v89, -v58, v94, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s11, v7, v36, v7
	v_fma_f32 v50, -v55, v91, v50
	v_dual_fmac_f32 v93, v82, v81 :: v_dual_fmac_f32 v94, v89, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v95, v92, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v50, v50, v57, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v56, -v56, v93, v87
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v55, -v86, v95, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v50, v36, v33
	v_div_fmas_f32 v56, v56, v81, v93
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v95, v55, v88
	v_fma_f32 v55, -v58, v94, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v5, v56, v36, v5
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v57, -v86, v95, v92
	v_div_fmas_f32 v55, v55, v83, v94
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v78
	v_rndne_f32_e32 v5, v5
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v57, v57, v88, v95
	v_div_fixup_f32 v6, v55, v36, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v54
	v_rndne_f32_e32 v54, v61
	v_rndne_f32_e32 v61, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v57, v36, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v37
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v43
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v20, v20, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v76, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v51
	v_rndne_f32_e32 v51, v53
	v_rndne_f32_e32 v53, v60
	v_rndne_f32_e32 v55, v62
	v_rndne_f32_e32 v57, v68
	v_rndne_f32_e32 v60, v75
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v72, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v75, v18
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v100, v5
	v_cvt_i32_f32_e32 v102, v7
	v_and_b32_e32 v5, 15, v36
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v36, 15, v76
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v23, 10, v195
	v_and_b32_e32 v76, 16, v195
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v77
	v_rndne_f32_e32 v68, v79
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_cvt_i32_f32_e32 v79, v13
	v_cvt_i32_f32_e32 v95, v8
	v_and_b32_e32 v8, 15, v38
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v20, 15, v75
	v_and_b32_e32 v38, 15, v67
	v_and_b32_e32 v67, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v23
	v_lshlrev_b32_e32 v23, 6, v76
	v_lshlrev_b32_e32 v75, 6, v195
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v69
	v_rndne_f32_e32 v69, v80
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v77, v15
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v23
	v_and_or_b32 v23, 0x1b00, v75, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v80, v12
	v_cvt_i32_f32_e32 v81, v41
	v_cvt_i32_f32_e32 v82, v42
	v_cvt_i32_f32_e32 v83, v49
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_cvt_i32_f32_e32 v85, v11
	v_cvt_i32_f32_e32 v87, v10
	v_cvt_i32_f32_e32 v88, v47
	v_cvt_i32_f32_e32 v90, v28
	v_cvt_i32_f32_e32 v91, v27
	v_cvt_i32_f32_e32 v93, v26
	v_cvt_i32_f32_e32 v94, v25
	v_cvt_i32_f32_e32 v101, v6
	v_and_b32_e32 v10, 15, v44
	v_and_b32_e32 v11, 15, v45
	v_and_b32_e32 v12, 15, v46
	v_and_b32_e32 v25, 15, v54
	v_and_b32_e32 v26, 15, v55
	v_and_b32_e32 v27, 15, v56
	v_and_b32_e32 v28, 15, v57
	v_and_b32_e32 v41, 15, v77
	v_and_b32_e32 v44, 15, v70
	v_and_b32_e32 v45, 15, v71
	v_and_b32_e32 v46, 15, v72
	v_and_b32_e32 v47, 15, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v31, v30
	v_xad_u32 v77, v23, v198, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v6, 15, v37
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v78, v14
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v89, v40
	v_cvt_i32_f32_e32 v92, v39
	v_and_b32_e32 v14, 15, v50
	v_and_b32_e32 v15, 15, v51
	v_and_b32_e32 v16, 15, v52
	v_and_b32_e32 v17, 15, v53
	v_and_b32_e32 v37, 15, v62
	v_and_b32_e32 v39, 15, v68
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v55, 15, v83
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v96, v35
	v_cvt_i32_f32_e32 v97, v32
	v_cvt_i32_f32_e32 v98, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[5:8]
	ds_store_b128 v0, v[13:16] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v77
	ds_load_b128 v[13:16], v77 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[25:28]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v77
	ds_load_b128 v[36:39], v77 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v77
	ds_load_b128 v[52:55], v77 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v48
	v_cvt_i32_f32_e32 v86, v9
	v_and_b32_e32 v9, 15, v43
	v_and_b32_e32 v34, 15, v60
	v_and_b32_e32 v35, 15, v61
	v_and_b32_e32 v48, 15, v63
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v40, 15, v69
	v_and_b32_e32 v68, 15, v95
	v_and_b32_e32 v69, 15, v96
	v_and_b32_e32 v70, 15, v97
	v_and_b32_e32 v71, 15, v98
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v77
	ds_load_b128 v[68:71], v77 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[9:12]
	ds_store_b128 v0, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v77
	ds_load_b128 v[17:20], v77 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v99, v33
	v_and_b32_e32 v32, 15, v58
	v_and_b32_e32 v33, 15, v59
	v_and_b32_e32 v42, 15, v78
	v_and_b32_e32 v43, 15, v79
	v_and_b32_e32 v49, 15, v64
	v_and_b32_e32 v50, 15, v65
	v_and_b32_e32 v51, 15, v66
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v77
	ds_load_b128 v[40:43], v77 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v64, 15, v92
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v77
	ds_load_b128 v[56:59], v77 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v99
	v_and_b32_e32 v73, 15, v100
	v_and_b32_e32 v74, 15, v101
	v_and_b32_e32 v75, 15, v102
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v197
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s34, v196
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v77
	ds_load_b128 v[72:75], v77 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v19, 4, v11
	v_lshl_or_b32 v12, v20, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s8, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s8, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v18, v36, 4, v23
	v_lshl_or_b32 v23, v39, 4, v26
	v_lshl_or_b32 v26, v42, 4, v32
	v_lshl_or_b32 v27, v43, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v14.l
	v_and_b16 v0.h, 0xff, v13.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v12.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v6.h, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v37, 4, v24
	v_lshl_or_b32 v20, v38, 4, v25
	v_lshl_or_b32 v24, v40, 4, v30
	v_lshl_or_b32 v25, v41, 4, v31
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v5.h, 0xff, v26.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v53, 4, v45
	v_lshl_or_b32 v31, v54, 4, v46
	v_lshl_or_b32 v32, v55, 4, v47
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v74, 4, v66
	v_lshl_or_b32 v45, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v23.l
	v_and_b16 v0.h, 0xff, v20.l
	v_lshlrev_b16 v3.l, 8, v19.l
	v_and_b16 v4.l, 0xff, v18.l
	v_lshlrev_b16 v6.l, 8, v25.l
	v_and_b16 v6.h, 0xff, v24.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v12.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v36.l
	v_and_b16 v5.h, 0xff, v35.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v68, 4, v60
	v_lshl_or_b32 v38, v69, 4, v61
	v_lshl_or_b32 v39, v70, 4, v62
	v_lshl_or_b32 v40, v71, 4, v63
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v42, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v3.l, 8, v30.l
	v_and_b16 v4.l, 0xff, v28.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v45.l
	v_and_b16 v5.h, 0xff, v43.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v3.l, 8, v38.l
	v_and_b16 v4.l, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v42.l
	v_and_b16 v6.h, 0xff, v41.l
	v_or_b16 v12.h, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 2, v76
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v0, 0x80000000, v10, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v196
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[8:11], 0 offen
	buffer_store_b64 v[11:12], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v4.l, v29.h
	v_mov_b16_e32 v3.l, v22.h
	v_add3_u32 v5, v5, v6, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s34, v21
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v195
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s41, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp71:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 180
		.amdhsa_kernarg_size 120
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
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 180
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 26848
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 180
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 180
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 44
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
