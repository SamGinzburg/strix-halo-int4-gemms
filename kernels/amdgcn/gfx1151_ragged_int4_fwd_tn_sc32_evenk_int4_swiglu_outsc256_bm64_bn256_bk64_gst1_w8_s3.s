	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_dual_mov_b32 v200, v0 :: v_dual_mov_b32 v55, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v199, 15, v200
	v_lshlrev_b32_e32 v53, 4, v200
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
	v_and_b32_e32 v0, 63, v200
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v13, s34, v0
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
	v_and_b32_e32 v1, 8, v200
.Ltmp4:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v4, 16, v200
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow659
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v201, 0xf0, v200
	v_lshrrev_b32_e32 v167, 4, v200
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v202, 4, v199
	v_dual_mov_b32 v56, 0 :: v_dual_and_b32 v197, 0xc0, v200
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_mov_b32_e32 v204, 0
	v_mov_b32_e32 v206, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s22, s[0:1], 0x58
	s_load_b32 s42, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_mov_b32_e32 v48, 0
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
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, s34, v199
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s4
	s_addc_u32 s1, s7, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[3:4]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[20:21], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[3:4]
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v216, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s40
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s47, s41, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[5:6]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v6, 4, v197
	v_or_b32_e32 v12, s47, v200
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[7:8]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v1, off offset:164
	scratch_store_b32 off, v6, off offset:160
	scratch_store_b64 off, v[13:14], off offset:152
	v_mul_lo_u32 v1, v2, s40
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v0, 0, v0
	v_dual_mov_b32 v205, 0 :: v_dual_lshlrev_b32 v8, 2, v197
	v_mov_b32_e32 v159, 0
	v_dual_mov_b32 v50, 0 :: v_dual_lshlrev_b32 v7, 5, v200
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v0, v0, v8
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v3, s40
	v_or_b32_e32 v9, 0x3f0, v200
	v_dual_mov_b32 v161, 0 :: v_dual_lshlrev_b32 v10, 2, v201
	v_dual_mov_b32 v160, 0 :: v_dual_lshlrev_b32 v11, 1, v200
	v_dual_mov_b32 v206, 0 :: v_dual_and_b32 v7, 32, v7
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v0, 0, v9
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v4, s40
	v_dual_mov_b32 v204, 0 :: v_dual_and_b32 v11, 28, v11
	v_add3_u32 v7, 0, v10, v7
	v_bfe_i32 v2, v200, 4, 1
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_mov_b32_e32 v153, 0
	v_dual_mov_b32 v210, 0 :: v_dual_and_b32 v3, 0x270, v53
	v_add_nc_u32_e32 v0, v7, v11
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_bfe_i32 v1, v200, 3, 1
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v2, 0x108, v2
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v207, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v1, 0x88, v1
	v_mov_b32_e32 v158, 0
	v_lshrrev_b32_e32 v5, 1, v200
	v_mov_b32_e32 v156, 0
	v_and_or_b32 v4, 0x70, v53, v1
	v_xor3_b32 v1, v2, v6, v1
	v_add_nc_u32_e32 v2, 0, v3
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s43, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	v_xor_b32_e32 v3, 8, v4
	v_xor_b32_e32 v6, 0x108, v4
	v_add_nc_u32_e32 v1, v2, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v12, off offset:180
	scratch_store_b32 off, v200, off offset:224
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s43, s22
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v168, 0, v199
	scratch_store_b32 off, v1, off offset:184 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v4
	scratch_store_b32 off, v201, off offset:228 ; 4-byte Folded Spill
	v_dual_mov_b32 v208, 0 :: v_dual_and_b32 v5, 0x70, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:212
	scratch_store_b32 off, v1, off offset:188
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v1, 0, v3
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v0, s47, v202
	v_dual_mov_b32 v157, 0 :: v_dual_lshlrev_b32 v10, 1, v201
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:192
	scratch_store_b32 off, v202, off offset:232
	v_add_nc_u32_e32 v1, 0, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:196
	scratch_store_b32 off, v53, off offset:236
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v1, 0, v53
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s44, s4, s20
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s4, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s1, s1, s6
	s_and_b32 s3, s5, s7
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
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:200
	scratch_store_b64 off, v[0:1], off offset:216
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v175, v168, v5
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v197, 0, v10
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v5, s8
	v_mov_b32_e32 v7, s10
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_u32 s46, s44, s33
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
	scratch_load_b32 v14, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s5, s4, 4
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v216, off offset:44
	scratch_store_b32 off, v49, off offset:40
	scratch_store_b32 off, v48, off offset:36
	scratch_store_b32 off, v50, off offset:32
	scratch_store_b32 off, v51, off offset:28
	scratch_store_b32 off, v207, off offset:24
	scratch_store_b32 off, v205, off offset:20
	scratch_store_b32 off, v58, off offset:16
	scratch_store_b32 off, v57, off offset:12
	scratch_store_b32 off, v98, off offset:8
	scratch_store_b32 off, v83, off offset:4
	scratch_store_b32 off, v52, off
	v_dual_mov_b32 v98, v210 :: v_dual_mov_b32 v179, v144
	v_dual_mov_b32 v196, v161 :: v_dual_mov_b32 v185, v148
	v_mov_b32_e32 v144, v102
	v_mov_b32_e32 v102, v59
	v_mov_b32_e32 v148, v108
	v_mov_b32_e32 v194, v159
	v_mov_b32_e32 v176, v86
	v_dual_mov_b32 v86, v71 :: v_dual_mov_b32 v159, v142
	v_mov_b32_e32 v25, v72
	v_dual_mov_b32 v72, v56 :: v_dual_mov_b32 v71, v55
	v_mov_b32_e32 v161, v146
	v_mov_b32_e32 v146, v130
	v_dual_mov_b32 v130, v107 :: v_dual_mov_b32 v189, v153
	v_mov_b32_e32 v108, v96
	v_mov_b32_e32 v96, v61
	v_mov_b32_e32 v186, v149
	v_mov_b32_e32 v149, v109
	v_mov_b32_e32 v109, v97
	v_mov_b32_e32 v97, v62
	v_dual_mov_b32 v142, v110 :: v_dual_mov_b32 v153, v116
	v_mov_b32_e32 v107, v95
	v_mov_b32_e32 v95, v60
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s5, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[9:10], null, v0, s42, v[13:14]
	v_cndmask_b32_e64 v0, 0x80000000, v9, s2
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v9, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v9, s5, v9
	v_mad_u64_u32 v[9:10], null, v9, s42, v[13:14]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v11, 0x80000000, v9, s2
	v_or_b32_e32 v9, 2, v14
	v_or_b32_e32 v9, s5, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[9:10], null, v9, s42, v[13:14]
	v_cndmask_b32_e64 v12, 0x80000000, v9, s2
	v_or_b32_e32 v9, 3, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v9, s5, v9
	v_mad_u64_u32 v[9:10], null, v9, s42, v[13:14]
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v180, v11, s[20:23], 0 offen
	buffer_load_u8 v181, v12, s[20:23], 0 offen
	buffer_load_u8 v182, v9, s[20:23], 0 offen
	buffer_load_u8 v183, v0, s[20:23], 0 offen
	scratch_load_b64 v[10:11], off, off offset:216 ; 8-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v180.l
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v9.l, v183.l, v0.l
	v_lshlrev_b16 v0.l, 8, v182.l
	v_or_b16 v9.h, v181.l, v0.l
	v_or_b32_e32 v0, s5, v167
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s5, s4, s45
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_mul_i32 s5, s5, s43
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[27:28], null, v0, s43, v[10:11]
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, s44, v27
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_b128 v[28:31], v0, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[21:24], v0 offset1:32
	ds_load_2addr_b64 v[9:12], v0 offset0:64 offset1:96
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[17:20], v0 offset1:1
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[13:16], v0 offset1:1
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v236, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v236, v[28:31]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v175 offset:1280
	ds_load_u8 v26, v175 offset:1024
	ds_load_u8 v28, v175 offset:1792
	ds_load_u8 v29, v175 offset:1536
	ds_load_u8 v38, v175 offset:1408
	ds_load_u8 v43, v175 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v29, v28, 0xc0c0004
	ds_load_u8 v28, v175 offset:256
	ds_load_u8 v29, v175
	ds_load_u8 v30, v175 offset:768
	ds_load_u8 v31, v175 offset:512
	ds_load_u8 v44, v175 offset:384
	ds_load_u8 v45, v175 offset:128
	v_lshl_or_b32 v40, v26, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v29, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v29, 16, v28
	ds_load_u8 v0, v175 offset:3328
	ds_load_u8 v26, v175 offset:3072
	ds_load_u8 v28, v175 offset:3840
	ds_load_u8 v29, v175 offset:3584
	ds_load_u8 v46, v175 offset:3456
	ds_load_u8 v51, v175 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v26, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v29, v28, 0xc0c0004
	ds_load_u8 v28, v175 offset:2304
	ds_load_u8 v29, v175 offset:2048
	ds_load_u8 v30, v175 offset:2816
	ds_load_u8 v31, v175 offset:2560
	ds_load_u8 v52, v175 offset:2432
	ds_load_u8 v53, v175 offset:2176
	v_lshl_or_b32 v42, v26, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v29, v31, v30, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[30:37], v[39:40], v[21:22], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v29, 16, v28
	ds_load_u8 v26, v175 offset:1664
	ds_load_u8 v28, v175 offset:1920
	v_wmma_i32_16x16x16_iu4 v[30:37], v[41:42], v[17:18], v[30:37] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v31
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v29, v175 offset:640
	ds_load_u8 v31, v175 offset:896
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v30, v30
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	v_perm_b32 v28, v45, v44, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v29, v31, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_perm_b32 v0, v43, v38, 0xc0c0004
	v_lshl_or_b32 v43, v29, 16, v28
	ds_load_u8 v29, v175 offset:2688
	ds_load_u8 v31, v175 offset:2944
	v_lshl_or_b32 v44, v26, 16, v0
	ds_load_u8 v26, v175 offset:3712
	ds_load_u8 v28, v175 offset:3968
	v_perm_b32 v0, v51, v46, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[216:223], v[43:44], v[15:16], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v29, v29, v31, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[31:38], v[43:44], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v22, v215
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v26, v28, 0xc0c0004
	v_perm_b32 v28, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v46, v26, 16, v0
	v_lshl_or_b32 v45, v29, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[45:46], v[17:18], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[216:223], v[45:46], v[11:12], v[216:223] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v224, v216
	v_cvt_f32_i32_e32 v202, v221
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v200, v222
	v_cvt_f32_i32_e32 v199, v223
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	v_cvt_f32_i32_e32 v227, v217
	v_cvt_f32_i32_e32 v226, v218
	v_cvt_f32_i32_e32 v225, v219
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v38
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[39:40], v[13:14], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[31:38], v[41:42], v[23:24], v[31:38] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v215, v31
	v_cvt_f32_i32_e32 v17, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v18, v33
	v_cvt_f32_i32_e32 v21, v34
	v_cvt_f32_i32_e32 v210, v35
	v_cvt_f32_i32_e32 v28, v36
	v_cvt_f32_i32_e32 v83, v37
	v_cvt_f32_i32_e32 v198, v38
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[43:44], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v13, v204 :: v_dual_mov_b32 v14, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[45:46], v[23:24], v[31:38] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v31
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v36
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v38
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[39:40], v[9:10], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[31:38], v[41:42], v[19:20], v[31:38] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v248, v31
	v_cvt_f32_i32_e32 v247, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v246, v33
	v_cvt_f32_i32_e32 v245, v34
	v_cvt_f32_i32_e32 v235, v35
	v_cvt_f32_i32_e32 v234, v36
	v_cvt_f32_i32_e32 v232, v37
	v_cvt_f32_i32_e32 v230, v38
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[43:44], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v9, v100 :: v_dual_mov_b32 v100, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[31:38], v[45:46], v[19:20], v[31:38] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v20, v220
	v_cvt_f32_i32_e32 v0, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v23, v31
	v_cvt_f32_i32_e32 v204, v32
	v_cvt_f32_i32_e32 v10, v33
	v_cvt_f32_i32_e32 v201, v34
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v37
	v_cvt_f32_i32_e32 v24, v35
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v38
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[39:40], v[15:16], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[31:38], v[41:42], v[11:12], v[31:38] neg_lo:[1,1,0]
	v_add_nc_u32_e32 v0, s46, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v172, v31
	v_cvt_f32_i32_e32 v170, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v167, v34
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v31, v36
	v_cvt_f32_i32_e32 v32, v37
	v_cvt_f32_i32_e32 v29, v38
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_b128 v[35:38], v0, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v174, v33
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v183
	ds_store_b8 v0, v180 offset:64
	ds_store_b8 v0, v181 offset:128
	ds_store_b8 v0, v182 offset:192
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	scratch_load_b32 v19, off, off offset:208 ; 4-byte Folded Reload
	ds_load_u8 v60, v168 offset:368
	ds_load_u8 v238, v168 offset:304
	ds_load_u8 v53, v168 offset:64
	ds_load_u8 v61, v168
	ds_load_u8 v163, v168 offset:16
	ds_load_u8 v173, v168 offset:32
	ds_load_u8 v253, v168 offset:48
	ds_load_u8 v0, v168 offset:192
	ds_load_u8 v11, v168 offset:128
	ds_load_u8 v26, v168 offset:208
	ds_load_u8 v27, v168 offset:144
	ds_load_u8 v39, v168 offset:224
	ds_load_u8 v40, v168 offset:160
	ds_load_u8 v56, v168 offset:240
	ds_load_u8 v57, v168 offset:176
	ds_load_u8 v12, v168 offset:448
	ds_load_u8 v15, v168 offset:384
	ds_load_u8 v41, v168 offset:464
	ds_load_u8 v42, v168 offset:400
	ds_load_u8 v43, v168 offset:480
	ds_load_u8 v44, v168 offset:416
	ds_load_u8 v58, v168 offset:496
	ds_load_u8 v59, v168 offset:432
	ds_load_u8 v16, v168 offset:320
	ds_load_u8 v33, v168 offset:256
	ds_load_u8 v45, v168 offset:336
	ds_load_u8 v46, v168 offset:272
	ds_load_u8 v51, v168 offset:352
	ds_load_u8 v52, v168 offset:288
	ds_load_u8 v62, v168 offset:960
	ds_load_u8 v164, v168 offset:896
	ds_load_u8 v165, v168 offset:976
	ds_load_u8 v166, v168 offset:912
	ds_load_u8 v177, v168 offset:992
	ds_load_u8 v228, v168 offset:928
	ds_load_u8 v110, v168 offset:880
	ds_load_u8 v49, v168 offset:816
	ds_load_u8 v181, v168 offset:704
	ds_load_u8 v182, v168 offset:640
	ds_load_u8 v183, v168 offset:720
	ds_load_u8 v233, v168 offset:656
	ds_load_u8 v190, v168 offset:736
	ds_load_u8 v188, v168 offset:672
	ds_load_u8 v116, v168 offset:752
	ds_load_u8 v50, v168 offset:688
	ds_load_u8 v205, v168 offset:576
	ds_load_u8 v207, v168 offset:512
	ds_load_u8 v193, v168 offset:592
	ds_load_u8 v184, v168 offset:528
	ds_load_u8 v187, v168 offset:608
	ds_load_u8 v191, v168 offset:544
	ds_load_u8 v192, v168 offset:624
	ds_load_u8 v195, v168 offset:560
	ds_load_u8 v54, v168 offset:80
	ds_load_u8 v55, v168 offset:96
	ds_load_u8 v240, v168 offset:112
	s_waitcnt vmcnt(0)
	ds_load_u8 v47, v19
	ds_load_u8 v48, v168 offset:944
	ds_load_u8 v169, v168 offset:832
	ds_load_u8 v171, v168 offset:768
	ds_load_u8 v178, v168 offset:848
	ds_load_u8 v180, v168 offset:784
	ds_load_u8 v229, v168 offset:864
	ds_load_u8 v231, v168 offset:800
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v12, v15, v12, 0xc0c0004
	v_perm_b32 v15, v61, v53, 0xc0c0004
	v_perm_b32 v0, v11, v0, 0xc0c0004
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v236, v[35:38]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v16, v33, v16, 0xc0c0004
	v_lshl_or_b32 v11, v0, 16, v15
	v_perm_b32 v15, v164, v62, 0xc0c0004
	v_perm_b32 v33, v207, v205, 0xc0c0004
	v_perm_b32 v35, v182, v181, 0xc0c0004
	v_lshl_or_b32 v12, v12, 16, v16
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_perm_b32 v0, v171, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v16, v15, 16, v0
	v_lshl_or_b32 v15, v35, 16, v33
	ds_load_u8 v0, v175 offset:1280
	ds_load_u8 v33, v175 offset:1024
	ds_load_u8 v35, v175 offset:1792
	ds_load_u8 v36, v175 offset:1536
	ds_load_u8 v37, v175 offset:1408
	ds_load_u8 v38, v175 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v36, v35, 0xc0c0004
	ds_load_u8 v35, v175 offset:256
	ds_load_u8 v36, v175
	ds_load_u8 v53, v175 offset:768
	ds_load_u8 v61, v175 offset:512
	ds_load_u8 v62, v175 offset:384
	ds_load_u8 v164, v175 offset:128
	v_lshl_or_b32 v237, v33, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v61, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v236, v36, 16, v35
	ds_load_u8 v0, v175 offset:3328
	ds_load_u8 v33, v175 offset:3072
	ds_load_u8 v35, v175 offset:3840
	ds_load_u8 v36, v175 offset:3584
	ds_load_u8 v53, v175 offset:3456
	ds_load_u8 v61, v175 offset:3200
	v_wmma_i32_16x16x16_iu4 v[216:223], v[236:237], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v33, v36, v35, 0xc0c0004
	ds_load_u8 v35, v175 offset:2304
	ds_load_u8 v36, v175 offset:2048
	ds_load_u8 v169, v175 offset:2816
	ds_load_u8 v171, v175 offset:2560
	ds_load_u8 v181, v175 offset:2432
	ds_load_u8 v182, v175 offset:2176
	v_lshl_or_b32 v250, v33, 16, v0
	v_perm_b32 v0, v38, v37, 0xc0c0004
	ds_load_u8 v37, v175 offset:640
	ds_load_u8 v38, v175 offset:896
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v171, v169, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v249, v36, 16, v35
	ds_load_u8 v35, v175 offset:1664
	ds_load_u8 v36, v175 offset:1920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[216:223], v[249:250], v[15:16], v[216:223] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v19, v216
	v_cvt_f32_i32_e32 v33, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v255, v218
	v_cvt_f32_i32_e32 v254, v219
	v_cvt_f32_i32_e32 v244, v220
	v_cvt_f32_i32_e32 v243, v221
	v_cvt_f32_i32_e32 v242, v222
	v_cvt_f32_i32_e32 v241, v223
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	v_perm_b32 v36, v164, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v252, v35, 16, v0
	v_lshl_or_b32 v251, v37, 16, v36
	ds_load_u8 v35, v175 offset:3712
	ds_load_u8 v36, v175 offset:3968
	ds_load_u8 v37, v175 offset:2688
	ds_load_u8 v38, v175 offset:2944
	v_perm_b32 v0, v61, v53, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[216:223], v[251:252], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v35, v35, v36, 0xc0c0004
	v_perm_b32 v36, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v37, v38, 0xc0c0004
	v_perm_b32 v38, v233, v183, 0xc0c0004
	v_lshl_or_b32 v62, v35, 16, v0
	v_perm_b32 v0, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v61, v37, 16, v36
	v_perm_b32 v35, v42, v41, 0xc0c0004
	v_perm_b32 v36, v163, v54, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[216:223], v[61:62], v[15:16], v[216:223] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v27, v35, 16, v0
	v_lshl_or_b32 v26, v26, 16, v36
	v_perm_b32 v0, v180, v178, 0xc0c0004
	v_perm_b32 v35, v166, v165, 0xc0c0004
	v_perm_b32 v36, v184, v193, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v239, v216
	v_cvt_f32_i32_e32 v11, v221
	v_cvt_f32_i32_e32 v12, v222
	v_cvt_f32_i32_e32 v15, v223
	v_cvt_f32_i32_e32 v207, v217
	v_cvt_f32_i32_e32 v205, v218
	v_cvt_f32_i32_e32 v182, v219
	v_cvt_f32_i32_e32 v16, v220
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v37, v35, 16, v0
	v_lshl_or_b32 v36, v38, 16, v36
	v_wmma_i32_16x16x16_iu4 v[216:223], v[236:237], v[26:27], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v38, v40, v39, 0xc0c0004
	scratch_load_b32 v184, off, off offset:180 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[216:223], v[249:250], v[36:37], v[216:223] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v35, v216
	v_cvt_f32_i32_e32 v178, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v171, v218
	v_cvt_f32_i32_e32 v169, v219
	v_cvt_f32_i32_e32 v166, v220
	v_cvt_f32_i32_e32 v165, v221
	v_cvt_f32_i32_e32 v164, v222
	v_cvt_f32_i32_e32 v0, v223
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[216:223], v[251:252], v[26:27], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v26, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[216:223], v[61:62], v[36:37], v[216:223] neg_lo:[1,1,0]
	v_perm_b32 v36, v44, v43, 0xc0c0004
	v_perm_b32 v37, v173, v55, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v180, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v53, v36, 16, v26
	v_lshl_or_b32 v52, v38, 16, v37
	v_perm_b32 v26, v231, v229, 0xc0c0004
	v_perm_b32 v36, v228, v177, 0xc0c0004
	v_perm_b32 v37, v191, v187, 0xc0c0004
	v_perm_b32 v38, v188, v190, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v181, v223
	v_cvt_f32_i32_e32 v222, v217
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v55, v36, 16, v26
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v217, v219
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v54, v38, 16, v37
	v_wmma_i32_16x16x16_iu4 v[36:43], v[236:237], v[52:53], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v27, v221
	v_cvt_f32_i32_e32 v221, v218
	v_cvt_f32_i32_e32 v183, v220
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[36:43], v[249:250], v[54:55], v[36:43] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v216, v216
	v_cvt_f32_i32_e32 v51, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v46, v37
	v_cvt_f32_i32_e32 v45, v38
	v_cvt_f32_i32_e32 v44, v39
	v_cvt_f32_i32_e32 v163, v40
	v_cvt_f32_i32_e32 v26, v41
	v_cvt_f32_i32_e32 v177, v42
	v_cvt_f32_i32_e32 v173, v43
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[36:43], v[251:252], v[52:53], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[61:62], v[54:55], v[36:43] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v228, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v233, v37
	v_cvt_f32_i32_e32 v231, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v229, v39
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v36, v238, v60, 0xc0c0004
	v_perm_b32 v37, v59, v58, 0xc0c0004
	v_perm_b32 v38, v253, v240, 0xc0c0004
	v_perm_b32 v39, v57, v56, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v219, v42
	v_cvt_f32_i32_e32 v223, v40
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v40, v37, 16, v36
	v_perm_b32 v36, v195, v192, 0xc0c0004
	v_lshl_or_b32 v39, v39, 16, v38
	v_perm_b32 v37, v50, v116, 0xc0c0004
	v_perm_b32 v38, v49, v110, 0xc0c0004
	v_perm_b32 v42, v48, v47, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v218, v41
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[53:60], v[236:237], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v41, v37, 16, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v42, v42, 16, v38
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v220, v43
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[53:60], v[249:250], v[41:42], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v47, v53
	v_cvt_f32_i32_e32 v48, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v55
	v_cvt_f32_i32_e32 v52, v56
	v_cvt_f32_i32_e32 v43, v57
	v_cvt_f32_i32_e32 v38, v58
	v_cvt_f32_i32_e32 v37, v59
	v_cvt_f32_i32_e32 v36, v60
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[53:60], v[251:252], v[39:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v39, off, off offset:164
	scratch_load_b32 v40, off, off offset:168
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[53:60], v[61:62], v[41:42], v[53:60] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:172
	scratch_load_b32 v42, off, off offset:176
	v_mov_b32_e32 v62, v97
	v_mov_b32_e32 v97, v109
	v_dual_mov_b32 v109, v149 :: v_dual_mov_b32 v110, v142
	v_dual_mov_b32 v142, v159 :: v_dual_mov_b32 v159, v194
	v_dual_mov_b32 v61, v96 :: v_dual_mov_b32 v116, v153
	v_mov_b32_e32 v149, v186
	v_mov_b32_e32 v153, v189
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v236, v58
	v_cvt_f32_i32_e32 v237, v59
	v_cvt_f32_i32_e32 v240, v57
	v_cvt_f32_i32_e32 v249, v53
	v_cvt_f32_i32_e32 v252, v54
	v_cvt_f32_i32_e32 v251, v55
	v_cvt_f32_i32_e32 v250, v56
	v_cvt_f32_i32_e32 v238, v60
	v_mov_b32_e32 v60, v95
	v_mov_b32_e32 v95, v107
	v_mov_b32_e32 v107, v130
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v50, v184, s5, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v39, s4, v39, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v40, s4, v40, 1
	v_mov_b32_e32 v96, v108
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v41, s4, v41, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v42, s4, v42, 1
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	v_cndmask_b32_e64 v40, 0x80000000, v40, s0
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s4, s4, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v39, v39, s[28:31], 0 offen
	buffer_load_u16 v57, v40, s[28:31], 0 offen
	buffer_load_u16 v58, v41, s[28:31], 0 offen
	buffer_load_u16 v59, v42, s[28:31], 0 offen
	v_mov_b32_e32 v108, v148
	v_mov_b32_e32 v148, v185
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v185, off, off offset:212 ; 4-byte Folded Reload
	v_mov_b32_e32 v130, v146
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s4, s40
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v40, 16, v50
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v253, 16, v39
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v253, v30
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v185, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[39:42], v197
	ds_load_b128 v[53:56], v197 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v50, 16, v57
	v_lshlrev_b32_e32 v57, 16, v58
	v_lshlrev_b32_e32 v58, 16, v59
	v_dual_mov_b32 v59, v102 :: v_dual_mov_b32 v146, v161
	v_mov_b32_e32 v161, v196
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v102, v144 :: v_dual_mul_f32 v29, v58, v29
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v140, v30, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v30, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v80, v29, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v253, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v142, v30, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v30, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v253, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v30, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v30, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v253, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v145, v30, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v50, v215
	v_mov_b32_e32 v215, v22
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v30, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v50, v17
	scratch_load_b32 v17, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v129, v30, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v50, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v30, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v50, v21
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v101, v30, v42 :: v_dual_mul_f32 v30, v57, v248
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v50, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v75, v30, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v57, v247
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v76, v30, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v57, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v30, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v57, v245
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v30, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v58, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v212, v30, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v58, v170
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v213, v30, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v58, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v88, v30, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v58, v167
	v_dual_mov_b32 v144, v179 :: v_dual_mov_b32 v167, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v87, v30, v42 :: v_dual_mul_f32 v30, v253, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v30, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v253, v17
	scratch_load_b32 v17, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v30, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v30, v253, v17
	scratch_load_b32 v17, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v117, v30, v55 :: v_dual_mul_f32 v30, v253, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v118, v30, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v50, v210
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v30, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v50, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v30, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v50, v83
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v30, v55
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v50, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v30, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v57, v235
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v67, v30, v53 :: v_dual_mul_f32 v30, v57, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v30, v54
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v57, v232
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v69, v30, v55 :: v_dual_mul_f32 v30, v57, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v70, v30, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v58, v34
	v_mov_b32_e32 v56, v72
	v_dual_mov_b32 v72, v25 :: v_dual_fmac_f32 v73, v30, v53
	v_mul_f32_e32 v30, v58, v31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v74, v30, v54
	v_mov_b32_e32 v54, v100
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v58, v32
	v_mov_b32_e32 v100, v9
	scratch_load_b32 v9, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v79, v30, v55
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[29:32], v197 offset:512
	ds_load_b128 v[39:42], v197 offset:528
	v_mov_b32_e32 v55, v71
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v71, v86 :: v_dual_mul_f32 v34, v9, v253
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v206, v34, v29
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v34, v253, v9
	scratch_load_b32 v9, off, off offset:72 ; 4-byte Folded Reload
	v_dual_mov_b32 v86, v176 :: v_dual_fmac_f32 v107, v34, v30
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v34, v253, v9
	scratch_load_b32 v9, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v253, v9
	scratch_load_b32 v9, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v109, v28, v32 :: v_dual_mul_f32 v28, v9, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v158, v28, v29
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v50, v9
	scratch_load_b32 v9, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v28, v30
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v50, v9
	scratch_load_b32 v9, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v28, v31
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v28, v50, v9
	scratch_load_b32 v9, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v85, v28, v32 :: v_dual_mul_f32 v28, v23, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v153, v28, v29 :: v_dual_mul_f32 v28, v57, v204
	v_dual_mov_b32 v204, v13 :: v_dual_fmac_f32 v59, v28, v30
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v28, v57, v10
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v253, v9
	scratch_load_b32 v9, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_dual_fmac_f32 v110, v22, v39 :: v_dual_mul_f32 v21, v9, v253
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v9, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v204, v21, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v9, v253
	scratch_load_b32 v9, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v162, v18, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v9, v253
	scratch_load_b32 v9, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v17, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v50, v9
	scratch_load_b32 v9, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v17, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v9, v50
	scratch_load_b32 v9, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v156, v17, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v14, v9, v50
	scratch_load_b32 v9, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v9, v50
	scratch_load_b32 v9, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v154, v13, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v57, v24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v62, v13, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v13, v9, v57
	scratch_load_b32 v9, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v152, v13, v40 :: v_dual_mul_f32 v13, v180, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v10, v9, v57
	scratch_load_b32 v9, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v10, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v10, v15, v253 :: v_dual_mul_f32 v15, v50, v183
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v9, v9, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v150, v9, v42 :: v_dual_mul_f32 v9, v58, v20
	v_fmac_f32_e32 v55, v9, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v9, v202, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v148, v9, v40 :: v_dual_mul_f32 v9, v200, v58
	v_fmac_f32_e32 v147, v9, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v9, v199, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v144, v9, v42 :: v_dual_add_nc_u32 v9, s33, v184
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v9, v9, s5, 1
	buffer_load_u16 v9, v9, s[12:15], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v185, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v253, v19
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v197
	ds_load_b128 v[21:24], v197 offset:16
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v210, v98 :: v_dual_fmac_f32 v143, v9, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v253, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v93, v0, v24 :: v_dual_mul_f32 v0, v57, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v141, v9, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v9, v253, v255 :: v_dual_fmac_f32 v106, v0, v21
	v_mul_f32_e32 v0, v57, v26
	v_mul_f32_e32 v26, v237, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v123, v9, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v253, v254
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v105, v0, v22 :: v_dual_mul_f32 v0, v57, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v139, v9, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v50, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v103, v0, v23 :: v_dual_mul_f32 v0, v57, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v133, v9, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v50, v178
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v102, v9, v18 :: v_dual_mul_f32 v9, v50, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v100, v9, v19 :: v_dual_mul_f32 v9, v50, v169
	v_fmac_f32_e32 v99, v9, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v57, v51
	scratch_load_b32 v51, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v114, v9, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v57, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v113, v9, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v57, v45
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v77, v9, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v57, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v78, v9, v20 :: v_dual_mul_f32 v9, v58, v47
	v_dual_fmac_f32 v90, v9, v17 :: v_dual_mul_f32 v9, v58, v48
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v34, v31
	scratch_load_b32 v48, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v89, v9, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v58, v49
	scratch_load_b32 v49, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v54, v9, v19 :: v_dual_mul_f32 v9, v58, v52
	scratch_load_b32 v52, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v52, v9, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v253, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v138, v9, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v253, v243
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v9, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v253, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v9, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v253, v241
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v137, v9, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v50, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v9, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v50, v165
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v126, v9, v22 :: v_dual_mul_f32 v9, v50, v164
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v60, v28, v31
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v28, v57, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v125, v9, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v12, v253
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v61, v28, v32
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v28, v224, v58
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v104, v0, v24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v58, v43
	v_mul_f32_e32 v12, v27, v50
	v_mul_f32_e32 v27, v238, v58
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v149, v28, v29 :: v_dual_mul_f32 v28, v58, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v203, v0, v21 :: v_dual_mul_f32 v0, v58, v38
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v56, v28, v30
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v28, v58, v226
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v82, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v58, v37 :: v_dual_fmac_f32 v63, v28, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v28, v58, v225 :: v_dual_fmac_f32 v81, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v58, v36
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v64, v28, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v28, v58, v240
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v72, v0, v24
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[17:20], v197 offset:512
	ds_load_b128 v[21:24], v197 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v239, v253
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v48, v0, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v253, v207
	scratch_load_b32 v207, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v210, v13, v23
	v_dual_fmac_f32 v215, v9, v23 :: v_dual_fmac_f32 v214, v10, v24
	v_dual_fmac_f32 v135, v0, v18 :: v_dual_mul_f32 v0, v253, v205
	v_dual_fmac_f32 v211, v12, v22 :: v_dual_fmac_f32 v160, v26, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v157, v27, v24 :: v_dual_fmac_f32 v134, v0, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v253, v182
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v216, v50
	scratch_load_b32 v216, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v49, v0, v17 :: v_dual_mul_f32 v0, v50, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v121, v0, v18 :: v_dual_mul_f32 v0, v50, v221
	v_fmac_f32_e32 v120, v0, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v50, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v119, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v228, v57
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v208, v0, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v57, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v97, v0, v18 :: v_dual_mul_f32 v0, v57, v231
	v_fmac_f32_e32 v96, v0, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v57, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v95, v0, v20
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v155, v14, v41 :: v_dual_mul_f32 v14, v181, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v249, v58 :: v_dual_fmac_f32 v209, v14, v24
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b64 v[13:14], off, off offset:152
	scratch_load_b32 v50, off, off offset:32
	scratch_load_b32 v205, off, off offset:20
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v205, v0, v17 :: v_dual_mul_f32 v0, v58, v252
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v219, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v71, v0, v18 :: v_dual_mul_f32 v0, v58, v251
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v18, v220, v57 :: v_dual_fmac_f32 v51, v17, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v66, v0, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v58, v250 :: v_dual_mul_f32 v19, v57, v223
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v207, v18, v24
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v65, v0, v20 :: v_dual_mul_f32 v0, v11, v253
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v11, v253, v16 :: v_dual_mul_f32 v16, v218, v57
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:12
	scratch_load_b32 v83, off, off offset:4
	v_mul_f32_e32 v20, v236, v58
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:16
	scratch_load_b32 v98, off, off offset:8
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v216, v0, v22
	v_fmac_f32_e32 v50, v16, v22
	v_fmac_f32_e32 v161, v20, v22
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v57, v28, v21
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v83, v15, v21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v58, v19, v21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v98, v11, v21
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v200, off, off offset:224
	scratch_load_b32 v201, off, off offset:228
	scratch_load_b32 v202, off, off offset:232
	scratch_load_b32 v53, off, off offset:236
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v3, v13 :: v_dual_and_b32 v4, 16, v200
	v_and_b32_e32 v1, 8, v200
	v_and_b32_e32 v197, 0xc0, v200
	v_and_b32_e32 v199, 15, v200
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v123
	v_dual_mul_f32 v6, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v214
	v_mul_f32_e32 v187, 0xbfb8aa3b, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v177, 0xbfb8aa3b, v77 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v207
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v7
	v_mul_f32_e32 v169, 0xbfb8aa3b, v58
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v2, 0xbfb8aa3b, v215
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0x42800000, s1
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v48
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_mul_f32_e32 v168, 0xbfb8aa3b, v90
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v214
	v_dual_mul_f32 v8, 0xbfb8aa3b, v141 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v7, 0, 0x42800000, s0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v216
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s0
	v_dual_mul_f32 v28, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v193, 0xbfb8aa3b, v98
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v215
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v22, 0xbfb8aa3b, v137 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v136
	v_dual_mul_f32 v195, 0xbfb8aa3b, v134 :: v_dual_mul_f32 v196, 0xbfb8aa3b, v135
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v15, v7
	v_mul_f32_e32 v7, 0xbfb8aa3b, v138
	v_ldexp_f32 v10, v11, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v11, 0xbfb8aa3b, v49 :: v_dual_fmac_f32 v2, 0xbfb8aa3b, v216
	v_exp_f32_e32 v14, v14
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v192, 0xbfb8aa3b, v133
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_exp_f32_e32 v2, v2
	v_mul_f32_e32 v11, 0xbfb8aa3b, v211
	v_ldexp_f32 v12, v15, v12
	v_dual_mul_f32 v15, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v209
	v_dual_mul_f32 v194, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v189, 0xbfb8aa3b, v100
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v13, v14, v13
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v0, v2, v0
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v16
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_mul_f32_e32 v186, 0xbfb8aa3b, v125
	v_mul_f32_e32 v182, 0xbfb8aa3b, v119
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v210
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v211
	v_exp_f32_e32 v14, v14
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v209
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s0
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	v_exp_f32_e32 v19, v19
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	v_mul_f32_e32 v172, 0xbfb8aa3b, v97
	v_mul_f32_e32 v180, 0xbfb8aa3b, v114
	v_ldexp_f32 v14, v14, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v208
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s1
	v_ldexp_f32 v11, v15, v11
	v_ldexp_f32 v15, v17, v16
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_ldexp_f32 v16, v19, v18
	v_mul_f32_e32 v19, 0xbfb8aa3b, v51
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v207 :: v_dual_add_f32 v12, 1.0, v12
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v17, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_mul_f32_e32 v176, 0xbfb8aa3b, v106
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v208
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_mul_f32_e32 v170, 0xbfb8aa3b, v95
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v51
	v_exp_f32_e32 v25, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_add_f32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v21, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, s1, v215, v12, v215
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v18, v18, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v19, v19
	v_mul_f32_e32 v2, 0xbfb8aa3b, v205
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v14, v14, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_add_f32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v190, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v191, 0xbfb8aa3b, v102
	v_dual_mul_f32 v185, 0xbfb8aa3b, v93 :: v_dual_mul_f32 v188, 0xbfb8aa3b, v127
	v_ldexp_f32 v17, v19, v17
	v_ldexp_f32 v19, v21, v20
	v_mul_f32_e32 v21, 0xbfb8aa3b, v161
	v_ldexp_f32 v20, v25, v24
	v_dual_mul_f32 v24, 0xbfb8aa3b, v160 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v157
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_add_f32 v17, 1.0, v17
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v30, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v163, 0xbfb8aa3b, v82
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v205
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v10, v10, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v30
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v157
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v34, v24
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v25
	v_exp_f32_e32 v21, v21
	v_dual_mul_f32 v25, 0xbfb8aa3b, v71 :: v_dual_add_f32 v0, 1.0, v0
	v_ldexp_f32 v29, v30, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, vcc_lo, v48, v10, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v34, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v0, v0, v216
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v35, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v12, v12, v215
	v_fma_f32 v32, -v33, v37, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v21, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v32, v37
	v_rcp_f32_e32 v32, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v181, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v184, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v40, v38, v37 :: v_dual_mul_f32 v183, 0xbfb8aa3b, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v178, 0xbfb8aa3b, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v35, v39, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v33, v40, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v34, v32, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v179, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v174, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v43, null, v13, v13, v214
	v_fmac_f32_e32 v40, v42, v37
	v_fmac_f32_e32 v32, v41, v32
	v_div_scale_f32 v41, s0, v216, v0, v216
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v43
	v_fma_f32 v33, -v33, v40, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v175, 0xbfb8aa3b, v105 :: v_dual_mul_f32 v166, 0xbfb8aa3b, v52
	v_dual_mul_f32 v173, 0xbfb8aa3b, v104 :: v_dual_mul_f32 v164, 0xbfb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v37, v40
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v46, v44, v39
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v40, -v43, v45, 1.0
	v_mul_f32_e32 v42, v41, v32
	v_div_fixup_f32 v10, v33, v10, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v171, 0xbfb8aa3b, v96 :: v_dual_mul_f32 v198, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v40, v45
	v_fma_f32 v38, -v34, v42, v41
	v_div_scale_f32 v40, s0, v49, v14, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v165, 0xbfb8aa3b, v203 :: v_dual_mul_f32 v2, 0xbfb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v38, v32
	v_fma_f32 v38, -v35, v46, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v26, 0xbfb8aa3b, v72 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v81
	v_dual_mul_f32 v21, 0xbfb8aa3b, v65 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v34, v42, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v38, v39
	v_fma_f32 v38, -v47, v37, 1.0
	v_div_scale_f32 v34, s3, v214, v13, v214
	v_div_fmas_f32 v32, v33, v32, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v35, v46, v44
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, null, v11, v11, v211
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_mul_f32 v35, v34, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v39, v46
	v_rcp_f32_e32 v39, v38
	v_div_scale_f32 v44, null, v15, v15, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v43, v35, v34
	v_div_fixup_f32 v0, v32, v0, v216
	v_div_fixup_f32 v12, v33, v12, v215
	v_rcp_f32_e32 v33, v44
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v35, v41, v45
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(TRANS32_DEP_2)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v38, v39, 1.0
	v_mul_f32_e32 v42, v40, v37
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v43, v35, v34
	v_div_scale_f32 v43, null, v16, v16, v209
	v_fmac_f32_e32 v39, v41, v39
	v_fma_f32 v32, -v47, v42, v40
	v_fma_f32 v46, -v44, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v43
	v_div_fmas_f32 v34, v34, v45, v35
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v42, v32, v37
	v_div_scale_f32 v32, s1, v211, v11, v211
	v_fmac_f32_e32 v33, v46, v33
	v_div_scale_f32 v45, s3, v210, v15, v210
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v47, v42, v40
	v_mul_f32_e32 v40, v32, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v43, v41, 1.0
	v_div_scale_f32 v47, null, v18, v18, v208
	v_div_fmas_f32 v35, v35, v37, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v38, v40, v32
	v_fmac_f32_e32 v41, v46, v41
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v48, s0, v209, v16, v209
	v_fmac_f32_e32 v40, v37, v39
	v_div_scale_f32 v37, null, v17, v17, v50
	v_div_fixup_f32 v13, v34, v13, v214
	v_div_fixup_f32 v14, v35, v14, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v38, v40, v32
	v_rcp_f32_e32 v38, v37
	v_mul_f32_e32 v35, v48, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v47, v46, 1.0
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v39, v40
	s_mov_b32 vcc_lo, s3
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v11, v32, v11, v211
	v_fma_f32 v40, -v37, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v38, v40, v38
	v_mul_f32_e32 v42, v45, v33
	v_div_scale_f32 v40, null, v19, v19, v51
	v_fma_f32 v34, -v44, v42, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v34, v33
	v_fma_f32 v34, -v43, v35, v48
	v_fmac_f32_e32 v46, v49, v46
	v_div_scale_f32 v49, s4, v208, v18, v208
	v_fma_f32 v39, -v44, v42, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v35, v34, v41
	v_div_fmas_f32 v33, v39, v33, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v43, v35, v48
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v43, s1, v50, v17, v50
	v_div_fixup_f32 v32, v33, v15, v210
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v35, v39, v41, v35
	v_rcp_f32_e32 v39, v40
	v_mul_f32_e32 v34, v49, v46
	v_mul_f32_e32 v41, v43, v38
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v33, v35, v16, v209
	v_div_scale_f32 v35, null, v20, v20, v207
	v_fma_f32 v42, -v47, v34, v49
	v_fma_f32 v16, -v37, v41, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v42, v46
	v_fma_f32 v42, -v40, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v16, v38
	v_div_scale_f32 v16, s0, v51, v19, v51
	v_fma_f32 v15, -v47, v34, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, null, v36, v36, v205
	v_div_fmas_f32 v15, v15, v46, v34
	v_rcp_f32_e32 v34, v35
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v44, v15, v18, v208
	v_fma_f32 v15, -v37, v41, v43
	v_rcp_f32_e32 v43, v42
	v_mul_f32_e32 v18, v16, v39
	v_fma_f32 v37, -v35, v34, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v45, v43
	v_div_fmas_f32 v15, v15, v38, v41
	v_fma_f32 v38, -v40, v18, v16
	v_div_scale_f32 v41, s1, v207, v20, v207
	v_div_scale_f32 v45, null, v30, v30, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, v38, v39
	v_div_scale_f32 v38, s3, v205, v36, v205
	v_fmac_f32_e32 v34, v37, v34
	v_div_scale_f32 v37, null, v29, v29, v161
	v_div_fixup_f32 v46, v15, v17, v50
	v_mul_f32_e32 v47, v38, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v17, v41, v34
	v_rcp_f32_e32 v15, v37
	v_rcp_f32_e32 v49, v45
	v_fma_f32 v16, -v40, v18, v16
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v40, -v35, v17, v41
	v_div_scale_f32 v50, null, v31, v31, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v17, v40, v34
	v_fma_f32 v48, -v37, v15, 1.0
	v_div_fmas_f32 v16, v16, v39, v18
	v_fma_f32 v18, -v42, v47, v38
	v_div_scale_f32 v40, s0, v161, v29, v161
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v15, v48, v15
	v_fma_f32 v48, -v45, v49, 1.0
	v_rcp_f32_e32 v39, v50
	v_div_fixup_f32 v51, v16, v19, v51
	v_fma_f32 v16, -v35, v17, v41
	v_div_scale_f32 v19, s4, v160, v30, v160
	v_fmac_f32_e32 v49, v48, v49
	v_fmac_f32_e32 v47, v18, v43
	v_mul_f32_e32 v18, v40, v15
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v16, v16, v34, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v50, v39, 1.0
	v_fma_f32 v34, -v37, v18, v40
	v_fma_f32 v17, -v42, v47, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v41, v16, v20, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, v34, v15
	v_mul_f32_e32 v38, v19, v49
	v_div_fmas_f32 v17, v17, v43, v47
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v37, v18, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v45, v38, v19
	v_fmac_f32_e32 v39, v35, v39
	v_div_scale_f32 v35, s1, v157, v31, v157
	v_div_fixup_f32 v34, v17, v36, v205
	v_fmac_f32_e32 v38, v16, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v20, v35, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v9, v15, v18
	v_fma_f32 v15, -v45, v38, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v36, 0xbfb8aa3b, v143 :: v_dual_mul_f32 v19, v204, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v50, v20, v35
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v29, v9, v29, v161
	v_div_fmas_f32 v15, v15, v49, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v16, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v15, v30, v160
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v50, v20, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v16, v39, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_ldexp_f32 v6, v18, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v206, v10
	v_mul_f32_e32 v16, v158, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v8, v31, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v15
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v155, v32
	v_dual_mul_f32 v17, v162, v12 :: v_dual_mul_f32 v18, v159, v13
	v_mul_f32_e32 v13, v154, v33
	v_mul_f32_e32 v15, v156, v11
	v_mul_f32_e32 v11, v152, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v6, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v32, 1.0, v5 :: v_dual_fmac_f32 v9, 0xbfb8aa3b, v123
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v0, v0, v143
	v_div_scale_f32 v38, vcc_lo, v143, v0, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v151, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_ldexp_f32 v5, v10, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v35, v36, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v150, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v37, 1.0, v5 :: v_dual_fmac_f32 v36, v8, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v148, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v40, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v153, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v37, v37, v139
	v_mul_f32_e32 v43, v38, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v42
	v_fma_f32 v44, -v35, v43, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v43, v44, v36
	v_div_scale_f32 v33, null, v32, v32, v141
	v_fma_f32 v40, -v42, v41, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v147, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v35, v43, v38
	v_rcp_f32_e32 v39, v33
	v_div_scale_f32 v38, s1, v139, v37, v139
	v_fmac_f32_e32 v41, v40, v41
	v_div_scale_f32 v40, null, v29, v29, v123
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v33, v39, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_fmas_f32 v30, v30, v36, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v36, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v149, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, s0, v141, v32, v141
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v144, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v34, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v40, v36, 1.0
	v_div_fixup_f32 v0, v30, v0, v143
	v_fma_f32 v43, -v33, v35, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v31, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v44, v38, v41 :: v_dual_fmac_f32 v35, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v131
	v_exp_f32_e32 v28, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v42, v44, v38
	v_fma_f32 v33, -v33, v35, v34
	v_div_scale_f32 v34, s3, v123, v29, v123
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v30, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v33, v33, v39, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_exp_f32_e32 v23, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v42, v44, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v31, v31, v138
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v34, v36
	v_rcp_f32_e32 v30, v43
	v_div_fmas_f32 v38, v38, v41, v44
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v195
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v40, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v35, v28, v36
	v_div_fixup_f32 v28, v33, v32, v141
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v38, v37, v139
	v_fma_f32 v38, -v43, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v37, null, v32, v32, v131
	v_fmac_f32_e32 v30, v38, v30
	v_fma_f32 v33, -v40, v35, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v145, v23
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v36, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, s0, v138, v31, v138
	v_div_fixup_f32 v22, v33, v29, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v34, v42
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v36, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v22, v146, v22 :: v_dual_mul_f32 v123, v140, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v43, v38, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v37, v35, 1.0
	v_dual_fmac_f32 v38, v40, v30 :: v_dual_fmac_f32 v35, v39, v35
	v_div_scale_f32 v39, s1, v131, v32, v131
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v33, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v43, v38, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v40, v39, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v36, v30, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v196
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v37, v40, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v33, null, v0, v0, v137
	v_div_fixup_f32 v30, v30, v31, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v43, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v115, v115, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v37, v40, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v135
	v_cndmask_b32_e64 v39, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v35, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v33, v36, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v32, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v43, v36
	v_div_scale_f32 v43, s1, v137, v0, v137
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v193
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v116, v116, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v34, v34, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v39, v35
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v28, v142, v28 :: v_dual_add_f32 v35, 1.0, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v41, v42, 1.0
	v_div_scale_f32 v45, null, v35, v35, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v29, v42
	v_div_scale_f32 v29, s0, v136, v34, v136
	v_mul_f32_e32 v40, v29, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v41, v40, v29
	v_fmac_f32_e32 v40, v32, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v38, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v43, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v29, -v41, v40, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v33, v37, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v29, v29, v42, v40
	v_div_scale_f32 v39, null, v32, v32, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v41, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v44, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v33, v37, v43
	v_rcp_f32_e32 v43, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v34, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v36, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v41, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, vcc_lo, v135, v32, v135
	v_fma_f32 v46, -v39, v44, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v117, v117, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v45, v43, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v38, v43
	v_div_fixup_f32 v0, v33, v0, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v37, v44
	v_div_scale_f32 v38, s0, v134, v35, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v118, v118, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v39, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v34, v38, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v33, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v0, v44
	v_fma_f32 v0, -v45, v34, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v39, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v0, v43
	v_div_scale_f32 v31, null, v29, v29, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v44, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v45, v34, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v30, v30, v32, v135
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v107, v107, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v36, v36, v130
	v_div_fmas_f32 v33, v33, v43, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s1, v130, v36, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v42
	v_div_fixup_f32 v33, v33, v35, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	v_exp_f32_e32 v35, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, s0, v98, v29, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v108, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v42, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v102
	v_ldexp_f32 v35, v35, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v0, v46
	v_rcp_f32_e32 v0, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v35, 1.0, v35 :: v_dual_mul_f32 v32, v37, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v42, v32, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v31, v0, 1.0
	v_fmac_f32_e32 v32, v39, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v0, v34, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v42, v32, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v38, v41, v0
	v_div_scale_f32 v42, null, v35, v35, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v31, v38, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	v_ldexp_f32 v34, v40, v34
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v42
	v_fmac_f32_e32 v38, v44, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v43, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v31, -v31, v38, v41
	v_div_fmas_f32 v32, v37, v46, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v100
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v31, v0, v38
	v_div_scale_f32 v41, null, v34, v34, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v43, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v42, v40, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v41
	v_div_fixup_f32 v0, v0, v29, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v37, 1.0, v37 :: v_dual_fmac_f32 v40, v39, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, vcc_lo, v133, v35, v133
	v_div_fixup_f32 v32, v32, v36, v130
	v_div_scale_f32 v29, null, v37, v37, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v36, v39, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v110, v110, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v31, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v29
	v_fma_f32 v43, -v41, v38, 1.0
	v_fma_f32 v44, -v42, v36, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v109, v109, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v43, v38
	v_div_scale_f32 v43, s0, v102, v34, v102
	v_fmac_f32_e32 v36, v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v29, v31, 1.0
	v_div_scale_f32 v44, null, v0, v0, v100
	v_mul_f32_e32 v32, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v42, v36, v39
	v_fmac_f32_e32 v31, v33, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v33, v44
	v_div_scale_f32 v42, s1, v99, v37, v99
	v_fma_f32 v39, -v41, v32, v43
	v_div_fmas_f32 v30, v30, v40, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v42, v31
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v32, v39, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v44, v33, 1.0
	v_div_fixup_f32 v30, v30, v35, v133
	v_fma_f32 v35, -v41, v32, v43
	v_div_scale_f32 v43, s3, v100, v0, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v33, v45, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v29, v40, v42
	v_div_fmas_f32 v32, v35, v38, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v43, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v41, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v44, v35, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v29, v40, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v45
	v_ldexp_f32 v36, v39, v36
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v125
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v43, -v44, v35, v43
	v_div_fmas_f32 v29, v29, v31, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v46
	v_ldexp_f32 v38, v41, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v37, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, null, v36, v36, v127
	v_div_fmas_f32 v33, v43, v33, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v101, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v33, v0, v100
	v_div_scale_f32 v39, null, v35, v35, v126
	v_div_scale_f32 v29, s0, v126, v35, v126
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v128, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v42, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v45, null, v31, v31, v125
	v_fmac_f32_e32 v40, v38, v40
	v_div_scale_f32 v38, vcc_lo, v127, v36, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v39, v43, 1.0
	v_rcp_f32_e32 v33, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v46, v38, v40 :: v_dual_fmac_f32 v43, v37, v43
	v_mul_f32_e32 v37, v29, v43
	v_div_fixup_f32 v32, v32, v34, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v42, v46, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v102, v132, v0
	v_mul_f32_e32 v100, v129, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v34, v40
	v_fma_f32 v34, -v45, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v42, v46, v38
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, s1, v125, v31, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v40, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v34, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v32, v36, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v45, v42, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v91, v91, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v32, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v45, v42, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v44, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v39, v37, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v37, v41, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v0, v0, v93
	v_fma_f32 v29, -v39, v37, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, s3, v93, v0, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v32, v32, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v38, v40, 1.0
	v_fmac_f32_e32 v40, v36, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v29, v29, v43, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v37, v41, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v35, v126
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v43, -v38, v37, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v92, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v34, v33, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v39, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v46
	v_fmac_f32_e32 v37, v43, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v33, v31, v125
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v33, -v38, v37, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v45
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v179
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v34, v34, v120
	v_fma_f32 v39, -v46, v36, 1.0
	v_div_fmas_f32 v33, v33, v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v38
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, s0, v121, v32, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v33, v0, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v39, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v38, v37, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v94, v94, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v46, v41, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, s1, v120, v34, v120
	v_div_scale_f32 v43, null, v0, v0, v119
	v_fmac_f32_e32 v41, v35, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v35, v42, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v93, v122, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v40, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v46, v41, v39
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v39, -v38, v35, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v36, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v39, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v33, -v43, v29, 1.0
	v_div_scale_f32 v36, null, v30, v30, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v32, v121
	v_fma_f32 v32, -v38, v35, v42
	v_fmac_f32_e32 v29, v33, v29
	v_div_scale_f32 v33, s0, v119, v0, v119
	v_rcp_f32_e32 v38, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v41, v33, v29
	v_div_fmas_f32 v32, v32, v37, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	v_exp_f32_e32 v40, v40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v36, v38, 1.0
	v_div_fixup_f32 v32, v32, v34, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v113
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v43, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, s1, v83, v30, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v34, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v40, v39
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v42, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v43, v41, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v36, v39, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v35, v37, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v37, null, v34, v34, v114
	v_fmac_f32_e32 v39, v43, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v37
	v_div_fmas_f32 v29, v33, v29, v41
	v_fma_f32 v33, -v36, v39, v42
	v_div_scale_f32 v45, null, v35, v35, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v29, v0, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v42, v45
	v_div_fmas_f32 v33, v33, v38, v39
	v_fma_f32 v46, -v37, v44, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, vcc_lo, v114, v34, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v43, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v46, v44
	v_div_fixup_f32 v30, v33, v30, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v45, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_mul_f32 v41, v39, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v86, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v40, v42
	v_div_scale_f32 v40, s0, v113, v35, v113
	v_fma_f32 v29, -v37, v41, v39
	v_div_scale_f32 v43, null, v38, v38, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v30, v40, v42 :: v_dual_mul_f32 v85, v85, v0
	v_fmac_f32_e32 v41, v29, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v33, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v45, v30, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v124, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v37, v41, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v84, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v29, v42
	v_div_scale_f32 v36, s1, v78, v38, v78
	v_div_fmas_f32 v31, v31, v44, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v43, v46, 1.0
	v_div_scale_f32 v32, null, v0, v0, v77
	v_fma_f32 v33, -v45, v30, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v46, v29, v46
	v_rcp_f32_e32 v29, v32
	v_div_fmas_f32 v30, v33, v42, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v106
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v34, v114
	v_mul_f32_e32 v33, v36, v46
	v_div_fixup_f32 v30, v30, v35, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v39
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, s0, v77, v0, v77
	v_fma_f32 v34, -v32, v29, 1.0
	v_fma_f32 v39, -v43, v33, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v105
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v76, v76, v30 :: v_dual_mul_f32 v75, v75, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v34, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	v_ldexp_f32 v35, v35, v37
	v_exp_f32_e32 v40, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v39, v46
	v_mul_f32_e32 v37, v41, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v43, v33, v36
	v_fma_f32 v44, -v32, v37, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v35, v35, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v40, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v44, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v32, v37, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v41, null, v34, v34, v105
	v_div_fmas_f32 v33, v36, v46, v33
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v42, v39
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v43, v40, 1.0
	v_div_fmas_f32 v29, v32, v29, v37
	v_rcp_f32_e32 v37, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v39, v40
	v_div_scale_f32 v39, vcc_lo, v106, v35, v106
	v_div_fixup_f32 v33, v33, v38, v78
	v_div_fixup_f32 v0, v29, v0, v77
	v_div_scale_f32 v29, null, v36, v36, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v38, v39, v40
	v_fma_f32 v42, -v41, v37, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v112, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v32, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v29
	v_fma_f32 v44, -v43, v38, v39
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, s0, v105, v34, v105
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v38, v44, v40 :: v_dual_mul_f32 v77, v111, v33
	v_mul_f32_e32 v30, v42, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v172
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v29, v32, 1.0
	v_div_scale_f32 v44, null, v0, v0, v104
	v_fma_f32 v31, -v43, v38, v39
	v_fma_f32 v39, -v41, v30, v42
	v_fmac_f32_e32 v32, v33, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v44
	v_div_scale_f32 v43, s1, v103, v36, v103
	v_fmac_f32_e32 v30, v39, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v40, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v43, v32
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v44, v33, 1.0
	v_div_fixup_f32 v31, v31, v35, v106
	v_fma_f32 v35, -v41, v30, v42
	v_div_scale_f32 v42, s3, v104, v0, v104
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v45, v33
	v_fma_f32 v41, -v29, v40, v43
	v_div_fmas_f32 v30, v35, v37, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v35, v42, v33 :: v_dual_fmac_f32 v40, v41, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v38, v39, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v44, v35, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v29, v40, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_fmac_f32 v35, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v45
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v43, null, v38, v38, v97
	v_div_fmas_f32 v29, v29, v32, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v43
	v_fma_f32 v42, -v44, v35, v42
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v41, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v34, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v29, v29, v36, v103
	v_div_fmas_f32 v33, v42, v33, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v43, v40, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v33, v0, v104
	v_div_scale_f32 v39, null, v35, v35, v96
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v37, v40
	v_div_scale_f32 v37, vcc_lo, v97, v38, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v45, null, v32, v32, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v46, v37, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v70, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v69, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v43, v46, v37
	v_div_scale_f32 v29, s0, v96, v35, v96
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v39, v42, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v68, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v34, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v44, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v67, v67, v31 :: v_dual_fmac_f32 v42, v36, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v45, v33, 1.0
	v_fma_f32 v30, -v43, v46, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v36, v29, v42 :: v_dual_fmac_f32 v33, v34, v33
	v_div_scale_f32 v34, s1, v95, v32, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v40, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v0, v0, v58
	v_fma_f32 v41, -v39, v36, v29
	v_mul_f32_e32 v43, v34, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v41, v42
	v_fma_f32 v31, -v45, v43, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v90
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v38, v97
	v_fma_f32 v29, -v39, v36, v29
	v_fmac_f32_e32 v43, v31, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v46
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v37, v40, 1.0
	v_div_scale_f32 v41, s3, v58, v0, v58
	v_fma_f32 v34, -v45, v43, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v89 :: v_dual_fmac_f32 v40, v38, v40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v42, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v36, v41, v40 :: v_dual_add_f32 v31, 1.0, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v59, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v35, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v42, -v37, v36, v41
	v_div_scale_f32 v46, null, v31, v31, v90
	v_div_fmas_f32 v33, v34, v33, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v39, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v42, v40
	v_rcp_f32_e32 v38, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v33, v32, v95
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v37, v36, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v61, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v34, v34, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v46, v38, 1.0
	v_div_fmas_f32 v33, v33, v40, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v60, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v39, v38
	v_div_scale_f32 v39, s0, v90, v31, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v33, v0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v39, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v37, v36, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v62, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v46, v41, v39
	v_fmac_f32_e32 v36, v42, v36
	v_div_scale_f32 v42, s1, v89, v34, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v35, v38
	v_div_scale_f32 v43, null, v0, v0, v52
	v_mul_f32_e32 v35, v42, v36
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v46, v41, v39
	v_rcp_f32_e32 v29, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v37, v35, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v40, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v38, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v35, v39, v36 :: v_dual_add_f32 v30, 1.0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v31, v32, v31, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v37, v35, v42
	v_div_scale_f32 v37, null, v30, v30, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v43, v29, 1.0
	v_div_fmas_f32 v32, v32, v36, v35
	v_rcp_f32_e32 v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v203
	v_cndmask_b32_e64 v36, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v33, v29
	v_div_scale_f32 v33, s0, v52, v0, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v33, v29
	v_fma_f32 v42, -v37, v38, 1.0
	v_div_fixup_f32 v34, v32, v34, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v43, v41, v33
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, s1, v54, v30, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v40, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v32, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v32, v42, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v36, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v43, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v37, v32, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v27, v27, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v43, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v36
	v_div_scale_f32 v43, null, v35, v35, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v212, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v33, v29, v41
	v_fma_f32 v33, -v37, v32, v42
	v_rcp_f32_e32 v42, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v36, v26, 1.0
	v_div_fmas_f32 v32, v33, v38, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v40, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, vcc_lo, v203, v27, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v41, 0xbfb8aa3b, v72 :: v_dual_fmac_f32 v26, v44, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v43, v42, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v32, v30, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v38, v26
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s0, v82, v35, v82
	v_div_scale_f32 v44, null, v33, v33, v81
	v_div_fixup_f32 v0, v29, v0, v52
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v88, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v36, v41, v38
	v_mul_f32_e32 v30, v39, v42
	v_rcp_f32_e32 v45, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v32, v87, v0 :: v_dual_fmac_f32 v41, v29, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v43, v30, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v0, v40, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v213, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v36, v41, v38
	v_fmac_f32_e32 v30, v29, v42
	v_fma_f32 v29, -v44, v45, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v31, v26, v41
	v_fma_f32 v31, -v43, v30, v39
	v_fmac_f32_e32 v45, v29, v45
	v_div_scale_f32 v29, s1, v81, v33, v81
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v34, null, v0, v0, v72
	v_div_fmas_f32 v25, v31, v42, v30
	v_mul_f32_e32 v30, v29, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v34
	v_div_fixup_f32 v26, v26, v27, v203
	v_div_fixup_f32 v25, v25, v35, v82
	v_fma_f32 v24, -v44, v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v71
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v24, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v34, v31, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v66
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s3
	v_exp_f32_e32 v2, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v44, v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v21, v31
	v_div_scale_f32 v39, s0, v72, v0, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v57
	v_ldexp_f32 v24, v24, v36
	v_exp_f32_e32 v36, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v2, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v45, v30
	v_mul_f32_e32 v30, v39, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v33, v81
	v_fma_f32 v38, -v34, v30, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v24, v24, v71
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v30, v38, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v27, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v35
	v_div_scale_f32 v27, null, v2, v2, v66
	v_fma_f32 v34, -v34, v30, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v36, v36, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v27
	v_div_fmas_f32 v30, v34, v31, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v31, null, v21, v21, v57
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v35, v33, 1.0
	v_div_scale_f32 v34, vcc_lo, v71, v24, v71
	v_rcp_f32_e32 v41, v31
	v_div_fixup_f32 v0, v30, v0, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v33, v38, v33
	v_fma_f32 v38, -v27, v39, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v79, v29
	v_mul_f32_e32 v44, v74, v25
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v37, v40, 1.0
	v_mul_f32_e32 v42, v34, v33
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s0, v66, v2, v66
	v_fma_f32 v43, -v31, v41, 1.0
	v_fmac_f32_e32 v40, v30, v40
	v_div_scale_f32 v30, s1, v65, v36, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v80, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v35, v42, v34
	v_mul_f32_e32 v47, v38, v39
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, s3, v57, v21, v57
	v_mul_f32_e32 v48, v30, v40
	v_fmac_f32_e32 v42, v0, v33
	v_fma_f32 v0, -v27, v47, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v43, v41
	v_fma_f32 v29, -v37, v48, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v35, v42, v34
	v_fmac_f32_e32 v47, v0, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v0, -v31, v49, v43
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v34, |v77|, |v67|, |v68|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v29, v40
	v_div_fmas_f32 v25, v25, v33, v42
	v_fma_f32 v27, -v27, v47, v38
	v_fmac_f32_e32 v49, v0, v41
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v0, -v37, v48, v30
	v_div_fixup_f32 v24, v25, v24, v71
	v_div_fmas_f32 v27, v27, v39, v47
	v_fma_f32 v29, -v31, v49, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v43, v73, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v40, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v27, v2, v66
	v_div_fmas_f32 v29, v29, v41, v49
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v25, |v123|, |v28|
	v_max3_f32 v26, |v23|, |v115|, |v116|
	v_max3_f32 v27, |v107|, |v108|, |v109|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v36, v65
	v_div_fixup_f32 v21, v29, v21, v57
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v29, |v110|, |v19|, |v17|
	v_max3_f32 v30, |v83|, |v84|, |v85|
	v_max3_f32 v31, |v86|, |v15|, |v14|
	v_max_f32_e64 v33, |v75|, |v76|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v55, v21
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, v25, |v22|, v26
	v_max3_f32 v25, v27, v29, |v18|
	v_max_f32_e64 v26, |v99|, |v100|
	v_max3_f32 v27, |v101|, |v91|, |v92|
	v_max3_f32 v36, |v59|, |v60|, |v61|
	v_max3_f32 v37, |v62|, |v11|, |v9|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v64, v0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v117|, |v118|, |v20|
	v_max3_f32 v29, |v93|, |v94|, |v16|
	v_max3_f32 v26, v26, |v102|, v27
	v_max3_f32 v27, v30, v31, |v13|
	v_max3_f32 v30, |v69|, |v70|, |v12|
	v_max3_f32 v31, v33, |v78|, v34
	v_max3_f32 v33, v36, v37, |v10|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v37, v63, v2 :: v_dual_mul_f32 v36, v56, v24
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v21, v0, v25
	v_max3_f32 v2, v26, v29, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v21, v31, v30, v33
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v27, |v36|, |v37|, |v38|
	v_max3_f32 v29, |v35|, |v5|, |v6|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v30, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v21, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v24, |v51|, |v52|
	v_max3_f32 v26, |v45|, |v46|, |v8|
	v_max3_f32 v27, v27, v29, |v7|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v29, v30, v30 :: v_dual_max_f32 v30, v31, v31
	v_dual_max_f32 v40, v2, v29 :: v_dual_and_b32 v31, 3, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v41, v21, v30
	v_max3_f32 v25, |v32|, |v43|, |v44|
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v2, v31, 9, 0
	v_and_b32_e32 v29, 0x80, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, v24, |v54|, v25
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v25, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v34, 3, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, v24, v26, v27
	v_dual_max_f32 v25, v25, v25 :: v_dual_lshlrev_b32 v24, 5, v31
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v26, 0x60, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v21, v27, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v39, v0, v25 :: v_dual_and_b32 v0, 4, v200
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt vmcnt(0)
	v_and_or_b32 v30, 0x680, v53, v24
	v_lshlrev_b32_e32 v25, 1, v29
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v21, v21, v21
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v33, v24, v26
	v_lshl_add_u32 v2, v0, 2, v2
	v_xor_b32_e32 v30, v30, v26
	v_lshl_add_u32 v47, v0, 6, 0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v42, v27, v21
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v29, 0, v29
	v_lshl_add_u32 v2, v1, 4, v2
	v_lshlrev_b32_e32 v1, 3, v1
	v_add3_u32 v21, v47, v34, v30
	v_lshlrev_b32_e32 v0, 5, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, v2, v25, v33
	ds_store_b128 v2, v[39:42]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[39:42], v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v2, v39 :: v_dual_mov_b32 v21, v40
	v_dual_mov_b32 v27, v41 :: v_dual_max_f32 v30, v39, v39
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v33, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v27, v27 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v34, v42, v42
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v42, v42 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v2, v30, v2
	v_max_f32_e32 v30, v41, v41
	v_max_f32_e32 v21, v33, v21
	v_max_f32_e32 v33, v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v39, v2
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v27, v30, v27 :: v_dual_mov_b32 v40, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v30, v34, v33
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v33, v27
	v_mov_b32_dpp v40, v40 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v34, v30 :: v_dual_max_f32 v39, v39, v39
	v_mov_b32_dpp v33, v33 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v40, v40, v40
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v39 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v21, v21, v40 :: v_dual_max_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v39, v2
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v27, v27, v33 :: v_dual_mov_b32 v40, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v30, v30, v34
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v33, v27
	v_mov_b32_dpp v40, v40 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v34, v30 :: v_dual_max_f32 v39, v39, v39
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v40, v40, v40
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v39, v2, v39 :: v_dual_max_f32 v2, v33, v33
	v_dual_max_f32 v40, v21, v40 :: v_dual_max_f32 v21, v34, v34
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v33, 1, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v41, v27, v2
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v2, v31, 4, 0
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v42, v30, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v21, v29, v33, v1
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v31, 32, v167
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v2, v0, v1
	ds_store_b128 v21, v[39:42]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[39:42], v0
.Ltmp57:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v39, v39 :: v_dual_max_f32 v29, v41, v41
	v_max_f32_e32 v40, v40, v40
	v_max_f32_e32 v42, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v2, 0x2b8cbccc, v0 :: v_dual_max_f32 v33, 0x2b8cbccc, v29
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v167
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v40, 0x2b8cbccc, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, 0x2b8cbccc, v42
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v34, vcc_lo, v2, 0x40e00000, v2
	v_div_scale_f32 v39, null, 0x40e00000, 0x40e00000, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v27, v21
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s34, v0
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_add_co_u32 v29, s0, s34, v31
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v41, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v48, null, 0x40e00000, 0x40e00000, v40
	v_fma_f32 v30, -v21, v27, 1.0
	v_div_scale_f32 v49, null, 0x40e00000, 0x40e00000, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v27, v30, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v30, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v47, -v39, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v31, v34, v27
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v167
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[29:30]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v41, v47, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v21, v31, v34
	v_div_scale_f32 v47, s7, v33, 0x40e00000, v33
	v_fmac_f32_e32 v31, v0, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s4, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v21, -v21, v31, v34
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[29:30]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v30.h, 0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fmas_f32 v21, v21, v27, v31
	v_mul_f32_e32 v27, v47, v41
	v_rcp_f32_e32 v34, v48
	v_rcp_f32_e32 v31, v49
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v2, v21, 0x40e00000, v2
	v_fma_f32 v21, -v39, v27, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v27, v21, v41
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v21.l, v2.h
	v_mov_b16_e32 v21.h, v30.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v29, -v48, v34, 1.0
	v_fma_f32 v50, -v49, v31, 1.0
	v_fma_f32 v0, -v39, v27, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v31, v50, v31
	v_div_scale_f32 v50, s9, v42, 0x40e00000, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v21, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v27, v0, v41, v27
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s34, v167
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v47, v50, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v57, 0xffff0000, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v27, v27, 0x40e00000, v33
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v49, v47, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v72, null, v57, v57, v18
	v_div_scale_f32 v33, null, v57, v57, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v47, v2, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v73, v72
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v34, v29, v34
	v_div_scale_f32 v29, s8, v40, 0x40e00000, v40
	s_mov_b32 vcc_lo, s8
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v30.l, v27.h
	v_mov_b16_e32 v41.h, v30.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v53, v29, v34
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[0:1]
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v56, null, v57, v57, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v39, -v48, v53, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v58, null, v57, v57, v116
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v53, v39, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v63, v58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v29, -v48, v53, v29
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v2, v29, v34, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v29, v33
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v34, -v49, v47, v50
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v49, null, v57, v57, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v31, v34, v31, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v40, null, v57, v57, v28
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v34, 1, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v33, v29, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v31, v31, 0x40e00000, v42
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v41.l, v2.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v47, null, v57, v57, v22
	v_fmac_f32_e32 v29, v39, v29
	v_div_scale_f32 v39, vcc_lo, v123, v57, v123
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v41
	v_add3_u32 v1, v27, v34, 0x7fff
	v_mov_b16_e32 v30.l, v31.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v41, v39, v29
	v_fma_f32 v34, -v40, v42, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v27, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v48, v47
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v30, 1, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v33, v41, v39
	v_fmac_f32_e32 v42, v34, v42
	v_div_scale_f32 v50, s9, v28, v57, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v31, v30, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v41, v0, v29
	v_rcp_f32_e32 v0, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v30, v50, v42
	v_fma_f32 v31, -v47, v48, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v81, 0xffff0000, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v33, -v33, v41, v39
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v55, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v40, v30, v50
	v_fmac_f32_e32 v48, v31, v48
	v_div_scale_f32 v31, s10, v22, v57, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v49, v0, 1.0
	v_div_fmas_f32 v29, v33, v29, v41
	v_fmac_f32_e32 v30, v39, v42
	v_mul_f32_e32 v33, v31, v48
	v_rcp_f32_e32 v41, v56
	v_fmac_f32_e32 v0, v53, v0
	v_div_scale_f32 v53, s11, v23, v57, v23
	v_div_fixup_f32 v39, v29, v57, v123
	v_fma_f32 v29, -v40, v30, v50
	v_fma_f32 v40, -v47, v33, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v50, v53, v0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v81, v81, v83
	v_fma_f32 v64, -v56, v41, 1.0
	v_div_fmas_f32 v29, v29, v42, v30
	v_fmac_f32_e32 v33, v40, v48
	v_fma_f32 v30, -v49, v50, v53
	v_fma_f32 v42, -v58, v63, 1.0
	v_fmac_f32_e32 v41, v64, v41
	v_div_scale_f32 v40, s9, v115, v57, v115
	v_div_fixup_f32 v28, v29, v57, v28
	v_fma_f32 v29, -v47, v33, v31
	v_fmac_f32_e32 v50, v30, v0
	v_fmac_f32_e32 v63, v42, v63
	v_div_scale_f32 v42, null, v57, v57, v117
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v30, v40, v41
	v_div_scale_f32 v31, s12, v116, v57, v116
	v_div_fmas_f32 v29, v29, v48, v33
	v_fma_f32 v33, -v49, v50, v53
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v53, null, v57, v57, v118
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v47, -v56, v30, v40
	v_mul_f32_e32 v49, v31, v63
	v_div_fmas_f32 v0, v33, v0, v50
	v_rcp_f32_e32 v33, v53
	v_div_fixup_f32 v22, v29, v57, v22
	v_fmac_f32_e32 v30, v47, v41
	v_fma_f32 v47, -v58, v49, v31
	v_fma_f32 v50, -v42, v48, 1.0
	v_div_fixup_f32 v23, v0, v57, v23
	v_div_scale_f32 v29, s10, v117, v57, v117
	v_fma_f32 v0, -v56, v30, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v49, v47, v63 :: v_dual_fmac_f32 v48, v50, v48
	v_fma_f32 v40, -v53, v33, 1.0
	v_div_scale_f32 v50, null, v57, v57, v20
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v47, s9, v118, v57, v118
	v_div_fmas_f32 v0, v0, v41, v30
	v_fma_f32 v30, -v58, v49, v31
	v_mul_f32_e32 v31, v29, v48
	v_fmac_f32_e32 v33, v40, v33
	v_rcp_f32_e32 v56, v50
	v_div_scale_f32 v58, null, v57, v57, v107
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v40, v0, v57, v115
	v_div_fmas_f32 v30, v30, v63, v49
	v_fma_f32 v49, -v42, v31, v29
	v_mul_f32_e32 v63, v47, v33
	v_rcp_f32_e32 v65, v58
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v64, -v50, v56, 1.0
	v_fmac_f32_e32 v31, v49, v48
	v_fma_f32 v0, -v53, v63, v47
	v_div_scale_f32 v49, null, v57, v57, v108
	v_div_fixup_f32 v41, v30, v57, v116
	v_fmac_f32_e32 v56, v64, v56
	v_div_scale_f32 v30, s11, v20, v57, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v58, v65, 1.0
	v_fma_f32 v29, -v42, v31, v29
	v_fmac_f32_e32 v63, v0, v33
	v_rcp_f32_e32 v66, v49
	v_dual_mul_f32 v0, v30, v56 :: v_dual_fmac_f32 v65, v64, v65
	v_div_scale_f32 v64, s12, v107, v57, v107
	v_div_fmas_f32 v29, v29, v48, v31
	v_fma_f32 v31, -v53, v63, v47
	v_div_scale_f32 v53, null, v57, v57, v109
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v42, -v50, v0, v30
	v_mul_f32_e32 v48, v64, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v47, -v49, v66, 1.0
	v_div_fmas_f32 v31, v31, v33, v63
	v_rcp_f32_e32 v33, v53
	v_fmac_f32_e32 v0, v42, v56
	v_fma_f32 v63, -v58, v48, v64
	v_fmac_f32_e32 v66, v47, v66
	v_div_scale_f32 v71, s9, v108, v57, v108
	v_div_fixup_f32 v42, v29, v57, v117
	v_div_fixup_f32 v47, v31, v57, v118
	v_fma_f32 v29, -v50, v0, v30
	v_fmac_f32_e32 v48, v63, v65
	v_mul_f32_e32 v30, v71, v66
	v_fma_f32 v31, -v53, v33, 1.0
	v_div_scale_f32 v63, null, v57, v57, v110
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v50, -v49, v30, v71
	v_div_fmas_f32 v0, v29, v56, v0
	v_fma_f32 v29, -v58, v48, v64
	v_fmac_f32_e32 v33, v31, v33
	v_rcp_f32_e32 v31, v63
	v_div_scale_f32 v58, null, v57, v57, v19
	v_div_scale_f32 v56, s10, v109, v57, v109
	v_fmac_f32_e32 v30, v50, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v64, v58
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v50, v56, v33
	v_div_fmas_f32 v29, v29, v65, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v65, -v63, v31, 1.0
	v_div_fixup_f32 v20, v0, v57, v20
	v_fma_f32 v0, -v49, v30, v71
	v_div_scale_f32 v71, null, v57, v57, v17
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v48, v29, v57, v107
	v_fma_f32 v29, -v53, v50, v56
	v_fmac_f32_e32 v31, v65, v31
	v_div_scale_f32 v65, s11, v110, v57, v110
	v_fma_f32 v49, -v58, v64, 1.0
	v_div_fmas_f32 v0, v0, v66, v30
	v_rcp_f32_e32 v30, v71
	v_fmac_f32_e32 v50, v29, v33
	v_mul_f32_e32 v29, v65, v31
	v_fmac_f32_e32 v64, v49, v64
	v_div_scale_f32 v66, s9, v19, v57, v19
	v_div_fixup_f32 v49, v0, v57, v108
	v_fma_f32 v0, -v53, v50, v56
	v_fma_f32 v53, -v63, v29, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v56, v66, v64
	v_fma_f32 v74, -v71, v30, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, null, v81, v81, v85
	v_div_fmas_f32 v0, v0, v33, v50
	v_fmac_f32_e32 v29, v53, v31
	v_fma_f32 v33, -v58, v56, v66
	v_fmac_f32_e32 v30, v74, v30
	v_div_scale_f32 v53, s10, v17, v57, v17
	v_fma_f32 v74, -v72, v73, 1.0
	v_div_fixup_f32 v50, v0, v57, v109
	v_fma_f32 v0, -v63, v29, v65
	v_fmac_f32_e32 v56, v33, v64
	v_mul_f32_e32 v33, v53, v30
	v_div_scale_f32 v65, null, v81, v81, v99
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v63, s12, v18, v57, v18
	v_div_fmas_f32 v0, v0, v31, v29
	v_fma_f32 v29, -v58, v56, v66
	v_fma_f32 v31, -v71, v33, v53
	v_rcp_f32_e32 v58, v65
	v_div_scale_f32 v74, null, v81, v81, v100
	v_mul_f32_e32 v66, v63, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v31, v30
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v31, v74
	v_div_fmas_f32 v29, v29, v64, v56
	v_fma_f32 v64, -v72, v66, v63
	v_div_fixup_f32 v56, v0, v57, v110
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v79, -v65, v58, 1.0
	v_fma_f32 v0, -v71, v33, v53
	v_div_fixup_f32 v19, v29, v57, v19
	v_fmac_f32_e32 v66, v64, v73
	v_div_scale_f32 v29, s9, v99, v81, v99
	v_fmac_f32_e32 v58, v79, v58
	v_fma_f32 v53, -v74, v31, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v64, null, v81, v81, v102
	v_div_fmas_f32 v0, v0, v30, v33
	v_fma_f32 v30, -v72, v66, v63
	v_mul_f32_e32 v33, v29, v58
	v_fmac_f32_e32 v31, v53, v31
	v_div_scale_f32 v63, s10, v100, v81, v100
	v_div_scale_f32 v71, null, v81, v81, v101
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v53, v64
	v_div_fmas_f32 v30, v30, v73, v66
	v_fma_f32 v66, -v65, v33, v29
	v_mul_f32_e32 v72, v63, v31
	v_rcp_f32_e32 v79, v71
	v_div_fixup_f32 v17, v0, v57, v17
	v_div_fixup_f32 v18, v30, v57, v18
	v_fmac_f32_e32 v33, v66, v58
	v_fma_f32 v0, -v74, v72, v63
	v_div_scale_f32 v66, null, v81, v81, v91
	v_fma_f32 v73, -v64, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v65, v33, v29
	v_fmac_f32_e32 v72, v0, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v57, -v71, v79, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v53, v73, v53
	v_div_scale_f32 v30, s11, v102, v81, v102
	v_rcp_f32_e32 v65, v66
	v_fmac_f32_e32 v79, v57, v79
	v_div_scale_f32 v73, s12, v101, v81, v101
	v_div_fmas_f32 v29, v29, v58, v33
	v_fma_f32 v33, -v74, v72, v63
	v_div_scale_f32 v74, null, v81, v81, v92
	s_mov_b32 vcc_lo, s10
	v_dual_mul_f32 v63, v73, v79 :: v_dual_and_b32 v34, 0xffff0000, v2
	v_mul_f32_e32 v0, v30, v53
	v_div_fmas_f32 v31, v33, v31, v72
	v_rcp_f32_e32 v33, v74
	v_fma_f32 v58, -v66, v65, 1.0
	v_fma_f32 v72, -v71, v63, v73
	v_fma_f32 v57, -v64, v0, v30
	v_div_scale_f32 v80, s9, v91, v81, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v58, v65
	v_div_fixup_f32 v58, v31, v81, v100
	v_dual_fmac_f32 v0, v57, v53 :: v_dual_fmac_f32 v63, v72, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v74, v33, 1.0
	v_div_scale_f32 v72, null, v81, v81, v93
	v_div_fixup_f32 v57, v29, v81, v99
	v_fma_f32 v29, -v64, v0, v30
	v_mul_f32_e32 v30, v80, v65
	v_fmac_f32_e32 v33, v31, v33
	v_rcp_f32_e32 v31, v72
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v29, v53, v0
	v_fma_f32 v29, -v71, v63, v73
	v_fma_f32 v53, -v66, v30, v80
	v_div_scale_f32 v71, s10, v92, v81, v92
	v_div_scale_f32 v73, null, v81, v81, v94
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v30, v53, v65
	v_div_fmas_f32 v29, v29, v79, v63
	v_rcp_f32_e32 v53, v73
	v_mul_f32_e32 v79, v71, v33
	v_fma_f32 v82, -v72, v31, 1.0
	v_div_fixup_f32 v63, v0, v81, v102
	v_div_fixup_f32 v64, v29, v81, v101
	v_fma_f32 v0, -v66, v30, v80
	v_fma_f32 v29, -v74, v79, v71
	v_fmac_f32_e32 v31, v82, v31
	v_div_scale_f32 v82, null, v81, v81, v16
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v80, s11, v93, v81, v93
	v_fma_f32 v66, -v73, v53, 1.0
	v_div_fmas_f32 v0, v0, v65, v30
	v_fmac_f32_e32 v79, v29, v33
	v_rcp_f32_e32 v30, v82
	v_mul_f32_e32 v29, v80, v31
	v_fmac_f32_e32 v53, v66, v53
	v_div_scale_f32 v87, s9, v94, v81, v94
	v_div_fixup_f32 v65, v0, v81, v91
	v_fma_f32 v0, -v74, v79, v71
	v_rcp_f32_e32 v74, v88
	v_fma_f32 v66, -v72, v29, v80
	v_mul_f32_e32 v71, v87, v53
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v82, v30, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v33, v79
	v_fmac_f32_e32 v29, v66, v31
	v_fma_f32 v33, -v73, v71, v87
	v_fmac_f32_e32 v30, v89, v30
	v_div_scale_f32 v79, s10, v16, v81, v16
	v_fma_f32 v89, -v88, v74, 1.0
	v_div_fixup_f32 v66, v0, v81, v92
	v_fma_f32 v0, -v72, v29, v80
	v_fmac_f32_e32 v71, v33, v53
	v_mul_f32_e32 v33, v79, v30
	v_fmac_f32_e32 v74, v89, v74
	v_div_scale_f32 v89, null, v81, v81, v84
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v80, s12, v83, v81, v83
	v_div_fmas_f32 v0, v0, v31, v29
	v_fma_f32 v29, -v73, v71, v87
	v_fma_f32 v31, -v82, v33, v79
	v_rcp_f32_e32 v87, v89
	v_mul_f32_e32 v73, v80, v74
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v33, v31, v30
	v_rcp_f32_e32 v31, v90
	v_div_fmas_f32 v29, v29, v53, v71
	v_fma_f32 v53, -v88, v73, v80
	v_div_fixup_f32 v71, v0, v81, v93
	v_fma_f32 v0, -v82, v33, v79
	v_fma_f32 v91, -v89, v87, 1.0
	v_div_fixup_f32 v72, v29, v81, v94
	v_fmac_f32_e32 v73, v53, v74
	v_div_scale_f32 v29, s9, v84, v81, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v87, v91, v87
	v_fma_f32 v53, -v90, v31, 1.0
	v_div_scale_f32 v82, null, v81, v81, v86
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v79, s10, v85, v81, v85
	v_div_fmas_f32 v0, v0, v30, v33
	v_fma_f32 v30, -v88, v73, v80
	v_mul_f32_e32 v33, v29, v87
	v_fmac_f32_e32 v31, v53, v31
	v_rcp_f32_e32 v53, v82
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v80, null, v81, v81, v15
	v_div_fmas_f32 v30, v30, v74, v73
	v_fma_f32 v74, -v89, v33, v29
	v_mul_f32_e32 v88, v79, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v80
	v_div_fixup_f32 v16, v0, v81, v16
	v_div_fixup_f32 v73, v30, v81, v83
	v_fma_f32 v91, -v82, v53, 1.0
	v_fmac_f32_e32 v33, v74, v87
	v_div_scale_f32 v83, null, v81, v81, v14
	v_fma_f32 v0, -v90, v88, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v53, v91, v53
	v_div_scale_f32 v30, s11, v86, v81, v86
	v_fma_f32 v29, -v89, v33, v29
	v_rcp_f32_e32 v89, v83
	v_fma_f32 v74, -v80, v92, 1.0
	v_fmac_f32_e32 v88, v0, v31
	v_mul_f32_e32 v0, v30, v53
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, s12, v15, v81, v15
	v_fmac_f32_e32 v92, v74, v92
	v_div_fmas_f32 v29, v29, v87, v33
	v_fma_f32 v33, -v90, v88, v79
	v_fma_f32 v74, -v82, v0, v30
	v_fma_f32 v79, -v83, v89, 1.0
	v_div_scale_f32 v90, null, v81, v81, v13
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v87, v91, v92
	v_div_fmas_f32 v31, v33, v31, v88
	v_fmac_f32_e32 v0, v74, v53
	v_rcp_f32_e32 v33, v90
	v_fmac_f32_e32 v89, v79, v89
	v_div_scale_f32 v93, s9, v14, v81, v14
	v_fma_f32 v88, -v80, v87, v91
	v_div_fixup_f32 v74, v29, v81, v84
	v_fma_f32 v29, -v82, v0, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v30, v93, v89
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v79, v31, v81, v85
	v_fmac_f32_e32 v87, v88, v92
	v_fma_f32 v31, -v90, v33, 1.0
	v_div_scale_f32 v82, null, v55, v55, v75
	v_div_fmas_f32 v0, v29, v53, v0
	v_fma_f32 v53, -v83, v30, v93
	v_fma_f32 v29, -v80, v87, v91
	v_fmac_f32_e32 v33, v31, v33
	v_rcp_f32_e32 v31, v82
	v_div_scale_f32 v84, s10, v13, v81, v13
	v_fmac_f32_e32 v30, v53, v89
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v85, null, v55, v55, v76
	v_div_fmas_f32 v29, v29, v92, v87
	v_mul_f32_e32 v87, v84, v33
	v_div_fixup_f32 v80, v0, v81, v86
	v_fma_f32 v0, -v83, v30, v93
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v53, v85
	v_fma_f32 v88, -v82, v31, 1.0
	v_div_fixup_f32 v15, v29, v81, v15
	v_fma_f32 v29, -v90, v87, v84
	v_div_fmas_f32 v0, v0, v89, v30
	v_div_scale_f32 v89, null, v55, v55, v77
	v_fmac_f32_e32 v31, v88, v31
	v_div_scale_f32 v83, s11, v75, v55, v75
	v_fmac_f32_e32 v87, v29, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v91, v89
	v_fma_f32 v86, -v85, v53, 1.0
	v_mul_f32_e32 v29, v83, v31
	v_div_fixup_f32 v14, v0, v81, v14
	v_fma_f32 v0, -v90, v87, v84
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v53, v86, v53
	v_div_scale_f32 v86, s9, v76, v55, v76
	v_fma_f32 v84, -v82, v29, v83
	v_div_fmas_f32 v0, v0, v33, v87
	v_fma_f32 v87, -v89, v91, 1.0
	v_div_scale_f32 v88, null, v55, v55, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v84, v31
	v_div_fixup_f32 v13, v0, v81, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v87, v91 :: v_dual_mul_f32 v90, v86, v53
	v_rcp_f32_e32 v30, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v82, v29, v83
	v_div_scale_f32 v82, null, v55, v55, v67
	v_fma_f32 v33, -v85, v90, v86
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s10, v78, v55, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v83, v82
	v_fmac_f32_e32 v90, v33, v53
	v_div_fmas_f32 v0, v0, v31, v29
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v92, -v88, v30, 1.0
	v_div_scale_f32 v81, s12, v77, v55, v77
	v_fma_f32 v29, -v85, v90, v86
	v_div_scale_f32 v86, null, v55, v55, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v82, v83, 1.0
	v_mul_f32_e32 v85, v81, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v53, v90
	v_div_fixup_f32 v75, v0, v55, v75
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v83, v87, v83
	v_fma_f32 v53, -v89, v85, v81
	v_div_fixup_f32 v76, v29, v55, v76
	v_div_scale_f32 v29, s9, v67, v55, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v30, v92, v30 :: v_dual_fmac_f32 v85, v53, v91
	v_div_scale_f32 v87, null, v55, v55, v70
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v33, v84, v30
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v90, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v31, -v88, v33, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v33, v31, v30
	v_rcp_f32_e32 v31, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v88, v33, v84
	v_div_scale_f32 v84, null, v55, v55, v69
	v_div_fmas_f32 v0, v0, v30, v33
	v_fma_f32 v30, -v89, v85, v81
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v86, v31, 1.0
	v_mul_f32_e32 v33, v29, v83
	v_div_scale_f32 v81, s10, v68, v55, v68
	v_div_fmas_f32 v30, v30, v91, v85
	v_div_fixup_f32 v78, v0, v55, v78
	v_fma_f32 v85, -v82, v33, v29
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v77, v30, v55, v77
	v_div_scale_f32 v30, s11, v69, v55, v69
	v_fmac_f32_e32 v31, v53, v31
	v_rcp_f32_e32 v53, v84
	v_fmac_f32_e32 v33, v85, v83
	v_div_scale_f32 v85, null, v55, v55, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v82, v33, v29
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v84, v53, 1.0
	v_fmac_f32_e32 v53, v89, v53
	v_fma_f32 v89, -v87, v90, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v82, v30, v53
	v_fmac_f32_e32 v90, v89, v90
	v_mul_f32_e32 v88, v81, v31
	v_div_scale_f32 v89, s12, v70, v55, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v86, v88, v81
	v_fmac_f32_e32 v88, v0, v31
	v_div_fmas_f32 v0, v29, v83, v33
	v_fma_f32 v33, -v84, v82, v30
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v83, -v85, v91, 1.0
	v_fma_f32 v29, -v86, v88, v81
	v_div_scale_f32 v86, null, v55, v55, v59
	v_mul_f32_e32 v81, v89, v90
	v_fmac_f32_e32 v82, v33, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v31, v88
	v_rcp_f32_e32 v33, v86
	v_fmac_f32_e32 v91, v83, v91
	v_fma_f32 v31, -v87, v81, v89
	v_div_scale_f32 v83, s9, v12, v55, v12
	v_div_fixup_f32 v29, v29, v55, v68
	v_div_scale_f32 v68, null, v55, v55, v60
	v_div_fixup_f32 v0, v0, v55, v67
	v_fma_f32 v30, -v84, v82, v30
	v_fmac_f32_e32 v81, v31, v90
	v_mul_f32_e32 v67, v83, v91
	v_fma_f32 v31, -v86, v33, 1.0
	v_rcp_f32_e32 v84, v68
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, null, v55, v55, v61
	v_div_fmas_f32 v30, v30, v53, v82
	v_fma_f32 v53, -v87, v81, v89
	v_fma_f32 v82, -v85, v67, v83
	v_fmac_f32_e32 v33, v31, v33
	v_div_scale_f32 v87, s10, v59, v55, v59
	v_div_scale_f32 v89, null, v55, v55, v11
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v67, v82, v91
	v_div_fmas_f32 v31, v53, v90, v81
	v_rcp_f32_e32 v53, v88
	v_fma_f32 v82, -v68, v84, 1.0
	v_rcp_f32_e32 v90, v89
	v_mul_f32_e32 v81, v87, v33
	v_div_fixup_f32 v30, v30, v55, v69
	v_div_fixup_f32 v31, v31, v55, v70
	v_fma_f32 v69, -v85, v67, v83
	v_fmac_f32_e32 v84, v82, v84
	v_fma_f32 v70, -v86, v81, v87
	v_div_scale_f32 v82, s11, v60, v55, v60
	v_div_scale_f32 v85, null, v55, v55, v62
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v88, v53, 1.0
	v_div_fmas_f32 v67, v69, v91, v67
	v_fmac_f32_e32 v81, v70, v33
	v_mul_f32_e32 v69, v82, v84
	v_rcp_f32_e32 v70, v85
	v_fmac_f32_e32 v53, v83, v53
	v_div_scale_f32 v83, s9, v61, v55, v61
	v_div_fixup_f32 v12, v67, v55, v12
	v_fma_f32 v67, -v86, v81, v87
	v_fma_f32 v86, -v68, v69, v82
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v87, v83, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v85, v70, 1.0
	v_div_fmas_f32 v33, v67, v33, v81
	v_fmac_f32_e32 v69, v86, v84
	v_fma_f32 v67, -v88, v87, v83
	v_div_scale_f32 v81, s10, v62, v55, v62
	v_fmac_f32_e32 v70, v91, v70
	v_fma_f32 v86, -v89, v90, 1.0
	v_div_fixup_f32 v33, v33, v55, v59
	v_fma_f32 v59, -v68, v69, v82
	v_div_scale_f32 v82, null, v55, v55, v9
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v87, v67, v53
	v_mul_f32_e32 v67, v81, v70
	v_fmac_f32_e32 v90, v86, v90
	v_div_scale_f32 v68, s12, v11, v55, v11
	v_div_fmas_f32 v59, v59, v84, v69
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v69, -v88, v87, v83
	v_fma_f32 v83, -v85, v67, v81
	v_mul_f32_e32 v86, v68, v90
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v55, v55, v10
	v_div_fmas_f32 v53, v69, v53, v87
	v_fmac_f32_e32 v67, v83, v70
	v_fma_f32 v83, -v89, v86, v68
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v82, v84, 1.0
	v_rcp_f32_e32 v69, v88
	v_div_fixup_f32 v59, v59, v55, v60
	v_div_fixup_f32 v53, v53, v55, v61
	v_fma_f32 v60, -v85, v67, v81
	v_fmac_f32_e32 v86, v83, v90
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v61, s9, v9, v55, v9
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, null, v34, v34, v52
	v_div_fmas_f32 v60, v60, v70, v67
	v_fma_f32 v67, -v89, v86, v68
	v_mul_f32_e32 v68, v61, v84
	v_div_scale_f32 v70, null, v34, v34, v51
	v_fma_f32 v81, -v88, v69, 1.0
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v82, v68, v61
	v_rcp_f32_e32 v83, v70
	v_div_fmas_f32 v67, v67, v90, v86
	v_fmac_f32_e32 v69, v81, v69
	v_div_scale_f32 v81, s10, v10, v55, v10
	v_fmac_f32_e32 v68, v85, v84
	v_div_fixup_f32 v60, v60, v55, v62
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v86, v81, v69
	v_div_fixup_f32 v11, v67, v55, v11
	v_fma_f32 v85, -v70, v83, 1.0
	v_fma_f32 v61, -v82, v68, v61
	v_div_scale_f32 v82, null, v34, v34, v54
	v_fma_f32 v62, -v88, v86, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v85, v83
	v_div_fmas_f32 v61, v61, v84, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v82
	v_rcp_f32_e32 v67, v87
	v_fmac_f32_e32 v86, v62, v69
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v62, s11, v51, v34, v51
	v_div_scale_f32 v90, null, v34, v34, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v68, -v88, v86, v81
	v_div_fixup_f32 v9, v61, v55, v9
	v_fma_f32 v88, -v82, v85, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v67, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v68, v68, v69, v86
	v_div_scale_f32 v84, s9, v52, v34, v52
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s12, v54, v34, v54
	v_fmac_f32_e32 v67, v89, v67
	v_div_fixup_f32 v10, v68, v55, v10
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v88, v85
	v_div_scale_f32 v68, null, v34, v34, v43
	v_mul_f32_e32 v91, v84, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v82, v86, v88
	v_mul_f32_e32 v81, v62, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v69, -v87, v91, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v61, v85
	v_fma_f32 v89, -v70, v81, v62
	v_rcp_f32_e32 v61, v68
	v_fmac_f32_e32 v91, v69, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v89, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v69, -v87, v91, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v70, v81, v62
	v_fma_f32 v62, -v90, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v55, v83, v81
	v_fmac_f32_e32 v92, v62, v92
	v_div_scale_f32 v62, s10, v32, v34, v32
	v_div_scale_f32 v81, null, v34, v34, v44
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v70, v62, v92
	v_div_fixup_f32 v51, v55, v34, v51
	v_rcp_f32_e32 v83, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v84, -v90, v70, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v70, v84, v92
	v_div_fmas_f32 v67, v69, v67, v91
	v_fma_f32 v69, -v82, v86, v88
	v_fma_f32 v82, -v68, v61, 1.0
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v62, -v90, v70, v62
	v_div_fixup_f32 v52, v67, v34, v52
	v_fma_f32 v67, -v81, v83, 1.0
	v_div_fmas_f32 v69, v69, v85, v86
	s_mov_b32 vcc_lo, s10
	v_div_fmas_f32 v62, v62, v92, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v67, v83
	v_div_scale_f32 v67, s11, v44, v34, v44
	v_div_fixup_f32 v54, v69, v34, v54
	v_div_scale_f32 v69, null, v34, v34, v45
	v_dual_mul_f32 v70, v67, v83 :: v_dual_fmac_f32 v61, v82, v61
	v_div_scale_f32 v82, s9, v43, v34, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v85, v69
	v_div_fixup_f32 v32, v62, v34, v32
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v55, v82, v61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v68, v55, v82
	v_fmac_f32_e32 v55, v84, v61
	v_div_scale_f32 v84, null, v34, v34, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v68, v55, v82
	v_fma_f32 v68, -v81, v70, v67
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v82, -v69, v85, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v68, v83
	v_div_fmas_f32 v55, v62, v61, v55
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v62, s9, v45, v34, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v81, v70, v67
	v_div_fixup_f32 v43, v55, v34, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v84, v86, 1.0
	v_mul_f32_e32 v81, v62, v85
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v61, null, v34, v34, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v55, v86
	v_div_scale_f32 v55, s10, v46, v34, v46
	v_div_fmas_f32 v67, v67, v83, v70
	v_fma_f32 v70, -v69, v81, v62
	v_rcp_f32_e32 v68, v61
	v_mul_f32_e32 v83, v55, v86
	v_div_scale_f32 v82, null, v34, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v70, v85
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v70, -v84, v83, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v82
	v_div_scale_f32 v89, s11, v8, v34, v8
	v_fma_f32 v62, -v69, v81, v62
	v_fmac_f32_e32 v83, v70, v86
	v_fma_f32 v87, -v61, v68, 1.0
	v_div_fixup_f32 v44, v67, v34, v44
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v62, v62, v85, v81
	v_fma_f32 v55, -v84, v83, v55
	v_div_scale_f32 v81, null, v34, v34, v38
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v68, v87, v68
	v_div_scale_f32 v87, null, v34, v34, v37
	v_div_fmas_f32 v55, v55, v86, v83
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v90, -v82, v88, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v91, v87
	v_mul_f32_e32 v92, v89, v68
	v_div_fixup_f32 v45, v62, v34, v45
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s12, v36, v34, v36
	v_fma_f32 v67, -v61, v92, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v62, -v81, v83, 1.0
	v_div_fixup_f32 v46, v55, v34, v46
	v_fma_f32 v70, -v87, v91, 1.0
	v_div_scale_f32 v85, null, v34, v34, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v62, v83
	v_mul_f32_e32 v69, v90, v88
	v_dual_fmac_f32 v92, v67, v68 :: v_dual_fmac_f32 v91, v70, v91
	v_div_scale_f32 v70, s9, v37, v34, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v82, v69, v90
	v_fma_f32 v61, -v61, v92, v89
	v_div_scale_f32 v62, null, v34, v34, v5
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v69, v67, v88
	v_mul_f32_e32 v67, v70, v91
	v_div_fmas_f32 v61, v61, v68, v92
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v68, -v82, v69, v90
	v_fma_f32 v82, -v87, v67, v70
	v_div_fixup_f32 v8, v61, v34, v8
	v_div_scale_f32 v61, null, v34, v34, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v67, v82, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v87, v67, v70
	v_rcp_f32_e32 v70, v62
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v86, -v62, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v86, v70
	v_div_scale_f32 v86, s10, v5, v34, v5
	v_mul_f32_e32 v92, v86, v70
	v_div_fmas_f32 v68, v68, v88, v69
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v55, v55, v91, v67
	v_rcp_f32_e32 v67, v61
	v_div_scale_f32 v69, vcc_lo, v38, v34, v38
	v_div_fixup_f32 v36, v68, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v37, v55, v34, v37
	v_div_scale_f32 v68, null, v34, v34, v6
	v_mul_f32_e32 v84, v69, v83
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v61, v67, 1.0
	v_rcp_f32_e32 v82, v68
	v_fma_f32 v88, -v81, v84, v69
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v67, v55, v67
	v_div_scale_f32 v55, s9, v35, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v88, v83
	v_mul_f32_e32 v90, v55, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v68, v82, 1.0
	v_fma_f32 v69, -v81, v84, v69
	v_fma_f32 v81, -v62, v92, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v61, v90, v55
	v_fmac_f32_e32 v82, v89, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v69, v69, v83, v84
	v_fmac_f32_e32 v92, v81, v70
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v90, v88, v67
	s_mov_b32 s9, 0xc1000000
	v_div_scale_f32 v89, s11, v6, v34, v6
	v_fma_f32 v62, -v62, v92, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v55, -v61, v90, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v55, v67, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v62, v62, v70, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v89, v82
	v_div_fixup_f32 v35, v55, v34, v35
	v_div_fixup_f32 v5, v62, v34, v5
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v66
	v_rndne_f32_e32 v66, v74
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v74, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s12, v7, v34, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v57
	v_rndne_f32_e32 v57, v63
	v_rndne_f32_e32 v63, v71
	v_rndne_f32_e32 v71, v78
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v13
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v20, 15, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v91, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v96, v8
	v_and_b32_e32 v8, 15, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v68, v93, v89
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v61, -v85, v94, v91
	v_div_fixup_f32 v38, v69, v34, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v88, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v61, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v68, v93, v89
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v67, -v85, v94, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v61, v61, v82, v93
	s_mov_b32 vcc_lo, s12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v67, v67, v87, v94
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v61, v34, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v65
	v_rndne_f32_e32 v65, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v67, v34, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v39
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v47
	v_rndne_f32_e32 v47, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v56
	v_rndne_f32_e32 v56, v58
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v48, v48, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v64
	v_rndne_f32_e32 v64, v72
	v_rndne_f32_e32 v72, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v79
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v48
	v_and_b32_e32 v48, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v200
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_cvt_i32_f32_e32 v103, v7
	v_and_b32_e32 v7, 15, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v22, 6, v4
	v_xor_b32_e32 v23, v202, v26
	v_lshlrev_b32_e32 v26, 6, v200
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v5, v5, s9, 0x40e00000
	v_med3_f32 v6, v6, s9, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v88, v51
	v_cvt_i32_f32_e32 v89, v52
	v_cvt_i32_f32_e32 v90, v54
	v_cvt_i32_f32_e32 v91, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v22
	v_and_or_b32 v22, 0x1b00, v26, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v73, v17
	v_cvt_i32_f32_e32 v75, v16
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v77, v14
	v_cvt_i32_f32_e32 v82, v12
	v_cvt_i32_f32_e32 v83, v33
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v84, v53
	v_cvt_i32_f32_e32 v97, v36
	v_cvt_i32_f32_e32 v98, v37
	v_cvt_i32_f32_e32 v99, v38
	v_cvt_i32_f32_e32 v79, v29
	v_cvt_i32_f32_e32 v80, v30
	v_cvt_i32_f32_e32 v81, v31
	v_cvt_i32_f32_e32 v85, v11
	v_cvt_i32_f32_e32 v86, v9
	v_cvt_i32_f32_e32 v87, v10
	v_cvt_i32_f32_e32 v93, v44
	v_cvt_i32_f32_e32 v94, v45
	v_cvt_i32_f32_e32 v95, v46
	v_cvt_i32_f32_e32 v100, v35
	v_cvt_i32_f32_e32 v101, v5
	v_cvt_i32_f32_e32 v102, v6
	v_and_b32_e32 v5, 15, v34
	v_and_b32_e32 v6, 15, v28
	v_and_b32_e32 v9, 15, v39
	v_and_b32_e32 v10, 15, v40
	v_and_b32_e32 v11, 15, v41
	v_and_b32_e32 v12, 15, v42
	v_and_b32_e32 v14, 15, v47
	v_and_b32_e32 v28, 15, v55
	v_and_b32_e32 v29, 15, v56
	v_and_b32_e32 v31, 15, v58
	v_and_b32_e32 v32, 15, v61
	v_and_b32_e32 v33, 15, v62
	v_and_b32_e32 v34, 15, v63
	v_and_b32_e32 v35, 15, v64
	v_and_b32_e32 v44, 15, v69
	v_and_b32_e32 v45, 15, v70
	v_and_b32_e32 v46, 15, v71
	v_and_b32_e32 v47, 15, v72
	v_and_b32_e32 v56, 15, v60
	v_and_b32_e32 v60, 15, v88
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v63, 15, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v23, v25
	v_xad_u32 v26, v22, v201, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v30, 15, v57
	v_cvt_i32_f32_e32 v92, v43
	v_and_b32_e32 v16, 15, v49
	v_and_b32_e32 v17, 15, v50
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v73
	v_and_b32_e32 v36, 15, v75
	v_and_b32_e32 v37, 15, v65
	v_and_b32_e32 v38, 15, v66
	v_and_b32_e32 v39, 15, v67
	v_and_b32_e32 v40, 15, v68
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v42, 15, v77
	v_and_b32_e32 v43, 15, v78
	v_and_b32_e32 v52, 15, v82
	v_and_b32_e32 v53, 15, v83
	v_and_b32_e32 v54, 15, v59
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v68, 15, v96
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v71, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[5:8]
	ds_store_b128 v0, v[13:16] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v26
	ds_load_b128 v[13:16], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v26
	ds_load_b128 v[28:31], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v26
	ds_load_b128 v[44:47], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v26
	ds_load_b128 v[60:63], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[9:12]
	ds_store_b128 v0, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v26
	ds_load_b128 v[17:20], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v26
	ds_load_b128 v[40:43], v26 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v49, 15, v79
	v_and_b32_e32 v50, 15, v80
	v_and_b32_e32 v51, 15, v81
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v64, 15, v92
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	v_and_b32_e32 v67, 15, v95
	v_and_b32_e32 v72, 15, v100
	v_and_b32_e32 v73, 15, v101
	v_and_b32_e32 v74, 15, v102
	v_and_b32_e32 v75, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v26
	ds_load_b128 v[56:59], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v26
	ds_load_b128 v[68:71], v26 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v26, v43, 4, v35
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v199
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s34, v167
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v43
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
	v_lshl_or_b32 v18, v28, 4, v22
	v_lshl_or_b32 v19, v29, 4, v23
	v_lshl_or_b32 v20, v30, 4, v24
	v_lshl_or_b32 v22, v31, 4, v25
	v_lshl_or_b32 v23, v40, 4, v32
	v_lshl_or_b32 v24, v41, 4, v33
	v_lshl_or_b32 v25, v42, 4, v34
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
	v_lshl_or_b32 v28, v44, 4, v36
	v_lshl_or_b32 v29, v45, 4, v37
	v_lshl_or_b32 v30, v46, 4, v38
	v_lshl_or_b32 v31, v47, 4, v39
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v22.l
	v_and_b16 v0.h, 0xff, v20.l
	v_lshlrev_b16 v1.l, 8, v19.l
	v_and_b16 v2.l, 0xff, v18.l
	v_lshlrev_b16 v5.l, 8, v26.l
	v_and_b16 v5.h, 0xff, v25.l
	v_lshlrev_b16 v6.l, 8, v24.l
	v_and_b16 v6.h, 0xff, v23.l
	s_mov_b32 s12, s16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v68, 4, v64
	v_lshl_or_b32 v41, v69, 4, v65
	v_lshl_or_b32 v42, v70, 4, v66
	v_lshl_or_b32 v44, v71, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v31.l
	v_and_b16 v0.h, 0xff, v30.l
	v_lshlrev_b16 v1.l, 8, v29.l
	v_and_b16 v2.l, 0xff, v28.l
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v5.h, 0xff, v34.l
	v_lshlrev_b16 v6.l, 8, v33.l
	v_and_b16 v6.h, 0xff, v32.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v0.l, 8, v39.l
	v_and_b16 v0.h, 0xff, v38.l
	v_lshlrev_b16 v1.l, 8, v37.l
	v_and_b16 v2.l, 0xff, v36.l
	v_lshlrev_b16 v5.l, 8, v44.l
	v_and_b16 v5.h, 0xff, v42.l
	v_lshlrev_b16 v6.l, 8, v41.l
	v_and_b16 v6.h, 0xff, v40.l
	.loc	1 1253 9                        ; ragged.py:1253:9
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
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_dual_cndmask_b32 v0, 0x80000000, v10 :: v_dual_and_b32 v5, 2, v167
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[12:15], 0 offen
	buffer_store_b64 v[11:12], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v43
	v_mov_b16_e32 v2.l, v27.h
	v_mov_b16_e32 v1.l, v21.h
	v_add3_u32 v4, v4, v5, v43
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v197
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
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 244
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
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 244
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28500
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 244
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 244
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 60
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
