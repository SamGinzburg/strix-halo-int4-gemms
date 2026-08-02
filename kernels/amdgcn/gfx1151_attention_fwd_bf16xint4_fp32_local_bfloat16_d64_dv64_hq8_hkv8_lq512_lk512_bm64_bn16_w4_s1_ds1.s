	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s14, s[0:1], 0x80
	s_load_b32 s23, s[0:1], 0x5c
.Ltmp0:
	.loc	1 787 79 prologue_end           ; attention.py:787:79
	v_and_b32_e32 v34, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x78
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s22, s2, 6
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v34
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s33, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s22, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s18, s22, s33
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v17, 1, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	v_lshlrev_b32_e32 v82, 2, v0
	v_and_b32_e32 v83, 16, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v78, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v18, 4, v0
	v_and_b32_e32 v17, 0x70, v17
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[74:75], null, s23, v2, v[1:2]
	s_lshl_b32 s8, s23, 4
	s_lshl_b32 s9, s23, 5
	s_mul_i32 s10, s23, 48
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s23, v1
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s5, s5, 0xffff
	v_lshlrev_b32_e32 v84, 3, v78
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s23, s18, v[74:75]
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v17, v18, v17
	v_lshlrev_b32_e32 v1, 1, v2
	v_add_lshl_u32 v3, v2, s8, 1
	v_add_lshl_u32 v4, v2, s9, 1
	v_add_lshl_u32 v2, v2, s10, 1
	v_add_nc_u32_e32 v85, 0, v17
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_cndmask_b32_e32 v5, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v9, 0x80000000, v4, vcc_lo
	v_cndmask_b32_e32 v13, 0x80000000, v2, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v13, s[4:7], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s22, s13
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s22, s12
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s14
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s14
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x200
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s34, s6, 0x7ffffff0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 15
	s_mov_b32 s4, 0
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v85, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v85, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v85, v[9:12] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v85, v[13:16] offset:6144
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 28
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	.loc	1 808 33                        ; attention.py:808:33
	s_and_b32 s35, s5, -16
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s34, s35
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v35, 3, v78
	v_lshlrev_b32_e32 v36, 2, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v33, 16, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow80
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x38
	s_load_b32 s19, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v79, 0x60, v0
	v_and_b32_e32 v80, 0x7c, v0
	v_lshrrev_b32_e32 v81, 4, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
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
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v77, v8
	v_mov_b32_e32 v76, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 2, v80
	s_load_b128 s[8:11], s[0:1], 0x64
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v4, 4, v34
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v2, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v3, s22, v1
	v_and_b32_e32 v12, 48, v0
	v_lshl_or_b32 v94, v78, 7, v4
	v_and_b32_e32 v15, 64, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v86, 2, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, 32, v3
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v6, s14, v3
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v3, v79, 6, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v28, v65 :: v_dual_add_nc_u32 v5, s14, v5
	.loc	1 951 47                        ; attention.py:951:47
	v_subrev_nc_u32_e32 v90, s12, v6
	v_dual_mov_b32 v30, v65 :: v_dual_add_nc_u32 v91, s13, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v92, s12, v5
	v_dual_mov_b32 v32, v65 :: v_dual_add_nc_u32 v93, s13, v5
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v5, 0x70, v3, 0
	v_xad_u32 v6, 0x60, v3, 0
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s11, v1
	ds_load_b128 v[37:40], v5
	ds_load_b128 v[33:36], v6
	v_xad_u32 v5, 0x50, v3, 0
	v_xad_u32 v6, v3, 64, 0
	v_xad_u32 v7, v3, 48, 0
	v_xad_u32 v8, v3, 32, 0
	v_xad_u32 v9, v3, 16, 0
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v87, 1, v86
	v_or_b32_e32 v88, 2, v86
	v_or_b32_e32 v89, 3, v86
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v3, 0, v3
	ds_load_b128 v[45:48], v5
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[53:56], v7
	ds_load_b128 v[49:52], v8
	ds_load_b128 v[61:64], v9
	ds_load_b128 v[57:60], v3
	v_lshl_add_u32 v9, s11, 5, v1
	v_xor_b32_e32 v10, 0x60, v94
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v95, v1, v86
	v_and_b32_e32 v1, 12, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v96, v9, v86
	v_dual_mov_b32 v130, 0xff800000 :: v_dual_add_nc_u32 v97, v9, v87
	v_add_nc_u32_e32 v98, v9, v88
	v_dual_mov_b32 v136, 0xff800000 :: v_dual_add_nc_u32 v99, v9, v89
	v_lshlrev_b32_e32 v9, 5, v0
	v_dual_mov_b32 v24, v65 :: v_dual_lshlrev_b32 v13, 1, v1
	v_dual_mov_b32 v29, v65 :: v_dual_add_nc_u32 v112, 0, v10
	v_lshrrev_b32_e32 v14, 1, v12
	v_lshl_or_b32 v12, v12, 6, v84
	v_dual_mov_b32 v10, v65 :: v_dual_lshlrev_b32 v19, 1, v15
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b128 s[24:27], s[0:1], 0x28
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_lshlrev_b32_e32 v1, 8, v1
	s_lshr_b32 s1, s0, 29
	v_dual_mov_b32 v31, v65 :: v_dual_and_b32 v16, 0x260, v9
	v_lshl_or_b32 v13, v79, 2, v13
	v_bfe_i32 v17, v0, 5, 1
	v_and_b32_e32 v18, 28, v0
	v_xor_b32_e32 v12, v12, v14
	v_add_nc_u32_e32 v101, 0, v19
	s_add_i32 s1, s3, s1
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s44, s8, 0x3fb8aa3b
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	v_lshl_or_b32 v2, v2, 5, v18
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v114, v101, v12
	v_mov_b32_e32 v12, v65
	v_or3_b32 v100, v1, v16, v13
	v_and_b32_e32 v1, 0x120, v17
	s_sub_i32 s8, s3, s8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s1, s1, 3
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s8, s10, s8
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s1, s9, s1
	v_xor_b32_e32 v102, v2, v1
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s46, s8, s1
	v_mov_b32_e32 v1, 0x5410
	v_cmp_eq_u32_e64 s1, 0, v83
	v_dual_mov_b32 v27, v65 :: v_dual_and_b32 v4, 0x70, v0
	v_bfe_i32 v21, v0, 0, 1
	v_and_b32_e32 v2, 0x300, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x1054, v1, s1
	v_dual_mov_b32 v23, v65 :: v_dual_and_b32 v16, 0xfc, v82
	v_lshrrev_b32_e32 v15, 5, v15
	v_mov_b32_e32 v17, 0x7632
	v_lshl_or_b32 v1, v1, 8, v1
	v_lshrrev_b32_e32 v4, 2, v4
	v_and_b32_e32 v21, 0x90, v21
	v_xor_b32_e32 v8, 0x50, v94
	v_xor_b32_e32 v11, 0x70, v94
	v_and_b32_e32 v1, 0x540054, v1
	v_xor_b32_e32 v14, 16, v100
	v_lshlrev_b32_e32 v20, 7, v0
	v_and_b32_e32 v9, 0x160, v9
	v_bfe_i32 v22, v0, 2, 1
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v6, 48, v94
	v_xor_b32_e32 v13, 8, v100
	v_add_nc_u32_e32 v111, 0, v8
	v_add_nc_u32_e32 v113, 0, v11
	v_and_b32_e32 v105, 0x5040504, v1
	v_xor_b32_e32 v1, v21, v4
	v_mov_b32_e32 v21, v65
	v_or3_b32 v103, v2, v16, v15
	v_cndmask_b32_e64 v15, 0x3276, v17, s1
	v_dual_mov_b32 v135, 0xff800000 :: v_dual_add_nc_u32 v116, 0, v14
	v_dual_mov_b32 v11, v65 :: v_dual_and_b32 v20, 0x700, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v15, v15, 8, v15
	v_mov_b32_e32 v14, v65
	v_or_b32_e32 v18, v102, v19
	v_mov_b32_e32 v8, v65
	v_and_or_b32 v104, 0x90, v22, v9
	v_and_b32_e32 v15, 0x760076, v15
	v_dual_mov_b32 v26, v65 :: v_dual_lshlrev_b32 v75, 2, v78
	v_xor_b32_e32 v3, 16, v94
	v_xor_b32_e32 v5, 32, v94
	v_xor_b32_e32 v7, 64, v94
	v_xor_b32_e32 v2, 24, v100
	v_xor_b32_e32 v16, 0x240, v18
	v_xor_b32_e32 v17, 32, v103
	v_xor_b32_e32 v18, 64, v103
	v_xor_b32_e32 v19, 0x60, v103
	v_xor_b32_e32 v9, 16, v104
	v_add_nc_u32_e32 v109, 0, v6
	v_add_nc_u32_e32 v115, 0, v13
	v_dual_mov_b32 v13, v65 :: v_dual_add_nc_u32 v4, 0, v20
	v_mov_b32_e32 v6, v65
	v_lshl_or_b32 v15, v15, 4, v15
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s19, v75
	v_dual_mov_b32 v128, 0xff800000 :: v_dual_add_nc_u32 v107, 0, v3
	v_dual_mov_b32 v3, v65 :: v_dual_add_nc_u32 v108, 0, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v106, 0x7060706, v15
	v_dual_mov_b32 v15, v65 :: v_dual_add_nc_u32 v110, 0, v7
	v_mov_b32_e32 v5, v65
	v_add_nc_u32_e32 v117, 0, v2
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_add_nc_u32 v118, 0, v16
	v_add_nc_u32_e32 v119, 0, v17
	v_add_nc_u32_e32 v120, 0, v18
	v_add_nc_u32_e32 v121, 0, v19
	v_add_nc_u32_e32 v122, v4, v1
	v_add_nc_u32_e32 v123, 0, v9
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, v65
	v_mov_b32_e32 v19, v65
	v_mov_b32_e32 v20, v65
	v_dual_mov_b32 v22, v65 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v16, v65 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, v65
	v_mov_b32_e32 v4, v65
	v_dual_mov_b32 v7, v65 :: v_dual_add_nc_u32 v124, 1, v95
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v125, 2, v95
	v_add_nc_u32_e32 v126, 3, v95
	v_lshl_or_b32 v127, s3, 8, v81
	.loc	1 955 25                        ; attention.py:955:25
	s_mul_i32 s9, s11, s22
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s27, s27, 0xffff
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s45, s3, 5
	s_add_i32 s46, s46, s9
	s_and_b32 s41, s7, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s36, s26
	s_mov_b32 s37, s27
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s47, 0x76543210
	s_mov_b32 s40, s6
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s1, s34, s33
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v72, v65 :: v_dual_add_nc_u32 v133, 0, v104
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s1, s1, s23
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v66, v65 :: v_dual_add_nc_u32 v139, 0, v94
	v_dual_mov_b32 v67, v65 :: v_dual_max_f32 v136, v136, v136
	v_dual_mov_b32 v68, v65 :: v_dual_add_nc_u32 v73, 0, v100
	v_dual_mov_b32 v69, v65 :: v_dual_mov_b32 v132, v76
	v_dual_mov_b32 v70, v65 :: v_dual_add_nc_u32 v137, 0, v103
	v_dual_mov_b32 v71, v65 :: v_dual_max_f32 v76, v128, v128
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v152, s1, v74, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v151, v72 :: v_dual_mov_b32 v148, v69
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s4, s34, 1
	v_dual_mov_b32 v131, v77 :: v_dual_add_nc_u32 v168, s4, v127
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v77, v129, v129 :: v_dual_mov_b32 v150, v71
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v149, v70 :: v_dual_mov_b32 v146, v67
	v_dual_mov_b32 v147, v68 :: v_dual_mov_b32 v144, v65
	v_mov_b32_e32 v145, v66
	.loc	1 939 32                        ; attention.py:939:32
	v_cndmask_b32_e64 v66, 0x80000000, v152, s2
	.loc	1 904 31                        ; attention.py:904:31
	v_or_b32_e32 v143, s34, v86
	v_or_b32_e32 v141, s34, v88
	v_or_b32_e32 v140, s34, v89
	v_or_b32_e32 v142, s34, v87
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[66:69], v66, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s1, v143, v90
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s4, v143, v91
	.loc	1 955 25                        ; attention.py:955:25
	s_add_i32 s3, s46, s34
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s5, s34, 4
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s10, v141, v90
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s12, v141, v91
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s14, v140, v90
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s16, v140, v91
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v160, s3, v95, 2
	v_add_lshl_u32 v161, s3, v125, 2
	v_add_lshl_u32 v162, s3, v124, 2
	v_add_lshl_u32 v163, s3, v126, 2
	v_add_lshl_u32 v164, s3, v96, 2
	v_add_lshl_u32 v165, s3, v98, 2
	v_add_lshl_u32 v166, s3, v97, 2
	v_add_lshl_u32 v167, s3, v99, 2
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s48, s5, s45
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s3, v143, v92
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s5, v143, v93
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s6, v142, v90
	v_cmp_ge_i32_e64 s7, v142, v92
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s8, v142, v91
	v_cmp_le_i32_e64 s9, v142, v93
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s11, v141, v92
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s13, v141, v93
	.loc	1 951 30                        ; attention.py:951:30
	v_cmp_ge_i32_e64 s15, v140, v92
	.loc	1 952 30                        ; attention.py:952:30
	v_cmp_le_i32_e64 s17, v140, v93
	.loc	1 952 21 is_stmt 0              ; attention.py:952:21
	s_and_b32 s1, s1, s4
	s_and_b32 s10, s10, s12
	s_and_b32 s12, s14, s16
	s_and_b32 s4, vcc_lo, s1
	s_and_b32 s3, s3, s5
	s_and_b32 s5, vcc_lo, s10
	s_and_b32 s6, s6, s8
	s_and_b32 s11, s11, s13
	s_and_b32 s7, s7, s9
	s_and_b32 s9, s15, s17
	s_and_b32 s10, vcc_lo, s12
	s_and_b32 s3, vcc_lo, s3
	s_and_b32 s8, vcc_lo, s6
	s_and_b32 s1, vcc_lo, s11
	s_and_b32 s6, vcc_lo, s7
	s_and_b32 s9, vcc_lo, s9
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_dual_max_f32 v135, v135, v135 :: v_dual_add_nc_u32 v138, v101, v102
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e64 v134.l, 0
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s48, s48, s19
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s34, s34, 16
	.loc	1 966 25                        ; attention.py:966:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v171.h, v134.l
	v_mov_b16_e64 v169.h, v134.l
	v_mov_b16_e64 v170.h, v134.l
	v_mov_b16_e64 v172.h, v134.l
	v_mov_b16_e64 v70.h, v134.l
	v_mov_b16_e64 v72.h, v134.l
	v_mov_b16_e64 v71.h, v134.l
	v_mov_b16_e64 v143.h, v134.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v142.h, v134.l
	v_mov_b16_e64 v140.h, v134.l
	v_mov_b16_e64 v141.h, v134.l
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v85, v[66:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[152:155], v139
	ds_load_b128 v[156:159], v107
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v66, 0x80000000, v160, s4
	v_cndmask_b32_e64 v67, 0x80000000, v161, s5
	v_cndmask_b32_e64 v69, 0x80000000, v163, s10
	v_cndmask_b32_e64 v68, 0x80000000, v162, s8
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v139.h, v134.l
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[144:151], v[152:159], v[57:64], v[144:151]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[152:155], v108
	ds_load_b128 v[156:159], v109
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[144:151], v[152:159], v[49:56], v[144:151]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[152:155], v110
	ds_load_b128 v[156:159], v111
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[144:151], v[152:159], v[41:48], v[144:151]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[152:155], v112
	ds_load_b128 v[156:159], v113
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[144:151], v[152:159], v[33:40], v[144:151]
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e64 v152, 0x80000000, v164, s3
	v_cndmask_b32_e64 v153, 0x80000000, v165, s1
	v_cndmask_b32_e64 v154, 0x80000000, v166, s6
	v_cndmask_b32_e64 v155, 0x80000000, v167, s9
	s_clause 0x7
	buffer_load_b32 v66, v66, s[36:39], 0 offen
	buffer_load_b32 v67, v67, s[36:39], 0 offen
	buffer_load_b32 v69, v69, s[36:39], 0 offen
	buffer_load_b32 v152, v152, s[36:39], 0 offen
	buffer_load_b32 v155, v155, s[36:39], 0 offen
	buffer_load_b32 v154, v154, s[36:39], 0 offen
	buffer_load_b32 v68, v68, s[36:39], 0 offen
	buffer_load_b32 v153, v153, s[36:39], 0 offen
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v66, 0xff800000, v66, s4
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v67, 0xff800000, v67, s5
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v69, 0xff800000, v69, s10
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v152, 0xff800000, v152, s3
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v155, 0xff800000, v155, s9
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v154, 0xff800000, v154, s6
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v68, 0xff800000, v68, s8
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v153, 0xff800000, v153, s1
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v67
	v_cmp_neq_f32_e64 s12, 0xff800000, v152
	.loc	1 965 35                        ; attention.py:965:35
	ds_store_2addr_b64 v114, v[66:67], v[152:153] offset1:32
	ds_store_2addr_b64 v114, v[68:69], v[154:155] offset0:64 offset1:96
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v153
	v_cmp_neq_f32_e64 s7, 0xff800000, v66
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s3, s3, s12
	s_and_b32 s5, s5, s11
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v68
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s1, s1, s13
	v_cndmask_b32_e64 v67, 0, 1, s3
	v_cndmask_b32_e64 v66, 0, 1, s1
	v_cndmask_b32_e64 v68, 0, 1, s5
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v155
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s7, s4, s7
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v69
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v154
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v69, 0, 1, s7
	s_and_b32 s4, s9, s16
	s_and_b32 s9, s8, s14
	v_or_b16 v154.h, v67.l, v66.l
	v_mov_b16_e32 v66.l, v68.l
	v_cndmask_b32_e64 v155, 0, 1, s4
	v_mov_b16_e32 v67.l, v69.l
	s_and_b32 s6, s6, s17
	s_and_b32 s8, s10, s15
	v_lshlrev_b16 v66.l, 8, v66.l
	v_cndmask_b32_e64 v68, 0, 1, s8
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[152:153], v73
	ds_load_b64 v[156:157], v115
	ds_load_b64 v[158:159], v116
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v154.l, v67.l, v66.l
	v_mov_b16_e64 v66.l, v155.l
	v_cndmask_b32_e64 v67, 0, 1, s6
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s34, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v66.l, 8, v66.l
	v_or_b16 v155.h, v67.l, v66.l
	v_mov_b16_e32 v66.l, v68.l
	v_cndmask_b32_e64 v67, 0, 1, s9
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[68:69], null, v168, s19, v[75:76]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 966 25                        ; attention.py:966:25
	v_lshlrev_b16 v66.l, 8, v66.l
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v152, 0x3fb8aa3b, v152 :: v_dual_mul_f32 v153, 0x3fb8aa3b, v153
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v156, 0x3fb8aa3b, v156 :: v_dual_mul_f32 v157, 0x3fb8aa3b, v157
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v158, 0x3fb8aa3b, v158
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v155.l, v67.l, v66.l
	.loc	1 965 35                        ; attention.py:965:35
	ds_load_b64 v[66:67], v117
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v138, v154
	ds_store_b32 v118, v155
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v159, 0x3fb8aa3b, v159
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v154, 0x80000000, v68, s0
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v153, s44, v145 :: v_dual_fmac_f32 v156, s44, v146
	v_dual_fmac_f32 v152, s44, v144 :: v_dual_fmac_f32 v157, s44, v147
	v_fmac_f32_e32 v158, s44, v148
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e64 v138.l, v134.l
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v160, 0x3fb8aa3b, v66 :: v_dual_mul_f32 v161, 0x3fb8aa3b, v67
	.loc	1 966 25                        ; attention.py:966:25
	ds_load_u16_d16 v66, v137
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v66, v119
	ds_load_u16_d16 v67, v120
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v67, v121
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v159, s44, v149 :: v_dual_fmac_f32 v160, s44, v150
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v68.l, 1, v66.l
	v_lshrrev_b16 v66.l, 8, v66.l
	v_and_b16 v68.h, 1, v66.h
	v_and_b16 v69.l, 1, v67.l
	v_lshrrev_b16 v66.h, 8, v66.h
	v_lshrrev_b16 v67.l, 8, v67.l
	v_lshrrev_b16 v69.h, 8, v67.h
	v_and_b16 v66.l, 1, v66.l
	v_and_b16 v67.h, 1, v67.h
	v_and_b16 v66.h, 1, v66.h
	v_and_b16 v67.l, 1, v67.l
	v_and_b16 v69.h, 1, v69.h
	v_cmp_eq_u16_e64 s15, 1, v66.l
	v_cmp_eq_u16_e64 s13, 1, v68.l
	v_cmp_eq_u16_e64 s14, 1, v68.h
	v_cmp_eq_u16_e64 s11, 1, v69.l
	v_cmp_eq_u16_e64 s10, 1, v67.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v149, 0xff800000, v153, s15
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v161, s44, v151
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s16, 1, v66.h
	v_cmp_eq_u16_e64 s17, 1, v67.l
	v_cmp_eq_u16_e64 s12, 1, v69.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v148, 0xff800000, v152, s13
	v_cndmask_b32_e64 v150, 0xff800000, v156, s14
	v_cndmask_b32_e64 v152, 0xff800000, v158, s11
	v_cndmask_b32_e64 v68, 0xff800000, v160, s10
	v_cndmask_b32_e64 v151, 0xff800000, v157, s16
	v_cndmask_b32_e64 v153, 0xff800000, v159, s17
	v_cndmask_b32_e64 v69, 0xff800000, v161, s12
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v66, v148, v149, v150
.Ltmp2:
	.loc	1 967 26                        ; attention.py:967:26
	ds_store_b64 v73, v[148:149]
	ds_store_b64 v115, v[150:151]
	ds_store_b64 v116, v[152:153]
	ds_store_b64 v117, v[68:69]
	s_waitcnt lgkmcnt(0)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v67, v151, v152, v153
	v_max_f32_e32 v137, v68, v69
.Ltmp4:
	.loc	1 967 26                        ; attention.py:967:26
	s_barrier
	ds_load_2addr_b64 v[144:147], v114 offset1:32
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v154, v154, s[40:43], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v160.h, v134.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v66, v66, v67, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v67, v66, s47, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v73, v130, v66, v67
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v66, v149, v73
	v_sub_f32_e32 v67, v148, v73
	v_sub_f32_e32 v137, v151, v73
	v_sub_f32_e32 v157, v69, v73
	v_sub_f32_e32 v158, v68, v73
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v68, v137
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v155, v150, v73
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v66, 0, v66, s15
	v_cndmask_b32_e64 v67, 0, v67, s13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v68, 0, v68, s16
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e64 v169.l, v66.h
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e64 v170.l, v67.h
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v156, v152, v73
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s13, v66, v66
	v_cmp_o_f32_e64 s15, v67, v67
	v_and_b32_e32 v69, 1, v169
	v_and_b32_e32 v137, 1, v170
	v_mov_b16_e64 v171.l, v68.h
	v_cmp_o_f32_e64 s16, v68, v68
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v156, v156
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v66, v66, v69, 0x7fff
	v_add3_u32 v67, v67, v137, 0x7fff
	v_and_b32_e32 v148, 1, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v69.h, 0x7fff, v66.h, s13
	v_cndmask_b16 v69.l, 0x7fff, v67.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v148, 0x7fff
	.loc	1 967 26                        ; attention.py:967:26
	ds_load_2addr_b64 v[148:151], v114 offset0:64 offset1:96
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v156, 0, v156, s11
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v67, v69, s47, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v152.h, 0x7fff, v68.h, s16
	v_mov_b16_e64 v71.l, v156.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s11, v156, v156
	v_perm_b32 v66, v67, v69, v105
	v_perm_b32 v67, v67, v69, v106
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v69, v155
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v71, v156, v71, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v156.h, v134.l
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v69, 0, v69, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v172.l, v69.h
	v_cmp_o_f32_e64 s13, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v137, 1, v172
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v158, v158
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v69, v69, v137, 0x7fff
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v137, v130, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v152.l, 0x7fff, v69.h, s13
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v159, v137
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v158, 0, v158, s10
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v130
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v130, v150, v150
.Ltmp9:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v69, v152, s47, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v70.l, v158.h
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v155, v144, v144
.Ltmp11:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s10, v158, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v68, v69, v152, v105
	v_perm_b32 v69, v69, v152, v106
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v152, v148, v148
	v_dual_max_f32 v155, v155, v152 :: v_dual_and_b32 v70, 1, v70
.Ltmp13:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v152, 0, v159, s13
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v153, v153, v73
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v137, v146, v146
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp15:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v158, v158, v70, 0x7fff
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v155, v155, v145, v149
.Ltmp17:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v152
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v153, v153
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v152
	v_mul_f32_e32 v28, v28, v152
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v70, v155
.Ltmp19:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v20, v20, v152
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v130, v137, v130
.Ltmp21:
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v157, v157
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v18, v18, v152
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v31, v31, v152
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v153, 0, v153, s17
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v130, v130, v147, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v27, v27, v152 :: v_dual_max_f32 v70, v70, v70
	v_mul_f32_e32 v24, v24, v152
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e64 v72.l, v153.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v157, 0, v157, s12
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s13, v153, v153
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v155, v155, v70 :: v_dual_mov_b32 v70, v130
.Ltmp27:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v143.l, v157.h
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v22, v22, v152
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s12, v157, v157
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v72, v153, v72, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v152
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v143, 1, v143
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s11
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v70, v70, v70
.Ltmp31:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s13
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v12, v12, v152
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v143, v157, v143, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v17, v17, v152
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v159, v130, v70
.Ltmp33:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v71, v72, s47, 0xfedcba98 op_sel:[1,0]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v10, v10, v152
	v_mov_b32_e32 v130, v73
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v73.h, 0x7fff, v143.h, s12
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v143, v159
.Ltmp35:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v70, v71, v72, v105
	v_perm_b32 v71, v71, v72, v106
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v72, v155
.Ltmp37:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v129
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v143, v143 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v14, v14, v152
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v73.l, 0x7fff, v158.h, s10
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v128
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_dual_max_f32 v143, v143, v143 :: v_dual_mul_f32 v2, v2, v152
.Ltmp43:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v152
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v161, v72, v72
.Ltmp45:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v16, v16, v152 :: v_dual_max_f32 v143, v159, v143
	v_mul_f32_e32 v19, v19, v152
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v6, v6, v152 :: v_dual_max_f32 v155, v155, v161
	v_mul_f32_e32 v4, v4, v152
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v136, v136, v143
	v_max_f32_e32 v77, v77, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v21, v21, v152 :: v_dual_max_f32 v76, v76, v155
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v135, v135, v155
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v23, v23, v152
	v_mul_f32_e32 v11, v11, v152
	v_dual_mul_f32 v8, v8, v152 :: v_dual_sub_f32 v155, v129, v77
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v143, v144, v135
	v_dual_sub_f32 v144, v145, v135 :: v_dual_sub_f32 v145, v146, v136
	v_dual_sub_f32 v146, v147, v136 :: v_dual_sub_f32 v147, v148, v135
	v_dual_sub_f32 v148, v149, v135 :: v_dual_sub_f32 v149, v150, v136
	v_dual_sub_f32 v150, v151, v136 :: v_dual_mov_b32 v129, v77
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v143, v143
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v147, v147
	v_exp_f32_e32 v144, v144
	v_exp_f32_e32 v148, v148
	v_exp_f32_e32 v145, v145
	v_exp_f32_e32 v149, v149
	v_exp_f32_e32 v146, v146
	v_exp_f32_e32 v150, v150
	.loc	1 970 74 is_stmt 1              ; attention.py:970:74
	v_sub_f32_e32 v151, v128, v76
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v9, v9, v152 :: v_dual_mov_b32 v128, v76
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v76, 0, v143, s7
	v_cndmask_b32_e64 v77, 0, v147, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v151, v151
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v143, 0, v144, s5
	v_cndmask_b32_e64 v144, 0, v148, s8
	v_cndmask_b32_e64 v145, 0, v145, s3
	v_cndmask_b32_e64 v147, 0, v149, s6
	v_cndmask_b32_e64 v146, 0, v146, s1
	v_cndmask_b32_e64 v148, 0, v150, s4
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v13, v13, v152 :: v_dual_add_f32 v76, v76, v77
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v77, v143, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v143, v145, v147 :: v_dual_add_f32 v144, v146, v148
.Ltmp47:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v32, v32, v152
	v_dual_mul_f32 v15, v15, v152 :: v_dual_add_f32 v76, v76, v77
	v_mul_f32_e32 v1, v1, v152
	v_mul_f32_e32 v5, v5, v152
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v161, 0, v151, s10
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v7, v7, v152
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v77, v143, v144
.Ltmp49:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v3, v3, v152
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v152, s48, v75, 1
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v137.h, v134.l
	v_mov_b16_e64 v157.h, v134.l
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v144, v77
.Ltmp51:
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v155, v155
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v152, 0x80000000, v152, s0
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v158, v73, s47, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v144, v144 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v143, v76
.Ltmp53:
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[152:153], v152, s[24:27], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v164, v77, v144
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v143, v143 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v162, 0, v155, s11
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v72, v158, v73, v105
	v_perm_b32 v73, v158, v73, v106
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v163, v76, v143
.Ltmp58:
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_bfe_i32 v143, v154, 0, 8
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v76.l, v154.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v144, 8, v154
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v76.h, 4, v154.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e64 v140.l, v154.h
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v77.l, v154.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v145, 24, v154
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v137.l, v143.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v76.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v77.h, v144.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v148, 20, v154
	v_and_b16 v76.h, v76.h, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v149, v144, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v139.l, 4, v144.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v150, v140, 0, 8
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v77.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v151, v145, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v137.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v137.l, 0, -16, s1
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v77.h
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_and_b16 v140.l, v148.l, 15
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v141.l, v145.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v142.l, 4, v145.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v143.l, v76.h, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_mov_b16_e64 v144.l, v149.l
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_and_b16 v139.l, v139.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v145.l, v150.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v148.l, v76.l, v137.l
	v_cndmask_b16 v76.l, 0, -16, s3
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e64 v137.l, v151.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v143.h, 0, -16, s1
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v149.l, v76.h, v143.l, s4
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v76.h, v140.l, -16
	.loc	1 989 38 is_stmt 1              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v141.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v144.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v143.l, v142.l, -16
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s5, 0, v145.l
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v144.l, v77.l, v76.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v76.l, v139.l, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s1, 0, v137.l
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v137.l, v77.h, v143.h
	v_cndmask_b16 v77.l, 0, -16, s3
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v145, v148, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v76.l, v139.l, v76.l, s4
	v_cndmask_b16 v139.l, v140.l, v76.h, s5
	v_cndmask_b16 v140.l, v142.l, v143.l, s1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v143, v144, 0, 16
	v_bfe_i32 v144, v137, 0, 16
	v_bfe_i32 v148, v149, 0, 16
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v77.l, v141.l, v77.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v76, v76, 0, 16
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v148, v148
	v_bfe_i32 v149, v139, 0, 16
	v_cvt_f32_i32_e32 v143, v143
	v_bfe_i32 v150, v140, 0, 16
	v_bfe_i32 v77, v77, 0, 16
	v_cvt_f32_i32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v146, 0xffff0000, v152
	v_mov_b16_e64 v134.h, v152.l
	v_mov_b16_e64 v138.h, v153.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v144, v146, v144 :: v_dual_and_b32 v147, 0xffff0000, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v143, v138, v143
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e64 v140.l, v144.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v145, v134, v145
	v_mul_f32_e32 v134, v134, v148
	v_cvt_f32_i32_e32 v148, v149
	v_cvt_f32_i32_e32 v149, v150
	v_dual_mul_f32 v76, v146, v76 :: v_dual_mul_f32 v77, v147, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e64 v141.l, v134.h
	v_mov_b16_e64 v137.l, v143.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v138, v138, v148
	v_mul_f32_e32 v146, v147, v149
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v140, 1, v140
	v_mov_b16_e64 v142.l, v145.h
	v_mov_b16_e64 v139.l, v76.h
	v_and_b32_e32 v141, 1, v141
	v_and_b32_e32 v137, 1, v137
	v_mov_b16_e64 v156.l, v138.h
	v_and_b32_e32 v142, 1, v142
	v_mov_b16_e64 v157.l, v146.h
	v_mov_b16_e64 v160.l, v77.h
	v_and_b32_e32 v139, 1, v139
	v_cmp_o_f32_e64 s1, v145, v145
	v_cmp_o_f32_e64 s3, v134, v134
	v_cmp_o_f32_e64 s4, v143, v143
	v_add3_u32 v142, v145, v142, 0x7fff
	v_add3_u32 v134, v134, v141, 0x7fff
	v_add3_u32 v137, v143, v137, 0x7fff
	v_and_b32_e32 v141, 1, v156
	v_and_b32_e32 v143, 1, v157
	v_and_b32_e32 v145, 1, v160
	v_cmp_o_f32_e64 s5, v76, v76
	v_cmp_o_f32_e64 s6, v144, v144
	v_add3_u32 v76, v76, v139, 0x7fff
	v_add3_u32 v139, v144, v140, 0x7fff
	v_cmp_o_f32_e64 s7, v138, v138
	v_cmp_o_f32_e64 s8, v146, v146
	v_cmp_o_f32_e64 s9, v77, v77
	v_add3_u32 v138, v138, v141, 0x7fff
	v_add3_u32 v140, v146, v143, 0x7fff
	v_add3_u32 v77, v77, v145, 0x7fff
	v_cndmask_b16 v134.h, 0x7fff, v134.h, s3
	v_cndmask_b16 v134.l, 0x7fff, v142.h, s1
	v_cndmask_b16 v76.l, 0x7fff, v137.h, s4
	v_cndmask_b16 v137.h, 0x7fff, v76.h, s5
	v_cndmask_b16 v137.l, 0x7fff, v139.h, s6
	v_cndmask_b16 v76.h, 0x7fff, v138.h, s7
	v_cndmask_b16 v138.h, 0x7fff, v140.h, s8
	v_cndmask_b16 v138.l, 0x7fff, v77.h, s9
	ds_store_2addr_b32 v122, v134, v137 offset1:8
	ds_store_2addr_b32 v122, v76, v138 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[141:144], v123
	ds_load_b128 v[137:140], v133
	ds_load_b128 v[145:148], v133 offset:512
	ds_load_b128 v[149:152], v123 offset:512
	ds_load_b128 v[153:156], v133 offset:1024
.Ltmp59:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v76, v163 :: v_dual_mov_b32 v77, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v76, v163, v76 :: v_dual_add_f32 v77, v164, v77
.Ltmp61:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v76, v132, v161
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[137:144], v[66:73], v[25:32]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[137:140], v133 offset:1536
	ds_load_b128 v[157:160], v123 offset:1024
	ds_load_b128 v[141:144], v123 offset:1536
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v77, v131, v162
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[145:152], v[66:73], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[153:160], v[66:73], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[137:144], v[66:73], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v35, v84 :: v_dual_mov_b32 v36, v82
	v_mov_b32_e32 v33, v83
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 903 13 is_stmt 1              ; attention.py:903:13
	v_and_b32_e32 v34, 0x80, v36
	v_and_b32_e32 v36, 4, v81
	v_add_nc_u32_e32 v35, 0, v35
	v_lshl_add_u32 v37, v80, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v0, 1, v0
	.loc	1 903 13                        ; attention.py:903:13
	v_add3_u32 v34, v35, v34, v36
	ds_store_b64 v37, v[76:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s21, s21, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	ds_load_b32 v38, v34
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v34, 1, v79
	s_mov_b32 s23, 0x31027000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v37, v34, v78
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v39, s22, v37
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v37, s18, v37
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v39
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v37, s19, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v38, v38, v25
	v_div_scale_f32 v41, null, v38, v38, v26
	v_div_scale_f32 v43, null, v38, v38, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v39
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v45, null, v38, v38, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v43
	v_div_scale_f32 v40, vcc_lo, v25, v38, v25
	v_rcp_f32_e32 v51, v45
	v_div_scale_f32 v42, s1, v26, v38, v26
	v_fma_f32 v53, -v39, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v54, -v41, v47, 1.0
	v_div_scale_f32 v50, null, v38, v38, v29
	v_fma_f32 v56, -v43, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v46, v53, v46 :: v_dual_fmac_f32 v47, v54, v47
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v36, 8, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v55, null, v38, v38, v30
	v_fma_f32 v54, -v45, v51, 1.0
	v_fmac_f32_e32 v49, v56, v49
	v_dual_mul_f32 v56, v40, v46 :: v_dual_mul_f32 v57, v42, v47
	v_rcp_f32_e32 v53, v50
	v_rcp_f32_e32 v58, v55
	v_fmac_f32_e32 v51, v54, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v39, v56, v40
	v_fma_f32 v60, -v41, v57, v42
	v_div_scale_f32 v44, s2, v27, v38, v27
	v_div_scale_f32 v48, s3, v28, v38, v28
	v_dual_fmac_f32 v56, v59, v46 :: v_dual_fmac_f32 v57, v60, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v50, v53, 1.0
	v_mul_f32_e32 v62, v48, v51
	v_div_scale_f32 v52, s4, v29, v38, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v39, -v39, v56, v40
	v_fma_f32 v40, -v41, v57, v42
	v_fma_f32 v41, -v55, v58, 1.0
	v_fmac_f32_e32 v53, v61, v53
	v_fma_f32 v59, -v45, v62, v48
	v_div_fmas_f32 v39, v39, v46, v56
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v58, v41, v58
	v_mul_f32_e32 v54, v44, v49
	v_div_fmas_f32 v40, v40, v47, v57
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v62, v59, v51
	v_div_fixup_f32 v25, v39, v38, v25
	v_fma_f32 v63, -v43, v54, v44
	v_div_scale_f32 v42, null, v38, v38, v31
	v_div_fixup_f32 v26, v40, v38, v26
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v54, v63, v49
	v_rcp_f32_e32 v41, v42
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v35, 16, v36
	v_or_b32_e32 v34, 32, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v43, -v43, v54, v44
	v_div_scale_f32 v44, s2, v30, v38, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v0, 48, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v47, v44, v58
	v_div_fmas_f32 v39, v43, v49, v54
	v_mul_f32_e32 v43, v52, v53
	v_fma_f32 v40, -v45, v62, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v48, -v42, v41, 1.0
	v_div_fixup_f32 v27, v39, v38, v27
	v_fma_f32 v46, -v50, v43, v52
	v_div_fmas_f32 v40, v40, v51, v62
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v55, v47, v44
	v_div_scale_f32 v45, null, v38, v38, v32
	v_fmac_f32_e32 v43, v46, v53
	v_div_scale_f32 v46, null, v38, v38, v17
	v_div_fixup_f32 v28, v40, v38, v28
	v_div_scale_f32 v40, s3, v31, v38, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v51, v46
	v_fma_f32 v50, -v50, v43, v52
	v_fmac_f32_e32 v47, v39, v58
	v_rcp_f32_e32 v49, v45
	v_div_scale_f32 v54, null, v38, v38, v18
	v_div_fmas_f32 v43, v50, v53, v43
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v44, -v55, v47, v44
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v53, -v46, v51, 1.0
	v_div_fixup_f32 v29, v43, v38, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v44, v44, v58, v47
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s2, v17, v38, v17
	v_fmac_f32_e32 v41, v48, v41
	v_fma_f32 v48, -v45, v49, 1.0
	v_rcp_f32_e32 v47, v54
	v_div_fixup_f32 v30, v44, v38, v30
	v_div_scale_f32 v44, null, v38, v38, v19
	v_mul_f32_e32 v39, v40, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v27, v27
	v_cmp_o_f32_e64 s7, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v42, v39, v40
	v_fma_f32 v43, -v54, v47, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v50, v41
	v_fmac_f32_e32 v47, v43, v47
	v_rcp_f32_e32 v43, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v42, v39, v40
	v_mul_f32_e32 v42, v53, v51
	v_div_fmas_f32 v39, v40, v41, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v46, v42, v53
	v_div_fixup_f32 v31, v39, v38, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v41, v51
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v46, v42, v53
	v_div_scale_f32 v46, s4, v19, v38, v19
	v_fmac_f32_e32 v49, v48, v49
	v_div_scale_f32 v48, s5, v32, v38, v32
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v52, v48, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v45, v52, v48
	v_fmac_f32_e32 v52, v50, v49
	v_fma_f32 v50, -v44, v43, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v45, v52, v48
	v_div_scale_f32 v45, s3, v18, v38, v18
	v_div_scale_f32 v48, null, v38, v38, v20
	v_div_fmas_f32 v40, v40, v49, v52
	v_div_scale_f32 v52, null, v38, v38, v21
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v41, v48
	v_div_fmas_f32 v39, v39, v51, v42
	v_rcp_f32_e32 v42, v52
	v_div_fixup_f32 v32, v40, v38, v32
	v_div_scale_f32 v51, null, v38, v38, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v39, v38, v17
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v55, -v52, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v49, v45, v47 :: v_dual_fmac_f32 v42, v55, v42
	v_fma_f32 v40, -v54, v49, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v40, v47
	v_fma_f32 v39, -v54, v49, v45
	v_rcp_f32_e32 v54, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v39, v39, v47, v49
	v_div_scale_f32 v47, s3, v21, v38, v21
	v_fmac_f32_e32 v43, v50, v43
	v_fma_f32 v50, -v48, v41, 1.0
	v_div_fixup_f32 v18, v39, v38, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v51, v54, 1.0
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v40, v46, v43
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, s2, v20, v38, v20
	v_fmac_f32_e32 v54, v49, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v44, v40, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v53, v50, v41 :: v_dual_fmac_f32 v40, v45, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v48, v53, v50
	v_fma_f32 v39, -v44, v40, v46
	v_div_scale_f32 v46, null, v38, v38, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v53, v45, v41 :: v_dual_mul_f32 v44, v47, v42
	v_div_scale_f32 v45, s5, v22, v38, v22
	v_div_fmas_f32 v39, v39, v43, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v40, -v48, v53, v50
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v43, -v52, v44, v47
	v_mul_f32_e32 v49, v45, v54
	v_div_scale_f32 v50, null, v38, v38, v24
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v44, v43, v42
	v_div_fmas_f32 v40, v40, v41, v53
	v_rcp_f32_e32 v41, v50
	v_fma_f32 v43, -v51, v49, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v46, v48, 1.0
	v_div_fixup_f32 v19, v39, v38, v19
	v_div_fixup_f32 v20, v40, v38, v20
	v_fma_f32 v39, -v52, v44, v47
	v_dual_fmac_f32 v49, v43, v54 :: v_dual_fmac_f32 v48, v53, v48
	v_div_scale_f32 v40, s2, v23, v38, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v50, v41, 1.0
	v_div_fmas_f32 v39, v39, v42, v44
	v_fma_f32 v42, -v51, v49, v45
	v_mul_f32_e32 v44, v40, v48
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, s3, v24, v38, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v54, v49
	v_fma_f32 v49, -v46, v44, v40
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, null, v38, v38, v9
	v_div_scale_f32 v52, null, v38, v38, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v49, v48
	v_rcp_f32_e32 v47, v43
	v_mul_f32_e32 v51, v45, v41
	v_div_fixup_f32 v22, v42, v38, v22
	v_rcp_f32_e32 v42, v52
	v_div_fixup_f32 v21, v39, v38, v21
	v_fma_f32 v40, -v46, v44, v40
	v_fma_f32 v39, -v50, v51, v45
	v_div_scale_f32 v46, null, v38, v38, v11
	v_div_scale_f32 v54, null, v38, v38, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v49, -v43, v47, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v53, -v52, v42, 1.0
	v_fmac_f32_e32 v51, v39, v41
	v_div_fmas_f32 v40, v40, v48, v44
	v_fmac_f32_e32 v47, v49, v47
	v_rcp_f32_e32 v49, v46
	v_fmac_f32_e32 v42, v53, v42
	v_fma_f32 v44, -v50, v51, v45
	v_rcp_f32_e32 v56, v54
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, s4, v9, v38, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v41, v44, v41, v51
	v_div_scale_f32 v48, s2, v10, v38, v10
	v_fma_f32 v50, -v46, v49, 1.0
	v_div_fixup_f32 v23, v40, v38, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v24, v41, v38, v24
	v_fma_f32 v41, -v54, v56, 1.0
	v_mul_f32_e32 v45, v39, v47
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, s5, v11, v38, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v41, v56
	v_fma_f32 v53, -v43, v45, v39
	v_mul_f32_e32 v55, v48, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v50, v49
	v_div_scale_f32 v41, s3, v12, v38, v12
	v_fmac_f32_e32 v45, v53, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v52, v55, v48
	v_fma_f32 v40, -v46, v51, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v43, v45, v39
	v_div_scale_f32 v43, null, v38, v38, v13
	v_fmac_f32_e32 v55, v44, v42
	v_fmac_f32_e32 v51, v40, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v39, v39, v47, v45
	v_rcp_f32_e32 v40, v43
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v44, -v52, v55, v48
	v_mul_f32_e32 v45, v41, v56
	v_div_fixup_f32 v9, v39, v38, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v44, v42, v55
	v_fma_f32 v44, -v46, v51, v50
	v_div_scale_f32 v46, null, v38, v38, v14
	v_fma_f32 v47, -v43, v40, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v10, v42, v38, v10
	v_div_fmas_f32 v44, v44, v49, v51
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v49, -v54, v45, v41
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s2, v13, v38, v13
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v45, v49, v56
	v_div_fixup_f32 v11, v44, v38, v11
	v_mul_f32_e32 v39, v47, v40
	v_div_scale_f32 v44, null, v38, v38, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v46, v48, 1.0
	v_fma_f32 v41, -v54, v45, v41
	v_fma_f32 v49, -v43, v39, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v42, v48
	v_div_scale_f32 v42, s4, v14, v38, v14
	v_div_fmas_f32 v41, v41, v56, v45
	v_fmac_f32_e32 v39, v49, v40
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v42, v48
	v_div_scale_f32 v49, null, v38, v38, v16
	v_div_fixup_f32 v12, v41, v38, v12
	v_fma_f32 v41, -v43, v39, v47
	v_fma_f32 v43, -v46, v45, v42
	v_fma_f32 v47, -v44, v50, 1.0
	v_rcp_f32_e32 v51, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v41, v40, v39
	v_div_scale_f32 v40, null, v38, v38, v1
	v_fmac_f32_e32 v45, v43, v48
	v_fmac_f32_e32 v50, v47, v50
	v_div_scale_f32 v47, null, v38, v38, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v41, s2, v15, v38, v15
	v_div_fixup_f32 v13, v39, v38, v13
	v_fma_f32 v39, -v49, v51, 1.0
	v_rcp_f32_e32 v53, v47
	v_fma_f32 v42, -v46, v45, v42
	v_mul_f32_e32 v46, v41, v50
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v51, v39, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v40, v43, 1.0
	v_div_scale_f32 v39, s3, v16, v38, v16
	v_div_fmas_f32 v42, v42, v48, v45
	v_fma_f32 v45, -v44, v46, v41
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, null, v38, v38, v3
	v_mul_f32_e32 v48, v39, v51
	v_div_scale_f32 v54, s4, v1, v38, v1
	v_fma_f32 v55, -v47, v53, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v56, v52
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v39
	v_mul_f32_e32 v57, v54, v43
	v_fmac_f32_e32 v53, v55, v53
	v_div_scale_f32 v55, s5, v2, v38, v2
	v_div_fixup_f32 v14, v42, v38, v14
	v_fma_f32 v41, -v44, v46, v41
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v42, -v40, v57, v54
	v_mul_f32_e32 v44, v55, v53
	v_fma_f32 v45, -v52, v56, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v49, v48, v39
	v_fmac_f32_e32 v57, v42, v43
	v_fma_f32 v42, -v47, v44, v55
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s2, v3, v38, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v40, v57, v54
	v_fmac_f32_e32 v44, v42, v53
	v_div_fmas_f32 v41, v41, v50, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v45, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, null, v38, v38, v4
	v_div_fmas_f32 v39, v39, v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v41, v38, v15
	v_div_fmas_f32 v40, v40, v43, v57
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_rcp_f32_e32 v48, v46
	v_div_fixup_f32 v16, v39, v38, v16
	v_div_fixup_f32 v1, v40, v38, v1
	v_div_scale_f32 v40, null, v38, v38, v5
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v50, null, v38, v38, v8
	v_div_fmas_f32 v43, v43, v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v52, v42, v45
	v_fma_f32 v41, -v46, v48, 1.0
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v52, v50
	v_div_fixup_f32 v2, v43, v38, v2
	v_div_fmas_f32 v39, v39, v56, v42
	v_rcp_f32_e32 v42, v40
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, null, v38, v38, v6
	v_div_scale_f32 v43, null, v38, v38, v7
	v_div_scale_f32 v44, vcc_lo, v4, v38, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v41
	v_rcp_f32_e32 v47, v43
	v_div_fixup_f32 v3, v39, v38, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v39, -v40, v42, 1.0
	v_mul_f32_e32 v49, v44, v48
	v_fma_f32 v56, -v50, v52, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s2, v5, v38, v5
	v_fma_f32 v51, -v41, v45, 1.0
	v_fma_f32 v54, -v43, v47, 1.0
	v_fma_f32 v53, -v46, v49, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v39, v42 :: v_dual_fmac_f32 v52, v56, v52
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, s3, v6, v38, v6
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s4, v7, v38, v7
	v_fmac_f32_e32 v49, v53, v48
	v_fma_f32 v53, -v40, v55, v39
	v_div_scale_f32 v56, s5, v8, v38, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v57, v51, v45 :: v_dual_mul_f32 v58, v54, v47
	v_fmac_f32_e32 v55, v53, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v56, v52
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v41, v57, v51
	v_fma_f32 v53, -v43, v58, v54
	v_fma_f32 v39, -v40, v55, v39
	v_fma_f32 v40, -v50, v59, v56
	v_div_fmas_f32 v44, v44, v48, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v57, v46, v45 :: v_dual_fmac_f32 v58, v53, v47
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v59, v40, v52
	v_div_fmas_f32 v39, v39, v42, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v41, -v41, v57, v51
	v_fma_f32 v40, -v43, v58, v54
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v50, v59, v56
	v_div_fixup_f32 v4, v44, v38, v4
	v_div_fmas_f32 v41, v41, v45, v57
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v39, v38, v5
	v_div_fmas_f32 v40, v40, v47, v58
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v41, v38, v6
	v_div_fmas_f32 v42, v42, v52, v59
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v40, v38, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v40, v27, 16, 1
	v_cmp_o_f32_e64 s4, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v42, v38, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v38, v25, 16, 1
	v_add3_u32 v39, v26, v39, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_add3_u32 v26, v27, v40, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v25, v38, 0x7fff
	v_bfe_u32 v25, v28, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v39.h, s5
	v_cmp_o_f32_e64 s5, v30, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v38.h, s4
	v_add3_u32 v25, v28, v25, 0x7fff
	v_bfe_u32 v28, v29, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v26.h, s6
	v_bfe_u32 v26, v30, 16, 1
	v_bfe_u32 v38, v31, 16, 1
	v_cmp_o_f32_e64 s4, v29, v29
	v_add3_u32 v28, v29, v28, 0x7fff
	v_bfe_u32 v29, v32, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_add3_u32 v30, v31, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_cndmask_b16 v26.l, 0x7fff, v28.h, s4
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v29, v32, v29, 0x7fff
	v_bfe_u32 v31, v19, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v18, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s7
	v_cmp_o_f32_e64 s7, v32, v32
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s4, v17, v17
	v_bfe_u32 v17, v20, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s5
	v_add3_u32 v30, v18, v30, 0x7fff
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v18, v19, v31, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s7
	v_add3_u32 v17, v20, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_bfe_u32 v20, v21, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v28.h, s4
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s6
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v28, v23, 16, 1
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v21, v21
	v_bfe_u32 v21, v24, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v30.h, s5
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v22, v23, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s4
	v_bfe_u32 v20, v9, 16, 1
	v_add3_u32 v21, v24, v21, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s6
	v_bfe_u32 v22, v10, 16, 1
	v_bfe_u32 v23, v11, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s7
	v_cmp_o_f32_e64 s7, v24, v24
	v_add3_u32 v20, v9, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v9, v9
	v_bfe_u32 v9, v12, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s5
	v_add3_u32 v22, v10, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v10, v10
	v_add3_u32 v10, v11, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s7
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v20.h, s4
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s6
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v20, v15, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e64 s4, v13, v13
	v_bfe_u32 v13, v16, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v22.h, s5
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_add3_u32 v14, v15, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s4
	v_bfe_u32 v12, v1, 16, 1
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v2, 16, 1
	v_bfe_u32 v15, v3, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_cmp_o_f32_e64 s7, v16, v16
	v_add3_u32 v12, v1, v12, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	v_bfe_u32 v1, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s5
	v_add3_u32 v14, v2, v14, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s7
	v_add3_u32 v1, v4, v1, 0x7fff
	v_cmp_o_f32_e64 s7, v4, v4
	v_bfe_u32 v4, v5, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v2.h, s6
	v_bfe_u32 v2, v6, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v3.l, 0x7fff, v12.h, s4
	v_add3_u32 v4, v5, v4, 0x7fff
	v_cmp_o_f32_e64 s4, v5, v5
	v_add3_u32 v2, v6, v2, 0x7fff
	v_bfe_u32 v12, v7, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v3.h, 0x7fff, v14.h, s5
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s4
	v_cmp_eq_u32_e64 s4, 0, v33
	v_cmp_o_f32_e64 s5, v6, v6
	v_add3_u32 v6, v7, v12, 0x7fff
	v_mov_b32_e32 v16, 0x5410
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b32_e64 v12, v18, v19, s4
	v_cndmask_b32_e64 v14, v19, v18, s4
	v_mov_b32_e32 v18, 0x7632
	v_cndmask_b32_e64 v19, v10, v11, s4
	v_cndmask_b32_e64 v10, v11, v10, s4
	v_cndmask_b32_e64 v11, 0x1054, v16, s4
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s7
	v_cndmask_b32_e64 v16, 0x3276, v18, s4
	v_cmp_o_f32_e64 s6, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s7, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s5
	v_cndmask_b32_e64 v18, v13, v9, s4
	v_cndmask_b32_e64 v9, v9, v13, s4
	v_lshl_or_b32 v11, v11, 8, v11
	v_lshl_or_b32 v13, v16, 8, v16
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s6
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s7
	v_cndmask_b32_e64 v6, v27, v26, s4
	v_cndmask_b32_e64 v8, v25, v29, s4
	v_cndmask_b32_e64 v20, v2, v3, s4
	v_cndmask_b32_e64 v2, v3, v2, s4
	v_and_b32_e32 v3, 0x540054, v11
	v_and_b32_e32 v11, 0x760076, v13
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v15, v21, v17, s4
	v_cndmask_b32_e64 v17, v17, v21, s4
	v_cndmask_b32_e64 v16, v4, v1, s4
	v_cndmask_b32_e64 v1, v1, v4, s4
	v_permlanex16_b32 v4, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v8, v11, 4, v11
	v_cndmask_b32_e64 v5, v26, v27, s4
	v_cndmask_b32_e64 v7, v29, v25, s4
	v_permlanex16_b32 v11, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v17, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v17, 0x5040504, v3
	v_and_b32_e32 v21, 0x7060706, v8
	v_permlanex16_b32 v14, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v2, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v1, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s19, v36
	v_cmp_gt_i32_e64 s2, s19, v35
	v_cmp_gt_i32_e64 s1, s19, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v4, v5, v17
	v_perm_b32 v2, v4, v5, v21
	v_perm_b32 v3, v6, v7, v17
	v_perm_b32 v4, v6, v7, v21
	v_perm_b32 v5, v11, v12, v17
	v_perm_b32 v6, v11, v12, v21
	v_perm_b32 v7, v13, v15, v17
	v_perm_b32 v8, v13, v15, v21
	v_perm_b32 v9, v10, v19, v17
	v_perm_b32 v11, v14, v18, v17
	v_perm_b32 v13, v22, v20, v17
	v_perm_b32 v15, v23, v16, v17
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v37, v36, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v12, v14, v18, v21
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v37, v35, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v10, v10, v19, v21
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v37, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s3, s0, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v37, v0, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s2, s0, s2
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s1, s0, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_perm_b32 v14, v22, v20, v21
	v_perm_b32 v16, v23, v16, v21
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v18, s[20:23], 0 offen
	buffer_store_b128 v[9:12], v19, s[20:23], 0 offen
	buffer_store_b128 v[13:16], v0, s[20:23], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp62:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 173
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 173
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11080
; TotalNumSgprs: 51
; NumVgprs: 173
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 173
; Occupancy: 8
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_fp32_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     173
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
