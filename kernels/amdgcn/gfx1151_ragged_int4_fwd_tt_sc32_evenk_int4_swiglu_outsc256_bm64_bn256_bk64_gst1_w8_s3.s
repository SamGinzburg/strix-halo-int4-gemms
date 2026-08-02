	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v59, 0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s41, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v195
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s41, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v16, s34, v0
	v_lshlrev_b32_e32 v9, 4, v195
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v195
	v_lshlrev_b32_e32 v2, 4, v195
.Ltmp4:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v4, 16, v195
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow685
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v60, 0 :: v_dual_and_b32 v197, 15, v195
	v_dual_mov_b32 v201, 0 :: v_dual_and_b32 v198, 0xf0, v195
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v196, 0xc0, v195
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v149, 0
	v_mov_b32_e32 v148, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v154, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s46, s[0:1], 0x58
	s_load_b32 s43, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v17, s41, 8, v195
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[1:2]
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v1, s34, v197
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v2, 16, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[3:4]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s20, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[3:4]
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s40
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[5:6]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v5, 4, v196
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v0, 0, v0
	v_dual_mov_b32 v67, 0 :: v_dual_lshlrev_b32 v12, 2, v196
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v1, off offset:152
	scratch_store_b32 off, v5, off offset:148
	scratch_store_b64 off, v[16:17], off offset:140
	scratch_store_b32 off, v17, off offset:160
	v_mul_lo_u32 v1, v2, s40
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v0, v0, v12
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v11, 5, v195
	v_or_b32_e32 v15, 0x3f0, v195
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v13, 2, v198
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:156
	scratch_store_b32 off, v0, off offset:208
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v1, v3, s40
	v_dual_mov_b32 v131, 0 :: v_dual_lshlrev_b32 v14, 1, v195
	v_dual_mov_b32 v154, 0 :: v_dual_and_b32 v11, 32, v11
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v0, 0, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v149, 0 :: v_dual_and_b32 v14, 28, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:164
	scratch_store_b32 off, v0, off offset:212
	v_mul_lo_u32 v1, v4, s40
	v_add3_u32 v11, 0, v13, v11
	v_bfe_i32 v2, v195, 4, 1
	v_mov_b32_e32 v137, 0
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v3, 0x270, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v0, v11, v14
	v_dual_mov_b32 v85, 0 :: v_dual_and_b32 v2, 0x108, v2
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_bfe_i32 v1, v195, 3, 1
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v135, 0
	v_mov_b32_e32 v150, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v148, 0 :: v_dual_and_b32 v1, 0x88, v1
	v_or_b32_e32 v6, 0x300, v195
	v_mov_b32_e32 v142, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[7:8]
	v_and_or_b32 v4, 0x70, v9, v1
	v_xor3_b32 v1, v2, v5, v1
	v_add_nc_u32_e32 v2, 0, v3
	v_or_b32_e32 v8, 0x700, v195
	v_mov_b32_e32 v146, 0
	v_xor_b32_e32 v3, 8, v4
	v_xor_b32_e32 v5, 0x108, v4
	v_add_nc_u32_e32 v1, v2, v1
	scratch_store_b32 off, v196, off offset:240 ; 4-byte Folded Spill
	v_mov_b32_e32 v138, 0
	v_or_b32_e32 v10, 0xf00, v195
	v_mov_b32_e32 v136, 0
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	scratch_store_b32 off, v197, off offset:244 ; 4-byte Folded Spill
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s44, s33, 1
	v_mov_b32_e32 v134, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	scratch_store_b32 off, v1, off offset:180 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v3
	scratch_store_b32 off, v198, off offset:248 ; 4-byte Folded Spill
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s46, s44
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s42, s4, s20
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:188
	scratch_store_b32 off, v195, off offset:236
	v_add_nc_u32_e32 v1, 0, v6
	scratch_store_b32 off, v9, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v9, 0xb00, v195
	v_mov_b32_e32 v130, 0
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v18, s33, v17
	scratch_store_b32 off, v1, off offset:192 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	v_lshrrev_b32_e32 v7, 1, v195
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v167, 0, v197
	v_dual_mov_b32 v152, 0 :: v_dual_lshlrev_b32 v13, 1, v198
	scratch_store_b32 off, v1, off offset:196 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v9
	v_dual_mov_b32 v50, 0 :: v_dual_and_b32 v7, 0x70, v7
	s_mov_b32 s4, 0
	s_and_b32 s9, s9, 0xffff
	scratch_store_b32 off, v1, off offset:200 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v10
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s1, s1, s6
	s_and_b32 s3, s5, s7
	scratch_store_b32 off, v1, off offset:204 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v17, s46, s[42:43]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:220
	scratch_store_b32 off, v18, off offset:172
	v_mad_u64_u32 v[0:1], null, v18, s46, s[42:43]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s45, s40, s20
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v177, v167, v7
	scratch_store_b64 off, v[0:1], off offset:228 ; 8-byte Folded Spill
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v172, 0, v195
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v192, 0, v13
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v3, s6
	v_mov_b32_e32 v5, s8
	v_mov_b32_e32 v7, s10
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	scratch_load_b32 v13, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s5, s4, 4
	s_clause 0x13                           ; 80-byte Folded Spill
	scratch_store_b32 off, v204, off offset:76
	scratch_store_b32 off, v200, off offset:72
	scratch_store_b32 off, v48, off offset:68
	scratch_store_b32 off, v47, off offset:64
	scratch_store_b32 off, v49, off offset:60
	scratch_store_b32 off, v50, off offset:56
	scratch_store_b32 off, v142, off offset:52
	scratch_store_b32 off, v141, off offset:48
	scratch_store_b32 off, v138, off offset:44
	scratch_store_b32 off, v122, off offset:40
	scratch_store_b32 off, v51, off offset:36
	scratch_store_b32 off, v75, off offset:32
	scratch_store_b32 off, v116, off offset:28
	scratch_store_b32 off, v52, off offset:24
	scratch_store_b32 off, v76, off offset:20
	scratch_store_b32 off, v53, off offset:16
	scratch_store_b32 off, v68, off offset:12
	scratch_store_b32 off, v115, off offset:8
	scratch_store_b32 off, v54, off offset:4
	scratch_store_b32 off, v69, off
	v_mov_b32_e32 v138, v153
	v_mov_b32_e32 v75, v129
	v_mov_b32_e32 v129, v90
	v_dual_mov_b32 v90, v238 :: v_dual_mov_b32 v189, v145
	v_mov_b32_e32 v145, v155
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s5, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[9:10], null, v0, s43, v[16:17]
	v_cndmask_b32_e64 v0, 0x80000000, v9, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v9, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v9, s5, v9
	v_mad_u64_u32 v[9:10], null, v9, s43, v[16:17]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v11, 0x80000000, v9, s2
	v_or_b32_e32 v9, 2, v13
	v_or_b32_e32 v9, s5, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[9:10], null, v9, s43, v[16:17]
	v_cndmask_b32_e64 v12, 0x80000000, v9, s2
	v_or_b32_e32 v9, 3, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v9, s5, v9
	v_mad_u64_u32 v[9:10], null, v9, s43, v[16:17]
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v182, v11, s[20:23], 0 offen
	buffer_load_u8 v183, v12, s[20:23], 0 offen
	buffer_load_u8 v184, v9, s[20:23], 0 offen
	buffer_load_u8 v185, v0, s[20:23], 0 offen
	scratch_load_b64 v[10:11], off, off offset:220 ; 8-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v182.l
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v185.l, v0.l
	v_lshlrev_b16 v0.l, 8, v184.l
	v_or_b16 v9.h, v183.l, v0.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s5, v10
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_b128 v[26:29], v0, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v30, 8, v27
	v_lshrrev_b32_e32 v31, 8, v28
	v_lshrrev_b32_e32 v32, 8, v29
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[21:24], v0 offset1:32
	ds_load_2addr_b64 v[9:12], v0 offset0:64 offset1:96
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[17:20], v0 offset1:1
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[13:16], v0 offset1:1
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v221, off, off offset:192
	scratch_load_b32 v225, off, off offset:196
	scratch_load_b32 v226, off, off offset:200
	scratch_load_b32 v239, off, off offset:204
	v_lshrrev_b32_e32 v0, 8, v26
	ds_store_b8 v172, v26
	ds_store_b8_d16_hi v172, v26 offset:512
	ds_store_b8 v172, v27 offset:1024
	ds_store_b8_d16_hi v172, v27 offset:1536
	ds_store_b8 v172, v28 offset:2048
	ds_store_b8_d16_hi v172, v28 offset:2560
	ds_store_b8 v172, v29 offset:3072
	v_lshrrev_b32_e32 v26, 24, v26
	ds_store_b8_d16_hi v172, v29 offset:3584
	v_lshrrev_b32_e32 v27, 24, v27
	v_lshrrev_b32_e32 v28, 24, v28
	v_lshrrev_b32_e32 v29, 24, v29
	ds_store_b8 v172, v0 offset:256
	ds_store_b8 v172, v30 offset:1280
	ds_store_b8 v172, v31 offset:2304
	ds_store_b8 v172, v32 offset:3328
	s_waitcnt vmcnt(3)
	ds_store_b8 v221, v26
	s_waitcnt vmcnt(2)
	ds_store_b8 v225, v27
	s_waitcnt vmcnt(1)
	ds_store_b8 v226, v28
	s_waitcnt vmcnt(0)
	ds_store_b8 v239, v29
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v177 offset:1280
	ds_load_u8 v26, v177 offset:1024
	ds_load_u8 v27, v177 offset:1792
	ds_load_u8 v28, v177 offset:1536
	ds_load_u8 v36, v177 offset:1408
	ds_load_u8 v37, v177 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v28, v27, 0xc0c0004
	ds_load_u8 v27, v177 offset:256
	ds_load_u8 v28, v177
	ds_load_u8 v29, v177 offset:768
	ds_load_u8 v30, v177 offset:512
	ds_load_u8 v38, v177 offset:384
	ds_load_u8 v41, v177 offset:128
	v_lshl_or_b32 v35, v26, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v28, 16, v27
	ds_load_u8 v0, v177 offset:3328
	ds_load_u8 v26, v177 offset:3072
	ds_load_u8 v27, v177 offset:3840
	ds_load_u8 v28, v177 offset:3584
	ds_load_u8 v45, v177 offset:3456
	ds_load_u8 v46, v177 offset:3200
	v_wmma_i32_16x16x16_iu4 v[159:166], v[34:35], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[204:211], v[34:35], v[15:16], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v28, v27, 0xc0c0004
	ds_load_u8 v27, v177 offset:2304
	ds_load_u8 v28, v177 offset:2048
	ds_load_u8 v29, v177 offset:2816
	ds_load_u8 v30, v177 offset:2560
	ds_load_u8 v47, v177 offset:2432
	ds_load_u8 v48, v177 offset:2176
	v_lshl_or_b32 v40, v26, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v39, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[26:33], v[34:35], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[159:166], v[39:40], v[19:20], v[159:166] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[39:40], v[17:18], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[204:211], v[39:40], v[11:12], v[204:211] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v255, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v171, v26
	v_cvt_f32_i32_e32 v141, v27
	v_cvt_f32_i32_e32 v142, v28
	v_cvt_f32_i32_e32 v200, v29
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v26, v177 offset:1664
	ds_load_u8 v27, v177 offset:1920
	ds_load_u8 v28, v177 offset:640
	ds_load_u8 v29, v177 offset:896
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v32
	v_cvt_f32_i32_e32 v194, v30
	v_cvt_f32_i32_e32 v193, v31
	v_cvt_f32_i32_e32 v254, v161
	v_cvt_f32_i32_e32 v253, v162
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	v_cvt_f32_i32_e32 v252, v163
	v_cvt_f32_i32_e32 v251, v164
	v_cvt_f32_i32_e32 v249, v165
	v_cvt_f32_i32_e32 v247, v166
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_perm_b32 v0, v37, v36, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v174, v204
	v_cvt_f32_i32_e32 v173, v205
	v_cvt_f32_i32_e32 v170, v208
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	v_perm_b32 v27, v41, v38, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v42, v26, 16, v0
	v_perm_b32 v0, v46, v45, 0xc0c0004
	v_lshl_or_b32 v41, v28, 16, v27
	ds_load_u8 v26, v177 offset:3712
	ds_load_u8 v27, v177 offset:3968
	ds_load_u8 v28, v177 offset:2688
	ds_load_u8 v29, v177 offset:2944
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	v_perm_b32 v27, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v28, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v48, v26, 16, v0
	v_lshl_or_b32 v47, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[26:33], v[41:42], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v21, v101
	v_dual_mov_b32 v101, v91 :: v_dual_mov_b32 v22, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[47:48], v[17:18], v[26:33] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v18, v211
	v_dual_mov_b32 v91, v55 :: v_dual_mov_b32 v94, v58
	v_cvt_f32_i32_e32 v0, v26
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v31
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v27
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v28
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v29
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v30
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[26:33], v[34:35], v[13:14], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[26:33], v[39:40], v[23:24], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v238, v26
	v_cvt_f32_i32_e32 v25, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v68, v28
	v_cvt_f32_i32_e32 v69, v29
	v_cvt_f32_i32_e32 v230, v30
	v_cvt_f32_i32_e32 v76, v31
	v_cvt_f32_i32_e32 v115, v32
	v_cvt_f32_i32_e32 v116, v33
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[26:33], v[41:42], v[13:14], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[47:48], v[23:24], v[26:33] neg_lo:[1,1,0]
	v_mov_b32_e32 v23, v92
	v_mov_b32_e32 v92, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v198, v27
	v_cvt_f32_i32_e32 v27, v207
	v_cvt_f32_i32_e32 v196, v28
	v_cvt_f32_i32_e32 v195, v29
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v31
	v_cvt_f32_i32_e32 v31, v159
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[159:166], v[41:42], v[9:10], v[1:8] neg_lo:[1,1,0]
	scratch_load_b64 v[9:10], off, off offset:228 ; 8-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[159:166], v[47:48], v[19:20], v[159:166] neg_lo:[1,1,0]
	v_mov_b32_e32 v188, v99
	v_dual_mov_b32 v20, v107 :: v_dual_mov_b32 v107, v93
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	v_cvt_f32_i32_e32 v190, v164
	v_cvt_f32_i32_e32 v197, v165
	v_cvt_f32_i32_e32 v219, v160
	v_cvt_f32_i32_e32 v160, v206
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v30
	v_cvt_f32_i32_e32 v165, v209
	v_cvt_f32_i32_e32 v164, v210
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[204:211], v[41:42], v[15:16], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_mov_b32_e32 v93, v57
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v122, v159
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[204:211], v[47:48], v[11:12], v[204:211] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v24, v161
	v_cvt_f32_i32_e32 v99, v162
	v_cvt_f32_i32_e32 v191, v166
	v_cvt_f32_i32_e32 v178, v163
	v_cvt_f32_i32_e32 v241, v204
	v_cvt_f32_i32_e32 v216, v209
	v_cvt_f32_i32_e32 v245, v205
	v_cvt_f32_i32_e32 v244, v206
	v_cvt_f32_i32_e32 v243, v207
	v_cvt_f32_i32_e32 v232, v208
	v_cvt_f32_i32_e32 v214, v210
	v_cvt_f32_i32_e32 v213, v211
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s5, v9
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s5, s4, s45
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s44
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_b128 v[9:12], v9, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v185
	ds_store_b8 v0, v182 offset:64
	ds_store_b8 v0, v183 offset:128
	ds_store_b8 v0, v184 offset:192
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	ds_load_u8 v15, v167 offset:192
	ds_load_u8 v16, v167 offset:128
	ds_load_u8 v19, v167 offset:208
	ds_load_u8 v26, v167 offset:144
	ds_load_u8 v32, v167 offset:224
	ds_load_u8 v37, v167 offset:160
	ds_load_u8 v38, v167 offset:240
	ds_load_u8 v45, v167 offset:176
	ds_load_u8 v28, v167 offset:448
	ds_load_u8 v29, v167 offset:384
	ds_load_u8 v30, v167 offset:464
	ds_load_u8 v33, v167 offset:400
	ds_load_u8 v46, v167 offset:480
	ds_load_u8 v47, v167 offset:416
	ds_load_u8 v169, v167 offset:496
	ds_load_u8 v175, v167 offset:432
	ds_load_u8 v34, v167 offset:320
	ds_load_u8 v35, v167 offset:256
	ds_load_u8 v39, v167 offset:336
	ds_load_u8 v40, v167 offset:272
	ds_load_u8 v48, v167 offset:352
	ds_load_u8 v49, v167 offset:288
	ds_load_u8 v227, v167 offset:368
	ds_load_u8 v231, v167 offset:304
	ds_load_u8 v36, v167 offset:64
	ds_load_u8 v41, v167 offset:80
	ds_load_u8 v50, v167 offset:96
	ds_load_u8 v235, v167 offset:112
	ds_load_u8 v42, v167
	ds_load_u8 v51, v167 offset:16
	ds_load_u8 v52, v167 offset:32
	ds_load_u8 v237, v167 offset:48
	ds_load_u8 v53, v167 offset:960
	ds_load_u8 v54, v167 offset:896
	ds_load_u8 v55, v167 offset:976
	ds_load_u8 v57, v167 offset:832
	ds_load_u8 v56, v167 offset:912
	ds_load_u8 v163, v167 offset:992
	ds_load_u8 v166, v167 offset:928
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_lshrrev_b32_e32 v184, 8, v12
	v_lshrrev_b32_e32 v185, 8, v9
	v_lshrrev_b32_e32 v204, 8, v10
	v_lshrrev_b32_e32 v205, 8, v11
	v_lshrrev_b32_e32 v206, 24, v9
	v_lshrrev_b32_e32 v207, 24, v10
	v_lshrrev_b32_e32 v208, 24, v11
	v_lshrrev_b32_e32 v209, 24, v12
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v19, v26, v19, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v32, v37, v32, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v38, v45, v38, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v242, v0
	ds_load_u8 v14, v167 offset:944
	ds_load_u8 v58, v167 offset:768
	ds_load_u8 v159, v167 offset:848
	ds_load_u8 v162, v167 offset:784
	ds_load_u8 v168, v167 offset:864
	ds_load_u8 v179, v167 offset:800
	ds_load_u8 v43, v167 offset:880
	ds_load_u8 v155, v167 offset:816
	ds_load_u8 v161, v167 offset:704
	ds_load_u8 v176, v167 offset:640
	ds_load_u8 v183, v167 offset:720
	ds_load_u8 v218, v167 offset:656
	ds_load_u8 v220, v167 offset:736
	ds_load_u8 v222, v167 offset:672
	ds_load_u8 v187, v167 offset:752
	ds_load_u8 v153, v167 offset:688
	ds_load_u8 v180, v167 offset:576
	ds_load_u8 v182, v167 offset:512
	ds_load_u8 v223, v167 offset:592
	ds_load_u8 v44, v167 offset:528
	ds_load_u8 v181, v167 offset:608
	ds_load_u8 v186, v167 offset:544
	ds_load_u8 v13, v167 offset:624
	ds_load_u8 v0, v167 offset:560
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8_d16_hi v172, v11 offset:2560
	ds_store_b8 v172, v12 offset:3072
	ds_store_b8 v172, v11 offset:2048
	ds_store_b8_d16_hi v172, v12 offset:3584
	ds_store_b8 v172, v9
	ds_store_b8_d16_hi v172, v9 offset:512
	ds_store_b8 v172, v10 offset:1024
	ds_store_b8_d16_hi v172, v10 offset:1536
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v9, v35, v34, 0xc0c0004
	v_perm_b32 v10, v29, v28, 0xc0c0004
	v_perm_b32 v11, v42, v36, 0xc0c0004
	v_perm_b32 v12, v16, v15, 0xc0c0004
	v_perm_b32 v16, v176, v161, 0xc0c0004
	v_perm_b32 v15, v182, v180, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_store_b8 v172, v185 offset:256
	ds_store_b8 v172, v204 offset:1280
	ds_store_b8 v172, v205 offset:2304
	ds_store_b8 v172, v184 offset:3328
	ds_store_b8 v221, v206
	ds_store_b8 v225, v207
	ds_store_b8 v226, v208
	ds_store_b8 v239, v209
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v9, v12, 16, v11
	v_perm_b32 v11, v58, v57, 0xc0c0004
	v_perm_b32 v12, v54, v53, 0xc0c0004
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v26, v56, v55, 0xc0c0004
	v_perm_b32 v37, v186, v181, 0xc0c0004
	v_lshl_or_b32 v12, v12, 16, v11
	v_lshl_or_b32 v11, v16, 16, v15
	ds_load_u8 v15, v177 offset:1280
	ds_load_u8 v16, v177 offset:1024
	ds_load_u8 v28, v177 offset:1792
	ds_load_u8 v29, v177 offset:1536
	ds_load_u8 v34, v177 offset:1408
	ds_load_u8 v42, v177 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v29, v28, 0xc0c0004
	ds_load_u8 v28, v177 offset:256
	ds_load_u8 v29, v177
	ds_load_u8 v35, v177 offset:768
	ds_load_u8 v36, v177 offset:512
	ds_load_u8 v53, v177 offset:384
	ds_load_u8 v54, v177 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v29, v36, v35, 0xc0c0004
	v_lshl_or_b32 v36, v16, 16, v15
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v35, v29, 16, v28
	ds_load_u8 v15, v177 offset:3328
	ds_load_u8 v16, v177 offset:3072
	ds_load_u8 v28, v177 offset:3840
	ds_load_u8 v29, v177 offset:3584
	ds_load_u8 v182, v177 offset:3456
	ds_load_u8 v184, v177 offset:3200
	v_wmma_i32_16x16x16_iu4 v[204:211], v[35:36], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v29, v28, 0xc0c0004
	ds_load_u8 v28, v177 offset:2304
	ds_load_u8 v29, v177 offset:2048
	ds_load_u8 v57, v177 offset:2816
	ds_load_u8 v58, v177 offset:2560
	ds_load_u8 v185, v177 offset:2432
	ds_load_u8 v221, v177 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v29, v58, v57, 0xc0c0004
	v_lshl_or_b32 v58, v16, 16, v15
	v_perm_b32 v15, v42, v34, 0xc0c0004
	ds_load_u8 v34, v177 offset:640
	ds_load_u8 v42, v177 offset:896
	v_lshl_or_b32 v57, v29, 16, v28
	ds_load_u8 v16, v177 offset:1664
	ds_load_u8 v29, v177 offset:1920
	v_wmma_i32_16x16x16_iu4 v[204:211], v[57:58], v[11:12], v[204:211] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v17, v204
	v_cvt_f32_i32_e32 v28, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v180, v206
	v_cvt_f32_i32_e32 v176, v207
	v_cvt_f32_i32_e32 v161, v208
	v_cvt_f32_i32_e32 v250, v209
	v_cvt_f32_i32_e32 v248, v210
	v_cvt_f32_i32_e32 v246, v211
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v34, v42, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v16, v16, v29, 0xc0c0004
	v_perm_b32 v29, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v226, v16, 16, v15
	v_lshl_or_b32 v225, v34, 16, v29
	ds_load_u8 v16, v177 offset:3712
	ds_load_u8 v29, v177 offset:3968
	ds_load_u8 v34, v177 offset:2688
	ds_load_u8 v42, v177 offset:2944
	v_perm_b32 v15, v184, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[204:211], v[225:226], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v16, v16, v29, 0xc0c0004
	v_perm_b32 v29, v221, v185, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v34, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v240, v16, 16, v15
	v_perm_b32 v15, v40, v39, 0xc0c0004
	v_lshl_or_b32 v239, v34, 16, v29
	v_perm_b32 v16, v33, v30, 0xc0c0004
	v_perm_b32 v29, v51, v41, 0xc0c0004
	v_perm_b32 v30, v218, v183, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[204:211], v[239:240], v[11:12], v[204:211] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v16, 16, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v15, v19, 16, v29
	v_perm_b32 v19, v162, v159, 0xc0c0004
	v_perm_b32 v29, v44, v223, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v221, v204
	v_cvt_f32_i32_e32 v9, v209
	v_cvt_f32_i32_e32 v10, v210
	v_cvt_f32_i32_e32 v11, v211
	v_cvt_f32_i32_e32 v185, v205
	v_cvt_f32_i32_e32 v184, v206
	v_cvt_f32_i32_e32 v182, v207
	v_cvt_f32_i32_e32 v12, v208
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v42, v26, 16, v19
	v_lshl_or_b32 v41, v30, 16, v29
	v_wmma_i32_16x16x16_iu4 v[204:211], v[35:36], v[15:16], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v26, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[204:211], v[57:58], v[41:42], v[204:211] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v40, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v39, v205
	v_cvt_f32_i32_e32 v34, v206
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v33, v207
	v_cvt_f32_i32_e32 v162, v208
	v_cvt_f32_i32_e32 v159, v209
	v_cvt_f32_i32_e32 v29, v210
	v_cvt_f32_i32_e32 v30, v211
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[204:211], v[225:226], v[15:16], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[204:211], v[239:240], v[41:42], v[204:211] neg_lo:[1,1,0]
	v_perm_b32 v41, v47, v46, 0xc0c0004
	v_perm_b32 v42, v52, v50, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v15, v209
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v16, v210
	v_cvt_f32_i32_e32 v210, v205
	v_cvt_f32_i32_e32 v209, v206
	v_cvt_f32_i32_e32 v205, v207
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v207, v41, 16, v26
	v_lshl_or_b32 v206, v32, 16, v42
	v_perm_b32 v26, v179, v168, 0xc0c0004
	v_perm_b32 v32, v166, v163, 0xc0c0004
	v_perm_b32 v41, v222, v220, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v19, v211
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[206:207], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v223, v32, 16, v26
	v_perm_b32 v26, v231, v227, 0xc0c0004
	v_perm_b32 v32, v175, v169, 0xc0c0004
	v_lshl_or_b32 v222, v41, 16, v37
	v_perm_b32 v37, v237, v235, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v183, v208
	v_cvt_f32_i32_e32 v204, v204
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v46, v32, 16, v26
	v_perm_b32 v26, v0, v13, 0xc0c0004
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[222:223], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v38, 16, v37
	v_perm_b32 v32, v153, v187, 0xc0c0004
	v_perm_b32 v38, v155, v43, 0xc0c0004
	v_perm_b32 v43, v14, v242, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v47, v50
	v_cvt_f32_i32_e32 v42, v51
	v_cvt_f32_i32_e32 v41, v52
	v_cvt_f32_i32_e32 v163, v53
	v_cvt_f32_i32_e32 v179, v54
	v_cvt_f32_i32_e32 v168, v55
	v_cvt_f32_i32_e32 v166, v56
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[225:226], v[206:207], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v37, v32, 16, v26
	v_lshl_or_b32 v38, v43, 16, v38
	v_mov_b32_e32 v155, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[239:240], v[222:223], v[49:56] neg_lo:[1,1,0]
	v_mov_b32_e32 v145, v189
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v218, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v206, v54
	v_cvt_f32_i32_e32 v207, v55
	v_cvt_f32_i32_e32 v208, v56
	v_cvt_f32_i32_e32 v223, v50
	v_cvt_f32_i32_e32 v222, v51
	v_cvt_f32_i32_e32 v220, v52
	v_cvt_f32_i32_e32 v211, v53
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[45:46], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[37:38], v[49:56] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v36, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v35, v50
	v_cvt_f32_i32_e32 v50, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v52
	v_cvt_f32_i32_e32 v32, v53
	v_cvt_f32_i32_e32 v175, v54
	v_cvt_f32_i32_e32 v169, v55
	v_cvt_f32_i32_e32 v26, v56
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[51:58], v[225:226], v[45:46], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[51:58], v[239:240], v[37:38], v[51:58] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v235, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v225, v56
	v_cvt_f32_i32_e32 v226, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v227, v58
	v_cvt_f32_i32_e32 v240, v52
	v_cvt_f32_i32_e32 v239, v53
	v_cvt_f32_i32_e32 v237, v54
	v_cvt_f32_i32_e32 v231, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v37, s4, v0, 1
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v37, 0x80000000, v37, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v38, s4, v0, 1
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v38, 0x80000000, v38, s0
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s4, v0, 1
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s4, v0, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	scratch_load_b32 v0, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s4, s40
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v45, v0, s5, 1
	buffer_load_u16 v45, v45, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v37, v37, s[28:31], 0 offen
	buffer_load_u16 v38, v38, s[28:31], 0 offen
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v13, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v242, 16, v37
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v37, v242, v171
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v13, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[51:54], v192
	ds_load_b128 v[55:58], v192 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v140, v37, v51 :: v_dual_lshlrev_b32 v171, 16, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v37, v242, v141
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v37, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v37, v242, v142
	v_mov_b32_e32 v153, v138
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v142, off, off offset:52
	scratch_load_b32 v141, off, off offset:48
	scratch_load_b32 v138, off, off offset:44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v144, v37, v53 :: v_dual_mul_f32 v37, v242, v200
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v200, 16, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v200, v31
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v71, v31, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v200, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v72, v31, v52 :: v_dual_mul_f32 v31, v200, v254
	v_fmac_f32_e32 v74, v31, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v200, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v31, v54
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v31, 16, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v236, v27, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v242, v194
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v111, v27, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v242, v193
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v27, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v27, v242, v0
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v27, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v27, v242, v0 :: v_dual_mul_f32 v0, v31, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v208, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v114, v27, v58
	v_fmac_f32_e32 v229, v0, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	v_mul_f32_e32 v27, v171, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v27, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v171, v76
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v133, v37, v54 :: v_dual_fmac_f32 v88, v27, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v242
	v_dual_mul_f32 v37, v171, v238 :: v_dual_mov_b32 v238, v90
	v_mov_b32_e32 v90, v129
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v110, v37, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v171, v115
	v_mul_f32_e32 v37, v171, v25
	v_mov_b32_e32 v129, v75
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v19, v171
	v_mul_f32_e32 v19, v200, v211
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v27, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v171, v116
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v37, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v37, v171, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v90, v27, v58 :: v_dual_mul_f32 v27, v200, v252
	v_fmac_f32_e32 v63, v27, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v200, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v64, v27, v56 :: v_dual_mul_f32 v27, v200, v249
	v_fmac_f32_e32 v65, v27, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v200, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v27, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v31, v170
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v202, v27, v55
	v_fmac_f32_e32 v124, v37, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v37, v171, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v27, v31, v165 :: v_dual_fmac_f32 v118, v37, v54
	v_mul_f32_e32 v37, v31, v174
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v224, v27, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v31, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v233, v37, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v37, v31, v173
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v228, v27, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v234, v37, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v37, v31, v160
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v238, v37, v53
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[51:54], v192 offset:512
	ds_load_b128 v[55:58], v192 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v154, v0, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v242, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v103, v0, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v242, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v0, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v242, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v0, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v171
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v148, v0, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v171, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v79, v0, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v171, v196
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v80, v0, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v171, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v81, v0, v54 :: v_dual_mul_f32 v0, v122, v200
	scratch_load_b32 v122, off, off offset:40 ; 4-byte Folded Reload
	v_fmac_f32_e32 v146, v0, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v200, v219
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v212, v0, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v200, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v217, v0, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v200, v99
	v_mov_b32_e32 v99, v188
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v215, v0, v54 :: v_dual_mul_f32 v0, v241, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v136, v0, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v31, v245
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v60, v0, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v31, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v61, v0, v53 :: v_dual_mul_f32 v0, v31, v243
	v_fmac_f32_e32 v201, v0, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v242, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v106, v0, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v242
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v152, v0, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v150, v0, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v242
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v149, v0, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v171, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v0, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v171
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v147, v0, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v142, v0, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v171
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v0, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v200, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v203, v0, v55 :: v_dual_mul_f32 v0, v190, v200
	v_fmac_f32_e32 v139, v0, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v197, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v0, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v191, v200
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v137, v0, v58 :: v_dual_mul_f32 v0, v31, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v59, v0, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v216, v31 :: v_dual_mov_b32 v55, v91
	v_mov_b32_e32 v91, v101
	v_dual_mov_b32 v101, v21 :: v_dual_fmac_f32 v134, v0, v56
	v_mul_f32_e32 v0, v214, v31
	v_mov_b32_e32 v56, v92
	v_mov_b32_e32 v92, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v0, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v213, v31
	v_mov_b32_e32 v57, v93
	v_mov_b32_e32 v93, v107
	v_mov_b32_e32 v107, v20
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v129, v0, v58
	.loc	1 1218 45                       ; ragged.py:1218:45
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	v_mov_b32_e32 v58, v94
	v_mov_b32_e32 v94, v22
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, v0, s5, 1
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v13, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v192
	ds_load_b128 v[51:54], v192 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v242, v17 :: v_dual_mul_f32 v13, v16, v171
	v_mul_f32_e32 v16, v206, v200
	v_mul_f32_e32 v17, v207, v200
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v127, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v242, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v122, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v242, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v119, v0, v22 :: v_dual_mul_f32 v0, v242, v176
	v_fmac_f32_e32 v120, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v171, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v98, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v171, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v97, v0, v21 :: v_dual_mul_f32 v0, v171, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v171, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v95, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v48
	scratch_load_b32 v48, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v100, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v47
	scratch_load_b32 v47, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v99, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v93, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v41
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v94, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v31, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v199, v0, v20 :: v_dual_mul_f32 v0, v31, v35
	v_fmac_f32_e32 v84, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v31, v50
	scratch_load_b32 v50, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v83, v0, v22 :: v_dual_mul_f32 v0, v31, v49
	scratch_load_b32 v49, off, off offset:60 ; 4-byte Folded Reload
	v_fmac_f32_e32 v78, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v242, v161
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v126, v0, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v242, v250
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v125, v0, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v242, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v121, v0, v53 :: v_dual_mul_f32 v0, v242, v246
	v_fmac_f32_e32 v123, v0, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v171, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v108, v0, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v171, v159
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v107, v0, v52 :: v_dual_mul_f32 v0, v171, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v0, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v171, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v101, v0, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v92, v0, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v179
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v91, v0, v52
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v0, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v166
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v155, v0, v54 :: v_dual_mul_f32 v0, v31, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v77, v0, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v31, v175
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v51, off, off offset:36
	scratch_load_b32 v75, off, off offset:32
	scratch_load_b32 v116, off, off offset:28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v70, v0, v52
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:24
	scratch_load_b32 v76, off, off offset:20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v31, v169
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v52, v0, v53
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v53, off, off offset:16
	scratch_load_b32 v68, off, off offset:12
	scratch_load_b32 v115, off, off offset:8
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v31, v26
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[20:23], v192 offset:512
	ds_load_b128 v[26:29], v192 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v51, v0, v54
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v221, v242
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v54, off, off offset:4
	scratch_load_b32 v69, off, off
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v47, v0, v20 :: v_dual_mul_f32 v0, v242, v185
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v50, v17, v28
	v_dual_fmac_f32 v156, v13, v28 :: v_dual_fmac_f32 v151, v14, v29
	v_fmac_f32_e32 v85, v18, v29
	v_dual_fmac_f32 v117, v0, v21 :: v_dual_mul_f32 v0, v242, v184
	v_fmac_f32_e32 v49, v16, v27
	scratch_load_b64 v[16:17], off, off offset:140 ; 8-byte Folded Reload
	v_fmac_f32_e32 v116, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v242, v182
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v115, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v204, v171
	scratch_load_b32 v204, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v48, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v171, v210
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v76, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v171, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v75, v0, v22 :: v_dual_mul_f32 v0, v171, v205
	v_fmac_f32_e32 v68, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v218, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v223
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v58, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v57, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v200, v220
	scratch_load_b32 v200, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v56, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v235, v31
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v135, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v31, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v20, v225, v31 :: v_dual_fmac_f32 v153, v0, v21
	v_mul_f32_e32 v0, v31, v239
	v_mul_f32_e32 v21, v226, v31
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v132, v20, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v62, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v31, v237
	v_dual_mul_f32 v22, v227, v31 :: v_dual_fmac_f32 v67, v21, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v54, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v9, v242
	v_mul_f32_e32 v9, v10, v242
	v_dual_mul_f32 v10, v11, v242 :: v_dual_mul_f32 v11, v242, v12
	v_mul_f32_e32 v12, v15, v171
	v_mul_f32_e32 v15, v171, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v23, v31, v231 :: v_dual_fmac_f32 v158, v10, v29
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v109, v11, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v157, v12, v27
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v69, v15, v26
	v_fmac_f32_e32 v53, v23, v26
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v131, v22, v29 :: v_dual_fmac_f32 v204, v0, v27
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v200, v9, v28 :: v_dual_fmac_f32 v55, v19, v26
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v195, off, off offset:236
	scratch_load_b32 v2, off, off offset:252
	scratch_load_b32 v196, off, off offset:240
	scratch_load_b32 v197, off, off offset:244
	scratch_load_b32 v198, off, off offset:248
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v3, v16 :: v_dual_and_b32 v4, 16, v195
	v_and_b32_e32 v1, 8, v195
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v47 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v200
	v_mul_f32_e32 v10, 0xbfb8aa3b, v158
	v_dual_mul_f32 v188, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v10
	v_dual_mul_f32 v180, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_mul_f32_e32 v0, 0xbfb8aa3b, v204
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v158
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v200
	v_exp_f32_e32 v12, v12
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s1
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_mul_f32_e32 v181, 0xbfb8aa3b, v76
	v_dual_fmac_f32 v7, 0xbfb8aa3b, v204 :: v_dual_mul_f32 v172, 0xbfb8aa3b, v91
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v11, v12, v11
	v_dual_mul_f32 v12, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v95
	v_exp_f32_e32 v16, v7
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v10, v13, v10
	v_ldexp_f32 v13, v15, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v20, 0, 0x42800000, s1
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v21
	v_mul_f32_e32 v183, 0xbfb8aa3b, v102
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v14, 0xbfb8aa3b, v157
	v_ldexp_f32 v0, v16, v0
	v_mul_f32_e32 v16, 0xbfb8aa3b, v156
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v48
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v151
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	v_cndmask_b32_e64 v26, 0, 0x42800000, s1
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	v_mul_f32_e32 v179, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v157
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v156
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v85 :: v_dual_mul_f32 v169, 0xbfb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v12, v15, v12
	v_mul_f32_e32 v15, 0xbfb8aa3b, v86
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v26, v26
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s1
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_dual_mul_f32 v171, 0xbfb8aa3b, v145 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v122
	v_mul_f32_e32 v9, 0xbfb8aa3b, v127
	v_ldexp_f32 v14, v16, v14
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_ldexp_f32 v16, v18, v17
	v_ldexp_f32 v17, v20, v19
	v_mul_f32_e32 v20, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v178, 0xbfb8aa3b, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_add_f32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v86
	v_dual_mul_f32 v5, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v120
	v_dual_mul_f32 v194, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v126
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_mul_f32_e32 v18, 0xbfb8aa3b, v49
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s0
	v_dual_mul_f32 v22, 0xbfb8aa3b, v123 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v121
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v50
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_mul_f32_e32 v167, 0xbfb8aa3b, v56
	v_dual_mul_f32 v192, 0xbfb8aa3b, v116 :: v_dual_mul_f32 v193, 0xbfb8aa3b, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v15, v19, v15
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v164, 0xbfb8aa3b, v84
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v49 :: v_dual_add_f32 v15, 1.0, v15
	v_dual_mul_f32 v190, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v191, 0xbfb8aa3b, v115
	v_ldexp_f32 v19, v23, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v20, v20
	v_mul_f32_e32 v23, 0xbfb8aa3b, v132
	v_dual_mul_f32 v21, 0xbfb8aa3b, v135 :: v_dual_add_f32 v12, 1.0, v12
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, s1, v200, v10, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v12, v12, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v18, v20, v18
	v_ldexp_f32 v20, v26, v24
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	v_mul_f32_e32 v24, 0xbfb8aa3b, v67
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v26, 0xbfb8aa3b, v131 :: v_dual_fmac_f32 v29, 0xbfb8aa3b, v132
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v135 :: v_dual_mul_f32 v186, 0xbfb8aa3b, v96
	v_mul_f32_e32 v189, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v29, v29
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v182, 0xbfb8aa3b, v101 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v67
	v_dual_mul_f32 v184, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v175, 0xbfb8aa3b, v94
	v_dual_mul_f32 v174, 0xbfb8aa3b, v93 :: v_dual_mul_f32 v177, 0xbfb8aa3b, v100
	v_exp_f32_e32 v33, v24
	v_mul_f32_e32 v24, 0xbfb8aa3b, v62
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v28, v29, v28
	v_dual_mul_f32 v176, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v173, 0xbfb8aa3b, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_mul_f32 v170, 0xbfb8aa3b, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v163, 0xbfb8aa3b, v78 :: v_dual_mul_f32 v168, 0xbfb8aa3b, v57
	v_mul_f32_e32 v161, 0xbfb8aa3b, v83
	v_ldexp_f32 v29, v33, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v35, v23, v21
	v_mul_f32_e32 v21, 0xbfb8aa3b, v53
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v0, v0, v204
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_add_f32 v35, 1.0, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, s0
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v28, 1.0, v28 :: v_dual_add_f32 v29, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v166, 0xbfb8aa3b, v55 :: v_dual_mul_f32 v159, 0xbfb8aa3b, v52
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v131
	v_dual_mul_f32 v165, 0xbfb8aa3b, v199 :: v_dual_mul_f32 v160, 0xbfb8aa3b, v70
	v_dual_mul_f32 v27, 0xbfb8aa3b, v51 :: v_dual_mul_f32 v162, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v34, v26
	v_mul_f32_e32 v26, 0xbfb8aa3b, v153
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v11, v11, v47
	v_div_scale_f32 v37, vcc_lo, v47, v11, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v32
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_2)
.Ltmp6:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v34, v31
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v10, v10, v200
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v32, v36, 1.0
	v_fmac_f32_e32 v36, v31, v36
	v_rcp_f32_e32 v31, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v42, -v34, v38, 1.0
	v_fma_f32 v40, -v33, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v31, v40, v31 :: v_dual_add_f32 v14, 1.0, v14
	v_mul_f32_e32 v39, v37, v36
	v_div_scale_f32 v40, s0, v204, v0, v204
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v32, v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_fmac_f32 v39, v41, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v40, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v32, v39, v37
	v_fma_f32 v37, -v33, v41, v40
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, null, v13, v13, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v36, v39
	v_fmac_f32_e32 v41, v37, v31
	v_rcp_f32_e32 v36, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v42
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v11, v32, v11, v47
	v_fma_f32 v32, -v33, v41, v40
	v_div_scale_f32 v33, s3, v158, v13, v158
	v_div_fmas_f32 v31, v32, v31, v41
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v42, v44, 1.0
	v_div_fixup_f32 v0, v31, v0, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v39, v44
	v_mul_f32_e32 v45, v43, v38
	v_div_scale_f32 v39, s0, v48, v12, v48
	v_fma_f32 v37, -v34, v45, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v37, v38
	v_fma_f32 v37, -v46, v36, 1.0
	v_fma_f32 v32, -v34, v45, v43
	v_mul_f32_e32 v34, v33, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, null, v14, v14, v157
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v42, v34, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v39, v36
	v_div_scale_f32 v43, null, v16, v16, v156
	v_fmac_f32_e32 v34, v40, v44
	v_div_fmas_f32 v32, v32, v38, v45
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v31, -v46, v41, v39
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v42, v34, v33
	v_div_fixup_f32 v10, v32, v10, v200
	v_rcp_f32_e32 v32, v43
	v_div_scale_f32 v42, null, v17, v17, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v33, v33, v44, v34
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v40, -v37, v38, 1.0
	v_fmac_f32_e32 v41, v31, v36
	v_div_scale_f32 v31, s1, v157, v14, v157
	v_div_scale_f32 v44, s3, v156, v16, v156
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v38, v40, v38
	v_rcp_f32_e32 v40, v42
	v_fma_f32 v34, -v46, v41, v39
	v_fma_f32 v45, -v43, v32, 1.0
	v_div_scale_f32 v46, null, v15, v15, v86
	v_mul_f32_e32 v39, v31, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v36, v41
	v_fmac_f32_e32 v32, v45, v32
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v47, s0, v151, v17, v151
	v_fma_f32 v36, -v37, v39, v31
	v_fma_f32 v45, -v42, v40, 1.0
	v_div_fixup_f32 v12, v34, v12, v48
	v_div_fixup_f32 v13, v33, v13, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v36, v38
	v_div_scale_f32 v36, null, v18, v18, v49
	v_fmac_f32_e32 v40, v45, v40
	v_rcp_f32_e32 v45, v46
	v_fma_f32 v31, -v37, v39, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v37, v36
	v_div_fmas_f32 v31, v31, v38, v39
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v46, v45, 1.0
	v_div_fixup_f32 v14, v31, v14, v157
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v36, v37, 1.0
	v_dual_fmac_f32 v45, v48, v45 :: v_dual_mul_f32 v34, v47, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v39, v37
	v_mul_f32_e32 v41, v44, v32
	v_div_scale_f32 v48, s4, v86, v15, v86
	v_div_scale_f32 v39, null, v19, v19, v50
	v_fma_f32 v33, -v43, v41, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v33, v32
	v_fma_f32 v33, -v42, v34, v47
	v_fma_f32 v38, -v43, v41, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v34, v33, v40 :: v_dual_mul_f32 v33, v48, v45
	v_div_fmas_f32 v32, v38, v32, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v42, v34, v47
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v41, -v46, v33, v48
	v_div_scale_f32 v42, s1, v49, v18, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v38, v40, v34
	v_rcp_f32_e32 v38, v39
	v_fmac_f32_e32 v33, v41, v45
	v_div_fixup_f32 v31, v32, v16, v156
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v34, v17, v151
	v_div_scale_f32 v34, null, v20, v20, v85
	v_fma_f32 v16, -v46, v33, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v39, v38, 1.0
	v_div_fmas_f32 v16, v16, v45, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v33, v34
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v38, v41, v38
	v_mul_f32_e32 v40, v42, v37
	v_div_fixup_f32 v43, v16, v15, v86
	v_div_scale_f32 v41, null, v35, v35, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v36, v40, v42
	v_fmac_f32_e32 v40, v17, v37
	v_div_scale_f32 v17, s0, v50, v19, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v15, -v36, v40, v42
	v_fma_f32 v36, -v34, v33, 1.0
	v_rcp_f32_e32 v42, v41
	v_div_fmas_f32 v15, v15, v37, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v36, v33
	v_div_scale_f32 v36, null, v28, v28, v132
	v_div_scale_f32 v40, s1, v85, v20, v85
	v_div_fixup_f32 v45, v15, v18, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v15, v36
	v_fma_f32 v44, -v41, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v18, v40, v33
	v_div_scale_f32 v49, null, v30, v30, v131
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v47, -v36, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v15, v47, v15 :: v_dual_fmac_f32 v42, v44, v42
	v_div_scale_f32 v44, null, v29, v29, v67
	v_mul_f32_e32 v16, v17, v38
	v_rcp_f32_e32 v48, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v37, -v39, v16, v17
	v_fma_f32 v47, -v44, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v47, v48
	v_fmac_f32_e32 v16, v37, v38
	v_div_scale_f32 v37, s3, v135, v35, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v39, v16, v17
	v_fma_f32 v39, -v34, v18, v40
	v_mul_f32_e32 v46, v37, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v17, v38, v16
	v_fmac_f32_e32 v18, v39, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v41, v46, v37
	v_rcp_f32_e32 v38, v49
	v_div_scale_f32 v39, s0, v132, v28, v132
	v_div_fixup_f32 v50, v16, v19, v50
	v_fma_f32 v16, -v34, v18, v40
	v_dual_fmac_f32 v46, v17, v42 :: v_dual_mul_f32 v17, v39, v15
	v_div_scale_f32 v19, s4, v67, v29, v67
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v34, -v49, v38, 1.0
	v_div_fmas_f32 v16, v16, v33, v18
	v_fma_f32 v18, -v41, v46, v37
	v_fma_f32 v33, -v36, v17, v39
	v_mul_f32_e32 v37, v19, v48
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v38, v34, v38
	v_div_scale_f32 v34, s1, v131, v30, v131
	v_div_fixup_f32 v40, v16, v20, v85
	v_fmac_f32_e32 v17, v33, v15
	v_div_fmas_f32 v18, v18, v42, v46
	v_fma_f32 v16, -v44, v37, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v20, v34, v38
	v_fma_f32 v9, -v36, v17, v39
	v_div_fixup_f32 v33, v18, v35, v135
	v_fmac_f32_e32 v37, v16, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v16, -v49, v20, v34
	v_div_fmas_f32 v9, v9, v15, v17
	v_fma_f32 v15, -v44, v37, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v20, v16, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v48, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v16, -v49, v20, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v152, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v15, v29, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v9, v28, v132
	v_div_fmas_f32 v8, v16, v38, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	v_ldexp_f32 v6, v17, v18
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v122
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v8, v30, v131
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v154, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v15
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v150, v10 :: v_dual_mul_f32 v18, v149, v13
	v_mul_f32_e32 v15, v147, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v11, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v14, v142, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v148, v12
	v_mul_f32_e32 v12, v146, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v6, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v10, v11
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v139, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v0, v0, v127
	v_div_scale_f32 v37, vcc_lo, v127, v0, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v10, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v138, v50
	v_mul_f32_e32 v13, v141, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v31, v31, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v8, -v34, v35, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v36, 1.0, v5 :: v_dual_mul_f32 v5, v134, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v39, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v6, v130, v29 :: v_dual_fmac_f32 v35, v8, v35
	v_mul_f32_e32 v8, v136, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v36, v36, v120
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v37, v35
	v_fma_f32 v44, -v32, v38, 1.0
	v_div_scale_f32 v33, s0, v122, v31, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v34, v42, v37
	v_fmac_f32_e32 v42, v43, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v34, v42, v37
	v_div_scale_f32 v37, s1, v120, v36, v120
	v_div_fmas_f32 v29, v29, v35, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v129, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v29, v0, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v137, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v126
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v41, v40, 1.0
	v_fmac_f32_e32 v40, v39, v40
	v_div_scale_f32 v39, null, v28, v28, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v43, v37, v40
	v_rcp_f32_e32 v35, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v41, v43, v37
	v_fmac_f32_e32 v43, v29, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v39, v35, 1.0
	v_fmac_f32_e32 v38, v44, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v41, v43, v37
	v_fmac_f32_e32 v35, v30, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v29, v29, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v34, v33, v38 :: v_dual_add_f32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v32, v34, v33
	v_div_scale_f32 v44, null, v29, v29, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v42, v38
	v_fma_f32 v32, -v32, v34, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v38, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, s3, v119, v28, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v32, v31, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v42, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v39, v34, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v37, v40, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v25, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v33, v35
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v30, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v192
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v37, v36, v120
	v_fma_f32 v33, -v39, v34, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v120, v143, v31 :: v_dual_mul_f32 v25, v133, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v35, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v44, v30, 1.0
	v_div_scale_f32 v35, s0, v126, v29, v126
	v_div_fixup_f32 v22, v33, v28, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v36, v36, v38
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v119, v140, v0 :: v_dual_fmac_f32 v30, v39, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v33, 0xbfb8aa3b, v123 :: v_dual_add_f32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v38, v35, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v36, v36, v121
	v_fma_f32 v40, -v44, v38, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v31, v41
	v_fmac_f32_e32 v38, v40, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v33, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v44, v38, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v41, v31, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v30, v35, v30, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v193
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v28, v31
	v_div_scale_f32 v37, null, v32, v32, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v29, v30, v29, v126
	v_div_scale_f32 v33, null, v0, v0, v123
	v_rcp_f32_e32 v34, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, s0, v121, v36, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v35, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v111, v111, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v117
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v37, v34, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v39, v34
	v_div_scale_f32 v39, s1, v125, v32, v125
	v_mul_f32_e32 v40, v39, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v37, v40, v39
	v_fmac_f32_e32 v40, v42, v34
	v_fma_f32 v42, -v33, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v30, -v37, v40, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v42, v35
	v_div_fmas_f32 v30, v30, v34, v40
	v_mul_f32_e32 v40, v28, v31
	v_div_scale_f32 v42, s1, v123, v0, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v32, v125
	v_fma_f32 v32, -v41, v40, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s3
	v_exp_f32_e32 v39, v39
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v32, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v38, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v42, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v144, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v41, v40, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v33, v37, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v39, v34
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v32, v32, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v41, v35 :: v_dual_add_f32 v34, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v43
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v112, v112, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v34, v34, v116
	v_div_fmas_f32 v28, v28, v31, v40
	v_fma_f32 v31, -v33, v37, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v44
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_fmas_f32 v31, v31, v35, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v109
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, vcc_lo, v117, v32, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v43, v45, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v41, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v31, v0, v123
	v_fma_f32 v38, -v44, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v37, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v35, 1.0, v35 :: v_dual_mul_f32 v114, v114, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v38, v42
	v_div_scale_f32 v38, s0, v116, v34, v116
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v0, -v39, v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v35, v35, v115
	v_div_fixup_f32 v28, v28, v36, v121
	v_mul_f32_e32 v36, v38, v42
	v_fmac_f32_e32 v40, v0, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v45, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v185
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v113, v113, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v31, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v44, v36, v38
	v_fma_f32 v29, -v39, v40, v37
	v_div_scale_f32 v33, s1, v115, v35, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v0, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v43, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v41, v45, 1.0
	v_div_scale_f32 v30, null, v28, v28, v109
	v_fma_f32 v31, -v44, v36, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v45, v0, v45
	v_rcp_f32_e32 v0, v30
	v_div_fmas_f32 v31, v31, v42, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v98
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v32, v117
	v_mul_f32_e32 v32, v33, v45
	v_div_fixup_f32 v31, v31, v34, v116
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, s0, v109, v28, v109
	v_fma_f32 v36, -v30, v0, 1.0
	v_fma_f32 v38, -v41, v32, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v97
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v103, v103, v29 :: v_dual_mul_f32 v104, v104, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v36, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	v_ldexp_f32 v34, v34, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v38, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v40, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v41, v32, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v30, v37, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v34, v34, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	v_ldexp_f32 v36, v39, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v41
	v_fmac_f32_e32 v37, v43, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v32, v33, v45, v32
	v_fma_f32 v30, -v30, v37, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v36
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v42, v38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v41, v39, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v32, v32, v35, v115
	v_div_fmas_f32 v0, v30, v0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, vcc_lo, v98, v34, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v0, v28, v109
	v_div_scale_f32 v40, null, v33, v33, v97
	v_mul_f32_e32 v35, v38, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v105, v105, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v106, v106, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v30, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v40
	v_fma_f32 v43, -v41, v35, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v35, v43, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v0, v0, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v29, -v41, v35, v38
	v_fma_f32 v42, -v40, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v29, v29, v39, v35
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, s0, v97, v33, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v34, v98
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v36, 1.0, v36 :: v_dual_mul_f32 v31, v42, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v28, null, v36, v36, v95
	v_fma_f32 v38, -v40, v31, v42
	v_div_scale_f32 v41, s1, v95, v36, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v30, v28
	v_fmac_f32_e32 v31, v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v40, v31, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, s3, v96, v0, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v28, v30, 1.0
	v_div_fmas_f32 v31, v34, v37, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v32, v30
	v_rcp_f32_e32 v32, v43
	v_div_fixup_f32 v31, v31, v33, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v41, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v38, v35
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v102
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v28, v39, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v43, v32, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v40, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v44, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v28, v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v34, v42, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v35, v35, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v30, v39
	v_fma_f32 v40, -v43, v34, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v36, v95
	v_fmac_f32_e32 v34, v40, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v95, v110, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v97, v118, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v43, v34, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v30, v30, v38
	v_ldexp_f32 v37, v40, v37
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v101
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v42, v32, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v41, v39, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v32, v0, v96
	v_div_scale_f32 v38, null, v34, v34, v107
	v_fmac_f32_e32 v39, v37, v39
	v_div_scale_f32 v37, vcc_lo, v108, v35, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v38
	v_div_scale_f32 v44, null, v30, v30, v102
	v_dual_mul_f32 v45, v37, v39 :: v_dual_mul_f32 v98, v124, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v43, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v44
	v_div_scale_f32 v28, s0, v107, v34, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v33, -v41, v45, v37
	v_fma_f32 v36, -v38, v42, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v128, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v45, v33, v39 :: v_dual_fmac_f32 v42, v36, v42
	v_fma_f32 v33, -v44, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v41, v45, v37
	v_div_scale_f32 v37, null, v0, v0, v101
	v_mul_f32_e32 v36, v28, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v33, v32
	v_div_fmas_f32 v31, v31, v39, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v33, s1, v102, v30, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v38, v36, v28
	v_div_fixup_f32 v29, v31, v35, v108
	v_mul_f32_e32 v41, v33, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v40, v42
	v_fma_f32 v35, -v37, v39, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v44, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v38, v36, v28
	v_fmac_f32_e32 v39, v35, v39
	v_div_scale_f32 v40, s3, v101, v0, v101
	v_fmac_f32_e32 v41, v31, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v45
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v33, -v44, v41, v33
	v_div_fmas_f32 v28, v28, v42, v36
	v_mul_f32_e32 v36, v40, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v87, v87, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v31, v31, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v37, v36, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v33, v32, v41
	v_fmac_f32_e32 v36, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v32, v30, v102
	v_fma_f32 v32, -v37, v36, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v31, v31, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v38, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v39, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v89, v89, v30
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v32, v0, v101
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v33, v33, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v45, v35, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v90, v90, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, s0, v76, v31, v76
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v40, v38, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v36, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v39, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v41, v36
	v_div_scale_f32 v41, s1, v75, v33, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v34, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v88, v88, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v45, v40, v38
	v_div_scale_f32 v42, null, v0, v0, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v34, v35
	v_mul_f32_e32 v34, v41, v36
	v_rcp_f32_e32 v28, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v45, v40, v38
	v_fma_f32 v38, -v37, v34, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v30, v30, v35, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v38, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v32, -v42, v28, 1.0
	v_div_scale_f32 v35, null, v29, v29, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v31, v76
	v_fma_f32 v31, -v37, v34, v41
	v_fmac_f32_e32 v28, v32, v28
	v_div_scale_f32 v32, s0, v68, v0, v68
	v_rcp_f32_e32 v37, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v40, v32, v28
	v_div_fmas_f32 v31, v31, v36, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	v_exp_f32_e32 v39, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v35, v37, 1.0
	v_div_fixup_f32 v31, v31, v33, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v42, v40, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s1, v69, v29, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v33, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v39, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v38, v41, v37 :: v_dual_fmac_f32 v43, 0xbfb8aa3b, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v42, v40, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v35, v38, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v34, v36, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v36, null, v33, v33, v100
	v_fmac_f32_e32 v38, v42, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v36
	v_div_fmas_f32 v28, v32, v28, v40
	v_fma_f32 v32, -v35, v38, v41
	v_div_scale_f32 v44, null, v34, v34, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v28, v0, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v44
	v_div_fmas_f32 v32, v32, v37, v38
	v_fma_f32 v45, -v36, v43, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, vcc_lo, v100, v33, v100
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v45, v43
	v_div_fixup_f32 v29, v32, v29, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v44, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v37, 1.0, v37 :: v_dual_mul_f32 v40, v38, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v82, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v39, v41
	v_div_scale_f32 v39, s0, v99, v34, v99
	v_fma_f32 v28, -v36, v40, v38
	v_div_scale_f32 v42, null, v37, v37, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v29, v39, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v81, v81, v0 :: v_dual_fmac_f32 v40, v28, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v45, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v32, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v44, v29, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v79, v79, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v36, v40, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v80, v80, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v29, v28, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, s1, v94, v37, v94
	v_div_fmas_f32 v30, v30, v43, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v42, v45, 1.0
	v_div_scale_f32 v31, null, v0, v0, v93
	v_fma_f32 v32, -v44, v29, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v45, v28, v45
	v_rcp_f32_e32 v28, v31
	v_div_fmas_f32 v29, v32, v41, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v92
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v33, v100
	v_mul_f32_e32 v32, v35, v45
	v_div_fixup_f32 v29, v29, v34, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, s0, v93, v0, v93
	v_fma_f32 v33, -v31, v28, 1.0
	v_fma_f32 v38, -v42, v32, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v91 :: v_dual_mul_f32 v72, v72, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v71, v71, v30 :: v_dual_fmac_f32 v28, v33, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v171
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v34, v34, v36
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v38, v45
	v_mul_f32_e32 v36, v40, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v42, v32, v35
	v_fma_f32 v43, -v31, v36, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v34, v34, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v39, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v43, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	v_exp_f32_e32 v41, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v31, v36, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v33, v33, v91
	v_div_fmas_f32 v32, v35, v45, v32
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v41, v38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v42, v39, 1.0
	v_div_fmas_f32 v28, v31, v28, v36
	v_rcp_f32_e32 v36, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, vcc_lo, v92, v34, v92
	v_div_fixup_f32 v32, v32, v37, v94
	v_div_fixup_f32 v0, v28, v0, v93
	v_div_scale_f32 v28, null, v35, v35, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v37, v38, v39
	v_fma_f32 v41, -v40, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v74, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v31, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v28
	v_fma_f32 v43, -v42, v37, v38
	v_fmac_f32_e32 v36, v41, v36
	v_div_scale_f32 v41, s0, v91, v33, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v37, v43, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v73, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v41, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v169
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v28, v31, 1.0
	v_div_scale_f32 v43, null, v0, v0, v155
	v_fma_f32 v30, -v42, v37, v38
	v_fma_f32 v38, -v40, v29, v41
	v_fmac_f32_e32 v31, v32, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v32, v43
	v_div_scale_f32 v42, s1, v145, v35, v145
	v_fmac_f32_e32 v29, v38, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v30, v39, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v42, v31
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v43, v32, 1.0
	v_div_fixup_f32 v30, v30, v34, v92
	v_fma_f32 v34, -v40, v29, v41
	v_div_scale_f32 v41, s3, v155, v0, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v44, v32
	v_fma_f32 v40, -v28, v39, v42
	v_div_fmas_f32 v29, v34, v36, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, s4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v34, v41, v32 :: v_dual_fmac_f32 v39, v40, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v37, v38, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v43, v34, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v28, v39, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v37, 1.0, v37 :: v_dual_fmac_f32 v34, v40, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v44
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v42, null, v37, v37, v58
	v_div_fmas_f32 v28, v28, v31, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v45
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v42
	v_fma_f32 v41, -v43, v34, v41
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v40, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v33, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v28, v28, v35, v145
	v_div_fmas_f32 v32, v41, v32, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v42, v39, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v32, v0, v155
	v_div_scale_f32 v38, null, v34, v34, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, vcc_lo, v58, v37, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v38
	v_div_scale_f32 v44, null, v31, v31, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v45, v36, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v64, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v66, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v42, v45, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v65, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v38, v41, 1.0
	v_div_scale_f32 v28, s0, v57, v34, v57
	v_fmac_f32_e32 v45, v33, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v43, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v35, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v44, v32, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v63, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v42, v45, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v35, v28, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, s1, v56, v31, v56
	v_div_fmas_f32 v29, v29, v39, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v0, v0, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v42, v33, v32
	v_fma_f32 v40, -v38, v35, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v44, v42, v33
	v_fmac_f32_e32 v35, v40, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v199
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v37, v58
	v_fmac_f32_e32 v42, v30, v32
	v_fma_f32 v28, -v38, v35, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v45
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v36, v39, 1.0
	v_div_scale_f32 v40, s3, v55, v0, v55
	v_fma_f32 v33, -v44, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v38, 0xbfb8aa3b, v84 :: v_dual_fmac_f32 v39, v37, v39
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v38, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v41, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v35, v40, v39 :: v_dual_add_f32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v28, v34, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v30, v30, v199
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v41, -v36, v35, v40
	v_div_fmas_f32 v32, v33, v32, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v38, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v78 :: v_dual_fmac_f32 v35, v41, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v32, v31, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v36, v35, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v215, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v33, v33, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v45, v37, 1.0
	v_div_fmas_f32 v32, v32, v39, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v56, v217, v28 :: v_dual_fmac_f32 v37, v38, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s0, v199, v30, v199
	v_div_fixup_f32 v0, v32, v0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v34, v34, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v36, v35, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v58, v203, v0 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v83
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v45, v40, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v41, v35
	v_div_scale_f32 v41, s1, v84, v33, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v0, v0, v78
	v_fmac_f32_e32 v40, v34, v37
	v_mul_f32_e32 v34, v41, v35
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v28, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v212, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v45, v40, v38
	v_fma_f32 v38, -v36, v34, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v39, v32
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v37, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v34, v38, v35 :: v_dual_add_f32 v29, 1.0, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v42, v28, 1.0
	v_div_fixup_f32 v30, v31, v30, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v36, v34, v41
	v_div_scale_f32 v36, null, v29, v29, v83
	v_fmac_f32_e32 v28, v32, v28
	v_div_scale_f32 v32, s0, v78, v0, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v77
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v36
	v_div_fmas_f32 v31, v31, v35, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v32, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v33, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v42, v40, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v159
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v36, v37, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v27
	v_exp_f32_e32 v35, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v33, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v39, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s1, v83, v29, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v42, v40, v32
	v_mul_f32_e32 v38, v41, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v35, v34
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v33, v33, v77
	v_fma_f32 v42, -v36, v38, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v35
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v38, v42, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v34, v34, v70
	v_div_fmas_f32 v28, v32, v28, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v36, v38, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v43
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v44, -v35, v27, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v28, v0, v78
	v_div_fmas_f32 v32, v32, v37, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v42, v39
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v44, v27
	v_div_scale_f32 v38, vcc_lo, v77, v33, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v43, v41, 1.0
	v_div_fixup_f32 v29, v32, v29, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v37, 1.0, v37 :: v_dual_mul_f32 v40, v38, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v39, v41
	v_div_scale_f32 v39, s0, v70, v34, v70
	v_div_scale_f32 v42, null, v37, v37, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v35, v40, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v238, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v40, v28, v27 :: v_dual_mul_f32 v47, v233, v30
	v_fma_f32 v28, -v43, v29, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v236, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v32, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v35, v40, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v28, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v28, -v42, v44, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v234, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v30, v27, v40
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v30, -v43, v29, v39
	v_fmac_f32_e32 v44, v28, v44
	v_div_scale_f32 v28, s1, v52, v37, v52
	v_div_fixup_f32 v27, v27, v33, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v30, v41, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v29, v28, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v0, v0, v51
	v_fma_f32 v24, -v42, v29, v28
	v_div_fixup_f32 v26, v26, v34, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v153
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v24, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v35
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v62
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v31, v30, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v42, v29, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v54
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v23, v30
	v_div_scale_f32 v38, s0, v51, v0, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v53
	v_ldexp_f32 v24, v24, v32
	v_exp_f32_e32 v32, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v21, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v44, v29
	v_mul_f32_e32 v29, v38, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v31, v29, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v24, v24, v153
	v_div_fixup_f32 v28, v28, v37, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v29, v36, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v33, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v34
	v_div_scale_f32 v33, null, v21, v21, v62
	v_fma_f32 v31, -v31, v29, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v32, v32, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v33
	v_div_fmas_f32 v29, v31, v30, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v30, null, v23, v23, v53
	v_rcp_f32_e32 v39, v36
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v34, v35, 1.0
	v_div_scale_f32 v31, vcc_lo, v153, v24, v153
	v_rcp_f32_e32 v43, v30
	v_div_fixup_f32 v0, v29, v0, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v35, v37, v35
	v_fma_f32 v37, -v33, v38, 1.0
	v_div_scale_f32 v51, s3, v53, v23, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v36, v39, 1.0
	v_mul_f32_e32 v44, v31, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v38, v37, v38
	v_div_scale_f32 v37, s0, v62, v21, v62
	v_fma_f32 v40, -v30, v43, 1.0
	v_fmac_f32_e32 v39, v29, v39
	v_div_scale_f32 v29, s1, v54, v32, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v229, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v34, v44, v31
	v_mul_f32_e32 v45, v37, v38
	v_fmac_f32_e32 v43, v40, v43
	v_dual_mul_f32 v46, v29, v39 :: v_dual_mul_f32 v41, v228, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v0, v35
	v_fma_f32 v0, -v33, v45, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v51, v43
	v_fma_f32 v28, -v36, v46, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v224, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v34, v44, v31
	v_fmac_f32_e32 v45, v0, v38
	v_fma_f32 v0, -v30, v52, v51
	v_fmac_f32_e32 v46, v28, v39
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v31, |v82|, |v15|, |v14|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v35, v44
	v_fma_f32 v28, -v33, v45, v37
	v_fmac_f32_e32 v52, v0, v43
	v_fma_f32 v0, -v36, v46, v29
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v24, v26, v24, v153
	v_div_fmas_f32 v28, v28, v38, v45
	v_fma_f32 v29, -v30, v52, v51
	s_mov_b32 vcc_lo, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v26, |v119|, |v120|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v39, v46
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v39, v202, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v43, v52
	v_div_fixup_f32 v21, v28, v21, v62
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v25|, |v111|, |v112|
	v_max3_f32 v28, |v103|, |v104|, |v105|
	v_max3_f32 v30, |v79|, |v80|, |v81|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v29, v23, v53
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v29, |v106|, |v19|, |v17|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v32, v54
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v32, |v71|, |v72|
	v_max3_f32 v33, |v73|, |v63|, |v64|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v59, v23
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, v26, |v22|, v27
	v_max3_f32 v26, v28, v29, |v18|
	v_max_f32_e64 v27, |v95|, |v96|
	v_max3_f32 v28, |v97|, |v87|, |v88|
	v_max3_f32 v29, |v89|, |v90|, |v16|
	v_max3_f32 v36, |v55|, |v56|, |v57|
	v_max3_f32 v37, |v58|, |v11|, |v9|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v201, v0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, v27, |v98|, v28
	v_max3_f32 v28, v30, v31, |v13|
	v_max3_f32 v0, |v113|, |v114|, |v20|
	v_max3_f32 v30, |v65|, |v66|, |v12|
	v_max3_f32 v31, v32, |v74|, v33
	v_max3_f32 v36, v36, v37, |v10|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v33, v61, v21 :: v_dual_mul_f32 v32, v60, v24
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, v27, v29, v28
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v0, v23, v0, v26
	v_max3_f32 v23, v31, v30, v36
	v_max3_f32 v28, |v32|, |v33|, |v34|
	v_max3_f32 v29, |v35|, |v5|, |v6|
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v30, v21, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v49|, |v39|, |v40|
	v_max3_f32 v27, |v41|, |v42|, |v8|
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v31, v23, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v28, v28, v29, |v7|
	v_dual_max_f32 v29, v30, v30 :: v_dual_and_b32 v36, 3, v195
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v37, 0x80, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v30, v31, v31 :: v_dual_max_f32 v29, v21, v29
	v_max_f32_e64 v24, |v47|, |v48|
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v21, v36, 9, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v30, v23, v30
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v43, 3, v37
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, v24, |v50|, v26
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v26, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v31, v24, v27, v28
	v_max_f32_e32 v26, v26, v26
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v24, 5, v36
	v_and_b32_e32 v27, 0x60, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v23, v31, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v0, v26
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 4, v195
	s_waitcnt vmcnt(3)
	v_and_or_b32 v2, 0x680, v2, v24
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v23, v23, v23 :: v_dual_lshlrev_b32 v26, 1, v37
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v38, v24, v27
	v_lshl_add_u32 v21, v0, 2, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v2, v2, v27
	v_lshl_add_u32 v44, v0, 6, 0
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v31, v23
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v37, 0, v37
	v_lshl_add_u32 v21, v1, 4, v21
	v_lshlrev_b32_e32 v1, 3, v1
	v_add3_u32 v2, v44, v43, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v21, v21, v26, v38
	ds_store_b128 v21, v[28:31]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v2, v28 :: v_dual_mov_b32 v21, v29
	v_dual_mov_b32 v23, v30 :: v_dual_max_f32 v28, v28, v28
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v29, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v23, v23 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v38, v31, v31
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v31, v31 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v2, v28, v2
	v_dual_max_f32 v21, v29, v21 :: v_dual_max_f32 v28, v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v29, v31, v31 :: v_dual_mov_b32 v30, v2
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v31, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v23, v28, v23 :: v_dual_max_f32 v28, v38, v29
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v30, v30 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v31, v31 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v29, v23 :: v_dual_mov_b32 v38, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v31, v31, v31
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v30 :: v_dual_max_f32 v21, v21, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v30, v38, v38
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v31, v2 :: v_dual_mov_b32 v38, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v23, v23, v29
	v_max_f32_e32 v43, v28, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v30, v23
	v_mov_b32_e32 v44, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v28, v31, v31 :: v_dual_max_f32 v29, v38, v38
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v30, v30 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v44, v44 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshrrev_b32_e32 v38, 1, v27
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v28, v2, v28 :: v_dual_max_f32 v29, v21, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, v30, v30 :: v_dual_max_f32 v21, v44, v44
	v_max_f32_e32 v30, v23, v2
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v2, v36, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v31, v43, v21 :: v_dual_lshlrev_b32 v0, 5, v0
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v21, v37, v38, v1
.Ltmp61:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v23, 4, v198
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v2, v0, v1
	ds_store_b128 v21, v[28:31]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp63:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v37, 32, v23
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[28:31], v0
.Ltmp65:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v28, v28
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v29, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v2, 0x2b8cbccc, v0
	v_max_f32_e32 v30, 0x2b8cbccc, v30
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v29, 0x2b8cbccc, v29
	v_max_f32_e32 v31, 0x2b8cbccc, v31
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v38, vcc_lo, v2, 0x40e00000, v2
	v_div_scale_f32 v43, null, 0x40e00000, 0x40e00000, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v28, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s34, v0
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v51, null, 0x40e00000, 0x40e00000, v29
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v52, null, 0x40e00000, 0x40e00000, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v36, -v21, v28, 1.0
	v_fma_f32 v46, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v36, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s0, s34, v37
	v_add_co_ci_u32_e64 v37, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v44, v38, v28
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v45, v46, v45
	v_div_scale_f32 v46, s7, v30, 0x40e00000, v30
	v_fma_f32 v0, -v21, v44, v38
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[36:37]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v44, v0, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s4, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v21, -v21, v44, v38
	v_rcp_f32_e32 v38, v51
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[36:37]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v37.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v21, v21, v28, v44
	v_mul_f32_e32 v28, v46, v45
	v_rcp_f32_e32 v44, v52
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v2, v21, 0x40e00000, v2
	v_fma_f32 v36, -v51, v38, 1.0
	v_fma_f32 v21, -v43, v28, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v36, v38
	v_div_scale_f32 v36, s8, v29, 0x40e00000, v29
	v_fmac_f32_e32 v28, v21, v45
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v21.l, v2.h
	v_mov_b16_e32 v21.h, v37.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v53, -v52, v44, 1.0
	v_mul_f32_e32 v54, v36, v38
	v_fma_f32 v0, -v43, v28, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v44, v53, v44 :: v_dual_and_b32 v1, 1, v21
	v_div_scale_f32 v53, s9, v31, 0x40e00000, v31
	v_fma_f32 v43, -v51, v54, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v21, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v28, v0, v45, v28
	v_mul_f32_e32 v46, v53, v44
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v54, v43, v38
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v60, 0xffff0000, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v28, v28, 0x40e00000, v30
	v_fma_f32 v2, -v52, v46, v53
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s34, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v30, -v51, v54, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v43, null, v60, v60, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v46, v2, v44
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s7
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v30, v38, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v30, v43
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v36, -v52, v46, v53
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v38, null, v60, v60, v120
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v36, v44, v46
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v37.l, v28.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v45, v38
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[0:1]
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v44, -v43, v30, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v29, v29, 0x40e00000, v31
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v31.l, v2.h
	v_mov_b16_e32 v31.h, v37.h
	v_and_b32_e32 v36, 1, v37
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v30, v44, v30
	v_div_scale_f32 v44, vcc_lo, v119, v60, v119
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v46, null, v60, v60, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v31, v44, v30
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v28, v36, 0x7fff
	v_mov_b16_e32 v37.l, v29.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v36, -v38, v45, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v28, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v43, v31, v44
	v_rcp_f32_e32 v51, v46
	v_div_scale_f32 v52, null, v60, v60, v25
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v37, 1, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v45, v36, v45
	v_div_scale_f32 v53, s9, v120, v60, v120
	v_fmac_f32_e32 v31, v0, v30
	v_rcp_f32_e32 v0, v52
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v29, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v29, v53, v45
	v_fma_f32 v37, -v46, v51, 1.0
	v_fma_f32 v43, -v43, v31, v44
	v_div_scale_f32 v59, s10, v22, v60, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v38, v29, v53
	v_fmac_f32_e32 v51, v37, v51
	v_div_scale_f32 v61, null, v60, v60, v111
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v37, -v52, v0, 1.0
	v_div_fmas_f32 v30, v43, v30, v31
	v_fmac_f32_e32 v29, v44, v45
	v_mul_f32_e32 v31, v59, v51
	v_rcp_f32_e32 v43, v61
	v_fmac_f32_e32 v0, v37, v0
	v_div_scale_f32 v44, s11, v25, v60, v25
	v_div_scale_f32 v62, null, v60, v60, v112
	v_div_fixup_f32 v37, v30, v60, v119
	v_fma_f32 v30, -v38, v29, v53
	v_fma_f32 v38, -v46, v31, v59
	v_mul_f32_e32 v53, v44, v0
	v_rcp_f32_e32 v67, v62
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v68, -v61, v43, 1.0
	v_div_fmas_f32 v29, v30, v45, v29
	v_fmac_f32_e32 v31, v38, v51
	v_fma_f32 v30, -v52, v53, v44
	v_div_scale_f32 v45, s9, v111, v60, v111
	v_fmac_f32_e32 v43, v68, v43
	v_div_fixup_f32 v38, v29, v60, v120
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v68, -v62, v67, 1.0
	v_fma_f32 v29, -v46, v31, v59
	v_fmac_f32_e32 v53, v30, v0
	v_div_scale_f32 v59, null, v60, v60, v113
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v30, v45, v43
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v46, s12, v112, v60, v112
	v_div_fmas_f32 v29, v29, v51, v31
	v_fma_f32 v31, -v52, v53, v44
	v_rcp_f32_e32 v51, v59
	v_div_scale_f32 v68, null, v60, v60, v114
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v44, -v61, v30, v45
	v_mul_f32_e32 v52, v46, v67
	v_div_fmas_f32 v0, v31, v0, v53
	v_rcp_f32_e32 v31, v68
	v_div_fixup_f32 v22, v29, v60, v22
	v_fmac_f32_e32 v30, v44, v43
	v_fma_f32 v44, -v62, v52, v46
	v_fma_f32 v53, -v59, v51, 1.0
	v_div_fixup_f32 v25, v0, v60, v25
	v_div_scale_f32 v29, s10, v113, v60, v113
	v_fma_f32 v0, -v61, v30, v45
	v_fmac_f32_e32 v52, v44, v67
	v_fmac_f32_e32 v51, v53, v51
	v_fma_f32 v44, -v68, v31, 1.0
	v_div_scale_f32 v53, null, v60, v60, v20
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v45, v29, v51
	v_div_fmas_f32 v0, v0, v43, v30
	v_fma_f32 v30, -v62, v52, v46
	v_fmac_f32_e32 v31, v44, v31
	v_rcp_f32_e32 v61, v53
	v_div_scale_f32 v46, s9, v114, v60, v114
	v_div_scale_f32 v62, null, v60, v60, v103
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v43, v0, v60, v111
	v_div_fmas_f32 v30, v30, v67, v52
	v_fma_f32 v52, -v59, v45, v29
	v_mul_f32_e32 v67, v46, v31
	v_rcp_f32_e32 v70, v62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v69, -v53, v61, 1.0
	v_div_fixup_f32 v44, v30, v60, v112
	v_fmac_f32_e32 v45, v52, v51
	v_fma_f32 v0, -v68, v67, v46
	v_div_scale_f32 v52, null, v60, v60, v104
	v_fmac_f32_e32 v61, v69, v61
	v_div_scale_f32 v30, s11, v20, v60, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v69, -v62, v70, 1.0
	v_fma_f32 v29, -v59, v45, v29
	v_fmac_f32_e32 v67, v0, v31
	v_rcp_f32_e32 v59, v52
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v0, v30, v61
	v_fmac_f32_e32 v70, v69, v70
	v_div_scale_f32 v69, s12, v103, v60, v103
	v_div_fmas_f32 v29, v29, v51, v45
	v_fma_f32 v45, -v68, v67, v46
	v_div_scale_f32 v75, null, v60, v60, v105
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v46, -v53, v0, v30
	v_mul_f32_e32 v51, v69, v70
	v_fma_f32 v68, -v52, v59, 1.0
	v_div_fmas_f32 v31, v45, v31, v67
	v_rcp_f32_e32 v67, v75
	v_fmac_f32_e32 v0, v46, v61
	v_fma_f32 v76, -v62, v51, v69
	v_fmac_f32_e32 v59, v68, v59
	v_div_scale_f32 v68, s9, v104, v60, v104
	v_div_fixup_f32 v45, v29, v60, v113
	v_div_fixup_f32 v46, v31, v60, v114
	v_fma_f32 v29, -v53, v0, v30
	v_fmac_f32_e32 v51, v76, v70
	v_mul_f32_e32 v30, v68, v59
	v_fma_f32 v31, -v75, v67, 1.0
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v29, v61, v0
	v_fma_f32 v29, -v62, v51, v69
	v_fma_f32 v53, -v52, v30, v68
	v_fmac_f32_e32 v67, v31, v67
	v_div_scale_f32 v61, s10, v105, v60, v105
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v30, v53, v59
	v_div_fmas_f32 v29, v29, v70, v51
	v_mul_f32_e32 v53, v61, v67
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, null, v83, v83, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v51, v29, v60, v103
	v_fma_f32 v29, -v75, v53, v61
	v_div_scale_f32 v92, null, v83, v83, v79
	v_div_scale_f32 v94, null, v83, v83, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v29, v67
	v_div_scale_f32 v76, null, v60, v60, v106
	v_div_scale_f32 v62, null, v60, v60, v19
	v_div_fixup_f32 v20, v0, v60, v20
	v_rcp_f32_e32 v31, v76
	v_fma_f32 v0, -v52, v30, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v62
	v_div_scale_f32 v68, s11, v106, v60, v106
	v_div_scale_f32 v77, null, v60, v60, v18
	v_div_fmas_f32 v0, v0, v59, v30
	v_div_scale_f32 v59, s9, v19, v60, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v70, -v76, v31, 1.0
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v52, -v62, v69, 1.0
	v_rcp_f32_e32 v78, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v31, v70, v31
	v_div_scale_f32 v70, null, v60, v60, v17
	v_fmac_f32_e32 v69, v52, v69
	v_div_fixup_f32 v52, v0, v60, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v29, v68, v31
	v_rcp_f32_e32 v30, v70
	v_fma_f32 v0, -v75, v53, v61
	v_mul_f32_e32 v75, v59, v69
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v76, v29, v68
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v67, v53
	v_div_scale_f32 v67, s10, v17, v60, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v29, v61, v31
	v_fma_f32 v84, -v70, v30, 1.0
	v_fma_f32 v61, -v62, v75, v59
	v_div_fixup_f32 v53, v0, v60, v105
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v0, -v76, v29, v68
	v_fmac_f32_e32 v30, v84, v30
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v54, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v75, v61, v69
	v_fma_f32 v84, -v77, v78, 1.0
	v_div_fmas_f32 v0, v0, v31, v29
	v_mul_f32_e32 v61, v67, v30
	v_div_scale_f32 v68, s12, v18, v60, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v84, v78
	v_fma_f32 v29, -v62, v75, v59
	v_fma_f32 v31, -v70, v61, v67
	v_div_scale_f32 v76, null, v83, v83, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, v68, v78
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v61, v31, v30
	v_rcp_f32_e32 v31, v85
	v_div_fmas_f32 v29, v29, v69, v75
	v_fma_f32 v69, -v77, v84, v68
	v_div_fixup_f32 v59, v0, v60, v106
	v_fma_f32 v0, -v70, v61, v67
	v_rcp_f32_e32 v62, v76
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v19, v29, v60, v19
	v_div_scale_f32 v29, s9, v95, v83, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v85, v31, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v36, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v30, v61
	v_div_scale_f32 v70, null, v83, v83, v97
	v_dual_fmac_f32 v31, v67, v31 :: v_dual_fmac_f32 v84, v69, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v76, v62, 1.0
	v_div_scale_f32 v69, null, v83, v83, v98
	v_div_fixup_f32 v17, v0, v60, v17
	v_fma_f32 v30, -v77, v84, v68
	v_div_scale_f32 v68, s10, v96, v83, v96
	v_fmac_f32_e32 v62, v75, v62
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v67, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v77, v68, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v61, v29, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v85, v77, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v76, v61, v29
	v_fmac_f32_e32 v77, v0, v31
	v_div_fmas_f32 v30, v30, v78, v84
	v_rcp_f32_e32 v84, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v61, v75, v62
	v_fma_f32 v78, -v69, v67, 1.0
	v_div_scale_f32 v75, null, v83, v83, v87
	v_div_fixup_f32 v18, v30, v60, v18
	v_fma_f32 v29, -v76, v61, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v67, v78, v67
	v_div_scale_f32 v30, s11, v98, v83, v98
	v_fma_f32 v60, -v70, v84, 1.0
	v_rcp_f32_e32 v76, v75
	v_div_scale_f32 v78, s12, v97, v83, v97
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v84, v60, v84
	v_fma_f32 v60, -v85, v77, v68
	v_div_scale_f32 v85, null, v83, v83, v88
	v_div_fmas_f32 v29, v29, v62, v61
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v0, v30, v67
	v_mul_f32_e32 v62, v78, v84
	v_div_fmas_f32 v31, v60, v31, v77
	v_rcp_f32_e32 v77, v85
	v_fma_f32 v68, -v75, v76, 1.0
	v_fma_f32 v61, -v69, v0, v30
	v_fma_f32 v86, -v70, v62, v78
	v_div_fixup_f32 v60, v29, v83, v95
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v76, v68, v76
	v_fmac_f32_e32 v0, v61, v67
	v_div_scale_f32 v68, s9, v87, v83, v87
	v_div_fixup_f32 v61, v31, v83, v96
	v_fmac_f32_e32 v62, v86, v84
	v_fma_f32 v31, -v85, v77, 1.0
	v_div_scale_f32 v86, null, v83, v83, v89
	v_fma_f32 v29, -v69, v0, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v30, v68, v76 :: v_dual_fmac_f32 v77, v31, v77
	v_rcp_f32_e32 v31, v86
	v_div_scale_f32 v69, s10, v88, v83, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v29, v67, v0
	v_fma_f32 v29, -v70, v62, v78
	v_fma_f32 v67, -v75, v30, v68
	v_div_scale_f32 v70, null, v83, v83, v90
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v30, v67, v76
	v_rcp_f32_e32 v78, v70
	v_fma_f32 v91, -v86, v31, 1.0
	v_div_fmas_f32 v29, v29, v84, v62
	v_mul_f32_e32 v84, v69, v77
	v_div_fixup_f32 v62, v0, v83, v98
	v_fma_f32 v0, -v75, v30, v68
	v_fmac_f32_e32 v31, v91, v31
	v_div_scale_f32 v91, null, v83, v83, v16
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v67, v29, v83, v97
	v_fma_f32 v29, -v85, v84, v69
	v_div_scale_f32 v75, s11, v89, v83, v89
	v_fma_f32 v68, -v70, v78, 1.0
	v_div_fmas_f32 v0, v0, v76, v30
	v_rcp_f32_e32 v30, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v84, v29, v77 :: v_dual_mul_f32 v29, v75, v31
	v_fmac_f32_e32 v78, v68, v78
	v_div_scale_f32 v76, s9, v90, v83, v90
	v_div_fixup_f32 v68, v0, v83, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v85, v84, v69
	v_fma_f32 v69, -v86, v29, v75
	v_mul_f32_e32 v85, v76, v78
	v_rcp_f32_e32 v87, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v91, v30, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v29, v69, v31
	v_div_fmas_f32 v0, v0, v77, v84
	v_fma_f32 v77, -v70, v85, v76
	v_fmac_f32_e32 v30, v93, v30
	v_div_scale_f32 v84, s10, v16, v83, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v69, v0, v83, v88
	v_fma_f32 v93, -v92, v87, 1.0
	v_fma_f32 v0, -v86, v29, v75
	v_fmac_f32_e32 v85, v77, v78
	v_mul_f32_e32 v77, v84, v30
	v_div_scale_f32 v88, null, v83, v83, v80
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v86, s12, v79, v83, v79
	v_div_fmas_f32 v0, v0, v31, v29
	v_fma_f32 v31, -v91, v77, v84
	v_rcp_f32_e32 v93, v88
	v_fma_f32 v29, -v70, v85, v76
	v_mul_f32_e32 v76, v86, v87
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v77, v31, v30
	v_rcp_f32_e32 v31, v94
	v_div_fmas_f32 v29, v29, v78, v85
	v_fma_f32 v78, -v92, v76, v86
	v_div_fixup_f32 v70, v0, v83, v89
	v_fma_f32 v0, -v91, v77, v84
	v_fma_f32 v85, -v88, v93, 1.0
	v_div_fixup_f32 v75, v29, v83, v90
	v_fmac_f32_e32 v76, v78, v87
	v_div_scale_f32 v29, s9, v80, v83, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v93, v85, v93
	v_fma_f32 v78, -v94, v31, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, null, v83, v83, v82
	v_div_fmas_f32 v0, v0, v30, v77
	v_fma_f32 v30, -v92, v76, v86
	v_mul_f32_e32 v77, v29, v93
	v_fmac_f32_e32 v31, v78, v31
	v_div_scale_f32 v78, s10, v81, v83, v81
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v86, null, v83, v83, v15
	v_div_fmas_f32 v30, v30, v87, v76
	v_fma_f32 v87, -v88, v77, v29
	v_mul_f32_e32 v89, v78, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v91, v86
	v_div_fixup_f32 v16, v0, v83, v16
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v77, v87, v93
	v_fma_f32 v0, -v94, v89, v78
	v_fma_f32 v90, -v84, v85, 1.0
	v_div_scale_f32 v87, null, v83, v83, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v88, v77, v29
	v_fmac_f32_e32 v89, v0, v31
	v_div_fixup_f32 v76, v30, v83, v79
	v_fmac_f32_e32 v85, v90, v85
	v_div_scale_f32 v30, s11, v82, v83, v82
	v_fma_f32 v79, -v86, v91, 1.0
	v_rcp_f32_e32 v88, v87
	v_div_fmas_f32 v29, v29, v93, v77
	v_fma_f32 v77, -v94, v89, v78
	v_div_scale_f32 v93, null, v83, v83, v13
	s_mov_b32 vcc_lo, s10
	v_dual_mul_f32 v0, v30, v85 :: v_dual_fmac_f32 v91, v79, v91
	v_div_scale_f32 v79, s12, v15, v83, v15
	v_div_fmas_f32 v31, v77, v31, v89
	v_rcp_f32_e32 v89, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v84, v0, v30
	v_mul_f32_e32 v90, v79, v91
	v_fma_f32 v92, -v87, v88, 1.0
	v_div_fixup_f32 v77, v29, v83, v80
	v_div_scale_f32 v80, null, v54, v54, v71
	v_fmac_f32_e32 v0, v78, v85
	v_fma_f32 v94, -v86, v90, v79
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s9, v14, v83, v14
	v_div_fixup_f32 v78, v31, v83, v81
	v_fma_f32 v31, -v93, v89, 1.0
	v_fma_f32 v29, -v84, v0, v30
	v_fmac_f32_e32 v90, v94, v91
	v_mul_f32_e32 v30, v92, v88
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v89, v31, v89
	v_rcp_f32_e32 v31, v80
	v_div_fmas_f32 v0, v29, v85, v0
	v_fma_f32 v29, -v86, v90, v79
	v_fma_f32 v79, -v87, v30, v92
	v_div_scale_f32 v84, null, v54, v54, v72
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v81, s10, v13, v83, v13
	v_div_fmas_f32 v29, v29, v91, v90
	v_fmac_f32_e32 v30, v79, v88
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v90, -v80, v31, 1.0
	v_mul_f32_e32 v86, v81, v89
	v_div_fixup_f32 v79, v0, v83, v82
	v_fma_f32 v0, -v87, v30, v92
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v31, v90, v31
	v_div_scale_f32 v90, null, v54, v54, v74
	v_div_fixup_f32 v15, v29, v83, v15
	v_fma_f32 v29, -v93, v86, v81
	v_div_scale_f32 v82, s11, v71, v54, v71
	v_fma_f32 v87, -v84, v85, 1.0
	v_div_fmas_f32 v0, v0, v88, v30
	v_rcp_f32_e32 v30, v90
	v_div_scale_f32 v88, null, v54, v54, v73
	v_dual_fmac_f32 v86, v29, v89 :: v_dual_mul_f32 v29, v82, v31
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s9, v72, v54, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v14, v0, v83, v14
	v_fma_f32 v0, -v93, v86, v81
	v_fma_f32 v81, -v80, v29, v82
	v_mul_f32_e32 v91, v87, v85
	v_fma_f32 v93, -v90, v30, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v89, v86
	v_fmac_f32_e32 v29, v81, v31
	v_fma_f32 v81, -v84, v91, v87
	v_fmac_f32_e32 v30, v93, v30
	v_div_scale_f32 v86, s10, v74, v54, v74
	v_fma_f32 v89, -v88, v92, 1.0
	v_div_fixup_f32 v13, v0, v83, v13
	v_fma_f32 v0, -v80, v29, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v81, v85 :: v_dual_mul_f32 v80, v86, v30
	v_fmac_f32_e32 v92, v89, v92
	v_div_scale_f32 v81, s12, v73, v54, v73
	v_div_scale_f32 v82, null, v54, v54, v63
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v31, v29
	v_fma_f32 v29, -v84, v91, v87
	v_fma_f32 v31, -v90, v80, v86
	v_rcp_f32_e32 v83, v82
	v_mul_f32_e32 v84, v81, v92
	v_div_scale_f32 v87, null, v54, v54, v64
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v31, v30
	v_div_fmas_f32 v29, v29, v85, v91
	v_rcp_f32_e32 v31, v87
	v_fma_f32 v85, -v88, v84, v81
	v_div_fixup_f32 v71, v0, v54, v71
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v82, v83, 1.0
	v_fma_f32 v0, -v90, v80, v86
	v_div_scale_f32 v86, null, v54, v54, v65
	v_fmac_f32_e32 v84, v85, v92
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v72, v29, v54, v72
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v85, s9, v63, v54, v63
	v_fma_f32 v29, -v87, v31, 1.0
	v_div_fmas_f32 v0, v0, v30, v80
	v_fma_f32 v30, -v88, v84, v81
	v_rcp_f32_e32 v81, v86
	v_div_scale_f32 v89, null, v54, v54, v66
	v_mul_f32_e32 v80, v85, v83
	v_fmac_f32_e32 v31, v29, v31
	v_div_scale_f32 v88, s10, v64, v54, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v91, v89
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v0, v0, v54, v74
	v_div_fmas_f32 v29, v30, v92, v84
	v_fma_f32 v30, -v82, v80, v85
	v_mul_f32_e32 v84, v88, v31
	v_fma_f32 v90, -v86, v81, 1.0
	v_div_scale_f32 v74, null, v54, v54, v12
	v_div_fixup_f32 v29, v29, v54, v73
	v_fmac_f32_e32 v80, v30, v83
	v_fma_f32 v30, -v87, v84, v88
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v73, s11, v65, v54, v65
	v_fma_f32 v90, -v89, v91, 1.0
	v_fma_f32 v82, -v82, v80, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v84, v30, v31 :: v_dual_mul_f32 v85, v73, v81
	v_rcp_f32_e32 v92, v74
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s12, v66, v54, v66
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v30, v82, v83, v80
	v_fma_f32 v80, -v87, v84, v88
	v_fma_f32 v82, -v86, v85, v73
	v_mul_f32_e32 v83, v90, v91
	v_div_scale_f32 v88, null, v54, v54, v55
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v87, -v74, v92, 1.0
	v_div_fmas_f32 v31, v80, v31, v84
	v_fmac_f32_e32 v85, v82, v81
	v_rcp_f32_e32 v80, v88
	v_fma_f32 v82, -v89, v83, v90
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v84, s9, v12, v54, v12
	v_div_fixup_f32 v30, v30, v54, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v83, v82, v91
	v_div_scale_f32 v82, null, v54, v54, v56
	v_div_fixup_f32 v31, v31, v54, v64
	v_fma_f32 v63, -v86, v85, v73
	v_mul_f32_e32 v73, v84, v92
	v_fma_f32 v64, -v88, v80, 1.0
	v_rcp_f32_e32 v86, v82
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, s10, v55, v54, v55
	v_div_fmas_f32 v63, v63, v81, v85
	v_fma_f32 v81, -v89, v83, v90
	v_fma_f32 v85, -v74, v73, v84
	v_fmac_f32_e32 v80, v64, v80
	v_div_scale_f32 v89, null, v54, v54, v57
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v73, v85, v92
	v_div_fmas_f32 v64, v81, v91, v83
	v_rcp_f32_e32 v81, v89
	v_mul_f32_e32 v83, v87, v80
	v_fma_f32 v85, -v82, v86, 1.0
	v_div_fixup_f32 v63, v63, v54, v65
	v_div_fixup_f32 v64, v64, v54, v66
	v_fma_f32 v65, -v74, v73, v84
	v_fma_f32 v66, -v88, v83, v87
	v_fmac_f32_e32 v86, v85, v86
	v_div_scale_f32 v74, s11, v56, v54, v56
	v_div_scale_f32 v85, null, v54, v54, v58
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v89, v81, 1.0
	v_div_fmas_f32 v65, v65, v92, v73
	v_fmac_f32_e32 v83, v66, v80
	v_mul_f32_e32 v66, v74, v86
	v_rcp_f32_e32 v73, v85
	v_div_scale_f32 v90, null, v54, v54, v11
	v_fmac_f32_e32 v81, v84, v81
	v_div_scale_f32 v84, s9, v57, v54, v57
	v_div_fixup_f32 v12, v65, v54, v12
	v_fma_f32 v65, -v88, v83, v87
	v_fma_f32 v87, -v82, v66, v74
	v_rcp_f32_e32 v91, v90
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v88, v84, v81
	v_fma_f32 v92, -v85, v73, 1.0
	v_div_fmas_f32 v65, v65, v80, v83
	v_fmac_f32_e32 v66, v87, v86
	v_div_scale_f32 v83, s10, v58, v54, v58
	v_fma_f32 v80, -v89, v88, v84
	v_fmac_f32_e32 v73, v92, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v90, v91, 1.0
	v_div_fixup_f32 v55, v65, v54, v55
	v_fma_f32 v65, -v82, v66, v74
	v_div_scale_f32 v82, null, v54, v54, v9
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v88, v80, v81
	v_mul_f32_e32 v74, v83, v73
	v_fmac_f32_e32 v91, v87, v91
	v_div_scale_f32 v80, s12, v11, v54, v11
	v_div_fmas_f32 v65, v65, v86, v66
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v66, -v89, v88, v84
	v_fma_f32 v84, -v85, v74, v83
	v_mul_f32_e32 v87, v80, v91
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v89, null, v54, v54, v10
	v_div_fmas_f32 v66, v66, v81, v88
	v_fmac_f32_e32 v74, v84, v73
	v_fma_f32 v84, -v90, v87, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v82, v86, 1.0
	v_rcp_f32_e32 v81, v89
	v_div_fixup_f32 v56, v65, v54, v56
	v_div_fixup_f32 v57, v66, v54, v57
	v_fma_f32 v65, -v85, v74, v83
	v_fmac_f32_e32 v87, v84, v91
	v_fmac_f32_e32 v86, v88, v86
	v_div_scale_f32 v66, s9, v9, v54, v9
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, null, v36, v36, v48
	v_div_fmas_f32 v65, v65, v73, v74
	v_fma_f32 v73, -v90, v87, v80
	v_mul_f32_e32 v74, v66, v86
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v83, -v89, v81, 1.0
	v_div_scale_f32 v80, null, v36, v36, v47
	v_div_fmas_f32 v73, v73, v91, v87
	v_fma_f32 v85, -v82, v74, v66
	v_div_scale_f32 v91, null, v36, v36, v49
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, s10, v10, v54, v10
	v_div_fixup_f32 v11, v73, v54, v11
	v_rcp_f32_e32 v73, v88
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v74, v85, v86
	v_rcp_f32_e32 v84, v80
	v_mul_f32_e32 v87, v83, v81
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v58, v65, v54, v58
	v_fma_f32 v66, -v82, v74, v66
	v_div_scale_f32 v82, null, v36, v36, v50
	v_fma_f32 v65, -v89, v87, v83
	v_fma_f32 v90, -v88, v73, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v66, v66, v86, v74
	v_fma_f32 v85, -v80, v84, 1.0
	v_div_scale_f32 v86, s9, v48, v36, v48
	v_fmac_f32_e32 v87, v65, v81
	v_fmac_f32_e32 v73, v90, v73
	v_div_fixup_f32 v9, v66, v54, v9
	v_fma_f32 v66, -v91, v93, 1.0
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v74, -v89, v87, v83
	v_mul_f32_e32 v92, v86, v73
	v_div_scale_f32 v65, s11, v47, v36, v47
	v_fmac_f32_e32 v93, v66, v93
	v_div_scale_f32 v66, s10, v49, v36, v49
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v82
	v_div_fmas_f32 v74, v74, v81, v87
	v_fma_f32 v81, -v88, v92, v86
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v74, v54, v10
	v_fmac_f32_e32 v92, v81, v73
	v_mul_f32_e32 v81, v66, v93
	v_mul_f32_e32 v83, v65, v84
	v_fma_f32 v89, -v82, v85, 1.0
	v_div_scale_f32 v74, null, v36, v36, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v80, v83, v65
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s12, v50, v36, v50
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v90, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v87, v89, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v80, v83, v65
	v_fma_f32 v80, -v88, v92, v86
	v_fma_f32 v65, -v82, v87, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v54, v84, v83
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v87, v65, v85
	v_rcp_f32_e32 v65, v74
	v_div_fmas_f32 v73, v80, v73, v92
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v47, v54, v36, v47
	v_fma_f32 v80, -v82, v87, v89
	v_div_scale_f32 v82, null, v36, v36, v40
	v_div_fixup_f32 v48, v73, v36, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v85, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v83, -v74, v65, 1.0
	v_fma_f32 v85, -v91, v81, v66
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v50, v80, v36, v50
	v_div_scale_f32 v80, null, v36, v36, v41
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v82, v84, 1.0
	v_fmac_f32_e32 v65, v83, v65
	v_div_scale_f32 v83, s9, v39, v36, v39
	v_rcp_f32_e32 v86, v80
	v_fmac_f32_e32 v81, v85, v93
	v_fmac_f32_e32 v84, v73, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v83, v65
	v_div_scale_f32 v73, s11, v40, v36, v40
	v_fma_f32 v66, -v91, v81, v66
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v74, v54, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v66, v66, v93, v81
	v_mul_f32_e32 v81, v73, v84
	v_fmac_f32_e32 v54, v85, v65
	v_div_scale_f32 v85, null, v36, v36, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v49, v66, v36, v49
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v66, -v74, v54, v83
	v_fma_f32 v83, -v80, v86, 1.0
	v_fma_f32 v74, -v82, v81, v73
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v66, v65, v54
	v_div_scale_f32 v65, null, v36, v36, v8
	v_fmac_f32_e32 v86, v83, v86
	v_div_scale_f32 v83, null, v36, v36, v32
	v_fmac_f32_e32 v81, v74, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v74, v65
	v_div_scale_f32 v66, s9, v41, v36, v41
	v_rcp_f32_e32 v89, v83
	v_div_fixup_f32 v39, v54, v36, v39
	v_fma_f32 v54, -v85, v87, 1.0
	v_fma_f32 v73, -v82, v81, v73
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v90, s11, v8, v36, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v87, v54, v87
	v_div_scale_f32 v54, s10, v42, v36, v42
	v_fma_f32 v88, -v65, v74, 1.0
	v_fma_f32 v91, -v83, v89, 1.0
	v_mul_f32_e32 v82, v66, v86
	v_div_fmas_f32 v73, v73, v84, v81
	v_mul_f32_e32 v84, v54, v87
	v_fmac_f32_e32 v74, v88, v74
	v_div_scale_f32 v88, null, v36, v36, v33
	v_fmac_f32_e32 v89, v91, v89
	v_fma_f32 v81, -v80, v82, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v90, v74
	v_rcp_f32_e32 v92, v88
	v_div_scale_f32 v91, s12, v32, v36, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v86
	v_fma_f32 v81, -v85, v84, v54
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v40, v73, v36, v40
	v_fma_f32 v73, -v65, v93, v90
	v_fma_f32 v66, -v80, v82, v66
	v_fmac_f32_e32 v84, v81, v87
	v_mul_f32_e32 v80, v91, v89
	v_fma_f32 v81, -v88, v92, 1.0
	v_fmac_f32_e32 v93, v73, v74
	v_div_fmas_f32 v66, v66, v86, v82
	v_fma_f32 v54, -v85, v84, v54
	v_div_scale_f32 v82, null, v36, v36, v34
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v73, -v83, v80, v91
	v_fmac_f32_e32 v92, v81, v92
	v_div_scale_f32 v81, s9, v33, v36, v33
	v_div_fmas_f32 v54, v54, v87, v84
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v65, -v65, v93, v90
	v_fmac_f32_e32 v80, v73, v89
	v_mul_f32_e32 v73, v81, v92
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v41, v66, v36, v41
	v_div_fmas_f32 v65, v65, v74, v93
	v_fma_f32 v74, -v83, v80, v91
	v_fma_f32 v83, -v88, v73, v81
	v_div_fixup_f32 v42, v54, v36, v42
	v_fma_f32 v66, -v82, v84, 1.0
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v8, v65, v36, v8
	v_fmac_f32_e32 v73, v83, v92
	v_div_fmas_f32 v74, v74, v89, v80
	v_fmac_f32_e32 v84, v66, v84
	v_div_scale_f32 v66, null, v36, v36, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v88, v73, v81
	v_div_scale_f32 v65, null, v36, v36, v35
	v_rcp_f32_e32 v81, v66
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v32, v74, v36, v32
	v_div_scale_f32 v74, null, v36, v36, v6
	v_div_scale_f32 v86, null, v36, v36, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v66, v81, 1.0
	v_rcp_f32_e32 v88, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v87, s10, v5, v36, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v74, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v87, v81
	v_div_fmas_f32 v54, v54, v92, v73
	v_rcp_f32_e32 v73, v65
	v_div_scale_f32 v80, vcc_lo, v34, v36, v34
	v_fmac_f32_e32 v83, v90, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v33, v54, v36, v33
	v_div_scale_f32 v90, s11, v6, v36, v6
	v_mul_f32_e32 v85, v80, v84
	v_fma_f32 v92, -v86, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v65, v73, 1.0
	v_mul_f32_e32 v94, v90, v83
	v_fma_f32 v89, -v82, v85, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v73, v54, v73
	v_div_scale_f32 v54, s9, v35, v36, v35
	v_fmac_f32_e32 v85, v89, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v54, v73
	v_fma_f32 v80, -v82, v85, v80
	v_fma_f32 v82, -v66, v93, v87
	v_fmac_f32_e32 v88, v92, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v65, v91, v54
	v_div_scale_f32 v92, s12, v7, v36, v7
	v_fmac_f32_e32 v93, v82, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v91, v89, v73
	v_mul_f32_e32 v95, v92, v88
	v_fma_f32 v89, -v74, v94, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v66, -v66, v93, v87
	v_div_fmas_f32 v80, v80, v84, v85
	v_fma_f32 v54, -v65, v91, v54
	v_fma_f32 v65, -v86, v95, v92
	v_fmac_f32_e32 v94, v89, v83
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_div_fmas_f32 v54, v54, v73, v91
	v_fmac_f32_e32 v95, v65, v88
	v_fma_f32 v65, -v74, v94, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v66, v66, v81, v93
	v_fma_f32 v73, -v86, v95, v92
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v65, v65, v83, v94
	s_mov_b32 vcc_lo, s12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v73, v88, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v34, v80, v36, v34
	v_div_fixup_f32 v7, v73, v36, v7
	v_div_fixup_f32 v35, v54, v36, v35
	v_div_fixup_f32 v5, v66, v36, v5
	v_div_fixup_f32 v6, v65, v36, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v37
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v43
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v45
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v7, v7, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v59
	v_rndne_f32_e32 v54, v60
	v_rndne_f32_e32 v59, v61
	v_rndne_f32_e32 v60, v62
	v_rndne_f32_e32 v61, v67
	v_rndne_f32_e32 v62, v68
	v_rndne_f32_e32 v65, v69
	v_rndne_f32_e32 v66, v70
	v_rndne_f32_e32 v67, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v87, v47
	v_cvt_i32_f32_e32 v102, v7
	v_and_b32_e32 v7, 15, v22
	v_and_b32_e32 v47, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v195
	v_lshlrev_b32_e32 v22, 4, v197
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v76
	v_rndne_f32_e32 v69, v77
	v_rndne_f32_e32 v70, v78
	v_rndne_f32_e32 v73, v79
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_cvt_i32_f32_e32 v95, v8
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_xor_b32_e32 v22, v22, v27
	v_lshlrev_b32_e32 v27, 6, v195
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v8, 15, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v25, 6, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v73, v73, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v5, v5, s9, 0x40e00000
	v_med3_f32 v6, v6, s9, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v80, v29
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v88, v48
	v_cvt_i32_f32_e32 v89, v50
	v_cvt_i32_f32_e32 v90, v49
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v25
	v_and_or_b32 v24, 0x1b00, v27, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v75, v18
	v_cvt_i32_f32_e32 v76, v16
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v77, v15
	v_cvt_i32_f32_e32 v78, v14
	v_cvt_i32_f32_e32 v79, v13
	v_cvt_i32_f32_e32 v83, v12
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v96, v32
	v_cvt_i32_f32_e32 v97, v33
	v_cvt_i32_f32_e32 v98, v34
	v_cvt_i32_f32_e32 v81, v30
	v_cvt_i32_f32_e32 v82, v31
	v_cvt_i32_f32_e32 v84, v11
	v_cvt_i32_f32_e32 v85, v9
	v_cvt_i32_f32_e32 v86, v10
	v_cvt_i32_f32_e32 v99, v35
	v_cvt_i32_f32_e32 v100, v5
	v_cvt_i32_f32_e32 v101, v6
	v_and_b32_e32 v5, 15, v36
	v_and_b32_e32 v6, 15, v37
	v_and_b32_e32 v9, 15, v38
	v_and_b32_e32 v10, 15, v43
	v_and_b32_e32 v11, 15, v44
	v_and_b32_e32 v12, 15, v45
	v_and_b32_e32 v14, 15, v46
	v_and_b32_e32 v15, 15, v51
	v_and_b32_e32 v16, 15, v52
	v_and_b32_e32 v29, 15, v54
	v_and_b32_e32 v30, 15, v59
	v_and_b32_e32 v31, 15, v60
	v_and_b32_e32 v32, 15, v61
	v_and_b32_e32 v33, 15, v62
	v_and_b32_e32 v34, 15, v65
	v_and_b32_e32 v35, 15, v66
	v_and_b32_e32 v36, 15, v67
	v_and_b32_e32 v45, 15, v71
	v_and_b32_e32 v46, 15, v72
	v_and_b32_e32 v48, 15, v80
	v_and_b32_e32 v51, 15, v63
	v_and_b32_e32 v52, 15, v64
	v_and_b32_e32 v61, 15, v87
	v_and_b32_e32 v62, 15, v88
	v_and_b32_e32 v63, 15, v89
	v_and_b32_e32 v64, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v22, v26
	v_xad_u32 v22, v24, v198, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v91, v39
	v_cvt_i32_f32_e32 v92, v40
	v_cvt_i32_f32_e32 v93, v41
	v_cvt_i32_f32_e32 v94, v42
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v17, 15, v53
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v20, 15, v75
	v_and_b32_e32 v37, 15, v76
	v_and_b32_e32 v38, 15, v68
	v_and_b32_e32 v39, 15, v69
	v_and_b32_e32 v40, 15, v70
	v_and_b32_e32 v41, 15, v73
	v_and_b32_e32 v42, 15, v77
	v_and_b32_e32 v43, 15, v78
	v_and_b32_e32 v44, 15, v79
	v_and_b32_e32 v53, 15, v83
	v_and_b32_e32 v54, 15, v55
	v_and_b32_e32 v55, 15, v56
	v_and_b32_e32 v56, 15, v57
	v_and_b32_e32 v69, 15, v95
	v_and_b32_e32 v70, 15, v96
	v_and_b32_e32 v71, 15, v97
	v_and_b32_e32 v72, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[5:8]
	ds_store_b128 v0, v[13:16] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v22
	ds_load_b128 v[13:16], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[29:32]
	ds_store_b128 v0, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v22
	ds_load_b128 v[29:32], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[45:48]
	ds_store_b128 v0, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v22
	ds_load_b128 v[45:48], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[61:64]
	ds_store_b128 v0, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v22
	ds_load_b128 v[61:64], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[9:12]
	ds_store_b128 v0, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v22
	ds_load_b128 v[17:20], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[33:36]
	ds_store_b128 v0, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v22
	ds_load_b128 v[41:44], v22 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_and_b32_e32 v49, 15, v81
	v_and_b32_e32 v50, 15, v82
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v60, 15, v86
	v_cvt_i32_f32_e32 v58, v58
	v_and_b32_e32 v65, 15, v91
	v_and_b32_e32 v66, 15, v92
	v_and_b32_e32 v67, 15, v93
	v_and_b32_e32 v68, 15, v94
	v_and_b32_e32 v57, 15, v58
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v73, 15, v99
	v_and_b32_e32 v74, 15, v100
	v_and_b32_e32 v75, 15, v101
	v_and_b32_e32 v76, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[49:52]
	ds_store_b128 v0, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v22
	ds_load_b128 v[57:60], v22 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[65:68]
	ds_store_b128 v0, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v22
	ds_load_b128 v[69:72], v22 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v32, 4, v27
	v_lshl_or_b32 v27, v44, 4, v36
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v197
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s34, v23
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
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
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s9, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v20, v31, 4, v26
	v_lshl_or_b32 v26, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v14.l
	v_and_b16 v0.h, 0xff, v13.l
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v2.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v12.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v6.h, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v29, 4, v24
	v_lshl_or_b32 v19, v30, 4, v25
	v_lshl_or_b32 v24, v41, 4, v33
	v_lshl_or_b32 v25, v42, 4, v34
	v_lshl_or_b32 v35, v59, 4, v51
	v_lshl_or_b32 v36, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v5.h, 0xff, v26.l
	s_mov_b32 s12, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v45, 4, v37
	v_lshl_or_b32 v30, v46, 4, v38
	v_lshl_or_b32 v31, v47, 4, v39
	v_lshl_or_b32 v32, v48, 4, v40
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v71, 4, v67
	v_lshl_or_b32 v23, v72, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v22.l
	v_and_b16 v0.h, 0xff, v20.l
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v18.l
	v_lshlrev_b16 v6.l, 8, v25.l
	v_and_b16 v6.h, 0xff, v24.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v12.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v36.l
	v_and_b16 v5.h, 0xff, v35.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	v_lshl_or_b32 v40, v64, 4, v56
	v_lshl_or_b32 v41, v69, 4, v65
	v_lshl_or_b32 v42, v70, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v5.h, 0xff, v43.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v42.l
	v_and_b16 v6.h, 0xff, v41.l
	v_or_b16 v12.h, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v195
	v_lshrrev_b32_e32 v4, 2, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.l, v6.h, v6.l
	v_dual_cndmask_b32 v0, 0x80000000, v10 :: v_dual_and_b32 v5, 2, v5
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[12:15], 0 offen
	buffer_store_b64 v[11:12], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v28.h
	v_mov_b16_e32 v1.l, v21.h
	v_add3_u32 v4, v4, v5, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v196
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v1, v1, s41, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp66:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 260
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
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 260
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28796
; TotalNumSgprs: 49
; NumVgprs: 256
; ScratchSize: 260
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 49
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 260
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 64
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
