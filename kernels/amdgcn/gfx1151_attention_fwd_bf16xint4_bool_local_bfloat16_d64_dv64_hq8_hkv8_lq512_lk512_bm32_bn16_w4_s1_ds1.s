	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x80
	s_load_b32 s35, s[0:1], 0x5c
.Ltmp0:
	.loc	1 787 79 prologue_end           ; attention.py:787:79
	v_and_b32_e32 v1, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s34, s2, 5
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s36, s3, 9
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v2, 3, v1
	.loc	1 787 26 is_stmt 0              ; attention.py:787:26
	s_add_i32 s15, s34, s36
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v5, s34, v3
	s_mov_b32 s7, 0x31027000
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v10, 4, v0
	v_and_b32_e32 v72, 16, v0
	v_lshlrev_b32_e32 v49, 1, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v5
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v11, 0x70, v49
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[60:61], null, s35, v3, v[2:3]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s35, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s6, s35, 4
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v10, v10, v11
	s_and_b32 s5, s5, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[3:4], null, s35, s15, v[60:61]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v73, 0, v10
	v_lshlrev_b32_e32 v2, 1, v3
	v_add_lshl_u32 v3, v3, s6, 1
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v6, 0x80000000, v3, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[2:5], v2, s[4:7], 0 offen
	buffer_load_b128 v[6:9], v6, s[4:7], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s34, s13
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s34, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, s14
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s14
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s4, 32
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x200
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s37, s6, 0x7ffffff0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 15
	s_mov_b32 s4, 0
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v73, v[2:5]
	s_waitcnt vmcnt(0)
	ds_store_b128 v73, v[6:9] offset:2048
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 28
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s38, s5, -16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s37, s38
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v17, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr17
.LBB0_3:                                ; %Flow117
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v61, 15, v0
	v_and_b32_e32 v68, 64, v0
	v_and_b32_e32 v70, 0x70, v0
	v_and_b32_e32 v69, 48, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v4, v8 :: v_dual_lshlrev_b32 v71, 4, v1
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v52, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v50, v8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_15
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x28
	s_load_b128 s[4:7], s[0:1], 0x64
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v50, 4, v70
	s_load_b128 s[8:11], s[0:1], 0x8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_lshlrev_b32_e32 v11, 5, v0
	s_lshr_b32 s1, s0, 29
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v51, 8, v50
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s34, v50
	v_lshlrev_b32_e32 v12, 2, v0
	v_lshlrev_b32_e32 v10, 3, v61
	v_or_b32_e32 v2, s34, v51
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v15, 0x180, v11
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v5, s14, v1
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v1, s14, v2
	v_and_b32_e32 v12, 52, v12
	v_and_b32_e32 v16, 2, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v52, 16, v50
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s39, s4, 0x3fb8aa3b
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s4, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s4, s3, s4
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s1, s5, s1
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s4, s6, s4
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v75, s12, v1
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s41, s4, s1
	v_cmp_eq_u32_e64 s1, 0, v68
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v79, s13, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v1, 32, v0
	v_lshrrev_b32_e32 v13, 2, v72
	v_or3_b32 v12, v12, v16, v15
	v_cndmask_b32_e64 v14, 0x90, 0, s1
	v_dual_mov_b32 v120, 0xff800000 :: v_dual_and_b32 v15, 1, v0
	v_lshrrev_b32_e32 v54, 4, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s34, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v10, v14, v10
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v82, v61, 7, v71
	v_lshrrev_b32_e32 v14, 1, v72
	v_bfe_u32 v55, v0, 5, 1
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_and_b32 v16, 14, v0
	v_or3_b32 v83, v13, v54, v10
	v_dual_mov_b32 v119, 0xff800000 :: v_dual_lshlrev_b32 v10, 5, v15
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v53, 24, v50
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v2, s14, v3
	v_xor_b32_e32 v9, 0x70, v82
	v_or3_b32 v84, v12, v14, v55
	v_dual_mov_b32 v116, 0 :: v_dual_and_b32 v13, 0x60, v0
	v_and_b32_e32 v14, 60, v49
	v_xor_b32_e32 v49, 0x120, v83
	v_dual_mov_b32 v123, 0xff800000 :: v_dual_lshlrev_b32 v12, 7, v16
	v_dual_mov_b32 v115, 0 :: v_dual_lshlrev_b32 v16, 1, v16
	v_lshl_or_b32 v10, v69, 2, v10
	.loc	1 761 22                        ; attention.py:761:22
	v_lshlrev_b32_e32 v62, 2, v61
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s34, v53
	v_lshrrev_b32_e32 v54, 3, v13
	v_lshl_or_b32 v13, v13, 3, v14
	v_add_nc_u32_e32 v95, 0, v9
	v_add_nc_u32_e32 v96, 0, v49
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v9, 0
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v76, s12, v2
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v80, s13, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v2, v1, 6, v82
	v_or3_b32 v85, v10, v16, v12
	v_xor_b32_e32 v10, 32, v84
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v3, s14, v4
	v_xor_b32_e32 v13, v13, v54
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v4, 0x70, v2, 0
	v_xad_u32 v6, v2, 48, 0
	v_add_nc_u32_e32 v98, 0, v10
	v_mov_b32_e32 v10, v49
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v74, s12, v5
	.loc	1 952 47                        ; attention.py:952:47
	v_add_nc_u32_e32 v78, s13, v5
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v5, 0x60, v2, 0
	ds_load_b128 v[21:24], v4
	ds_load_b128 v[17:20], v5
	v_xad_u32 v4, 0x50, v2, 0
	v_lshl_or_b32 v86, v15, 6, v13
	v_xor_b32_e32 v15, 20, v85
	v_xad_u32 v5, v2, 64, 0
	v_xad_u32 v7, v2, 32, 0
	v_xad_u32 v8, v2, 16, 0
	v_add_nc_u32_e32 v2, 0, v2
	v_xor_b32_e32 v14, 16, v84
	v_bfe_i32 v64, v0, 2, 1
	v_add_nc_u32_e32 v104, 0, v15
	v_mov_b32_e32 v15, v49
	ds_load_b128 v[29:32], v4
	ds_load_b128 v[25:28], v5
	ds_load_b128 v[37:40], v6
	ds_load_b128 v[33:36], v7
	ds_load_b128 v[45:48], v8
	ds_load_b128 v[41:44], v2
	v_xor_b32_e32 v4, 32, v82
	v_xor_b32_e32 v8, 0x60, v82
	v_bfe_i32 v54, v0, 0, 1
	v_and_b32_e32 v64, 0x90, v64
	v_add_nc_u32_e32 v97, 0, v14
	v_add_nc_u32_e32 v90, 0, v4
	v_add_nc_u32_e32 v94, 0, v8
	v_mov_b32_e32 v14, v49
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v77, s12, v3
	v_dual_mov_b32 v4, v49 :: v_dual_add_nc_u32 v81, s13, v3
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v3, 0, v1
	v_dual_mov_b32 v122, 0xff800000 :: v_dual_lshlrev_b32 v65, 1, v1
	v_dual_mov_b32 v118, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v1
	v_dual_mov_b32 v8, v49 :: v_dual_and_b32 v11, 0x160, v11
	v_xor_b32_e32 v63, 0x410, v86
	v_xor_b32_e32 v6, 64, v82
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_add_nc_u32 v87, 0, v62
	v_lshrrev_b32_e32 v66, 1, v68
	v_lshrrev_b32_e32 v67, 2, v70
	v_and_b32_e32 v54, 0x90, v54
	v_or3_b32 v88, v64, v1, v11
	v_add_nc_u32_e32 v107, 0, v63
	v_mad_u64_u32 v[63:64], null, s7, v51, v[61:62]
	v_xor_b32_e32 v2, 16, v82
	v_xor_b32_e32 v5, 48, v82
	v_xor_b32_e32 v7, 0x50, v82
	v_xor_b32_e32 v16, 48, v84
	v_xor_b32_e32 v55, 4, v85
	v_xor_b32_e32 v56, 8, v85
	v_xor_b32_e32 v57, 12, v85
	v_xor_b32_e32 v13, 16, v85
	v_xor_b32_e32 v58, 24, v85
	v_xor_b32_e32 v59, 28, v85
	v_dual_mov_b32 v121, 0xff800000 :: v_dual_lshlrev_b32 v110, 1, v61
	v_xor_b32_e32 v11, v54, v67
	v_dual_mov_b32 v117, 0xff800000 :: v_dual_add_nc_u32 v12, 0, v12
	v_xor_b32_e32 v54, 16, v88
	v_add_nc_u32_e32 v92, 0, v6
	v_add_nc_u32_e32 v108, v87, v65
	v_mov_b32_e32 v6, v49
	v_lshl_add_u32 v1, v72, 2, v3
	v_add_nc_u32_e32 v3, 0, v66
	v_mad_u64_u32 v[64:65], null, s7, v52, v[61:62]
	v_mad_u64_u32 v[65:66], null, s7, v53, v[61:62]
	v_mad_u64_u32 v[66:67], null, s7, v50, v[61:62]
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s33, v62
	v_add_nc_u32_e32 v89, 0, v2
	v_add_nc_u32_e32 v91, 0, v5
	v_add_nc_u32_e32 v93, 0, v7
	v_add_nc_u32_e32 v99, 0, v16
	v_add_nc_u32_e32 v100, 0, v55
	v_add_nc_u32_e32 v101, 0, v56
	v_add_nc_u32_e32 v102, 0, v57
	v_add_nc_u32_e32 v103, 0, v13
	v_add_nc_u32_e32 v105, 0, v58
	v_add_nc_u32_e32 v106, 0, v59
	v_add_nc_u32_e32 v109, v1, v110
	v_add_nc_u32_e32 v110, v3, v110
	v_add_nc_u32_e32 v111, v12, v11
	v_dual_mov_b32 v11, v49 :: v_dual_add_nc_u32 v112, 0, v54
	v_mov_b32_e32 v12, v49
	v_mov_b32_e32 v13, v49
	v_dual_mov_b32 v16, v49 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, v49
	v_mov_b32_e32 v3, v49
	v_mov_b32_e32 v5, v49
	v_mov_b32_e32 v7, v49
	v_lshl_or_b32 v113, s3, 8, v50
	v_mov_b32_e32 v67, 0
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s5, s7, s34
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[18:19], s[22:23]
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s40, s3, 5
	s_add_i32 s41, s41, s5
	s_and_b32 s29, s11, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s42, 0x76543210
	s_mov_b32 s28, s10
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention.py:0:21
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_waitcnt vmcnt(0)
	v_and_b16 v59.h, 0xff, v59.h
	v_and_b16 v59.l, 0xff, v59.l
	v_and_b16 v58.h, 0xff, v58.h
	v_and_b16 v58.l, 0xff, v58.l
	.loc	1 962 25 is_stmt 0              ; attention.py:962:25
	s_waitcnt lgkmcnt(0)
	.loc	1 962 34                        ; attention.py:962:34
	v_cmp_ne_u16_e64 s1, 0, v59.h
	v_cmp_ne_u16_e64 s3, 0, v59.l
	v_cmp_ne_u16_e64 s4, 0, v58.h
	v_cmp_ne_u16_e64 s5, 0, v58.l
	.loc	1 962 25                        ; attention.py:962:25
	s_barrier
	s_and_b32 s1, s8, s1
	s_and_b32 s3, s9, s3
	v_cndmask_b32_e64 v58, 0, 1, s1
	v_cndmask_b32_e64 v59, 0, 1, s3
	s_and_b32 s4, s6, s4
	s_and_b32 s5, s7, s5
	v_cndmask_b32_e64 v126, 0, 1, s4
	v_lshlrev_b16 v58.l, 8, v58.l
	v_cndmask_b32_e64 v127, 0, 1, s5
	v_lshlrev_b16 v58.h, 8, v59.l
	.loc	1 945 21 is_stmt 1              ; attention.py:945:21
	v_dual_mul_f32 v128, s39, v50 :: v_dual_add_nc_u32 v59, 0, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v58.l, v126.l, v58.l
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v129, s39, v51 :: v_dual_add_nc_u32 v126, 0, v84
	.loc	1 962 25                        ; attention.py:962:25
	v_or_b16 v58.h, v127.l, v58.h
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s14, s37, 1
	.loc	1 962 25                        ; attention.py:962:25
	ds_store_b16 v59, v58
	ds_store_b16_d16_hi v96, v58
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v58, v126
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v58, v97
	ds_load_u8_d16 v59, v98
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v59, v99
	ds_load_u8_d16 v126, v126 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v126, v97 offset:64
	ds_load_u8_d16 v127, v98 offset:64
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16_hi v127, v99 offset:64
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v130, s39, v52 :: v_dual_mul_f32 v131, s39, v53
	v_dual_mul_f32 v54, s39, v54 :: v_dual_mul_f32 v55, s39, v55
	v_dual_mul_f32 v56, s39, v56 :: v_dual_mul_f32 v57, s39, v57
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v122, v122, v122 :: v_dual_add_nc_u32 v139, v87, v68
	v_dual_max_f32 v120, v120, v120 :: v_dual_max_f32 v137, v117, v117
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v50.l, 1, v58.l
	v_and_b16 v50.h, 1, v58.h
	v_and_b16 v51.l, 1, v59.l
	v_and_b16 v51.h, 1, v59.h
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v119, v119, v119
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s6, 1, v50.l
	v_cmp_eq_u16_e64 s7, 1, v50.h
	.loc	1 967 26                        ; attention.py:967:26
	v_add_nc_u32_e32 v50, 0, v85
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v52.l, 1, v126.l
	v_and_b16 v52.h, 1, v126.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v59, 0xff800000, v128, s6
	.loc	1 962 25                        ; attention.py:962:25
	v_and_b16 v53.l, 1, v127.l
	v_and_b16 v53.h, 1, v127.h
	v_cmp_eq_u16_e64 s8, 1, v51.l
	v_cmp_eq_u16_e64 s9, 1, v51.h
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v50, v59
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v123, v123, v123 :: v_dual_add_nc_u32 v50, s14, v113
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s14, s37, 4
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s10, 1, v52.l
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s14, s14, s40
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[50:51], null, v50, s33, v[62:63]
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s14, s14, s33
	.loc	1 962 25                        ; attention.py:962:25
	v_cmp_eq_u16_e64 s11, 1, v52.h
	v_cmp_eq_u16_e64 s12, 1, v53.l
	v_cmp_eq_u16_e64 s13, 1, v53.h
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v51, s14, v62, 1
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v126, 0xff800000, v129, s7
	v_cndmask_b32_e64 v127, 0xff800000, v130, s8
	v_cndmask_b32_e64 v128, 0xff800000, v131, s9
	v_cndmask_b32_e64 v129, 0xff800000, v54, s10
	v_cndmask_b32_e64 v130, 0xff800000, v55, s11
	v_cndmask_b32_e64 v131, 0xff800000, v56, s12
	v_cndmask_b32_e64 v53, 0xff800000, v57, s13
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v50, 0x80000000, v50, s0
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b32 v100, v126
	ds_store_b32 v101, v127
	ds_store_b32 v102, v128
	ds_store_b32 v103, v129
	ds_store_b32 v104, v130
	ds_store_b32 v105, v131
	ds_store_b32 v106, v53
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v132, v50, s[28:31], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[55:56], v51, s[20:23], 0 offen
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v135, v121, v121 :: v_dual_add_nc_u32 v50, 0, v86
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b32 v[51:52], v50 offset1:32
	ds_load_2addr_b32 v[57:58], v107 offset1:32
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v50, v59, v126, v127
	v_max3_f32 v54, v128, v129, v130
	v_max_f32_e32 v138, v131, v53
.Ltmp2:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v134, v124, v124
	v_max_f32_e32 v136, v118, v118
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s14, 0xff800000, v125
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e64 v133.l, 0
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s37, s37, 16
	.loc	1 962 25                        ; attention.py:962:25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s37, s38
	.loc	1 962 25                        ; attention.py:962:25
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v140.l, v133.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v141.h, v133.l
	v_mov_b16_e64 v143.h, v133.l
	v_mov_b16_e64 v147.h, v133.l
	v_mov_b16_e64 v142.h, v133.l
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v151, v52
	v_mov_b32_e32 v153, v58
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v50, v50, v54, v138
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v149, v57
.Ltmp6:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v138.h, v133.l
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v151, v151 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v153, v153 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_permlanex16_b32 v54, v50, s42, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_dpp v149, v149 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v154, v58, v58 :: v_dual_max_f32 v151, v151, v151
	v_max_f32_e32 v153, v153, v153
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp9:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v54, v125, v50, v54
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v50, v51
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v148, v51, v51
	v_max_f32_e32 v150, v57, v57
	v_max_f32_e32 v149, v149, v149
.Ltmp12:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v155, v125, v54
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp14:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v128, v128, v54
	v_dual_sub_f32 v53, v53, v54 :: v_dual_max_f32 v152, v52, v52
	v_sub_f32_e32 v127, v127, v54
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v50, v50, v50
.Ltmp16:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v59, v59, v54
	v_sub_f32_e32 v126, v126, v54
	v_sub_f32_e32 v129, v129, v54
	v_sub_f32_e32 v131, v131, v54
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v50, v148, v50
	v_max_f32_e32 v148, v150, v149
	v_max_f32_e32 v150, v154, v153
.Ltmp18:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v53, v53
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_dual_sub_f32 v130, v130, v54 :: v_dual_max_f32 v149, v152, v151
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp19:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v152, v148
.Ltmp20:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v155, v155
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v129, v129
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v153, v149
	v_mov_b32_dpp v152, v152 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp22:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v126, v126
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v151, 0, v53, s13
.Ltmp23:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v53, v50
	v_mov_b32_dpp v153, v153 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v154, v150
.Ltmp24:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v125, 0, v155, s14
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v59, 0, v59, s6
	v_cndmask_b32_e64 v129, 0, v129, s10
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v153, v153, v153 :: v_dual_max_f32 v152, v152, v152
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v154, v154 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 1018 23                       ; attention.py:1018:23
	ds_store_b32 v108, v125
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v125, v59, 16, 1
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v149, v149, v153 :: v_dual_max_f32 v148, v148, v152
	v_max_f32_e32 v154, v154, v154
.Ltmp29:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s10, v59, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v59, v59, v125, 0x7fff
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v130, v130
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v153, v148
.Ltmp31:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v126, 0, v126, s7
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v155, v139
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v153, v153 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v139, v126, 16, 1
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v53, v53 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v131, v131
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v130, 0, v130, s11
.Ltmp36:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v125, v153, v153 :: v_dual_max_f32 v150, v150, v154
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v154, v149
.Ltmp38:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s11, v126, v126
	v_add3_u32 v126, v126, v139, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v125, v148, v125
	v_max_f32_e32 v53, v53, v53
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v154, v154 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v128, v128
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v131, 0, v131, s12
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v158, v129, 16, 1
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v153, v154, v154
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v160, v150
.Ltmp44:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s7, v129, v129
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v144.h, v133.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v129, v129, v158, 0x7fff
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v139, v149, v153
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v160, v160 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v127, 0, v127, s8
	v_cndmask_b32_e64 v128, 0, v128, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v131, v131
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v145.h, v133.l
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v154, v160, v160
.Ltmp49:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v156, v127, 16, 1
	v_cmp_o_f32_e64 s12, v127, v127
	v_bfe_u32 v157, v128, 16, 1
	v_cmp_o_f32_e64 s6, v128, v128
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v148, v150, v154
	v_max_f32_e32 v50, v50, v53
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v150, v125
.Ltmp52:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v53, v131, 16, 1
	v_add3_u32 v127, v127, v156, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v153, v148 :: v_dual_mov_b32 v152, v50
	v_mov_b32_dpp v150, v150 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v131, v131, v53, 0x7fff
	v_add3_u32 v128, v128, v157, 0x7fff
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v153, v153 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v152, v152 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v150, v150, v150
.Ltmp57:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v146.h, v133.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v159, v130, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v153, v153, v153 :: v_dual_max_f32 v152, v152, v152
	v_max_f32_e32 v125, v125, v150
.Ltmp59:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v130, v130
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v130, v130, v159, 0x7fff
	v_bfe_u32 v161, v151, 16, 1
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v50, v50, v152
.Ltmp61:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v120, v120, v125
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v152, v139
.Ltmp63:
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v149, v50
.Ltmp65:
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v57, v57, v120
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v152, v152 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v16, v16, v155
	v_mul_f32_e32 v6, v6, v155
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v149, v149 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v57, v57
	.loc	1 962 25                        ; attention.py:962:25
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v149, v149, v149
.Ltmp71:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v13, v13, v155
	v_mul_f32_e32 v15, v15, v155
	v_mul_f32_e32 v11, v11, v155
	v_mul_f32_e32 v10, v10, v155
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v57, 0, v57, s5
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v50, v50, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v119, v119, v50 :: v_dual_max_f32 v152, v152, v152
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v53, v51, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v139, v139, v152
.Ltmp75:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v51.l, 0x7fff, v59.h, s10
	v_cndmask_b16 v51.h, 0x7fff, v126.h, s11
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v122, v122, v139
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v52, v52, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v59, v52
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cndmask_b16 v52.l, 0x7fff, v127.h, s12
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v127, v57 :: v_dual_max_f32 v148, v148, v153
.Ltmp77:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v149, v134, v50
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v50, 0, v53, s4
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v155
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v127, v127 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v150, v135, v125
	v_max_f32_e32 v123, v123, v148
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v125, v50
.Ltmp81:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v59, 0, v59, s1
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v57, v57, v127
.Ltmp83:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v53, v124, v149
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v124
.Ltmp84:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v125, v125 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v53, v53
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v50, v50, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v148, v137, v148 :: v_dual_mov_b32 v127, v50
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v58, v58, v123 :: v_dual_sub_f32 v125, v117, v148
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v153, 0, v53, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v121
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v127, v127 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp89:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v58, v58
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v125, v125
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v155
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v58, 0, v58, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v135, v58
	v_mov_b32_dpp v135, v135 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v58, v58, v135
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v134, v59 :: v_dual_mov_b32 v137, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v134, v134 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v152, v136, v139
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v137, v137 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v59, v59, v134
.Ltmp96:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v126, v121, v150
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v134, v57 :: v_dual_mov_b32 v135, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp98:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v126, v126
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v134, v134 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v136, v118, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v135, v135 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v57, v57, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_add_f32_e32 v59, v59, v135
	v_add_f32_e32 v50, v50, v127
.Ltmp103:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v127, v136
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v121, 0, v126, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v118
.Ltmp104:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v135, v57
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_dpp v135, v135 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v158, 0, v127, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v117
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v163, 0, v125, s1
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v117, 24, v132
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v133.h, v55.l
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v134, v50 :: v_dual_and_b32 v125, 0xffff0000, v56
.Ltmp107:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v124, 0xffff0000, v55
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v58, v58, v137
.Ltmp109:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v52.h, 4, v132.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v140.h, v56.l
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v134, v134 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v118, 20, v132
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v137, v58
.Ltmp113:
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v52.h, v52.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v50, v50, v134
	v_add_f32_e32 v154, v57, v135
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v137, v137 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v136, v59
.Ltmp116:
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v57, v132, 0, 8
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v53, v50
.Ltmp118:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v57.h, v117.l, 15
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v157, v58, v137
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v136, v136 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v58, 8, v132
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v55.l, v57.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v56.h, v118.l, 15
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v156, v59, v136 :: v_dual_mov_b32 v159, v154
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v50, v50, v53
.Ltmp125:
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e64 v59.l, v132.h
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v53.l, v132.l, 15
	v_and_b16 v53.h, v132.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v126, v58, 0, 8
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v56.l, v58.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v127, v59, 0, 8
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v53.l
	v_cmp_lt_u16_e64 s3, 7, v53.h
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v55.h, 4, v58.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v132, v117, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v57.l, 4, v117.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v55.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v55.l, v52.h, -16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v58.l, 0, -16, s1
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v59.l, v126.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v56.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v117.l, v127.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v59.h, 0, -16, s3
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v57.h
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_and_b16 v55.h, v55.h, 15
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v58.h, v56.h, -16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v58.l, v53.l, v58.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v55.l, v52.h, v55.l, s4
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v59.l
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v53.l, 0, -16, s1
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s1, 0, v117.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v59.l, v53.h, v59.h
	v_cndmask_b16 v53.h, 0, -16, s3
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v118.l, v132.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v52.h, v55.h, -16
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v126, v58, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v53.l, v56.l, v53.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v56.l, v56.h, v58.h, s1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v58, v59, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v59.l, v57.h, v53.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v117.h, v57.l, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s5, 0, v118.l
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v118, v55, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v55.l, v55.h, v52.h, s4
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v53, v53, 0, 16
	v_bfe_i32 v59, v59, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v57.l, v57.l, v117.h, s5
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v117, v118
	v_bfe_i32 v55, v55, 0, 16
	v_bfe_i32 v56, v56, 0, 16
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v59, v59
	v_mul_f32_e32 v117, v133, v117
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v118, v126
	v_cvt_f32_i32_e32 v56, v56
	v_mul_f32_e32 v53, v124, v53
	v_mul_f32_e32 v59, v125, v59
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v141.l, v117.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v55, v124, v55
	v_cvt_f32_i32_e32 v58, v58
	v_bfe_i32 v57, v57, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v143.l, v53.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v118, v133, v118
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v147.l, v59.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v56, v140, v56
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v124, 1, v141
	v_mov_b16_e64 v138.l, v55.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v142.l, v118.h
	v_and_b32_e32 v133, 1, v147
	v_mov_b16_e64 v144.l, v56.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v58, v140, v58
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s1, v117, v117
	v_add3_u32 v117, v117, v124, 0x7fff
	v_and_b32_e32 v124, 1, v138
.Ltmp126:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v160, v156 :: v_dual_mul_f32 v57, v125, v57
	v_dual_mov_b32 v162, v157 :: v_dual_and_b32 v125, 1, v142
.Ltmp127:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v127, 1, v144
	v_mov_b16_e64 v145.l, v58.h
	v_cmp_o_f32_e64 s4, v55, v55
	v_add3_u32 v55, v55, v124, 0x7fff
	v_cmp_o_f32_e64 s3, v118, v118
	v_add3_u32 v118, v118, v125, 0x7fff
	v_and_b32_e32 v126, 1, v145
	v_and_b32_e32 v125, 1, v143
	v_cndmask_b16 v117.h, 0x7fff, v117.h, s1
	v_cndmask_b16 v134.h, 0x7fff, v55.h, s4
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v55, v151, v161, 0x7fff
	v_cmp_o_f32_e64 s1, v151, v151
	v_cndmask_b16 v52.h, 0x7fff, v128.h, s6
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s5, v53, v53
	v_add3_u32 v126, v58, v126, 0x7fff
	v_cndmask_b16 v117.l, 0x7fff, v118.h, s3
	v_add3_u32 v118, v53, v125, 0x7fff
	v_add3_u32 v124, v56, v127, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v53.l, 0x7fff, v129.h, s7
	v_cndmask_b16 v53.h, 0x7fff, v130.h, s8
	v_cndmask_b16 v55.l, 0x7fff, v131.h, s9
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s1
	ds_store_b16 v109, v51
	ds_store_b16_d16_hi v109, v51 offset:128
	ds_store_b16 v109, v52 offset:256
	ds_store_b16_d16_hi v109, v52 offset:384
	ds_store_b16 v109, v53 offset:512
	ds_store_b16_d16_hi v109, v53 offset:640
	ds_store_b16 v109, v55 offset:768
	ds_store_b16_d16_hi v109, v55 offset:896
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v124, v110
	ds_load_u16_d16 v125, v110 offset:128
	ds_load_u16_d16 v126, v110 offset:256
	ds_load_u16_d16 v127, v110 offset:384
	ds_load_u16_d16 v128, v110 offset:512
	ds_load_u16_d16 v129, v110 offset:640
	ds_load_u16_d16 v130, v110 offset:768
	ds_load_u16_d16 v131, v110 offset:896
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v146.l, v57.h
	v_add3_u32 v51, v59, v133, 0x7fff
	v_cmp_o_f32_e64 s6, v59, v59
	v_cmp_o_f32_e64 s1, v56, v56
	v_cmp_o_f32_e64 s3, v58, v58
	v_and_b32_e32 v132, 1, v146
	v_cmp_o_f32_e64 s4, v57, v57
	v_cndmask_b16 v134.l, 0x7fff, v118.h, s5
	s_waitcnt lgkmcnt(7)
	v_cndmask_b16 v53.h, 0x7fff, v124.h, s1
	s_waitcnt lgkmcnt(5)
	v_cndmask_b16 v53.l, 0x7fff, v126.h, s3
	v_add3_u32 v52, v57, v132, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v51.h, s6
	v_add_nc_u32_e32 v51, 0, v88
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v159, v159 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v160, v160 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s4
	.loc	1 1019 30                       ; attention.py:1019:30
	ds_load_u16_d16_hi v124, v110 offset:64
	ds_load_u16_d16_hi v125, v110 offset:192
	ds_load_u16_d16_hi v126, v110 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v127, v110 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v128, v110 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v129, v110 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v130, v110 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v131, v110 offset:960
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v111, v117, v134 offset1:8
	ds_store_2addr_b32 v111, v53, v52 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[132:135], v51
	ds_load_b128 v[140:143], v51 offset:1024
	ds_load_b128 v[136:139], v112
	ds_load_b128 v[144:147], v112 offset:1024
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v162, v162 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v1, v1, v155 :: v_dual_add_f32 v52, v156, v160
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v51, v154, v159
.Ltmp133:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v5, v5, v155 :: v_dual_fmac_f32 v50, v67, v153
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v53, v157, v162
.Ltmp135:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v52, v115, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v12, v12, v155 :: v_dual_fmac_f32 v51, v114, v121
	v_mul_f32_e32 v14, v14, v155
	v_dual_mul_f32 v4, v4, v155 :: v_dual_mov_b32 v67, v50
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v53, v116, v163 :: v_dual_mov_b32 v114, v51
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v155
	v_mov_b32_e32 v115, v52
	v_mov_b32_e32 v121, v150
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[132:139], v[124:131], v[9:16]
	v_mov_b32_e32 v116, v53
	v_mov_b32_e32 v118, v152
	v_mov_b32_e32 v117, v148
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[140:147], v[124:131], v[1:8]
	v_dual_mov_b32 v125, v54 :: v_dual_mov_b32 v124, v149
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc0 .LBB0_14
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s1, s37, s36
	.loc	1 939 32                        ; attention.py:939:32
	v_add_nc_u32_e32 v55, 0, v82
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s1, s1, s35
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v56, v49
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v50, s1, v60, 1
	v_mov_b16_e32 v58.l, 0
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s4, s41, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	v_mov_b16_e32 v58.h, v58.l
	buffer_load_b128 v[51:54], v50, s[24:27], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v50, v49
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v73, v[51:54]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[126:129], v55
	ds_load_b128 v[130:133], v89
	ds_load_b128 v[134:137], v90
	ds_load_b128 v[138:141], v91
	ds_load_b128 v[142:145], v92
	ds_load_b128 v[146:149], v93
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v51, v49
	v_mov_b32_e32 v52, v49
	v_mov_b32_e32 v53, v49
	v_mov_b32_e32 v54, v49
	v_mov_b32_e32 v55, v49
	v_mov_b32_e32 v57, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v56, v55
	v_mov_b32_e32 v55, v54
	v_mov_b32_e32 v54, v53
	v_mov_b32_e32 v53, v52
	v_mov_b32_e32 v52, v51
	v_mov_b32_e32 v51, v50
	v_mov_b32_e32 v50, v49
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[150:153], v94
	ds_load_b128 v[154:157], v95
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[126:133], v[41:48], v[50:57]
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v126, s37, v61
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[134:141], v[33:40], v[50:57]
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s1, v126, v74
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v126, v78
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[142:149], v[25:32], v[50:57]
	.loc	1 952 21                        ; attention.py:952:21
	s_and_b32 s1, s1, s3
	s_and_b32 s6, vcc_lo, s1
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[50:57], v[150:157], v[17:24], v[50:57]
	.loc	1 962 34                        ; attention.py:962:34
	s_and_saveexec_b32 s3, s6
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 955 25                        ; attention.py:955:25
	v_add_nc_u32_e32 v59, s4, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v128, 31, v59
	v_add_co_u32 v127, s1, s18, v59
	v_add_co_ci_u32_e64 v128, null, s19, v128, s1
	global_load_d16_hi_u8 v58, v[127:128], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s1, v126, v75
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v126, v79
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s7, vcc_lo, s1
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s3, s7
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v59, s4, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v128, 31, v59
	v_add_co_u32 v127, s1, s18, v59
	v_add_co_ci_u32_e64 v128, null, s19, v128, s1
	global_load_d16_u8 v58, v[127:128], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	v_mov_b16_e32 v59.l, 0
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s1, v126, v76
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v126, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v59.h, v59.l
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s1, s1, s3
	s_and_b32 s8, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s3, s8
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v127, s4, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v128, 31, v127
	v_add_co_u32 v127, s1, s18, v127
	v_add_co_ci_u32_e64 v128, null, s19, v128, s1
	global_load_d16_hi_u8 v59, v[127:128], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 951 30 is_stmt 1              ; attention.py:951:30
	v_cmp_ge_i32_e64 s1, v126, v77
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s3, v126, v81
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s9, vcc_lo, s1
	.loc	1 962 34 is_stmt 1              ; attention.py:962:34
	s_and_saveexec_b32 s3, s9
	s_cbranch_execz .LBB0_5
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v126, s4, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 962 34                        ; attention.py:962:34
	v_ashrrev_i32_e32 v127, 31, v126
	v_add_co_u32 v126, s1, s18, v126
	v_add_co_ci_u32_e64 v127, null, s19, v127, s1
	global_load_d16_u8 v59, v[126:127], off
	s_branch .LBB0_5
.LBB0_14:                               ; %Flow
	.loc	1 0 34                          ; attention.py:0:34
	v_mov_b32_e32 v17, v72
.LBB0_15:                               ; %._crit_edge
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_lshrrev_b32_e32 v0, 1, v0
	v_lshrrev_b32_e32 v18, 3, v68
	v_add_nc_u32_e32 v19, 0, v70
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 4, v0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s17, s17, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	ds_store_b128 v19, v[50:53]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v0, 0, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v0, v18, v71
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v18, 1, v69
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v19, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 2, v68
	v_or_b32_e32 v20, v0, v61
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 32, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v21, s34, v20
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v21, null, v19, v19, v9
	v_div_scale_f32 v23, null, v19, v19, v10
	v_div_scale_f32 v25, null, v19, v19, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v32, v21
	v_div_scale_f32 v27, null, v19, v19, v12
	v_rcp_f32_e32 v33, v23
	v_div_scale_f32 v29, null, v19, v19, v13
	v_div_scale_f32 v30, null, v19, v19, v14
	v_rcp_f32_e32 v34, v25
	v_rcp_f32_e32 v35, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v36, v29
	v_rcp_f32_e32 v37, v30
	v_fma_f32 v41, -v21, v32, 1.0
	v_fma_f32 v42, -v23, v33, 1.0
	v_div_scale_f32 v22, vcc_lo, v9, v19, v9
	v_div_scale_f32 v24, s1, v10, v19, v10
	v_fma_f32 v43, -v25, v34, 1.0
	v_fmac_f32_e32 v32, v41, v32
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v44, -v27, v35, 1.0
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v26, s2, v11, v19, v11
	v_fma_f32 v45, -v29, v36, 1.0
	v_fma_f32 v46, -v30, v37, 1.0
	v_dual_fmac_f32 v34, v43, v34 :: v_dual_mul_f32 v41, v22, v32
	v_mul_f32_e32 v42, v24, v33
	v_div_scale_f32 v28, s3, v12, v19, v12
	v_fmac_f32_e32 v35, v44, v35
	v_dual_fmac_f32 v37, v46, v37 :: v_dual_fmac_f32 v36, v45, v36
	v_mul_f32_e32 v43, v26, v34
	v_fma_f32 v47, -v21, v41, v22
	v_div_scale_f32 v38, s4, v13, v19, v13
	v_mul_f32_e32 v44, v28, v35
	v_fma_f32 v48, -v23, v42, v24
	v_div_scale_f32 v39, s5, v14, v19, v14
	v_fma_f32 v49, -v25, v43, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v41, v47, v32 :: v_dual_fmac_f32 v42, v48, v33
	v_mul_f32_e32 v45, v38, v36
	v_fma_f32 v50, -v27, v44, v28
	v_dual_mul_f32 v46, v39, v37 :: v_dual_fmac_f32 v43, v49, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v21, v41, v22
	v_fma_f32 v51, -v29, v45, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v44, v50, v35
	v_fma_f32 v22, -v23, v42, v24
	v_fma_f32 v23, -v25, v43, v26
	v_div_fmas_f32 v21, v21, v32, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v45, v51, v36
	v_fma_f32 v24, -v27, v44, v28
	v_div_fmas_f32 v22, v22, v33, v42
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v9, v21, v19, v9
	v_div_fmas_f32 v23, v23, v34, v43
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v31, null, v19, v19, v15
	v_div_fmas_f32 v21, v24, v35, v44
	v_div_fixup_f32 v10, v22, v19, v10
	v_div_scale_f32 v22, null, v19, v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v31
	v_div_fixup_f32 v12, v21, v19, v12
	v_fma_f32 v21, -v29, v45, v38
	v_div_scale_f32 v29, null, v19, v19, v2
	v_rcp_f32_e32 v25, v22
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v11, v23, v19, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v32, v29
	v_fma_f32 v23, -v30, v46, v39
	v_fma_f32 v24, -v31, v40, 1.0
	v_div_fmas_f32 v21, v21, v36, v45
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v26, null, v19, v19, v1
	v_div_scale_f32 v35, s4, v1, v19, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v21, v19, v13
	v_fma_f32 v36, -v29, v32, 1.0
	v_fma_f32 v21, -v22, v25, 1.0
	v_fmac_f32_e32 v40, v24, v40
	v_rcp_f32_e32 v24, v26
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v36, s5, v2, v19, v2
	v_fmac_f32_e32 v46, v23, v37
	v_div_scale_f32 v23, s2, v15, v19, v15
	v_fmac_f32_e32 v25, v21, v25
	v_div_scale_f32 v21, s3, v16, v19, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v28, v23, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v31, v28, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v33, v40
	v_fma_f32 v23, -v31, v28, v23
	v_mul_f32_e32 v31, v36, v32
	v_fma_f32 v27, -v30, v46, v39
	v_fma_f32 v30, -v26, v24, 1.0
	v_mul_f32_e32 v34, v21, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v27, v37, v46
	v_fmac_f32_e32 v24, v30, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v22, v34, v21
	v_div_scale_f32 v30, null, v19, v19, v3
	v_div_fixup_f32 v14, v27, v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v38, v35, v24
	v_fmac_f32_e32 v34, v33, v25
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v37, v30
	v_div_fmas_f32 v23, v23, v40, v28
	v_fma_f32 v27, -v26, v38, v35
	v_fma_f32 v21, -v22, v34, v21
	v_fma_f32 v22, -v29, v31, v36
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v23, v19, v15
	v_fmac_f32_e32 v38, v27, v24
	v_div_fmas_f32 v21, v21, v25, v34
	v_fmac_f32_e32 v31, v22, v32
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v33, -v30, v37, 1.0
	v_fma_f32 v25, -v26, v38, v35
	v_div_scale_f32 v26, null, v19, v19, v4
	v_div_scale_f32 v27, s2, v3, v19, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v24, v25, v24, v38
	v_fma_f32 v25, -v29, v31, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v37, v33, v37
	v_rcp_f32_e32 v29, v26
	v_div_fixup_f32 v1, v24, v19, v1
	v_div_fmas_f32 v25, v25, v32, v31
	v_div_scale_f32 v32, null, v19, v19, v8
	v_mul_f32_e32 v22, v27, v37
	v_div_fixup_f32 v16, v21, v19, v16
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v34, v32
	v_div_scale_f32 v23, null, v19, v19, v5
	v_fma_f32 v28, -v30, v22, v27
	v_fma_f32 v24, -v26, v29, 1.0
	v_div_fixup_f32 v2, v25, v19, v2
	v_div_scale_f32 v25, null, v19, v19, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v24, v29
	v_fma_f32 v38, -v32, v34, 1.0
	v_div_scale_f32 v24, null, v19, v19, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s5, v8, v19, v8
	v_fmac_f32_e32 v22, v28, v37
	v_rcp_f32_e32 v28, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v38, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v30, v22, v27
	v_rcp_f32_e32 v30, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_div_fmas_f32 v21, v21, v37, v22
	v_div_scale_f32 v27, vcc_lo, v4, v19, v4
	v_rcp_f32_e32 v22, v23
	v_fma_f32 v33, -v24, v28, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v21, v19, v3
	v_mul_f32_e32 v31, v27, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v25, v30, 1.0
	v_fmac_f32_e32 v28, v33, v28
	v_div_scale_f32 v33, s3, v6, v19, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v26, v31, v27
	v_fma_f32 v21, -v23, v22, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v30, v36, v30 :: v_dual_mul_f32 v39, v33, v28
	v_div_scale_f32 v36, s4, v7, v19, v7
	v_fmac_f32_e32 v31, v35, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v36, v30
	v_fma_f32 v26, -v26, v31, v27
	v_fma_f32 v27, -v24, v39, v33
	v_fmac_f32_e32 v22, v21, v22
	v_div_scale_f32 v21, s2, v5, v19, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v26, v26, v29, v31
	v_fmac_f32_e32 v39, v27, v28
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v37, v21, v22
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s33, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v26, v19, v4
	v_fma_f32 v35, -v23, v37, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v35, v22
	v_fma_f32 v35, -v25, v40, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v23, v37, v21
	v_fma_f32 v23, -v32, v41, v38
	v_fmac_f32_e32 v40, v35, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v22, v37
	v_fmac_f32_e32 v41, v23, v34
	v_fma_f32 v22, -v24, v39, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v23, -v25, v40, v36
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v21, v19, v5
	v_fma_f32 v24, -v32, v41, v38
	v_div_fmas_f32 v22, v22, v28, v39
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v21, v11, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v23, v23, v30, v40
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v22, v19, v6
	v_div_fmas_f32 v24, v24, v34, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v23, v19, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v22, v12, 16, 1
	v_cmp_o_f32_e64 s3, v11, v11
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v24, v19, v8
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v19, s15, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v20, v9, 16, 1
	v_cmp_o_f32_e64 s4, v12, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v9, v20, 0x7fff
	v_bfe_u32 v9, v10, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v19, s33, v19
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s33, v18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v20.l, 0x7fff, v20.h, vcc_lo
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v10, v11, v21, 0x7fff
	v_add3_u32 v11, v12, v22, 0x7fff
	v_bfe_u32 v12, v14, 16, 1
	v_cmp_o_f32_e64 s5, v8, v8
	v_cndmask_b16 v20.h, 0x7fff, v9.h, vcc_lo
	v_bfe_u32 v9, v13, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s3
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_add3_u32 v12, v14, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v14, v14
	v_add3_u32 v9, v13, v9, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s4
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v13, v16, 16, 1
	v_bfe_u32 v14, v2, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v12.h, s3
	v_bfe_u32 v12, v1, 16, 1
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s4, v15, v15
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v12, v1, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v1, v2, v14, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s4
	v_cmp_o_f32_e64 s4, v2, v2
	v_cndmask_b16 v11.h, 0x7fff, v13.h, vcc_lo
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v12.h, s3
	v_bfe_u32 v12, v4, 16, 1
	v_bfe_u32 v13, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s4
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v3, v4, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v4, v5, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v5, v5
	v_bfe_u32 v5, v6, 16, 1
	v_bfe_u32 v12, v7, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s4
	v_add3_u32 v4, v6, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	v_add3_u32 v5, v7, v12, 0x7fff
	v_bfe_u32 v6, v8, 16, 1
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_eq_u32_e64 s4, 0, v17
	v_mov_b32_e32 v7, 0x5410
	v_mov_b32_e32 v12, 0x7632
	v_add3_u32 v6, v8, v6, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s3
	v_cndmask_b32_e64 v7, 0x1054, v7, s4
	v_cndmask_b32_e64 v12, 0x3276, v12, s4
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s5
	v_cndmask_b32_e64 v8, v9, v20, s4
	s_mov_b32 s3, 0x76543210
	v_lshl_or_b32 v5, v7, 8, v7
	v_lshl_or_b32 v6, v12, 8, v12
	v_cndmask_b32_e64 v7, v20, v9, s4
	v_cndmask_b32_e64 v9, v11, v10, s4
	v_cndmask_b32_e64 v10, v10, v11, s4
	v_and_b32_e32 v5, 0x540054, v5
	v_and_b32_e32 v6, 0x760076, v6
	v_cndmask_b32_e64 v11, v3, v1, s4
	v_cndmask_b32_e64 v1, v1, v3, s4
	v_cndmask_b32_e64 v12, v4, v2, s4
	v_lshl_or_b32 v3, v5, 4, v5
	v_lshl_or_b32 v5, v6, 4, v6
	v_cndmask_b32_e64 v2, v2, v4, s4
	v_permlanex16_b32 v4, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v1, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v3
	v_and_b32_e32 v13, 0x7060706, v5
	v_permlanex16_b32 v5, v10, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v2, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v0, v19, v0, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v4, v8, v7
	v_perm_b32 v2, v4, v8, v13
	v_perm_b32 v3, v5, v9, v7
	v_perm_b32 v4, v5, v9, v13
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v9, v19, v18, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v5, v6, v11, v7
	v_perm_b32 v6, v6, v11, v13
	v_perm_b32 v7, v10, v12, v7
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v12, v13
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x1
	buffer_store_b128 v[1:4], v9, s[16:19], 0 offen
	buffer_store_b128 v[5:8], v0, s[16:19], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp136:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 164
		.amdhsa_next_free_sgpr 43
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_vgpr, 164
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8428
; TotalNumSgprs: 45
; NumVgprs: 164
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 164
; Occupancy: 9
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	968                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
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
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     164
    .vgpr_spill_count: 0
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
