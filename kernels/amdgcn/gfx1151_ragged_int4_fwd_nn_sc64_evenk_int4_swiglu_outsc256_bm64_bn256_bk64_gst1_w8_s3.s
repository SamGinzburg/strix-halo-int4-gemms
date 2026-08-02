	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_mov_b32_e32 v150, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v151, 15, v150
	v_lshlrev_b32_e32 v14, 4, v150
	v_lshrrev_b32_e32 v26, 4, v150
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
	v_lshlrev_b32_e32 v1, 4, v150
.Ltmp4:
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v150
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 9 is_stmt 0                 ; ragged.py:0:9
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow600
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[36:37], s[4:5], 0x0
	s_load_b64 s[38:39], s[6:7], 0x0
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v152, 0xf0, v150
	v_dual_mov_b32 v66, 0 :: v_dual_lshlrev_b32 v161, 4, v151
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v58, 3, v150
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v239, 0
	v_mov_b32_e32 v212, 0
	v_mov_b32_e32 v214, 0
	v_mov_b32_e32 v230, 0
	v_mov_b32_e32 v238, 0
	v_mov_b32_e32 v240, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s11, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s34, v151
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 2, v150
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_u32 v2, s0, s34, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v3, null, s35, 0, s0
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s0, s4, s2
	s_addc_u32 s1, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v8, vcc_lo, v0, 48
	v_mov_b32_e32 v54, 0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[24:25], s[0:1], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[0:1]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, s34, v151
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[6:7]
	v_lshrrev_b32_e32 v7, 1, v150
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[36:37], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[38:39], v[4:5]
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v5, 48, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[36:37], v[8:9]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[38:39], v[8:9]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_lshl_or_b32 v0, s41, 8, v161
	v_dual_mov_b32 v195, 0 :: v_dual_lshlrev_b32 v6, 1, v150
	v_dual_mov_b32 v194, 0 :: v_dual_lshlrev_b32 v9, 3, v150
	v_dual_mov_b32 v200, 0 :: v_dual_and_b32 v7, 24, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[38:39], v[2:3]
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v3, 16, v1
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v4, 32, v1
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_mul_lo_u32 v5, s40, v5
	v_mul_lo_u32 v1, s40, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v0, off offset:264
	scratch_store_b32 off, v14, off offset:328
	scratch_store_b32 off, v26, off offset:332
	scratch_store_b32 off, v150, off offset:308
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v2, 3, v152
	v_dual_mov_b32 v197, 0 :: v_dual_lshlrev_b32 v0, 3, v58
	v_dual_mov_b32 v193, 0 :: v_dual_lshlrev_b32 v8, 5, v151
	v_xor_b32_e32 v11, v6, v10
	v_xor_b32_e32 v7, v9, v7
	v_dual_mov_b32 v239, 0 :: v_dual_add_nc_u32 v10, s34, v10
	v_xor_b32_e32 v12, v0, v2
	v_and_or_b32 v13, v6, 24, v8
	v_dual_mov_b32 v231, 0 :: v_dual_lshlrev_b32 v44, 1, v5
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v5, s33, v26
	v_mad_u64_u32 v[26:27], null, v10, s11, v[0:1]
	v_dual_mov_b32 v227, 0 :: v_dual_add_nc_u32 v0, 0, v7
	scratch_store_b32 off, v151, off offset:312 ; 4-byte Folded Spill
	v_lshl_or_b32 v9, v151, 9, v12
	v_xor_b32_e32 v12, 8, v13
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_dual_mov_b32 v237, 0 :: v_dual_add_nc_u32 v0, 0, v13
	v_dual_mov_b32 v191, 0 :: v_dual_and_b32 v14, 0xe00, v14
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v11, 24, v11
	v_xor_b32_e32 v15, 16, v13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v152, off offset:316
	scratch_store_b32 off, v0, off offset:272
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v0, 0, v12
	scratch_store_b32 off, v161, off offset:320 ; 4-byte Folded Spill
	v_or3_b32 v8, v14, v11, v8
	v_xor_b32_e32 v11, 24, v13
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v0, 0, v15
	scratch_store_b32 off, v58, off offset:324 ; 4-byte Folded Spill
	v_xor_b32_e32 v20, 8, v8
	v_mov_b32_e32 v85, 0
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v11
	v_dual_mov_b32 v192, 0 :: v_dual_lshlrev_b32 v17, 5, v150
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s5, s40, s24
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v0, 0, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	v_xor_b32_e32 v21, 16, v8
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s6, s5, 1
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v0, 0, v20
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v18, 2, v152
	v_dual_mov_b32 v190, 0 :: v_dual_and_b32 v17, 32, v17
	s_or_b32 s6, s6, 1
	s_mul_i32 s5, s5, s33
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s7
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s6, s33, s6
	s_lshl_b32 s7, s10, 8
	s_lshl_b32 s5, s5, 1
	v_xor_b32_e32 v22, 24, v8
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v0, 0, v21
	v_add3_u32 v23, s6, s7, v150
	v_add3_u32 v24, 0, v18, v17
	v_add3_u32 v17, s5, s7, v150
	v_mul_lo_u32 v4, s40, v4
	v_mul_lo_u32 v3, s40, v3
	v_mul_lo_u32 v2, s33, v2
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s4, s33, 1
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s6, s9, 8
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s4, s11
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v6, 28, v6
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v0, 0, v22
	v_xor_b32_e32 v14, 0x88, v9
	v_xor_b32_e32 v16, 0x110, v9
	v_xor_b32_e32 v19, 0x198, v9
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v23, s6, v23
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v25, 1, v152
	v_subrev_nc_u32_e32 v17, s6, v17
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s42, s4, s24
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s4, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s8
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v230, 0 :: v_dual_lshlrev_b32 v45, 1, v4
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v46, 1, v3
	v_dual_mov_b32 v214, 0 :: v_dual_lshlrev_b32 v47, 1, v1
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_lshl_u32 v10, v2, s33, 1
	v_dual_mov_b32 v229, 0 :: v_dual_lshlrev_b32 v160, 2, v5
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v0, v24, v6
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v1, s4
	v_dual_mov_b32 v240, 0 :: v_dual_lshlrev_b32 v37, 1, v23
	v_dual_mov_b32 v238, 0 :: v_dual_lshlrev_b32 v159, 1, v17
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v166, 0, v9
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v167, 0, v14
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v168, 0, v16
	v_dual_mov_b32 v228, 0 :: v_dual_add_nc_u32 v169, 0, v19
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v175, 0, v25
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v66, 0
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
	s_lshl_b32 s45, s33, 6
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
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	s_clause 0x1f                           ; 132-byte Folded Spill
	scratch_store_b32 off, v10, off offset:260
	scratch_store_b64 off, v[26:27], off offset:252
	scratch_store_b32 off, v47, off offset:248
	scratch_store_b32 off, v46, off offset:244
	scratch_store_b32 off, v45, off offset:240
	scratch_store_b32 off, v44, off offset:236
	scratch_store_b32 off, v37, off offset:232
	scratch_store_b32 off, v198, off offset:228
	scratch_store_b32 off, v197, off offset:224
	scratch_store_b32 off, v196, off offset:220
	scratch_store_b32 off, v195, off offset:216
	scratch_store_b32 off, v194, off offset:212
	scratch_store_b32 off, v193, off offset:208
	scratch_store_b32 off, v200, off offset:204
	scratch_store_b32 off, v192, off offset:200
	scratch_store_b32 off, v191, off offset:196
	scratch_store_b32 off, v190, off offset:192
	scratch_store_b32 off, v240, off offset:188
	scratch_store_b32 off, v239, off offset:184
	scratch_store_b32 off, v231, off offset:180
	scratch_store_b32 off, v238, off offset:176
	scratch_store_b32 off, v230, off offset:172
	scratch_store_b32 off, v229, off offset:168
	scratch_store_b32 off, v227, off offset:164
	scratch_store_b32 off, v237, off offset:160
	scratch_store_b32 off, v215, off offset:156
	scratch_store_b32 off, v214, off offset:152
	scratch_store_b32 off, v212, off offset:148
	scratch_store_b32 off, v228, off offset:144
	scratch_store_b32 off, v208, off offset:140
	scratch_store_b32 off, v174, off offset:136
	scratch_store_b32 off, v173, off offset:132
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v172, off offset:128
	scratch_store_b32 off, v171, off offset:124
	scratch_store_b32 off, v139, off offset:120
	scratch_store_b32 off, v128, off offset:116
	scratch_store_b32 off, v164, off offset:112
	scratch_store_b32 off, v163, off offset:108
	scratch_store_b32 off, v107, off offset:104
	scratch_store_b32 off, v87, off offset:100
	scratch_store_b32 off, v236, off offset:96
	scratch_store_b32 off, v162, off offset:92
	scratch_store_b32 off, v88, off offset:88
	scratch_store_b32 off, v89, off offset:84
	scratch_store_b32 off, v127, off offset:80
	scratch_store_b32 off, v114, off offset:76
	scratch_store_b32 off, v75, off offset:72
	scratch_store_b32 off, v76, off offset:68
	scratch_store_b32 off, v77, off offset:64
	scratch_store_b32 off, v143, off offset:60
	scratch_store_b32 off, v118, off offset:56
	scratch_store_b32 off, v78, off offset:52
	scratch_store_b32 off, v108, off offset:48
	scratch_store_b32 off, v79, off offset:44
	scratch_store_b32 off, v80, off offset:40
	scratch_store_b32 off, v81, off offset:36
	scratch_store_b32 off, v82, off offset:32
	scratch_store_b32 off, v141, off offset:28
	scratch_store_b32 off, v126, off offset:24
	scratch_store_b32 off, v117, off offset:20
	scratch_store_b32 off, v149, off offset:16
	scratch_store_b32 off, v83, off offset:12
	scratch_store_b32 off, v136, off offset:8
	scratch_store_b32 off, v84, off offset:4
	scratch_store_b32 off, v85, off         ; 4-byte Folded Spill
	v_mov_b32_e32 v127, v86
	v_mov_b32_e32 v157, v54
	v_mov_b32_e32 v17, v55
	v_dual_mov_b32 v107, v105 :: v_dual_mov_b32 v118, v144
	v_dual_mov_b32 v105, v60 :: v_dual_mov_b32 v144, v109
	v_dual_mov_b32 v109, v140 :: v_dual_mov_b32 v140, v62
	v_dual_mov_b32 v141, v63 :: v_dual_mov_b32 v126, v142
	v_dual_mov_b32 v142, v64 :: v_dual_mov_b32 v143, v65
	v_mov_b32_e32 v117, v145
	v_dual_mov_b32 v145, v134 :: v_dual_mov_b32 v136, v100
	v_mov_b32_e32 v134, v135
	v_dual_mov_b32 v135, v119 :: v_dual_mov_b32 v154, v69
	v_mov_b32_e32 v119, v99
	v_dual_mov_b32 v99, v66 :: v_dual_mov_b32 v100, v67
	v_dual_mov_b32 v155, v68 :: v_dual_mov_b32 v114, v73
	v_dual_mov_b32 v139, v148 :: v_dual_mov_b32 v148, v70
	v_mov_b32_e32 v149, v71
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s40, s40, -1
	v_mov_b32_e32 v128, v74
	s_cmp_lg_u32 s40, 0
	v_mov_b32_e32 v156, v132
	v_mov_b32_e32 v132, v57
	v_mov_b32_e32 v158, v56
	v_mov_b32_e32 v108, v104
	v_dual_mov_b32 v104, v59 :: v_dual_mov_b32 v153, v72
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, v160, v0
	v_add_nc_u32_e32 v20, v10, v0
	v_add_nc_u32_e32 v160, s45, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v9, s42, v19
	v_add_nc_u32_e32 v13, s42, v20
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v13, s[12:15], 0 offen
	s_waitcnt vmcnt(0)
	v_perm_b32 v18, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_cndmask_b32_e32 v9, 0x80000000, v26, vcc_lo
	v_perm_b32 v21, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v22, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_b64 v[9:10], v9, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v11, 24, v13
	v_perm_b32 v23, v16, v12, 0x5010400
	v_perm_b32 v24, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v12, 24, v21
	v_lshrrev_b32_e32 v16, 24, v15
	v_lshlrev_b16 v11.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b16 v12.l, 8, v12.l
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v0, v[9:10]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[40:43], v0 offset1:1
	ds_load_2addr_stride64_b64 v[208:211], v0 offset0:2 offset1:3
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[44:47], v0 offset1:1
	ds_load_2addr_stride64_b64 v[212:215], v0 offset0:2 offset1:3
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[224:227], v0 offset1:1
	ds_load_2addr_stride64_b64 v[171:174], v0 offset0:2 offset1:3
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v9, 8, v18
	v_and_b16 v9.h, 0xff, v18.l
	v_lshrrev_b32_e32 v10, 24, v18
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[161:164], v0 offset1:1
	ds_load_2addr_stride64_b64 v[252:255], v0 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v9.l, 8, v9.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v9.l, v9.h, v9.l
	v_and_b16 v9.h, 0xff, v18.h
	v_lshrrev_b32_e32 v18, 24, v24
	v_or_b16 v9.h, v9.h, v10.l
	v_lshrrev_b32_e32 v10, 8, v13
	v_and_b16 v10.h, 0xff, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v18.l, 8, v18.l
	v_lshlrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v10.l, v10.h, v10.l
	v_and_b16 v10.h, 0xff, v13.h
	v_lshrrev_b32_e32 v13, 24, v14
	v_or_b16 v10.h, v10.h, v11.l
	v_lshrrev_b32_e32 v11, 8, v21
	v_and_b16 v11.h, 0xff, v21.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v13.l, 8, v13.l
	v_lshlrev_b16 v11.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v11.l, v11.h, v11.l
	v_and_b16 v11.h, 0xff, v21.h
	v_or_b16 v11.h, v11.h, v12.l
	v_lshrrev_b32_e32 v12, 8, v14
	v_and_b16 v12.h, 0xff, v14.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v12.l, 8, v12.l
	v_or_b16 v12.l, v12.h, v12.l
	v_and_b16 v12.h, 0xff, v14.h
	v_lshrrev_b32_e32 v14, 24, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v12.h, v12.h, v13.l
	v_lshrrev_b32_e32 v13, 8, v22
	v_and_b16 v13.h, 0xff, v22.l
	v_lshlrev_b16 v14.l, 8, v14.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v13.l, 8, v13.l
	v_or_b16 v13.l, v13.h, v13.l
	v_and_b16 v13.h, 0xff, v22.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v13.h, v13.h, v14.l
	v_lshrrev_b32_e32 v14, 8, v15
	v_and_b16 v14.h, 0xff, v15.l
	v_lshlrev_b16 v15.l, 8, v16.l
	v_lshrrev_b32_e32 v16, 24, v23
	v_lshlrev_b16 v14.l, 8, v14.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v16.l, 8, v16.l
	v_or_b16 v14.l, v14.h, v14.l
	v_and_b16 v14.h, 0xff, v15.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v14.h, v14.h, v15.l
	v_lshrrev_b32_e32 v15, 8, v23
	v_and_b16 v15.h, 0xff, v23.l
	v_lshlrev_b16 v15.l, 8, v15.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v15.l, v15.h, v15.l
	v_and_b16 v15.h, 0xff, v23.h
	v_or_b16 v15.h, v15.h, v16.l
	v_lshrrev_b32_e32 v16, 8, v24
	v_and_b16 v16.h, 0xff, v24.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v16.l, 8, v16.l
	v_or_b16 v16.l, v16.h, v16.l
	v_and_b16 v16.h, 0xff, v24.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v16.h, v16.h, v18.l
	ds_store_b16 v166, v9
	ds_store_b16_d16_hi v166, v9 offset:32
	ds_store_b16 v166, v10 offset:64
	ds_store_b16_d16_hi v166, v10 offset:96
	ds_store_b16 v167, v11
	ds_store_b16_d16_hi v167, v11 offset:32
	ds_store_b16 v167, v12 offset:64
	ds_store_b16_d16_hi v167, v12 offset:96
	ds_store_b16 v168, v13
	ds_store_b16_d16_hi v168, v13 offset:32
	ds_store_b16 v168, v14 offset:64
	ds_store_b16_d16_hi v168, v14 offset:96
	ds_store_b16 v169, v15
	ds_store_b16_d16_hi v169, v15 offset:32
	ds_store_b16 v169, v16 offset:64
	ds_store_b16_d16_hi v169, v16 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:288
	scratch_load_b32 v34, off, off offset:292
	scratch_load_b32 v150, off, off offset:296
	scratch_load_b32 v151, off, off offset:300
	v_add_nc_u32_e32 v9, s43, v19
	v_add_nc_u32_e32 v13, s43, v20
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v13, s[12:15], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(5)
	ds_load_2addr_stride64_b64 v[18:21], v0 offset1:8
	s_waitcnt vmcnt(4)
	ds_load_2addr_stride64_b64 v[22:25], v34 offset1:8
	s_waitcnt vmcnt(3)
	ds_load_2addr_stride64_b64 v[78:81], v150 offset1:8
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[74:77], v151 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_perm_b32 v26, v13, v9, 0x5010400
	v_perm_b32 v27, v13, v9, 0x7030602
	v_perm_b32 v28, v14, v10, 0x5010400
	v_perm_b32 v29, v14, v10, 0x7030602
	v_perm_b32 v30, v15, v11, 0x5010400
	v_perm_b32 v31, v15, v11, 0x7030602
	v_perm_b32 v32, v16, v12, 0x5010400
	v_perm_b32 v33, v16, v12, 0x7030602
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[176:183], v[18:19], v[40:41], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[18:19], v[42:43], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[216:223], v[18:19], v[208:209], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[236:243], v[18:19], v[210:211], v[1:8] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v18, 8, v26
	v_and_b16 v18.h, 0xff, v26.l
	v_lshrrev_b32_e32 v19, 24, v26
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[184:191], v[20:21], v[40:41], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v18.l, 8, v18.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[20:21], v[42:43], v[1:8] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v19.l, 8, v19.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[228:235], v[20:21], v[208:209], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v18.l, v18.h, v18.l
	v_and_b16 v18.h, 0xff, v26.h
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[20:21], v[210:211], v[1:8] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v20, 24, v27
	v_lshrrev_b32_e32 v21, 24, v28
	v_or_b16 v18.h, v18.h, v19.l
	v_lshrrev_b32_e32 v19, 8, v27
	v_and_b16 v19.h, 0xff, v27.l
	v_lshlrev_b16 v20.l, 8, v20.l
	v_lshlrev_b16 v21.l, 8, v21.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[176:183], v[22:23], v[44:45], v[176:183] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v19.l, 8, v19.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[192:199], v[22:23], v[46:47], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[216:223], v[22:23], v[212:213], v[216:223] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[236:243], v[22:23], v[214:215], v[236:243] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v22, 24, v29
	v_or_b16 v19.l, v19.h, v19.l
	v_and_b16 v19.h, 0xff, v27.h
	v_lshrrev_b32_e32 v23, 24, v30
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[184:191], v[24:25], v[44:45], v[184:191] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v22.l, 8, v22.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[200:207], v[24:25], v[46:47], v[200:207] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v19.h, v19.h, v20.l
	v_lshrrev_b32_e32 v20, 8, v28
	v_and_b16 v20.h, 0xff, v28.l
	v_lshlrev_b16 v23.l, 8, v23.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[228:235], v[24:25], v[212:213], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[24:25], v[214:215], v[9:16] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v20.l, 8, v20.l
	v_lshrrev_b32_e32 v24, 24, v31
	v_lshrrev_b32_e32 v25, 24, v32
	v_lshrrev_b32_e32 v26, 24, v33
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[176:183], v[78:79], v[224:225], v[176:183] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v20.l, v20.h, v20.l
	v_and_b16 v20.h, 0xff, v28.h
	v_lshlrev_b16 v24.l, 8, v24.l
	v_lshlrev_b16 v25.l, 8, v25.l
	v_lshlrev_b16 v26.l, 8, v26.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[184:191], v[80:81], v[224:225], v[184:191] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v20.h, v20.h, v21.l
	v_lshrrev_b32_e32 v21, 8, v29
	v_and_b16 v21.h, 0xff, v29.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[192:199], v[78:79], v[226:227], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[80:81], v[226:227], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[216:223], v[78:79], v[171:172], v[216:223] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v21.l, 8, v21.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[228:235], v[80:81], v[171:172], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[236:243], v[78:79], v[173:174], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[173:174], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[176:183], v[74:75], v[161:162], v[176:183] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v21.l, v21.h, v21.l
	v_and_b16 v21.h, 0xff, v29.h
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[184:191], v[76:77], v[161:162], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[74:75], v[163:164], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[200:207], v[76:77], v[163:164], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[216:223], v[74:75], v[252:253], v[216:223] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v21.h, v21.h, v22.l
	v_lshrrev_b32_e32 v22, 8, v30
	v_and_b16 v22.h, 0xff, v30.l
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[228:235], v[76:77], v[252:253], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[236:243], v[74:75], v[254:255], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[76:77], v[254:255], v[9:16] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v22.l, 8, v22.l
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v152, v218
	v_cvt_f32_i32_e32 v228, v228
	v_cvt_f32_i32_e32 v237, v237
	v_cvt_f32_i32_e32 v236, v236
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v22.l, v22.h, v22.l
	v_and_b16 v22.h, 0xff, v30.h
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v238, v238
	v_cvt_f32_i32_e32 v239, v239
	v_cvt_f32_i32_e32 v240, v240
	v_cvt_f32_i32_e32 v241, v241
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v22.h, v22.h, v23.l
	v_lshrrev_b32_e32 v23, 8, v31
	v_and_b16 v23.h, 0xff, v31.l
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v242, v242
	v_cvt_f32_i32_e32 v243, v243
	v_cvt_f32_i32_e32 v229, v229
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshlrev_b16 v23.l, 8, v23.l
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v230, v230
	v_cvt_f32_i32_e32 v231, v231
	v_cvt_f32_i32_e32 v232, v232
	v_cvt_f32_i32_e32 v233, v233
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v23.l, v23.h, v23.l
	v_and_b16 v23.h, 0xff, v31.h
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v234, v234
	v_cvt_f32_i32_e32 v235, v235
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v23.h, v23.h, v24.l
	v_lshrrev_b32_e32 v24, 8, v32
	v_and_b16 v24.h, 0xff, v32.l
	v_lshlrev_b16 v24.l, 8, v24.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v24.l, v24.h, v24.l
	v_and_b16 v24.h, 0xff, v32.h
	v_or_b16 v24.h, v24.h, v25.l
	v_lshrrev_b32_e32 v25, 8, v33
	v_and_b16 v25.h, 0xff, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v25.l, 8, v25.l
	v_or_b16 v25.l, v25.h, v25.l
	v_and_b16 v25.h, 0xff, v33.h
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v25.h, v25.h, v26.l
	ds_store_b16 v166, v18
	ds_store_b16_d16_hi v166, v18 offset:32
	ds_store_b16 v166, v19 offset:64
	ds_store_b16_d16_hi v166, v19 offset:96
	ds_store_b16 v167, v20
	ds_store_b16_d16_hi v167, v20 offset:32
	ds_store_b16 v167, v21 offset:64
	ds_store_b16_d16_hi v167, v21 offset:96
	ds_store_b16 v168, v22
	ds_store_b16_d16_hi v168, v22 offset:32
	ds_store_b16 v168, v23 offset:64
	ds_store_b16_d16_hi v168, v23 offset:96
	ds_store_b16 v169, v24
	ds_store_b16_d16_hi v169, v24 offset:32
	ds_store_b16 v169, v25 offset:64
	ds_store_b16_d16_hi v169, v25 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[86:89], v0 offset1:8
	ds_load_2addr_stride64_b64 v[82:85], v34 offset1:8
	ds_load_2addr_stride64_b64 v[78:81], v150 offset1:8
	ds_load_2addr_stride64_b64 v[74:77], v151 offset1:8
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v151, v221
	v_cvt_f32_i32_e32 v0, v216
	v_cvt_f32_i32_e32 v150, v219
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[244:251], v[86:87], v[40:41], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[88:89], v[40:41], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[86:87], v[42:43], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[88:89], v[42:43], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[244:251], v[82:83], v[44:45], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[84:85], v[44:45], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[82:83], v[46:47], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[84:85], v[46:47], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[86:87], v[208:209], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[88:89], v[208:209], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v208, v98
	v_mov_b32_e32 v98, v61
	v_wmma_i32_16x16x16_iu4 v[58:65], v[86:87], v[210:211], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[82:83], v[212:213], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[78:79], v[226:227], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[78:79], v[224:225], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[82:83], v[214:215], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[66:73], v[88:89], v[210:211], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[78:79], v[171:172], v[42:49] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[74:75], v[163:164], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[78:79], v[173:174], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[84:85], v[212:213], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[80:81], v[224:225], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[42:49], v[74:75], v[252:253], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[74:75], v[161:162], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[74:75], v[254:255], v[58:65] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v75, v177
	v_cvt_f32_i32_e32 v177, v223
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v224, v28
	v_cvt_f32_i32_e32 v223, v29
	v_cvt_f32_i32_e32 v28, v44
	scratch_load_b32 v44, off, off offset:236 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v29, v45
	scratch_load_b32 v45, off, off offset:240 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v213, v46
	scratch_load_b32 v46, off, off offset:244 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v211, v47
	scratch_load_b32 v47, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[66:73], v[84:85], v[214:215], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[80:81], v[226:227], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[76:77], v[161:162], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[80:81], v[171:172], v[50:57] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v171, v200
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[66:73], v[80:81], v[173:174], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[76:77], v[163:164], v[34:41] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v80, v182
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v200, v18
	v_cvt_f32_i32_e32 v182, v19
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v84, v186
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v186, v34
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v214, v190
	v_cvt_f32_i32_e32 v172, v205
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v205, v33
	v_cvt_f32_i32_e32 v190, v35
	v_cvt_f32_i32_e32 v33, v61
	v_dual_mov_b32 v61, v98 :: v_dual_mov_b32 v98, v208
	scratch_load_b32 v208, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v215, v189
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v189, v36
	v_cvt_f32_i32_e32 v210, v48
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[66:73], v[76:77], v[254:255], v[66:73] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v78, v180
	v_cvt_f32_i32_e32 v227, v188
	v_cvt_f32_i32_e32 v161, v196
	v_mov_b32_e32 v180, v170
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v196, v69
	v_mov_b32_e32 v69, v154
	v_cvt_f32_i32_e32 v188, v70
	v_mov_b32_e32 v70, v148
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[50:57], v[76:77], v[252:253], v[50:57] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v74, v176
	v_cvt_f32_i32_e32 v164, v199
	v_cvt_f32_i32_e32 v252, v201
	v_cvt_f32_i32_e32 v253, v202
	v_cvt_f32_i32_e32 v255, v204
	v_cvt_f32_i32_e32 v170, v220
	v_cvt_f32_i32_e32 v176, v222
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v222, v245
	v_cvt_f32_i32_e32 v221, v246
	v_cvt_f32_i32_e32 v220, v247
	v_cvt_f32_i32_e32 v204, v248
	v_cvt_f32_i32_e32 v202, v250
	v_cvt_f32_i32_e32 v201, v251
	v_cvt_f32_i32_e32 v245, v23
	v_cvt_f32_i32_e32 v246, v24
	v_cvt_f32_i32_e32 v247, v25
	v_cvt_f32_i32_e32 v251, v20
	v_cvt_f32_i32_e32 v250, v21
	v_cvt_f32_i32_e32 v248, v22
	v_cvt_f32_i32_e32 v219, v62
	v_mov_b32_e32 v62, v140
	v_cvt_f32_i32_e32 v218, v63
	v_mov_b32_e32 v63, v141
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v77, v179
	v_cvt_f32_i32_e32 v89, v195
	v_cvt_f32_i32_e32 v179, v217
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v217, v64
	v_mov_b32_e32 v64, v142
	v_cvt_f32_i32_e32 v195, v66
	v_mov_b32_e32 v66, v99
	v_dual_mov_b32 v99, v119 :: v_dual_mov_b32 v140, v109
	v_dual_mov_b32 v109, v144 :: v_dual_mov_b32 v144, v118
	v_cvt_f32_i32_e32 v216, v65
	v_mov_b32_e32 v65, v143
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v85, v187
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v187, v37
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v76, v178
	v_cvt_f32_i32_e32 v86, v192
	v_cvt_f32_i32_e32 v87, v193
	v_cvt_f32_i32_e32 v82, v184
	v_cvt_f32_i32_e32 v88, v194
	v_cvt_f32_i32_e32 v163, v198
	v_cvt_f32_i32_e32 v178, v14
	v_mov_b32_e32 v14, v97
	v_cvt_f32_i32_e32 v97, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v13, v39
	v_cvt_f32_i32_e32 v39, v56
	v_mov_b32_e32 v56, v158
	v_dual_mov_b32 v142, v126 :: v_dual_mov_b32 v119, v135
	v_dual_mov_b32 v135, v134 :: v_dual_mov_b32 v134, v145
	v_mov_b32_e32 v145, v117
	v_cvt_f32_i32_e32 v184, v72
	v_mov_b32_e32 v72, v153
	v_cvt_f32_i32_e32 v198, v67
	v_mov_b32_e32 v67, v100
	v_mov_b32_e32 v100, v136
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v79, v181
	v_cvt_f32_i32_e32 v81, v183
	v_cvt_f32_i32_e32 v174, v207
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v207, v31
	v_cvt_f32_i32_e32 v31, v59
	v_mov_b32_e32 v59, v104
	v_mov_b32_e32 v104, v108
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v162, v197
	v_cvt_f32_i32_e32 v173, v206
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v225, v27
	v_cvt_f32_i32_e32 v206, v32
	v_cvt_f32_i32_e32 v27, v43
	v_cvt_f32_i32_e32 v32, v60
	v_dual_mov_b32 v60, v105 :: v_dual_mov_b32 v105, v107
	v_cvt_f32_i32_e32 v43, v71
	v_mov_b32_e32 v71, v149
	v_cvt_f32_i32_e32 v197, v68
	v_mov_b32_e32 v68, v155
	v_cvt_f32_i32_e32 v226, v26
	v_cvt_f32_i32_e32 v26, v42
	v_cvt_f32_i32_e32 v42, v54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v183, v15
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v15, v41
	v_cvt_f32_i32_e32 v41, v57
	v_dual_mov_b32 v57, v132 :: v_dual_mov_b32 v54, v157
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v83, v185
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v185, v73
	v_mov_b32_e32 v73, v114
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v254, v203
	v_cvt_f32_i32_e32 v181, v9
	v_cvt_f32_i32_e32 v212, v191
	v_cvt_f32_i32_e32 v9, v16
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v244, v244
	v_cvt_f32_i32_e32 v203, v249
	v_cvt_f32_i32_e32 v249, v30
	v_cvt_f32_i32_e32 v16, v38
	v_cvt_f32_i32_e32 v38, v55
	v_dual_mov_b32 v55, v17 :: v_dual_mov_b32 v132, v156
	v_cvt_f32_i32_e32 v30, v58
	v_cvt_f32_i32_e32 v209, v49
	v_cvt_f32_i32_e32 v191, v50
	v_cvt_f32_i32_e32 v194, v51
	v_cvt_f32_i32_e32 v193, v52
	v_cvt_f32_i32_e32 v192, v53
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v19, 0x80000000, v46, s1
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v46, 2, v46
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v18, 0x80000000, v47, s0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v47, 2, v47
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v34, v19, s[28:31], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v45, s2
	buffer_load_u16 v18, v18, s[28:31], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v45, 2, v45
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v35, v19, s[28:31], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v44, s3
	buffer_load_u16 v36, v19, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v19, v159, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v48, off, off offset:304 ; 4-byte Folded Reload
	v_mov_b32_e32 v148, v139
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v44, 2, v44
	v_add_nc_u32_e32 v159, s44, v159
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v199, 16, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v13, v13, v34
	v_dual_mul_f32 v15, v15, v34 :: v_dual_mul_f32 v16, v34, v16
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v48, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v175
	ds_load_b128 v[22:25], v175 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v35, 16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v62, v0, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v26, v35, v26 :: v_dual_fmac_f32 v63, v0, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v65, v0, v20 :: v_dual_mul_f32 v0, v35, v150
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v37, v199, v74 :: v_dual_mov_b32 v74, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v64, v0, v21
	v_dual_fmac_f32 v110, v37, v18 :: v_dual_mul_f32 v37, v199, v75
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v0, 16, v36
	scratch_load_b32 v75, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v37, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v37, v199, v76
	v_mul_f32_e32 v36, v0, v236
	scratch_load_b32 v236, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v37, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v37, v199, v77
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v77, off, off offset:64
	scratch_load_b32 v143, off, off offset:60
	scratch_load_b32 v139, off, off offset:120
	scratch_load_b32 v118, off, off offset:56
	scratch_load_b32 v128, off, off offset:116
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v99, v36, v18 :: v_dual_mul_f32 v36, v82, v199
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v82, off, off offset:32
	scratch_load_b32 v141, off, off offset:28
	scratch_load_b32 v117, off, off offset:20
	v_dual_fmac_f32 v112, v37, v21 :: v_dual_mul_f32 v37, v34, v86
	v_mov_b32_e32 v86, v127
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v86, v37, v18 :: v_dual_mul_f32 v37, v34, v87
	scratch_load_b32 v87, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v0, v237
	scratch_load_b32 v237, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v100, v18, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v0, v238
	scratch_load_b32 v238, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v18, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v0, v239
	scratch_load_b32 v239, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v101, v18, v21 :: v_dual_mul_f32 v18, v199, v78
	scratch_load_b32 v78, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v165, v18, v22 :: v_dual_mul_f32 v18, v199, v79
	scratch_load_b32 v79, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v87, v37, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v37, v34, v88
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v88, off, off offset:88
	scratch_load_b32 v76, off, off offset:68
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v139, v37, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v37, v34, v89
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v89, off, off offset:84
	scratch_load_b32 v127, off, off offset:80
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v236, v18, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v199, v80
	scratch_load_b32 v80, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v18, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v199, v81
	scratch_load_b32 v81, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v18, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v34, v161
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v78, v18, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v34, v162
	scratch_load_b32 v162, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v79, v18, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v34, v163
	scratch_load_b32 v163, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v88, v37, v21
	scratch_load_b32 v37, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v80, v18, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v34, v164
	scratch_load_b32 v164, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v81, v18, v25 :: v_dual_mul_f32 v18, v35, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v170, v180 :: v_dual_fmac_f32 v119, v18, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v35, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v120, v18, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v35, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v121, v18, v24 :: v_dual_mul_f32 v18, v35, v177
	v_dual_fmac_f32 v57, v18, v25 :: v_dual_mul_f32 v18, v0, v240
	scratch_load_b32 v240, off, off offset:188 ; 4-byte Folded Reload
	v_dual_fmac_f32 v75, v18, v22 :: v_dual_mul_f32 v18, v0, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v76, v18, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v0, v242
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v77, v18, v24 :: v_dual_mul_f32 v18, v0, v243
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v98, v18, v25
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[18:21], v175 offset:512
	ds_load_b128 v[22:25], v175 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_fmac_f32_e32 v240, v36, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v199, v83
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v83, off, off offset:12
	scratch_load_b32 v136, off, off offset:8
	scratch_load_b32 v114, off, off offset:76
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v36, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v199, v84
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v84, off, off offset:4
	scratch_load_b32 v108, off, off offset:48
	scratch_load_b32 v126, off, off offset:24
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v95, v36, v20 :: v_dual_mul_f32 v36, v199, v85
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v85, off, off
	scratch_load_b32 v107, off, off offset:104
	scratch_load_b32 v149, off, off offset:16
	v_dual_fmac_f32 v127, v36, v21 :: v_dual_mul_f32 v36, v171, v34
	scratch_load_b32 v171, off, off offset:124 ; 4-byte Folded Reload
	v_fmac_f32_e32 v238, v36, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v34, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v36, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v34, v253
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v71, v36, v20 :: v_dual_mul_f32 v36, v34, v254
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v72, v36, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v228, v35
	scratch_load_b32 v228, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v237, v36, v18 :: v_dual_mul_f32 v36, v35, v229
	scratch_load_b32 v229, off, off offset:168 ; 4-byte Folded Reload
	v_dual_fmac_f32 v143, v36, v19 :: v_dual_mul_f32 v36, v35, v230
	scratch_load_b32 v230, off, off offset:172 ; 4-byte Folded Reload
	v_dual_fmac_f32 v141, v36, v20 :: v_dual_mul_f32 v36, v35, v231
	scratch_load_b32 v231, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(12)
	v_fmac_f32_e32 v136, v36, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v181, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v228, v36, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v18, v0, v97 :: v_dual_mov_b32 v97, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v14, v40, v34 :: v_dual_fmac_f32 v59, v18, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v0, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v246, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v60, v18, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v0, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v11, v247, v199 :: v_dual_fmac_f32 v66, v18, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v199, v227
	scratch_load_b32 v227, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v97, v18, v22 :: v_dual_mul_f32 v18, v215, v199
	scratch_load_b32 v215, off, off offset:156 ; 4-byte Folded Reload
	v_fmac_f32_e32 v239, v18, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v214, v199
	scratch_load_b32 v214, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v231, v18, v24 :: v_dual_mul_f32 v18, v212, v199
	scratch_load_b32 v212, off, off offset:148 ; 4-byte Folded Reload
	v_fmac_f32_e32 v131, v18, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v34, v255
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v18, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v172, v34
	scratch_load_b32 v172, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v230, v18, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v173, v34
	scratch_load_b32 v173, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v229, v18, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v174, v34
	scratch_load_b32 v174, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v227, v18, v25 :: v_dual_mul_f32 v18, v35, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v149, v18, v22 :: v_dual_mul_f32 v18, v233, v35
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v215, v18, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v234, v35
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v214, v18, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v235, v35
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v212, v18, v25
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v0, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v12, v199, v248 :: v_dual_fmac_f32 v61, v18, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v178, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v208, v18, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v183, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v174, v18, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v9, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v245, v199
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v173, v18, v25
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v18, v37, s[16:19], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v37, s44, v37
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v48, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v175
	ds_load_b128 v[22:25], v175 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v36, v199, v244
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v172, v36, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v36, v199, v222
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v26, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v26, v35, v27 :: v_dual_mul_f32 v27, v184, v0
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v171, v36, v19 :: v_dual_mul_f32 v36, v199, v221
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v107, v26, v19 :: v_dual_mul_f32 v26, v35, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v28, v185, v0
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v125, v36, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v36, v199, v220
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v117, v26, v20 :: v_dual_mul_f32 v26, v35, v29
	v_fmac_f32_e32 v170, v36, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v36, v34, v226
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v114, v26, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v0, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v146, v36, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v36, v34, v225
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v93, v26, v18 :: v_dual_mul_f32 v18, v0, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v200, v199
	scratch_load_b32 v200, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v145, v36, v19 :: v_dual_mul_f32 v36, v34, v224
	v_fmac_f32_e32 v92, v18, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v144, v36, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v36, v34, v223
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v91, v18, v20 :: v_dual_mul_f32 v18, v0, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v89, v36, v21
	v_fmac_f32_e32 v90, v18, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v199, v204
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v164, v18, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v199, v203
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v163, v18, v23 :: v_dual_mul_f32 v18, v199, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v18, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v199, v201
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v103, v18, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v34, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v142, v18, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v34, v207
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v109, v18, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v34, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v140, v18, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v34, v205
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v18, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v35, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v118, v18, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v35, v211
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v18, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v35, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v122, v18, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v35, v209
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v123, v18, v25 :: v_dual_mul_f32 v18, v0, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v18, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v0, v218
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v84, v18, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v0, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v83, v18, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v0, v216
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v82, v18, v25
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[18:21], v175 offset:512
	ds_load_b128 v[22:25], v175 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v54, v26, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v199, v182
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v132, v27, v24
	v_fmac_f32_e32 v96, v12, v22
	v_fmac_f32_e32 v134, v16, v22
	v_dual_fmac_f32 v129, v28, v25 :: v_dual_fmac_f32 v162, v26, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v199, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v148, v26, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v199, v250
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v147, v26, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v186, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v55, v26, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v34, v190
	scratch_load_b32 v190, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v138, v26, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v34, v189
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v137, v26, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v34, v187
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v135, v26, v21 :: v_dual_mul_f32 v26, v191, v35
	scratch_load_b32 v191, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v200, v26, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v35, v194
	scratch_load_b32 v194, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v108, v26, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v35, v193
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v26, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v35, v192
	scratch_load_b32 v192, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v116, v26, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v26, v195, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v195, off, off offset:216
	scratch_load_b32 v193, off, off offset:208
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v190, v26, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v0, v198
	v_mul_f32_e32 v26, v43, v0
	scratch_load_b32 v198, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v74, v18, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v18, v0, v197 :: v_dual_fmac_f32 v133, v26, v23
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[26:27], off, off offset:252
	scratch_load_b32 v197, off, off offset:224
	v_mul_f32_e32 v19, v39, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v69, v18, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v0, v196
	scratch_load_b32 v196, off, off offset:220 ; 4-byte Folded Reload
	v_mul_f32_e32 v20, v41, v35
	v_mul_f32_e32 v0, v0, v188
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v68, v18, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v18, v38, v35 :: v_dual_mul_f32 v21, v35, v42
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v191, v20, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v67, v0, v22 :: v_dual_fmac_f32 v56, v18, v23
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v115, v21, v22 :: v_dual_fmac_f32 v194, v14, v24
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v192, v19, v24 :: v_dual_fmac_f32 v195, v13, v23
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v193, v15, v25 :: v_dual_fmac_f32 v198, v9, v23
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v197, v10, v24 :: v_dual_add_nc_u32 v26, 32, v26
	scratch_load_b32 v10, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v196, v11, v25
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s45, v10
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v1, off, off offset:328
	scratch_load_b32 v5, off, off offset:332
	scratch_load_b32 v150, off, off offset:308
	scratch_load_b32 v151, off, off offset:312
	scratch_load_b32 v152, off, off offset:316
	scratch_load_b32 v161, off, off offset:320
	scratch_load_b32 v58, off, off offset:324
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v54 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v171
	v_mul_f32_e32 v180, 0xbfb8aa3b, v89
	v_mul_f32_e32 v178, 0xbfb8aa3b, v142
	v_dual_mul_f32 v30, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v198 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v196
	v_mul_f32_e32 v24, 0xbfb8aa3b, v122
	v_dual_mul_f32 v166, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v129
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v3
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v10, 0xbfb8aa3b, v172 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_mul_f32_e32 v2, 0xbfb8aa3b, v197
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_dual_mul_f32 v6, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v170
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v196
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v189, 0xbfb8aa3b, v163 :: v_dual_mul_f32 v188, 0xbfb8aa3b, v102
	v_mul_f32_e32 v183, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v54
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v198
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s0
	v_exp_f32_e32 v13, v13
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v197
	v_exp_f32_e32 v14, v8
	v_exp_f32_e32 v2, v2
	v_dual_mul_f32 v8, 0xbfb8aa3b, v164 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v11, v11
	v_dual_mul_f32 v15, 0xbfb8aa3b, v193 :: v_dual_mul_f32 v186, 0xbfb8aa3b, v162
	v_mul_f32_e32 v179, 0xbfb8aa3b, v144
	v_ldexp_f32 v12, v13, v12
	v_dual_mul_f32 v184, 0xbfb8aa3b, v147 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v148
	v_ldexp_f32 v4, v14, v4
	v_mul_f32_e32 v14, 0xbfb8aa3b, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v0, v2, v0
	v_ldexp_f32 v11, v11, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v195
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_dual_mul_f32 v154, 0xbfb8aa3b, v91 :: v_dual_add_f32 v39, 1.0, v4
	v_mul_f32_e32 v27, 0xbfb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v14, 0xbfb8aa3b, v194
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v193
	v_mul_f32_e32 v177, 0xbfb8aa3b, v109
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v55
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v195 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v137
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v194
	v_exp_f32_e32 v14, v14
	v_mul_f32_e32 v169, 0xbfb8aa3b, v107
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v13, v13, v2
	v_exp_f32_e32 v16, v16
	v_dual_mul_f32 v2, 0xbfb8aa3b, v200 :: v_dual_mul_f32 v159, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_mul_f32_e32 v157, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v14, v14, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v3, 0xbfb8aa3b, v56 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v191
	v_ldexp_f32 v15, v16, v15
	v_ldexp_f32 v16, v18, v17
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v18, 0xbfb8aa3b, v192
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_mul_f32_e32 v28, 0xbfb8aa3b, v135
	v_exp_f32_e32 v32, v22
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v200
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v39, v39, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v56
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s0
	v_ldexp_f32 v32, v32, v21
	v_mul_f32_e32 v21, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_exp_f32_e32 v18, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_mul_f32 v182, 0xbfb8aa3b, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v175, 0xbfb8aa3b, v128
	v_ldexp_f32 v17, v17, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v190
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, s1, v197, v11, v197
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v18, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v133
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v18, 0xbfb8aa3b, v82 :: v_dual_add_f32 v17, 1.0, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_mul_f32_e32 v160, 0xbfb8aa3b, v116
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v36, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v35
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v3, 0xbfb8aa3b, v190 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v133
	v_cndmask_b32_e64 v38, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, vcc_lo, v54, v39, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v129
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v41, v21
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v3, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v33, 1.0, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_fmac_f32 v20, 0xbfb8aa3b, v192
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v176, 0xbfb8aa3b, v140 :: v_dual_mul_f32 v167, 0xbfb8aa3b, v117
	v_ldexp_f32 v35, v41, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v11, v11, v197
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v36, v34
	v_ldexp_f32 v42, v3, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v36, v38, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v40, v43, 1.0
	v_rcp_f32_e32 v45, v41
	v_div_scale_f32 v38, null, v0, v0, v198
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v2, 0xbfb8aa3b, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v53, null, v13, v13, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v46, v44, v43
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v45, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	v_dual_add_f32 v32, 1.0, v32 :: v_dual_add_f32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v40, v46, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, null, v12, v12, v196
	v_fma_f32 v47, -v38, v37, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v48, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v51, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v47, v37
	v_div_scale_f32 v47, s0, v198, v0, v198
	v_fma_f32 v40, -v40, v46, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v4, 0xbfb8aa3b, v69 :: v_dual_add_f32 v31, 1.0, v31
	v_dual_mul_f32 v26, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v40, v40, v43, v46
	v_rcp_f32_e32 v43, v53
	v_mul_f32_e32 v48, v47, v37
	v_fma_f32 v46, -v49, v51, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v40, v39, v54
	v_div_scale_f32 v40, s2, v196, v12, v196
	v_fma_f32 v44, -v38, v48, v47
	v_fmac_f32_e32 v51, v46, v51
	v_mul_f32_e32 v52, v50, v45
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v44, v37
	v_div_scale_f32 v46, s0, v55, v13, v55
	v_fma_f32 v44, -v41, v52, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v168, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v38, v48, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v22, 0xbfb8aa3b, v108 :: v_dual_mul_f32 v155, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v52, v44, v45
	v_fma_f32 v44, -v53, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v37, v38, v37, v48
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v20, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v153, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v41, v52, v50
	v_mul_f32_e32 v41, v40, v51
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, null, v14, v14, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v45, v52
	v_fma_f32 v47, -v49, v41, v40
	v_div_scale_f32 v50, null, v15, v15, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v44
	v_mul_f32_e32 v48, v46, v43
	v_fmac_f32_e32 v41, v47, v51
	v_div_fixup_f32 v11, v38, v11, v197
	v_rcp_f32_e32 v38, v50
	v_div_fixup_f32 v0, v37, v0, v198
	v_fma_f32 v37, -v53, v48, v46
	v_fma_f32 v40, -v49, v41, v40
	v_div_scale_f32 v49, null, v16, v16, v193
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v44, v45, 1.0
	v_fmac_f32_e32 v48, v37, v43
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v37, s1, v195, v14, v195
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v45, v47, v45
	v_rcp_f32_e32 v47, v49
	v_fma_f32 v52, -v50, v38, 1.0
	v_div_fmas_f32 v40, v40, v51, v41
	v_fma_f32 v41, -v53, v48, v46
	v_div_scale_f32 v51, s2, v194, v15, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v38, v52, v38
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v54, s0, v193, v16, v193
	v_fma_f32 v52, -v49, v47, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v41, v41, v43, v48
	v_mul_f32_e32 v48, v51, v38
	v_div_fixup_f32 v12, v40, v12, v196
	v_fmac_f32_e32 v47, v52, v47
	v_div_scale_f32 v53, null, v17, v17, v200
	v_div_fixup_f32 v13, v41, v13, v55
	v_fma_f32 v40, -v50, v48, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v54, v47
	v_rcp_f32_e32 v52, v53
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v158, 0xbfb8aa3b, v93 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v40, v38
	v_fma_f32 v40, -v49, v41, v54
	v_mul_f32_e32 v46, v37, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v156, 0xbfb8aa3b, v90 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v68
	v_mul_f32_e32 v19, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v40, v47
	v_fma_f32 v43, -v44, v46, v37
	v_fma_f32 v55, -v53, v52, 1.0
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v131, v131, v12
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v43, v45
	v_div_scale_f32 v43, null, v33, v33, v56
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v5, 2, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v44, v46, v37
	v_rcp_f32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v45, v46
	v_fma_f32 v45, -v50, v48, v51
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v37, v14, v195
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v43, v44, 1.0
	v_div_fmas_f32 v38, v45, v38, v48
	v_fma_f32 v45, -v49, v41, v54
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v49, s1, v56, v33, v56
	v_fmac_f32_e32 v44, v46, v44
	v_div_scale_f32 v46, null, v31, v31, v192
	v_div_fmas_f32 v41, v45, v47, v41
	v_div_fixup_f32 v15, v38, v15, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v47, v49, v44
	v_rcp_f32_e32 v45, v46
	v_fmac_f32_e32 v52, v55, v52
	v_div_scale_f32 v55, s3, v200, v17, v200
	v_div_fixup_f32 v37, v41, v16, v193
	v_div_scale_f32 v41, null, v32, v32, v191
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v55, v52
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v43, v47, v49
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v15, v229, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v53, v40, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v38, v44
	v_div_scale_f32 v38, s0, v192, v31, v192
	v_fmac_f32_e32 v40, v48, v52
	v_fma_f32 v48, -v46, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v53, v40, v55
	v_fmac_f32_e32 v45, v48, v45
	v_div_scale_f32 v48, null, v42, v42, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v16, v16, v52, v40
	v_rcp_f32_e32 v40, v41
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v52, null, v35, v35, v132
	v_div_fixup_f32 v50, v16, v17, v200
	v_fma_f32 v16, -v43, v47, v49
	v_rcp_f32_e32 v49, v48
	v_mul_f32_e32 v17, v38, v45
	v_rcp_f32_e32 v55, v52
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v41, v40, 1.0
	v_div_fmas_f32 v16, v16, v44, v47
	v_fma_f32 v44, -v46, v17, v38
	v_div_scale_f32 v47, s1, v191, v32, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v43, null, v34, v34, v133
	v_fma_f32 v51, -v48, v49, 1.0
	v_div_fixup_f32 v33, v16, v33, v56
	v_fmac_f32_e32 v17, v44, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v16, v43
	v_mul_f32_e32 v44, v47, v40
	v_fmac_f32_e32 v49, v51, v49
	v_div_scale_f32 v51, s2, v190, v42, v190
	v_fma_f32 v38, -v46, v17, v38
	v_fma_f32 v46, -v41, v44, v47
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v53, v51, v49
	v_div_scale_f32 v56, null, v36, v36, v129
	v_fma_f32 v54, -v43, v16, 1.0
	v_div_fmas_f32 v17, v38, v45, v17
	v_fmac_f32_e32 v44, v46, v40
	v_fma_f32 v38, -v48, v53, v51
	v_div_scale_f32 v46, s0, v133, v34, v133
	v_fmac_f32_e32 v16, v54, v16
	v_rcp_f32_e32 v45, v56
	v_div_fixup_f32 v31, v17, v31, v192
	v_fma_f32 v17, -v41, v44, v47
	v_fmac_f32_e32 v53, v38, v49
	v_mul_f32_e32 v38, v46, v16
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v54, -v52, v55, 1.0
	v_div_fmas_f32 v17, v17, v40, v44
	v_fma_f32 v40, -v48, v53, v51
	v_fma_f32 v44, -v43, v38, v46
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v55, v54, v55
	v_div_scale_f32 v41, s3, v132, v35, v132
	v_fma_f32 v47, -v56, v45, 1.0
	v_div_fmas_f32 v40, v40, v49, v53
	v_fmac_f32_e32 v38, v44, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v17, v32, v191
	v_fmac_f32_e32 v45, v47, v45
	v_div_scale_f32 v47, s1, v129, v36, v129
	v_fma_f32 v10, -v43, v38, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v48, v41, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v44, v47, v45
	v_div_fixup_f32 v40, v40, v42, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v52, v48, v41
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v10, v16, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v17, v55
	v_fma_f32 v17, -v56, v44, v47
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v34, v10, v34, v133
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v133, v240, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v52, v48, v41
	v_fmac_f32_e32 v44, v17, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v16, v16, v55, v48
	v_fma_f32 v17, -v56, v44, v47
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v35, v16, v35, v132
	v_div_fmas_f32 v9, v17, v45, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_ldexp_f32 v7, v38, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v132, v239, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v9, v36, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v171
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v129, v231, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v16
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v170
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v0, v0, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v230, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v227, v37
	v_mul_f32_e32 v17, v238, v13
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v7, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, vcc_lo, v172, v0, v172
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v11, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v39, v38, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v11, v212, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v37, v37, v171
	v_fmac_f32_e32 v38, v9, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v10
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v208, v34
	v_mul_f32_e32 v9, v228, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v47, v43, v38
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v46, null, v42, v42, v170
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v237, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v39, v47, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v45, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v174, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v32, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, s0, v171, v37, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v39, v47, v43
	v_div_scale_f32 v40, null, v34, v34, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v35, v38, v47
	v_rcp_f32_e32 v38, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v173, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v40, v38, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v36, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v215, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v41, v44, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v33, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v32, v44
	v_div_fixup_f32 v0, v35, v0, v172
	v_fma_f32 v43, -v41, v39, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v110, v110, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v43, v44
	v_div_scale_f32 v43, s2, v125, v34, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v41, v39, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v32, v32, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v163
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v37, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v111, v111, v32 :: v_dual_mul_f32 v10, v214, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v43, v38
	v_rcp_f32_e32 v31, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v40, v39, v43
	v_fmac_f32_e32 v39, v44, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v46, v31, 1.0
	v_fma_f32 v37, -v40, v39, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v31
	v_div_scale_f32 v33, s1, v170, v42, v170
	v_mul_f32_e32 v45, v33, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v46, v45, v33
	v_fmac_f32_e32 v45, v35, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v46, v45, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v35, v35, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v31, v33, v31, v45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v41, v36
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v102
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v31, v31, v42, v170
	v_div_scale_f32 v48, null, v35, v35, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v37, v38, v39
	v_div_scale_f32 v39, s0, v164, v35, v164
	v_rcp_f32_e32 v36, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v37, v34, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v112, v112, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v185
	v_ldexp_f32 v40, v40, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v113, v113, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v33, v33, v163
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v48, v36, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v41
	v_fmac_f32_e32 v36, v42, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v45, null, v34, v34, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v43, v39, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v31, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v103
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v41, v38, 1.0
	v_fma_f32 v40, -v48, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v48, v43, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v42, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v36, v43
	v_fma_f32 v36, -v45, v31, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v35, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v36, v31
	v_div_scale_f32 v36, s0, v102, v34, v102
	v_div_scale_f32 v37, null, v0, v0, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v36, v31
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, s1, v163, v33, v163
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v44, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v41, v40, v44
	v_fmac_f32_e32 v40, v39, v38
	v_rcp_f32_e32 v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v41, v40, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v35, v35, v38, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v37, v39, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v35, v33, v163
	v_fma_f32 v35, -v45, v43, v36
	v_fmac_f32_e32 v39, v44, v39
	v_div_scale_f32 v44, s1, v103, v0, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v40, 0xbfb8aa3b, v148 :: v_dual_fmac_f32 v43, v35, v31
	v_ldexp_f32 v35, v42, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v44, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v40, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v45, v43, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v37, v41, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v147
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v183
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v41, v45, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v46
	v_ldexp_f32 v38, v40, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v35, v35, v162
	v_div_fmas_f32 v31, v36, v31, v43
	v_fma_f32 v36, -v37, v41, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v36, v39, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v45, v42
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v34, v102
	v_div_scale_f32 v41, vcc_lo, v162, v35, v162
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v36, v0, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v40, v46, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v104, v104, v31
	v_mul_f32_e32 v102, v165, v32
	v_mul_f32_e32 v105, v105, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v39, v39, v147
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v103, v236, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v178
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v31, v36, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s1, v147, v39, v147
	v_fmac_f32_e32 v46, v48, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_add_f32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v43, v41, v46
	v_div_scale_f32 v47, null, v38, v38, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v33, null, v31, v31, v96
	v_fma_f32 v0, -v40, v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v44, v47
	v_fmac_f32_e32 v43, v0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v40, v43, v41
	v_fma_f32 v42, -v47, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v46, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v35, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v42, v44
	v_div_scale_f32 v42, s0, v148, v38, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v34, v42, v44
	v_div_scale_f32 v43, s0, v96, v31, v96
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v94, v94, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v47, v34, v42
	v_fmac_f32_e32 v34, v0, v44
	v_fma_f32 v0, -v45, v48, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v34, v42
	v_fmac_f32_e32 v48, v0, v48
	v_rcp_f32_e32 v0, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v36, v44, v34
	v_mul_f32_e32 v35, v37, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v38, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v33, v0, 1.0
	v_fma_f32 v41, -v45, v35, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v95, v95, v34 :: v_dual_fmac_f32 v0, v36, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v41, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v38, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v43, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v33, v40, v43
	v_fma_f32 v37, -v45, v35, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v46, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v145
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v33, v40, v43
	v_div_fmas_f32 v35, v37, v48, v35
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v44, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v33, v0, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v39, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v0, v31, v96
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v127, v35
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v42, v36
	v_ldexp_f32 v37, v44, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v97, v97, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v38, v38, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v36, 1.0, v36 :: v_dual_add_f32 v37, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v33, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v43, null, v36, v36, v145
	v_div_scale_f32 v31, null, v37, v37, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v41, -v45, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v42, v41, v42
	v_div_scale_f32 v41, vcc_lo, v146, v38, v146
	v_fma_f32 v44, -v43, v40, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v31, v33, 1.0
	v_dual_mul_f32 v39, v41, v42 :: v_dual_fmac_f32 v40, v44, v40
	v_div_scale_f32 v44, s0, v145, v36, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v45, v39, v41
	v_dual_fmac_f32 v33, v35, v33 :: v_dual_mul_f32 v34, v44, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v46, v42
	v_div_scale_f32 v46, null, v0, v0, v144
	v_fma_f32 v32, -v45, v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v43, v34, v44
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v45, s1, v89, v37, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v42, v39
	v_fmac_f32_e32 v34, v41, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s2
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v45, v33
	v_div_fixup_f32 v32, v32, v38, v146
	v_fma_f32 v38, -v43, v34, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v46, v35, 1.0
	v_div_scale_f32 v44, s2, v144, v0, v144
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v43, -v31, v42, v45
	v_div_fmas_f32 v34, v38, v40, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v44, v35
	v_fmac_f32_e32 v42, v43, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v109
	v_ldexp_f32 v39, v41, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v46, v38, v44
	v_fma_f32 v31, -v31, v42, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v43, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v39, v39, v142
	v_div_fmas_f32 v31, v31, v33, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v46, v38, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v42, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v48
	v_ldexp_f32 v40, v43, v40
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v34, v34, v36, v145
	v_div_fmas_f32 v35, v44, v35, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v128
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v45, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v35, v0, v144
	v_div_scale_f32 v41, null, v38, v38, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v40, v42
	v_div_scale_f32 v40, vcc_lo, v142, v39, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v41
	v_mul_f32_e32 v48, v40, v42
	v_div_fixup_f32 v31, v31, v37, v89
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v89, v139, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v33, v33, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v36, -v45, v48, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v87, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v46, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v47
	v_fma_f32 v37, -v41, v44, 1.0
	v_fmac_f32_e32 v48, v36, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v88, v88, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, s0, v109, v38, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v45, v48, v40
	v_fmac_f32_e32 v44, v37, v44
	v_div_scale_f32 v40, null, v0, v0, v128
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v47, v35, 1.0
	v_div_fmas_f32 v34, v34, v42, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v40
	v_mul_f32_e32 v37, v31, v44
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, s1, v140, v33, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v41, v37, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v86, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v34, v39, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v40, v30, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v36, v35
	v_fmac_f32_e32 v37, v42, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v39, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v47, v43, v36
	v_fma_f32 v31, -v41, v37, v31
	v_div_scale_f32 v41, s2, v128, v0, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v34, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v29, v29, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v78, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v44, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_exp_f32_e32 v28, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v41, v30
	v_fma_f32 v36, -v47, v43, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v29, v29, v138
	v_fma_f32 v39, -v40, v37, v41
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v45
	v_div_fmas_f32 v35, v36, v35, v43
	v_fmac_f32_e32 v37, v39, v30
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v135
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v35, v33, v140
	v_fma_f32 v35, -v40, v37, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v169
	v_exp_f32_e32 v36, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v45, v34, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v80, v80, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v35, v30, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, s0, v138, v29, v138
	v_fmac_f32_e32 v34, v39, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v0, v30, v0, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v36, v36, v42
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v27, v34
	v_div_fixup_f32 v31, v31, v38, v109
	v_div_scale_f32 v38, null, v28, v28, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v134
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v81, v81, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v38
	v_fma_f32 v36, -v45, v39, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v79, v79, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v0, v0, v135
	v_fmac_f32_e32 v39, v36, v34
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v41
	v_fma_f32 v40, -v38, v35, 1.0
	v_fma_f32 v27, -v45, v39, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v37, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v40, v35
	v_div_scale_f32 v40, s1, v137, v28, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v27, v27, v34, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v36, v40, v35
	v_fma_f32 v32, -v41, v31, 1.0
	v_div_fixup_f32 v27, v27, v29, v138
	v_div_scale_f32 v26, s0, v135, v0, v135
	v_fma_f32 v33, -v38, v36, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v32, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v33, v35
	v_div_scale_f32 v33, null, v30, v30, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v70, v70, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v38, v36, v40
	v_rcp_f32_e32 v32, v33
	v_mul_f32_e32 v38, v26, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v35, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, s2
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v29, v28, v137
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v39, -v33, v32, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v41, v38, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v71, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v39, v32
	v_div_scale_f32 v39, s1, v134, v30, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v29, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v37, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v39, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v41, v38, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v33, v34, v39
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v36, v35
	v_exp_f32_e32 v40, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v29, v29, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v34, v41, v32 :: v_dual_add_f32 v35, 1.0, v35
	v_div_fmas_f32 v26, v26, v31, v38
	v_rcp_f32_e32 v41, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v33, v34, v39
	v_div_scale_f32 v42, null, v35, v35, v107
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v117
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v32, v34
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v34, vcc_lo, v130, v29, v130
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v36, v41, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v40, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v31, v30, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v26, v0, v135
	v_dual_fmac_f32 v41, v43, v41 :: v_dual_add_f32 v32, 1.0, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v42, v39, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v73, v73, v30 :: v_dual_mul_f32 v38, v34, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v32, v32, v114
	v_fmac_f32_e32 v39, v37, v39
	v_div_scale_f32 v37, s0, v107, v35, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v36, v38, v34
	v_rcp_f32_e32 v43, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v72, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v30, v37, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v31, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v26, v41
	v_div_scale_f32 v33, s1, v114, v32, v114
	v_fma_f32 v26, -v42, v30, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v36, v38, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v26, v39
	v_fma_f32 v26, -v40, v43, 1.0
	v_div_fmas_f32 v27, v27, v41, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v0, v0, v117
	v_fma_f32 v31, -v42, v30, v37
	v_fmac_f32_e32 v43, v26, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v27, v29, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v118
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v31, v39, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v33, v43
	v_div_scale_f32 v37, s0, v117, v0, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v28, v26, 1.0
	v_div_fixup_f32 v30, v30, v35, v107
	v_fma_f32 v35, -v40, v29, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v62, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v31, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v35, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v25, v34
	v_dual_fmac_f32 v36, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v25, v37, v26
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v28, v25, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v122
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v24, v24, v118
	v_fma_f32 v33, -v40, v29, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v38, v26
	v_rcp_f32_e32 v35, v39
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v36, v31
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v28, -v28, v25, v37
	v_div_fmas_f32 v29, v33, v43, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v34
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v123
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v39, v35, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v34, null, v31, v31, v124
	v_div_fmas_f32 v25, v28, v26, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v33, v35
	v_div_scale_f32 v33, vcc_lo, v118, v24, v118
	v_rcp_f32_e32 v28, v34
	v_div_fixup_f32 v29, v29, v32, v114
	v_div_fixup_f32 v0, v25, v0, v117
	v_div_scale_f32 v25, null, v23, v23, v122
	v_dual_mul_f32 v32, v33, v35 :: v_dual_mul_f32 v63, v63, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v65, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v26, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v36, -v39, v32, v33
	v_fma_f32 v37, -v34, v28, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v64, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s1, v122, v23, v122
	v_fmac_f32_e32 v32, v36, v35
	v_fmac_f32_e32 v28, v37, v28
	v_div_scale_f32 v37, s0, v124, v31, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v25, v26, 1.0
	v_div_scale_f32 v36, null, v0, v0, v123
	v_fma_f32 v27, -v39, v32, v33
	v_dual_mul_f32 v29, v37, v28 :: v_dual_fmac_f32 v26, v30, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v30, v36
	v_div_fmas_f32 v22, v27, v35, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v34, v29, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v22, v22, v24, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v33, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v36, v30, 1.0
	v_mul_f32_e32 v33, v38, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v119, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v34, v29, v37
	v_fmac_f32_e32 v30, v35, v30
	v_div_scale_f32 v35, s2, v123, v0, v123
	v_fma_f32 v34, -v25, v33, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v20, v24, v28, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v24, v35, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v160
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v27, v32, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v34, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v36, v24, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v33, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v24, v34, v30 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v116
	v_div_scale_f32 v34, null, v27, v27, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v26, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v159
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v36, v24, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v29, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v25, v23, v122
	v_div_fixup_f32 v20, v20, v31, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v35, v30, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v26, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v34, v33, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v28, v28, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_fmac_f32 v33, v30, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, vcc_lo, v108, v27, v108
	v_rcp_f32_e32 v35, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v37, null, v26, v26, v116
	v_mul_f32_e32 v38, v30, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v24, v0, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v24, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v121, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v34, v38, v30
	v_div_scale_f32 v23, s0, v126, v28, v126
	v_fma_f32 v31, -v32, v35, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v57, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v25, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v36, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v120, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v31, v35
	v_fma_f32 v25, -v37, v24, 1.0
	v_fma_f32 v20, -v34, v38, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v29, v23, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v25, v24
	v_div_scale_f32 v25, s1, v116, v26, v116
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v20, v20, v33, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v0, v0, v115
	v_fma_f32 v33, -v32, v29, v23
	v_mul_f32_e32 v34, v25, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v33, v35
	v_fma_f32 v22, -v37, v34, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v93
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v20, v27, v108
	v_fma_f32 v23, -v32, v29, v23
	v_fmac_f32_e32 v34, v22, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v30, v31, 1.0
	v_div_scale_f32 v33, s2, v115, v0, v115
	v_fma_f32 v25, -v37, v34, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v32, 0xbfb8aa3b, v92 :: v_dual_fmac_f32 v31, v27, v31
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v32, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v35, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v29, v33, v31 :: v_dual_add_f32 v22, 1.0, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v143, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v23, v28, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v30, v29, v33
	v_div_scale_f32 v38, null, v22, v22, v93
	v_div_fmas_f32 v24, v25, v24, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v32, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v35, v31
	v_rcp_f32_e32 v27, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v26, v116
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v30, v29, v33
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v136, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, null, v25, v25, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v38, v27, 1.0
	v_div_fmas_f32 v26, v26, v31, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v154
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v30
	v_div_scale_f32 v31, s0, v93, v22, v93
	v_fmac_f32_e32 v27, v32, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v26, v0, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v36
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v31, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v30, v29, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v149, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v38, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v34, v29
	v_div_scale_f32 v34, s1, v92, v25, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v28, v27
	v_div_scale_f32 v35, null, v0, v0, v90
	v_mul_f32_e32 v28, v34, v29
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v24, -v38, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v32, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v141, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v30, v28, v34
	v_rcp_f32_e32 v23, v35
	v_div_fmas_f32 v24, v24, v27, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v31, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v153
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v24, v22, v93
	v_div_scale_f32 v27, null, v20, v20, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v24, -v30, v28, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v26, -v35, v23, 1.0
	v_rcp_f32_e32 v30, v27
	v_div_fmas_f32 v24, v24, v29, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v29, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v26, v23
	v_div_scale_f32 v26, s0, v90, v0, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v84
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v26, v23
	v_fma_f32 v34, -v27, v30, 1.0
	v_div_fixup_f32 v24, v24, v25, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v35, v33, v26
	v_fmac_f32_e32 v30, v34, v30
	v_div_scale_f32 v34, s1, v91, v20, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v32, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v25, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v25, v34, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v29, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v35, v33, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v27, v25, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v19, v19, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v35, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v18, v29
	v_div_scale_f32 v35, null, v28, v28, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v99, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v26, v23, v33
	v_fma_f32 v26, -v27, v25, v34
	v_rcp_f32_e32 v34, v35
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v29, v18, 1.0
	v_div_fmas_f32 v25, v26, v30, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v32, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, vcc_lo, v85, v19, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v18, v36, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v31, -v35, v34, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v25, v20, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v32, v30, v18
	v_fmac_f32_e32 v34, v31, v34
	v_div_scale_f32 v31, s0, v84, v28, v84
	v_div_scale_f32 v33, null, v26, v26, v83
	v_div_fixup_f32 v0, v23, v0, v90
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v106, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v29, v32, v30
	v_mul_f32_e32 v23, v31, v34
	v_rcp_f32_e32 v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v101, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v20, v18
	v_fma_f32 v20, -v35, v23, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	v_ldexp_f32 v0, v25, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v100, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v29, v32, v30
	v_fmac_f32_e32 v23, v20, v34
	v_fma_f32 v20, -v33, v36, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v18, v22, v18, v32
	v_fma_f32 v22, -v35, v23, v31
	v_fmac_f32_e32 v36, v20, v36
	v_div_scale_f32 v20, s1, v83, v26, v83
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v24, null, v0, v0, v82
	v_div_fmas_f32 v21, v22, v34, v23
	v_mul_f32_e32 v22, v20, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v24
	v_div_fixup_f32 v18, v18, v19, v85
	v_div_fixup_f32 v19, v21, v28, v84
	v_fma_f32 v4, -v33, v22, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v4, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v24, v23, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v69
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s2
	v_exp_f32_e32 v2, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v33, v22, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v3, v23
	v_div_scale_f32 v30, s0, v82, v0, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v67
	v_ldexp_f32 v4, v4, v25
	v_exp_f32_e32 v25, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v2, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v36, v22
	v_mul_f32_e32 v22, v30, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v20, v26, v83
	v_fma_f32 v29, -v24, v22, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v25, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v4, v4, v74
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v22, v29, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v21, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v28
	v_div_scale_f32 v21, null, v2, v2, v69
	v_fma_f32 v24, -v24, v22, v30
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v25, v25, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v21
	v_div_fmas_f32 v22, v24, v23, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v23, null, v3, v3, v67
	v_rcp_f32_e32 v34, v27
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v28, v26, 1.0
	v_div_scale_f32 v24, vcc_lo, v74, v4, v74
	v_rcp_f32_e32 v35, v23
	v_div_fixup_f32 v0, v22, v0, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v26, v29, v26
	v_fma_f32 v29, -v21, v30, 1.0
	v_div_scale_f32 v43, s2, v67, v3, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v22, -v27, v34, 1.0
	v_mul_f32_e32 v36, v24, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v30, v29, v30
	v_div_scale_f32 v29, s0, v69, v2, v69
	v_fma_f32 v31, -v23, v35, 1.0
	v_fmac_f32_e32 v34, v22, v34
	v_div_scale_f32 v22, s1, v68, v25, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v98, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v28, v36, v24
	v_mul_f32_e32 v37, v29, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v35, v31, v35 :: v_dual_mul_f32 v42, v22, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v77, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v21, v37, v29
	v_mul_f32_e32 v44, v43, v35
	v_fma_f32 v20, -v27, v42, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v76, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v28, v36, v24
	v_fmac_f32_e32 v37, v0, v30
	v_fma_f32 v0, -v23, v44, v43
	v_fmac_f32_e32 v42, v20, v34
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v24, |v62|, |v63|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v19, v19, v26, v36
	v_fma_f32 v20, -v21, v37, v29
	v_fmac_f32_e32 v44, v0, v35
	v_fma_f32 v0, -v27, v42, v22
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v4, v19, v4, v74
	v_div_fmas_f32 v20, v20, v30, v37
	v_fma_f32 v21, -v23, v44, v43
	s_mov_b32 vcc_lo, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v19, |v112|, |v102|, |v103|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v34, v42
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v20, v2, v69
	v_div_fmas_f32 v21, v21, v35, v44
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v35, v75, v18
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v18, |v110|, |v111|
	v_max3_f32 v20, |v94|, |v95|, |v96|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v25, v68
	v_div_fixup_f32 v3, v21, v3, v67
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, |v97|, |v132|, |v129|
	v_max3_f32 v22, |v70|, |v71|, |v72|
	v_max3_f32 v23, |v73|, |v16|, |v15|
	v_max3_f32 v25, |v64|, |v54|, |v55|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v61, v3
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v18, |v113|, v19
	v_max3_f32 v18, v20, v21, |v131|
	v_max_f32_e64 v19, |v86|, |v87|
	v_max3_f32 v20, |v88|, |v78|, |v79|
	v_max3_f32 v26, |v46|, |v47|, |v48|
	v_max3_f32 v27, |v49|, |v12|, |v10|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v66, v0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v104|, |v105|, |v133|
	v_max3_f32 v21, |v80|, |v81|, |v17|
	v_max3_f32 v19, v19, |v89|, v20
	v_max3_f32 v20, v22, v23, |v14|
	v_max3_f32 v22, |v56|, |v57|, |v13|
	v_max3_f32 v23, v24, |v65|, v25
	v_max3_f32 v24, v26, v27, |v11|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v60, v2
	v_mul_f32_e32 v34, v59, v4
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v3, v0, v18
	v_max3_f32 v2, v19, v21, v20
	v_max3_f32 v3, v23, v22, v24
	s_mov_b32 s0, 0x76543210
	v_max_f32_e64 v4, |v38|, |v39|
	v_max3_f32 v20, |v34|, |v30|, |v29|
	v_max3_f32 v21, |v28|, |v6|, |v7|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v22, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v27, 8, v150
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v18, |v40|, |v35|, |v31|
	v_max3_f32 v19, |v32|, |v33|, |v9|
	v_max3_f32 v20, v20, v21, |v8|
	v_dual_max_f32 v21, v22, v22 :: v_dual_max_f32 v22, v23, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v4, v4, |v41|, v18
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v18, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v24, 5, v58
	v_and_b32_e32 v26, 0x60, v150
	v_and_b32_e32 v23, 0x80, v150
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v19, v20
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v19, v2, v21 :: v_dual_max_f32 v20, v3, v22
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v22, 4, v150
	v_lshl_add_u32 v2, v58, 9, 0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v18, v0, v18
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_or_b32 v1, 0x680, v1, v24
	v_lshlrev_b32_e32 v25, 1, v23
	v_lshl_add_u32 v2, v22, 2, v2
	v_xor_b32_e32 v3, v24, v26
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v36, 3, v23
	v_xor_b32_e32 v1, v1, v26
	v_lshl_add_u32 v2, v27, 4, v2
	v_lshl_add_u32 v37, v22, 6, 0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v2, v25, v3
	v_add3_u32 v1, v37, v36, v1
	ds_store_b128 v0, v[18:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v1
	v_add_nc_u32_e32 v21, 0, v23
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp31:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v23, 4, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b32_e32 v37, 32, v23
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v4, v0
	v_dual_mov_b32 v18, v1 :: v_dual_mov_b32 v19, v2
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v1, v1, v1
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v3, v3
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	v_max_f32_e32 v0, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, v19, v19 :: v_dual_max_f32 v1, v1, v18
	v_max_f32_e32 v3, v20, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v18, v0
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v4 :: v_dual_mov_b32 v19, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v20, v3
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v0, v0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v1, v1, v19
	v_max_f32_e32 v18, v20, v20
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v19, v0 :: v_dual_max_f32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v20, v1 :: v_dual_max_f32 v3, v3, v18
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v18, v3
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v4, v4, v4
	v_dual_max_f32 v1, v1, v20 :: v_dual_max_f32 v18, v18, v18
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v19, 1, v26
	v_lshlrev_b32_e32 v20, 3, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v4
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v22
	v_lshl_add_u32 v22, v58, 4, 0
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v18
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v18, v21, v19, v20
	v_add3_u32 v4, v22, v4, v20
	ds_store_b128 v18, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v4
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v18, v18
	v_max_f32_e32 v20, v20, v20
	v_dual_max_f32 v19, v19, v19 :: v_dual_and_b32 v18, 63, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_max_f32_e32 v20, 0x2b8cbccc, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v0
	v_div_scale_f32 v42, vcc_lo, v0, 0x40e00000, v0
	v_div_scale_f32 v43, null, 0x40e00000, 0x40e00000, v20
	v_rcp_f32_e32 v27, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v45, v43
	v_max_f32_e32 v19, 0x2b8cbccc, v19
	v_max_f32_e32 v21, 0x2b8cbccc, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[38:39], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v36, -v22, v27, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v51, null, 0x40e00000, 0x40e00000, v19
	v_div_scale_f32 v52, null, 0x40e00000, 0x40e00000, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v36, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s0, s34, v37
	v_add_co_ci_u32_e64 v37, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v44, v42, v27
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v50, -v43, v45, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[36:37]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v22, v44, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v50, v45
	v_div_scale_f32 v50, s6, v20, 0x40e00000, v20
	v_fmac_f32_e32 v44, v3, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v22, -v22, v44, v42
	v_rcp_f32_e32 v42, v51
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[36:37]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v37.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v22, v22, v27, v44
	v_mul_f32_e32 v27, v50, v45
	v_rcp_f32_e32 v44, v52
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v0, v22, 0x40e00000, v0
	v_fma_f32 v36, -v51, v42, 1.0
	v_fma_f32 v22, -v43, v27, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s7, v19, 0x40e00000, v19
	v_fma_f32 v53, -v52, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v27, v22, v45
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v22.l, v0.h
	v_mov_b16_e32 v22.h, v37.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v58, v36, v42
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v53, s8, v21, 0x40e00000, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v43, v27, v50
	v_fma_f32 v43, -v51, v58, v36
	v_mul_f32_e32 v50, v53, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v0, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v27, v3, v45, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v43, v42
	v_fma_f32 v0, -v52, v50, v53
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v69, 0xffff0000, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v20, v27, 0x40e00000, v20
	v_fma_f32 v27, -v51, v58, v36
	v_fmac_f32_e32 v50, v0, v44
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v69, v69, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v27, v27, v42, v58
	v_fma_f32 v36, -v52, v50, v53
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v42, v0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v37.l, v20.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v19, v27, 0x40e00000, v19
	v_div_fmas_f32 v27, v36, v44, v50
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v43, null, v69, v69, v111
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v36, 1, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v21, v27, 0x40e00000, v21
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v44, -v0, v42, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v27.l, v19.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v45, v43
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v27.h, v37.h
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[3:4]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v110, v69, v110
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v20, v36, 0x7fff
	v_and_b32_e32 v4, 1, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v20, v44, v42
	v_div_scale_f32 v50, null, v69, v69, v113
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v37.l, v21.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v36, -v43, v45, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v27, v19, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v19, -v0, v20, v44
	v_rcp_f32_e32 v51, v50
	v_div_scale_f32 v52, null, v69, v69, v112
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v37, 1, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v45, v36, v45
	v_div_scale_f32 v53, s8, v111, v69, v111
	v_fmac_f32_e32 v20, v19, v42
	v_rcp_f32_e32 v19, v52
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v21, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v21, v53, v45
	v_fma_f32 v37, -v50, v51, 1.0
	v_fma_f32 v0, -v0, v20, v44
	v_div_scale_f32 v58, s9, v113, v69, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v43, v21, v53
	v_fmac_f32_e32 v51, v37, v51
	v_div_scale_f32 v59, null, v69, v69, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v52, v19, 1.0
	v_div_fmas_f32 v0, v0, v42, v20
	v_dual_fmac_f32 v21, v44, v45 :: v_dual_mul_f32 v20, v58, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v59
	v_fmac_f32_e32 v19, v37, v19
	v_div_scale_f32 v44, s10, v112, v69, v112
	v_div_scale_f32 v66, null, v69, v69, v103
	v_div_fixup_f32 v37, v0, v69, v110
	v_fma_f32 v0, -v43, v21, v53
	v_fma_f32 v42, -v50, v20, v58
	v_mul_f32_e32 v43, v44, v19
	v_rcp_f32_e32 v53, v66
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v67, -v59, v60, 1.0
	v_div_fmas_f32 v0, v0, v45, v21
	v_fmac_f32_e32 v20, v42, v51
	v_fma_f32 v21, -v52, v43, v44
	v_div_scale_f32 v45, s8, v102, v69, v102
	v_fmac_f32_e32 v60, v67, v60
	v_div_fixup_f32 v42, v0, v69, v111
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v67, -v66, v53, 1.0
	v_fma_f32 v0, -v50, v20, v58
	v_fmac_f32_e32 v43, v21, v19
	v_div_scale_f32 v58, null, v69, v69, v104
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v21, v45, v60
	v_fmac_f32_e32 v53, v67, v53
	v_div_scale_f32 v50, s11, v103, v69, v103
	v_div_fmas_f32 v0, v0, v51, v20
	v_fma_f32 v20, -v52, v43, v44
	v_rcp_f32_e32 v51, v58
	v_div_scale_f32 v67, null, v69, v69, v105
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v44, -v59, v21, v45
	v_mul_f32_e32 v52, v50, v53
	v_div_fmas_f32 v19, v20, v19, v43
	v_rcp_f32_e32 v20, v67
	v_div_fixup_f32 v43, v0, v69, v113
	v_fmac_f32_e32 v21, v44, v60
	v_fma_f32 v68, -v66, v52, v50
	v_fma_f32 v74, -v58, v51, 1.0
	v_div_fixup_f32 v44, v19, v69, v112
	v_div_scale_f32 v19, s9, v104, v69, v104
	v_fma_f32 v0, -v59, v21, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v52, v68, v53 :: v_dual_fmac_f32 v51, v74, v51
	v_fma_f32 v45, -v67, v20, 1.0
	v_div_scale_f32 v59, null, v69, v69, v133
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v68, s8, v105, v69, v105
	v_div_fmas_f32 v0, v0, v60, v21
	v_fma_f32 v21, -v66, v52, v50
	v_mul_f32_e32 v60, v19, v51
	v_fmac_f32_e32 v20, v45, v20
	v_rcp_f32_e32 v66, v59
	v_div_scale_f32 v74, null, v69, v69, v94
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v45, v0, v69, v102
	v_div_fmas_f32 v21, v21, v53, v52
	v_fma_f32 v52, -v58, v60, v19
	v_mul_f32_e32 v53, v68, v20
	v_rcp_f32_e32 v76, v74
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v75, -v59, v66, 1.0
	v_fmac_f32_e32 v60, v52, v51
	v_fma_f32 v0, -v67, v53, v68
	v_div_fixup_f32 v50, v21, v69, v103
	v_div_scale_f32 v21, s10, v133, v69, v133
	v_fmac_f32_e32 v66, v75, v66
	v_div_scale_f32 v75, null, v69, v69, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v74, v76, 1.0
	v_fma_f32 v19, -v58, v60, v19
	v_dual_fmac_f32 v53, v0, v20 :: v_dual_mul_f32 v0, v21, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v77, v75
	v_fmac_f32_e32 v76, v52, v76
	v_div_scale_f32 v58, s11, v94, v69, v94
	v_div_fmas_f32 v19, v19, v51, v60
	v_fma_f32 v51, -v67, v53, v68
	v_div_scale_f32 v68, null, v69, v69, v96
	v_fma_f32 v52, -v59, v0, v21
	v_mul_f32_e32 v60, v58, v76
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v83, v68
	v_fma_f32 v67, -v75, v77, 1.0
	v_div_fmas_f32 v20, v51, v20, v53
	v_fmac_f32_e32 v0, v52, v66
	v_fma_f32 v53, -v74, v60, v58
	v_div_fixup_f32 v51, v19, v69, v104
	v_fmac_f32_e32 v77, v67, v77
	v_div_scale_f32 v67, s8, v95, v69, v95
	v_fma_f32 v19, -v59, v0, v21
	v_fmac_f32_e32 v60, v53, v76
	v_fma_f32 v21, -v68, v83, 1.0
	v_div_scale_f32 v84, null, v69, v69, v97
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v52, v20, v69, v105
	v_mul_f32_e32 v20, v67, v77
	v_div_fmas_f32 v0, v19, v66, v0
	v_fma_f32 v19, -v74, v60, v58
	v_fmac_f32_e32 v83, v21, v83
	v_rcp_f32_e32 v21, v84
	v_div_scale_f32 v74, null, v69, v69, v132
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v53, -v75, v20, v67
	v_div_scale_f32 v66, s9, v96, v69, v96
	v_div_fmas_f32 v19, v19, v76, v60
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v53, v77
	v_mul_f32_e32 v60, v66, v83
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v59, -v84, v21, 1.0
	v_div_fixup_f32 v53, v0, v69, v133
	v_div_fixup_f32 v58, v19, v69, v94
	v_fma_f32 v0, -v75, v20, v67
	v_fma_f32 v19, -v68, v60, v66
	v_fmac_f32_e32 v21, v59, v21
	v_div_scale_f32 v67, s10, v97, v69, v97
	v_fma_f32 v59, -v74, v76, 1.0
	v_div_scale_f32 v75, null, v69, v69, v129
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v60, v19, v83
	v_div_fmas_f32 v0, v0, v77, v20
	v_mul_f32_e32 v19, v67, v21
	v_fmac_f32_e32 v76, v59, v76
	v_rcp_f32_e32 v20, v75
	v_div_scale_f32 v77, s8, v132, v69, v132
	v_div_scale_f32 v85, null, v69, v69, v131
	v_div_fixup_f32 v59, v0, v69, v95
	v_fma_f32 v0, -v68, v60, v66
	v_fma_f32 v66, -v84, v19, v67
	v_mul_f32_e32 v68, v77, v76
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v90, v85
	v_fma_f32 v91, -v75, v20, 1.0
	v_div_fmas_f32 v0, v0, v83, v60
	v_fmac_f32_e32 v19, v66, v21
	v_fma_f32 v66, -v74, v68, v77
	v_div_scale_f32 v83, s9, v129, v69, v129
	v_fmac_f32_e32 v20, v91, v20
	v_div_fixup_f32 v60, v0, v69, v96
	v_fma_f32 v0, -v84, v19, v67
	v_fmac_f32_e32 v68, v66, v76
	v_div_scale_f32 v92, null, v82, v82, v86
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v91, -v85, v90, 1.0
	v_mul_f32_e32 v84, v83, v20
	v_div_fmas_f32 v0, v0, v21, v19
	v_fma_f32 v19, -v74, v68, v77
	v_rcp_f32_e32 v74, v92
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, s11, v131, v69, v131
	v_fma_f32 v21, -v75, v84, v83
	v_div_scale_f32 v93, null, v82, v82, v87
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v77, v91, v90
	v_div_fmas_f32 v19, v19, v76, v68
	v_fmac_f32_e32 v84, v21, v20
	v_rcp_f32_e32 v21, v93
	v_fma_f32 v76, -v92, v74, 1.0
	v_fma_f32 v68, -v85, v77, v91
	v_div_fixup_f32 v66, v0, v69, v97
	v_div_fixup_f32 v67, v19, v69, v132
	v_fma_f32 v0, -v75, v84, v83
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, null, v82, v82, v89
	v_fmac_f32_e32 v77, v68, v90
	v_div_scale_f32 v19, s8, v86, v82, v86
	v_fma_f32 v68, -v93, v21, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v83, v76
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v75, v19, v74
	v_div_fmas_f32 v0, v0, v20, v84
	v_fma_f32 v20, -v85, v77, v91
	v_fmac_f32_e32 v21, v68, v21
	v_div_scale_f32 v84, s9, v87, v82, v87
	v_div_scale_f32 v85, null, v82, v82, v88
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v76, v83, 1.0
	v_div_fmas_f32 v20, v20, v90, v77
	v_fma_f32 v77, -v92, v75, v19
	v_mul_f32_e32 v90, v84, v21
	v_rcp_f32_e32 v94, v85
	v_div_fixup_f32 v68, v0, v69, v129
	v_fmac_f32_e32 v83, v91, v83
	v_fmac_f32_e32 v75, v77, v74
	v_fma_f32 v0, -v93, v90, v84
	v_div_scale_f32 v91, null, v82, v82, v78
	v_div_fixup_f32 v69, v20, v69, v131
	v_div_scale_f32 v20, s10, v89, v82, v89
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v77, -v85, v94, 1.0
	v_fma_f32 v19, -v92, v75, v19
	v_fmac_f32_e32 v90, v0, v21
	v_rcp_f32_e32 v92, v91
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v20, v83
	v_fmac_f32_e32 v94, v77, v94
	v_div_scale_f32 v77, s11, v88, v82, v88
	v_div_fmas_f32 v19, v19, v74, v75
	v_fma_f32 v74, -v93, v90, v84
	v_div_scale_f32 v95, null, v82, v82, v79
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v75, -v76, v0, v20
	v_mul_f32_e32 v84, v77, v94
	v_fma_f32 v93, -v91, v92, 1.0
	v_div_fmas_f32 v21, v74, v21, v90
	v_rcp_f32_e32 v90, v95
	v_fmac_f32_e32 v0, v75, v83
	v_fma_f32 v96, -v85, v84, v77
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, s8, v78, v82, v78
	v_div_fixup_f32 v74, v19, v82, v86
	v_div_fixup_f32 v75, v21, v82, v87
	v_fma_f32 v19, -v76, v0, v20
	v_fmac_f32_e32 v84, v96, v94
	v_mul_f32_e32 v20, v93, v92
	v_fma_f32 v21, -v95, v90, 1.0
	v_div_scale_f32 v86, null, v82, v82, v80
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v76, -v91, v20, v93
	v_div_fmas_f32 v0, v19, v83, v0
	v_fma_f32 v19, -v85, v84, v77
	v_fmac_f32_e32 v90, v21, v90
	v_rcp_f32_e32 v21, v86
	v_div_scale_f32 v85, null, v82, v82, v81
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s9, v79, v82, v79
	v_div_fmas_f32 v19, v19, v94, v84
	v_fmac_f32_e32 v20, v76, v92
	v_rcp_f32_e32 v84, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v87, v83, v90
	v_fma_f32 v94, -v86, v21, 1.0
	v_div_fixup_f32 v76, v0, v82, v89
	v_fma_f32 v0, -v91, v20, v93
	v_div_scale_f32 v91, null, v82, v82, v17
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v77, v19, v82, v88
	v_fma_f32 v19, -v95, v87, v83
	v_fmac_f32_e32 v21, v94, v21
	v_div_scale_f32 v88, s10, v80, v82, v80
	v_fma_f32 v89, -v85, v84, 1.0
	v_div_fmas_f32 v0, v0, v92, v20
	v_rcp_f32_e32 v20, v91
	v_fmac_f32_e32 v87, v19, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v19, v88, v21 :: v_dual_fmac_f32 v84, v89, v84
	v_div_scale_f32 v89, s8, v81, v82, v81
	v_div_scale_f32 v92, null, v82, v82, v70
	v_div_fixup_f32 v78, v0, v82, v78
	v_fma_f32 v0, -v95, v87, v83
	v_fma_f32 v83, -v86, v19, v88
	v_mul_f32_e32 v93, v89, v84
	v_rcp_f32_e32 v94, v92
	v_fma_f32 v95, -v91, v20, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v19, v83, v21
	v_div_fmas_f32 v0, v0, v90, v87
	v_fma_f32 v83, -v85, v93, v89
	v_fmac_f32_e32 v20, v95, v20
	v_div_scale_f32 v87, s9, v17, v82, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v79, v0, v82, v79
	v_fma_f32 v90, -v92, v94, 1.0
	v_fma_f32 v0, -v86, v19, v88
	v_fmac_f32_e32 v93, v83, v84
	v_mul_f32_e32 v83, v87, v20
	v_div_scale_f32 v88, null, v82, v82, v71
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v90, v94
	v_div_scale_f32 v86, s11, v70, v82, v70
	v_div_fmas_f32 v0, v0, v21, v19
	v_fma_f32 v19, -v85, v93, v89
	v_fma_f32 v21, -v91, v83, v87
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v90, null, v82, v82, v72
	v_mul_f32_e32 v89, v86, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v21, v20
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v21, v90
	v_div_fmas_f32 v19, v19, v84, v93
	v_fma_f32 v84, -v92, v89, v86
	v_div_fixup_f32 v80, v0, v82, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v85, 1.0
	v_fma_f32 v0, -v91, v83, v87
	v_div_fixup_f32 v81, v19, v82, v81
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v19, s8, v71, v82, v71
	v_fmac_f32_e32 v85, v93, v85
	v_fma_f32 v84, -v90, v21, 1.0
	v_div_scale_f32 v87, null, v82, v82, v73
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v82, v82, v16
	v_div_fmas_f32 v0, v0, v20, v83
	v_fma_f32 v20, -v92, v89, v86
	v_mul_f32_e32 v83, v19, v85
	v_fmac_f32_e32 v21, v84, v21
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v86, s9, v72, v82, v72
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v17, v0, v82, v17
	v_div_fmas_f32 v20, v20, v94, v89
	v_fma_f32 v89, -v88, v83, v19
	v_mul_f32_e32 v92, v86, v21
	v_rcp_f32_e32 v94, v91
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v84, 1.0
	v_fmac_f32_e32 v83, v89, v85
	v_fma_f32 v0, -v90, v92, v86
	v_div_fixup_f32 v70, v20, v82, v70
	v_div_scale_f32 v20, s10, v73, v82, v73
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v89, null, v82, v82, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v19, -v88, v83, v19
	v_fmac_f32_e32 v92, v0, v21
	v_mul_f32_e32 v0, v20, v84
	v_rcp_f32_e32 v88, v89
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s11, v16, v82, v16
	v_div_fmas_f32 v19, v19, v85, v83
	v_fma_f32 v83, -v90, v92, v86
	v_div_scale_f32 v95, null, v82, v82, v14
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v87, v0, v20
	v_mul_f32_e32 v86, v93, v94
	v_div_fmas_f32 v21, v83, v21, v92
	v_rcp_f32_e32 v83, v95
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v61, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v89, v88, 1.0
	v_fmac_f32_e32 v0, v85, v84
	v_fma_f32 v85, -v91, v86, v93
	v_div_fixup_f32 v72, v21, v82, v72
	v_div_fixup_f32 v71, v19, v82, v71
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s8, v15, v82, v15
	v_fmac_f32_e32 v86, v85, v94
	v_fma_f32 v21, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v61, v61, v62
	v_fma_f32 v19, -v87, v0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v20, v90, v88 :: v_dual_fmac_f32 v83, v21, v83
	v_rcp_f32_e32 v21, v85
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s9, v14, v82, v14
	v_div_fmas_f32 v0, v19, v84, v0
	v_fma_f32 v19, -v91, v86, v93
	v_fma_f32 v84, -v89, v20, v90
	v_div_scale_f32 v91, null, v61, v61, v63
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v85, v21, 1.0
	v_fmac_f32_e32 v20, v84, v88
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v19, v19, v94, v86
	v_mul_f32_e32 v86, v87, v83
	v_div_fixup_f32 v73, v0, v82, v73
	v_fma_f32 v0, -v89, v20, v90
	v_fmac_f32_e32 v21, v92, v21
	v_div_scale_f32 v92, null, v61, v61, v65
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v16, v19, v82, v16
	v_fma_f32 v19, -v95, v86, v87
	v_div_scale_f32 v89, s10, v62, v61, v62
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_fmas_f32 v0, v0, v88, v20
	v_rcp_f32_e32 v20, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v19, v83 :: v_dual_mul_f32 v19, v89, v21
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, null, v61, v61, v64
	v_div_scale_f32 v88, s8, v63, v61, v63
	v_div_fixup_f32 v15, v0, v82, v15
	v_fma_f32 v0, -v95, v86, v87
	v_fma_f32 v87, -v85, v19, v89
	v_rcp_f32_e32 v94, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v92, v20, 1.0
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v93, v88, v84
	v_div_fmas_f32 v0, v0, v83, v86
	v_fmac_f32_e32 v19, v87, v21
	v_fmac_f32_e32 v20, v95, v20
	v_div_scale_f32 v86, s9, v65, v61, v65
	v_fma_f32 v83, -v91, v93, v88
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v90, v94, 1.0
	v_div_fixup_f32 v14, v0, v82, v14
	v_fma_f32 v0, -v85, v19, v89
	v_mul_f32_e32 v82, v86, v20
	v_div_scale_f32 v85, null, v61, v61, v54
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v83, v84
	v_fmac_f32_e32 v94, v87, v94
	v_div_scale_f32 v83, s11, v64, v61, v64
	v_div_fmas_f32 v0, v0, v21, v19
	v_fma_f32 v21, -v92, v82, v86
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v89, null, v61, v61, v55
	v_fma_f32 v19, -v91, v93, v88
	v_mul_f32_e32 v88, v83, v94
	v_fmac_f32_e32 v82, v21, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v21, v89
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v62, v0, v61, v62
	v_div_fmas_f32 v19, v19, v84, v93
	v_fma_f32 v84, -v90, v88, v83
	v_fma_f32 v91, -v85, v87, 1.0
	v_fma_f32 v0, -v92, v82, v86
	v_div_scale_f32 v86, null, v61, v61, v56
	v_div_fixup_f32 v63, v19, v61, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v88, v84, v94 :: v_dual_fmac_f32 v87, v91, v87
	v_div_scale_f32 v19, s8, v54, v61, v54
	v_fma_f32 v84, -v89, v21, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v20, v82
	v_fma_f32 v20, -v90, v88, v83
	v_dual_mul_f32 v82, v19, v87 :: v_dual_fmac_f32 v21, v84, v21
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v84, s9, v55, v61, v55
	v_div_scale_f32 v90, null, v61, v61, v57
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v91, v84, v21
	v_div_fmas_f32 v20, v20, v94, v88
	v_fma_f32 v88, -v85, v82, v19
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v83, 1.0
	v_div_fixup_f32 v65, v0, v61, v65
	v_fma_f32 v0, -v89, v91, v84
	v_fmac_f32_e32 v82, v88, v87
	v_div_scale_f32 v88, null, v61, v61, v13
	v_div_fixup_f32 v64, v20, v61, v64
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v20, s10, v56, v61, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v19, -v85, v82, v19
	v_fmac_f32_e32 v91, v0, v21
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v20, v83
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s11, v57, v61, v57
	v_div_fmas_f32 v19, v19, v87, v82
	v_fma_f32 v82, -v89, v91, v84
	v_div_scale_f32 v94, null, v61, v61, v46
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v86, v0, v20
	v_mul_f32_e32 v87, v92, v93
	v_fma_f32 v89, -v88, v85, 1.0
	v_div_fmas_f32 v21, v82, v21, v91
	v_rcp_f32_e32 v82, v94
	v_fmac_f32_e32 v0, v84, v83
	v_fma_f32 v84, -v90, v87, v92
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s8, v13, v61, v13
	v_div_fixup_f32 v54, v19, v61, v54
	v_div_fixup_f32 v55, v21, v61, v55
	v_fma_f32 v19, -v86, v0, v20
	v_fmac_f32_e32 v87, v84, v93
	v_mul_f32_e32 v20, v89, v85
	v_fma_f32 v21, -v94, v82, 1.0
	v_div_scale_f32 v84, null, v61, v61, v47
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v46, v61, v46
	v_div_fmas_f32 v0, v19, v83, v0
	v_fma_f32 v19, -v90, v87, v92
	v_fma_f32 v83, -v88, v20, v89
	v_fmac_f32_e32 v82, v21, v82
	v_rcp_f32_e32 v21, v84
	v_div_scale_f32 v90, null, v61, v61, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v83, v85
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v56, v0, v61, v56
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v19, v19, v93, v87
	v_mul_f32_e32 v87, v86, v82
	v_fma_f32 v0, -v88, v20, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v21, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v57, v19, v61, v57
	v_fma_f32 v19, -v94, v87, v86
	v_div_scale_f32 v88, s10, v47, v61, v47
	v_fmac_f32_e32 v21, v91, v21
	v_fma_f32 v89, -v90, v83, 1.0
	v_div_scale_f32 v91, null, v61, v61, v49
	v_div_fmas_f32 v0, v0, v85, v20
	v_fmac_f32_e32 v87, v19, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v89, v83
	v_rcp_f32_e32 v20, v91
	v_div_scale_f32 v89, null, v61, v61, v12
	v_mul_f32_e32 v19, v88, v21
	v_div_scale_f32 v85, s8, v48, v61, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v89
	v_div_fixup_f32 v0, v0, v61, v13
	v_fma_f32 v13, -v94, v87, v86
	v_fma_f32 v86, -v84, v19, v88
	v_mul_f32_e32 v92, v85, v83
	v_fma_f32 v94, -v91, v20, 1.0
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v19, v86, v21 :: v_dual_and_b32 v36, 0xffff0000, v4
	v_div_fmas_f32 v13, v13, v82, v87
	v_fma_f32 v82, -v90, v92, v85
	v_fmac_f32_e32 v20, v94, v20
	v_div_scale_f32 v86, s9, v49, v61, v49
	v_fma_f32 v87, -v89, v93, 1.0
	v_div_fixup_f32 v13, v13, v61, v46
	v_fma_f32 v46, -v84, v19, v88
	v_fmac_f32_e32 v92, v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v82, v86, v20 :: v_dual_fmac_f32 v93, v87, v93
	v_div_scale_f32 v87, null, v61, v61, v10
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s11, v12, v61, v12
	v_div_fmas_f32 v19, v46, v21, v19
	v_fma_f32 v21, -v90, v92, v85
	v_fma_f32 v46, -v91, v82, v86
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v90, null, v61, v61, v11
	v_mul_f32_e32 v88, v84, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v46, v20
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v46, v90
	v_div_fmas_f32 v21, v21, v83, v92
	v_fma_f32 v83, -v89, v88, v84
	v_div_fixup_f32 v19, v19, v61, v47
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v87, v85, 1.0
	v_fma_f32 v47, -v91, v82, v86
	v_div_fixup_f32 v21, v21, v61, v48
	v_fmac_f32_e32 v88, v83, v93
	v_div_scale_f32 v48, s8, v10, v61, v10
	v_fmac_f32_e32 v85, v92, v85
	v_fma_f32 v83, -v90, v46, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v36, v36, v39
	v_div_fmas_f32 v20, v47, v20, v82
	v_fma_f32 v47, -v89, v88, v84
	v_mul_f32_e32 v82, v48, v85
	v_fmac_f32_e32 v46, v83, v46
	v_div_scale_f32 v83, null, v36, v36, v38
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s9, v11, v61, v11
	v_div_fmas_f32 v47, v47, v93, v88
	v_rcp_f32_e32 v86, v83
	v_fma_f32 v88, -v87, v82, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v84, v46
	v_div_fixup_f32 v20, v20, v61, v49
	v_div_fixup_f32 v12, v47, v61, v12
	v_rcp_f32_e32 v49, v91
	v_fmac_f32_e32 v82, v88, v85
	v_fma_f32 v47, -v90, v89, v84
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v93, null, v36, v36, v40
	v_fma_f32 v88, -v83, v86, 1.0
	v_fma_f32 v48, -v87, v82, v48
	v_div_scale_f32 v87, null, v36, v36, v41
	v_fmac_f32_e32 v89, v47, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v47, s10, v38, v36, v38
	v_rcp_f32_e32 v88, v87
	v_fma_f32 v92, -v91, v49, 1.0
	v_div_fmas_f32 v48, v48, v85, v82
	v_fma_f32 v82, -v90, v89, v84
	v_mul_f32_e32 v84, v47, v86
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v49, v92, v49
	v_div_scale_f32 v85, s8, v39, v36, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v83, v84, v47
	v_fma_f32 v90, -v87, v88, 1.0
	v_rcp_f32_e32 v95, v93
	v_div_fmas_f32 v46, v82, v46, v89
	v_mul_f32_e32 v94, v85, v49
	v_fmac_f32_e32 v84, v92, v86
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v41, v36, v41
	v_div_fixup_f32 v10, v48, v61, v10
	v_div_fixup_f32 v11, v46, v61, v11
	v_fma_f32 v46, -v83, v84, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v90, v88
	v_div_scale_f32 v61, null, v36, v36, v35
	v_fma_f32 v82, -v91, v94, v85
	v_fma_f32 v48, -v93, v95, 1.0
	v_fma_f32 v47, -v87, v89, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v94, v82, v49 :: v_dual_fmac_f32 v95, v48, v95
	v_fmac_f32_e32 v89, v47, v88
	v_rcp_f32_e32 v47, v61
	v_div_scale_f32 v48, s9, v40, v36, v40
	v_div_fmas_f32 v46, v46, v86, v84
	v_fma_f32 v82, -v91, v94, v85
	v_div_scale_f32 v84, null, v36, v36, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v48, v95
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v38, v46, v36, v38
	v_fma_f32 v85, -v61, v47, 1.0
	v_div_fmas_f32 v49, v82, v49, v94
	v_fma_f32 v82, -v87, v89, v90
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v93, v83, v48
	v_fmac_f32_e32 v47, v85, v47
	v_div_scale_f32 v85, s8, v35, v36, v35
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v87, v95
	v_div_fmas_f32 v82, v82, v88, v89
	v_mul_f32_e32 v46, v85, v47
	v_div_fixup_f32 v39, v49, v36, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v84, v86, 1.0
	v_fma_f32 v48, -v93, v83, v48
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v61, v46, v85
	v_div_fixup_f32 v41, v82, v36, v41
	v_div_scale_f32 v82, null, v36, v36, v32
	v_fmac_f32_e32 v86, v49, v86
	v_div_scale_f32 v49, s10, v31, v36, v31
	v_div_fmas_f32 v48, v48, v95, v83
	v_fmac_f32_e32 v46, v87, v47
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v83, v49, v86
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v40, v48, v36, v40
	v_fma_f32 v48, -v61, v46, v85
	v_div_scale_f32 v87, null, v36, v36, v33
	v_fma_f32 v61, -v84, v83, v49
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v46, v48, v47, v46
	v_div_scale_f32 v47, null, v36, v36, v9
	v_fma_f32 v85, -v82, v88, 1.0
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v83, v61, v86
	v_rcp_f32_e32 v61, v47
	v_div_scale_f32 v48, s8, v32, v36, v32
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, null, v36, v36, v34
	v_div_fixup_f32 v35, v46, v36, v35
	v_fma_f32 v49, -v84, v83, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v87, v89, 1.0
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v47, v61, 1.0
	v_mul_f32_e32 v84, v48, v88
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v46, v89
	v_div_scale_f32 v46, s9, v33, v36, v33
	v_fmac_f32_e32 v61, v90, v61
	v_div_scale_f32 v90, null, v36, v36, v30
	v_div_fmas_f32 v49, v49, v86, v83
	v_fma_f32 v83, -v82, v84, v48
	v_mul_f32_e32 v86, v46, v89
	v_div_scale_f32 v92, s10, v9, v36, v9
	v_fma_f32 v93, -v85, v91, 1.0
	v_rcp_f32_e32 v94, v90
	v_fmac_f32_e32 v84, v83, v88
	v_fma_f32 v83, -v87, v86, v46
	v_mul_f32_e32 v95, v92, v61
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s11, v34, v36, v34
	v_div_fixup_f32 v31, v49, v36, v31
	v_fma_f32 v48, -v82, v84, v48
	v_fmac_f32_e32 v86, v83, v89
	v_fma_f32 v49, -v47, v95, v92
	v_mul_f32_e32 v82, v93, v91
	v_fma_f32 v83, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v46, -v87, v86, v46
	v_fmac_f32_e32 v95, v49, v61
	v_fma_f32 v49, -v85, v82, v93
	v_fmac_f32_e32 v94, v83, v94
	v_div_scale_f32 v83, s8, v30, v36, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v47, v95, v92
	v_fmac_f32_e32 v82, v49, v91
	v_div_fmas_f32 v48, v48, v88, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v49, v83, v94
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v84, null, v36, v36, v29
	v_div_fmas_f32 v46, v46, v89, v86
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v32, v48, v36, v32
	v_div_fmas_f32 v47, v47, v61, v95
	v_fma_f32 v61, -v85, v82, v93
	v_fma_f32 v85, -v90, v49, v83
	v_rcp_f32_e32 v86, v84
	v_div_fixup_f32 v33, v46, v36, v33
	v_div_fixup_f32 v9, v47, v36, v9
	v_div_scale_f32 v47, null, v36, v36, v28
	v_fmac_f32_e32 v49, v85, v94
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, null, v36, v36, v8
	v_div_fmas_f32 v61, v61, v91, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v46, -v90, v49, v83
	v_fma_f32 v48, -v84, v86, 1.0
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v90, v88
	v_div_fixup_f32 v34, v61, v36, v34
	v_div_fmas_f32 v46, v46, v94, v49
	v_rcp_f32_e32 v49, v47
	v_fmac_f32_e32 v86, v48, v86
	v_div_scale_f32 v48, null, v36, v36, v6
	v_div_scale_f32 v61, null, v36, v36, v7
	v_div_scale_f32 v82, vcc_lo, v29, v36, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v83, v48
	v_rcp_f32_e32 v85, v61
	v_div_fixup_f32 v30, v46, v36, v30
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v46, -v47, v49, 1.0
	v_mul_f32_e32 v87, v82, v86
	v_fma_f32 v94, -v88, v90, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, s8, v28, v36, v28
	v_fma_f32 v89, -v48, v83, 1.0
	v_fma_f32 v92, -v61, v85, 1.0
	v_fma_f32 v91, -v84, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v46, v49
	v_dual_fmac_f32 v90, v94, v90 :: v_dual_fmac_f32 v83, v89, v83
	v_div_scale_f32 v89, s9, v6, v36, v6
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s10, v7, v36, v7
	v_fmac_f32_e32 v87, v91, v86
	v_fma_f32 v91, -v47, v93, v46
	v_div_scale_f32 v94, s11, v8, v36, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v95, v89, v83 :: v_dual_mul_f32 v96, v92, v85
	v_fmac_f32_e32 v93, v91, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v97, v94, v90
	v_fma_f32 v82, -v84, v87, v82
	v_fma_f32 v84, -v48, v95, v89
	v_fma_f32 v91, -v61, v96, v92
	v_fma_f32 v46, -v47, v93, v46
	v_fma_f32 v47, -v88, v97, v94
	v_div_fmas_f32 v82, v82, v86, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v95, v84, v83 :: v_dual_fmac_f32 v96, v91, v85
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v97, v47, v90
	v_div_fmas_f32 v46, v46, v49, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v48, -v48, v95, v89
	v_fma_f32 v47, -v61, v96, v92
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v49, -v88, v97, v94
	v_div_fixup_f32 v28, v46, v36, v28
	v_div_fmas_f32 v48, v48, v83, v95
	s_mov_b32 vcc_lo, s10
	s_mov_b32 s8, 0xc1000000
	v_div_fmas_f32 v47, v47, v85, v96
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v29, v82, v36, v29
	v_div_fmas_f32 v49, v49, v90, v97
	v_div_fixup_f32 v6, v48, v36, v6
	v_div_fixup_f32 v7, v47, v36, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v52
	v_rndne_f32_e32 v52, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v49, v36, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v58
	v_rndne_f32_e32 v58, v68
	v_rndne_f32_e32 v36, v37
	v_rndne_f32_e32 v37, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v50
	v_rndne_f32_e32 v46, v51
	v_rndne_f32_e32 v50, v59
	v_rndne_f32_e32 v51, v60
	v_rndne_f32_e32 v59, v69
	v_rndne_f32_e32 v60, v74
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v19, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v53
	v_rndne_f32_e32 v53, v67
	v_rndne_f32_e32 v61, v75
	v_rndne_f32_e32 v66, v76
	v_rndne_f32_e32 v67, v77
	v_rndne_f32_e32 v68, v78
	v_rndne_f32_e32 v69, v79
	v_rndne_f32_e32 v74, v80
	v_rndne_f32_e32 v75, v81
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v94, v30
	v_cvt_i32_f32_e32 v96, v28
	v_and_b32_e32 v28, 15, v52
	v_and_b32_e32 v30, 15, v58
	v_and_b32_e32 v52, 15, v54
	v_and_b32_e32 v54, 15, v56
	v_and_b32_e32 v56, 15, v0
	v_and_b32_e32 v58, 15, v19
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v150
	v_and_b32_e32 v19, 16, v150
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_cvt_i32_f32_e32 v89, v31
	v_cvt_i32_f32_e32 v90, v32
	v_and_b32_e32 v31, 15, v59
	v_and_b32_e32 v32, 15, v60
	v_and_b32_e32 v59, 15, v21
	v_and_b32_e32 v60, 15, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v20, 6, v19
	v_xor_b32_e32 v21, v161, v26
	v_lshlrev_b32_e32 v26, 6, v150
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v84, v38
	v_cvt_i32_f32_e32 v85, v39
	v_cvt_i32_f32_e32 v86, v41
	v_cvt_i32_f32_e32 v87, v40
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v20
	v_and_or_b32 v20, 0x1b00, v26, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v76, v17
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v77, v16
	v_cvt_i32_f32_e32 v78, v15
	v_cvt_i32_f32_e32 v79, v14
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v80, v13
	v_cvt_i32_f32_e32 v92, v9
	v_cvt_i32_f32_e32 v93, v34
	v_cvt_i32_f32_e32 v95, v29
	v_cvt_i32_f32_e32 v81, v12
	v_cvt_i32_f32_e32 v82, v10
	v_cvt_i32_f32_e32 v83, v11
	v_cvt_i32_f32_e32 v88, v35
	v_cvt_i32_f32_e32 v91, v33
	v_cvt_i32_f32_e32 v97, v6
	v_cvt_i32_f32_e32 v98, v7
	v_cvt_i32_f32_e32 v99, v8
	v_and_b32_e32 v6, 15, v36
	v_and_b32_e32 v7, 15, v37
	v_and_b32_e32 v8, 15, v42
	v_and_b32_e32 v9, 15, v43
	v_and_b32_e32 v10, 15, v44
	v_and_b32_e32 v11, 15, v45
	v_and_b32_e32 v12, 15, v46
	v_and_b32_e32 v13, 15, v47
	v_and_b32_e32 v14, 15, v48
	v_and_b32_e32 v15, 15, v49
	v_and_b32_e32 v16, 15, v50
	v_and_b32_e32 v17, 15, v51
	v_and_b32_e32 v33, 15, v61
	v_and_b32_e32 v34, 15, v66
	v_and_b32_e32 v35, 15, v67
	v_and_b32_e32 v36, 15, v68
	v_and_b32_e32 v37, 15, v69
	v_and_b32_e32 v38, 15, v74
	v_and_b32_e32 v39, 15, v75
	v_and_b32_e32 v48, 15, v62
	v_and_b32_e32 v49, 15, v63
	v_and_b32_e32 v50, 15, v65
	v_and_b32_e32 v51, 15, v64
	v_and_b32_e32 v64, 15, v84
	v_and_b32_e32 v65, 15, v85
	v_and_b32_e32 v66, 15, v86
	v_and_b32_e32 v67, 15, v87
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v21, v25
	v_xad_u32 v20, v20, v152, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v29, 15, v53
	v_and_b32_e32 v40, 15, v76
	v_and_b32_e32 v41, 15, v70
	v_and_b32_e32 v42, 15, v71
	v_and_b32_e32 v43, 15, v72
	v_and_b32_e32 v44, 15, v73
	v_and_b32_e32 v45, 15, v77
	v_and_b32_e32 v46, 15, v78
	v_and_b32_e32 v47, 15, v79
	v_and_b32_e32 v53, 15, v55
	v_and_b32_e32 v55, 15, v57
	v_and_b32_e32 v57, 15, v80
	v_and_b32_e32 v72, 15, v92
	v_and_b32_e32 v73, 15, v93
	v_and_b32_e32 v74, 15, v94
	v_and_b32_e32 v75, 15, v95
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[6:9]
	ds_store_b128 v0, v[14:17] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v20
	ds_load_b128 v[14:17], v20 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v20
	ds_load_b128 v[40:43], v20 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v20
	ds_load_b128 v[56:59], v20 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v20
	ds_load_b128 v[72:75], v20 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[28:31] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v20
	ds_load_b128 v[28:31], v20 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[36:39]
	ds_store_b128 v0, v[44:47] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v20
	ds_load_b128 v[44:47], v20 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v81
	v_and_b32_e32 v62, 15, v82
	v_and_b32_e32 v63, 15, v83
	v_and_b32_e32 v68, 15, v88
	v_and_b32_e32 v69, 15, v89
	v_and_b32_e32 v70, 15, v90
	v_and_b32_e32 v71, 15, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[52:55]
	ds_store_b128 v0, v[60:63] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v20
	ds_load_b128 v[60:63], v20 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v76, 15, v96
	v_and_b32_e32 v77, 15, v97
	v_and_b32_e32 v78, 15, v98
	v_and_b32_e32 v79, 15, v99
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v31, 4, v13
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v31, v47, 4, v39
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v47, 3, v151
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v14, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s34, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[68:71]
	ds_store_b128 v0, v[76:79] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v20
	ds_load_b128 v[76:79], v20 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v47
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v16, v28, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v7, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	v_lshl_or_b32 v17, v29, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v30, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v30, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v15.l
	v_and_b16 v0.h, 0xff, v14.l
	v_lshlrev_b16 v3.l, 8, v7.l
	v_and_b16 v4.l, 0xff, v6.l
	v_lshlrev_b16 v6.l, 8, v13.l
	v_and_b16 v6.h, 0xff, v20.l
	v_lshlrev_b16 v7.l, 8, v17.l
	v_and_b16 v7.h, 0xff, v16.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v40, 4, v32
	v_lshl_or_b32 v24, v41, 4, v33
	v_lshl_or_b32 v25, v42, 4, v34
	v_lshl_or_b32 v26, v43, 4, v35
	v_lshl_or_b32 v28, v44, 4, v36
	v_lshl_or_b32 v29, v45, 4, v37
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v0.h, v0.l
	v_or_b16 v12.l, v4.l, v3.l
	v_or_b16 v13.h, v6.h, v6.l
	v_or_b16 v13.l, v7.h, v7.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v6.l, 8, v31.l
	v_and_b16 v6.h, 0xff, v30.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v46, v78, 4, v70
	v_lshl_or_b32 v23, v79, 4, v71
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v26.l
	v_and_b16 v0.h, 0xff, v25.l
	v_lshlrev_b16 v3.l, 8, v24.l
	v_and_b16 v4.l, 0xff, v21.l
	v_lshlrev_b16 v7.l, 8, v29.l
	v_and_b16 v7.h, 0xff, v28.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v13.h, v6.h, v6.l
	v_lshlrev_b16 v6.l, 8, v39.l
	v_and_b16 v6.h, 0xff, v38.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v40, v72, 4, v64
	v_lshl_or_b32 v41, v73, 4, v65
	v_lshl_or_b32 v42, v74, 4, v66
	v_lshl_or_b32 v43, v75, 4, v67
	v_lshl_or_b32 v44, v76, 4, v68
	v_lshl_or_b32 v45, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v0.h, v0.l
	v_or_b16 v12.l, v4.l, v3.l
	v_or_b16 v13.l, v7.h, v7.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v0.l, 8, v35.l
	v_and_b16 v0.h, 0xff, v34.l
	v_lshlrev_b16 v3.l, 8, v33.l
	v_and_b16 v4.l, 0xff, v32.l
	v_lshlrev_b16 v7.l, 8, v37.l
	v_and_b16 v7.h, 0xff, v36.l
	v_or_b16 v9.h, v6.h, v6.l
	v_lshlrev_b16 v6.l, 8, v23.l
	v_and_b16 v6.h, 0xff, v46.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v0.h, v0.l
	v_or_b16 v8.l, v4.l, v3.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v0.l, 8, v43.l
	v_and_b16 v0.h, 0xff, v42.l
	v_lshlrev_b16 v3.l, 8, v41.l
	v_and_b16 v4.l, 0xff, v40.l
	v_lshlrev_b16 v7.l, 8, v45.l
	v_and_b16 v7.h, 0xff, v44.l
	v_or_b16 v13.h, v6.h, v6.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 2, v19
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v0.h, v0.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v4.l, v3.l
	v_or_b16 v13.l, v7.h, v7.l
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v27.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[12:13], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v47
	v_mov_b16_e32 v3.l, v22.h
	v_add3_u32 v5, v6, v5, v47
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s34, v18
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
	v_and_b32_e32 v4, 0xc0, v150
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
.Ltmp56:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 340
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 340
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28300
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 340
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 340
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 84
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
