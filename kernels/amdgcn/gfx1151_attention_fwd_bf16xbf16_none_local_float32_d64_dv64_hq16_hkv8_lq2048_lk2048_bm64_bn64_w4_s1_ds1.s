	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b64 s[88:89], s[0:1], 0x5c
	s_load_b32 s10, s[0:1], 0x84
	s_load_b64 s[80:81], s[0:1], 0x0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v33, 0x60, v0
.Ltmp0:
	.loc	1 787 79 prologue_end           ; attention.py:787:79
	v_and_b32_e32 v66, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v65, 3, v66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s4, v1
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s83, 0x31027000
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s67, s4, s2
	s_mov_b32 s82, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v2
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b64 s[76:77], s[0:1], 0x38
	v_dual_mov_b32 v5, v8 :: v_dual_and_b32 v34, 15, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[73:74], null, s88, v1, v[65:66]
	s_mul_i32 s5, s88, s67
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s88, v65
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s81, s81, 0xffff
	v_lshlrev_b32_e32 v53, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v54, 1, v33
	v_lshrrev_b32_e32 v35, 4, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[74:75], null, s88, 48, v[73:74]
	v_lshl_add_u32 v110, s88, 4, v73
	v_lshl_add_u32 v111, s88, 5, v73
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, v73, s5, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v52, 4, v0
	v_add_lshl_u32 v2, v110, s5, 1
	v_add_lshl_u32 v3, v111, s5, 1
	v_add_lshl_u32 v4, v74, s5, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v109, v54, v34
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_clause 0x3
	buffer_load_b128 v[36:39], v1, s[80:83], 0 offen
	buffer_load_b128 v[40:43], v2, s[80:83], 0 offen
	buffer_load_b128 v[44:47], v3, s[80:83], 0 offen
	buffer_load_b128 v[48:51], v4, s[80:83], 0 offen
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s4, s9
	v_mov_b32_e32 v4, v8
	s_add_i32 s2, s2, s10
	v_dual_mov_b32 v2, v8 :: v_dual_and_b32 v53, 0x70, v53
	s_add_i32 s2, s2, 64
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v98, v0, 4, 1
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s2, 0x800
	v_mov_b32_e32 v3, v8
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v52, v52, v53
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v81, 62, v35
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v35, s4, v109
	.loc	1 802 39 is_stmt 1              ; attention.py:802:39
	s_sub_i32 s4, s4, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s5, s2, 31
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s10
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s5, s5, 26
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s79, s2, s5
	v_dual_mov_b32 v1, v8 :: v_dual_add_nc_u32 v112, 0, v52
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
	v_mov_b32_e32 v76, v8
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v108, 2, v98
	v_or_b32_e32 v107, 4, v98
	v_or_b32_e32 v106, 6, v98
	v_or_b32_e32 v105, 8, v98
	v_or_b32_e32 v104, 10, v98
	v_or_b32_e32 v103, 12, v98
	v_or_b32_e32 v102, 14, v98
	v_or_b32_e32 v101, 16, v98
	v_or_b32_e32 v100, 18, v98
	v_or_b32_e32 v99, 20, v98
	v_or_b32_e32 v97, 22, v98
	v_or_b32_e32 v96, 24, v98
	v_or_b32_e32 v95, 26, v98
	v_or_b32_e32 v94, 28, v98
	v_or_b32_e32 v93, 30, v98
	v_or_b32_e32 v92, 32, v98
	v_or_b32_e32 v91, 34, v98
	v_or_b32_e32 v90, 36, v98
	v_or_b32_e32 v89, 38, v98
	v_or_b32_e32 v88, 40, v98
	v_or_b32_e32 v87, 42, v98
	v_or_b32_e32 v86, 44, v98
	v_or_b32_e32 v85, 46, v98
	v_or_b32_e32 v84, 48, v98
	v_or_b32_e32 v83, 50, v98
	v_or_b32_e32 v82, 52, v98
	v_or_b32_e32 v80, 54, v98
	v_or_b32_e32 v79, 56, v98
	v_or_b32_e32 v77, 58, v98
	v_or_b32_e32 v78, 60, v98
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v35
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s78, s4, 0x7fffffc0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s79, s79, 63
	s_mov_b32 s68, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s78, s79
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v112, v[36:39]
	s_waitcnt vmcnt(2)
	ds_store_b128 v112, v[40:43] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v112, v[44:47] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[48:51] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v1, 7, v34
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v2, 6, v33
	v_lshlrev_b32_e32 v3, 4, v66
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s3, 31
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v5, s10, v35
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s12, s4, 28
	s_clause 0x1
	s_load_b32 s11, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v2, v1, v2, v3
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s12
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v113, s8, v5
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v114, s9, v5
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v7, 0x50, v2, 0
	v_xad_u32 v5, 0x70, v2, 0
	v_xad_u32 v8, v2, 64, 0
	v_xad_u32 v6, 0x60, v2, 0
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[45:48], v7
	ds_load_b128 v[41:44], v8
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s1, 0x10007
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v7, v2, 16, 0
	ds_load_b128 v[37:40], v5
	ds_load_b128 v[33:36], v6
	v_xad_u32 v5, v2, 48, 0
	v_xad_u32 v6, v2, 32, 0
	v_add_nc_u32_e32 v2, 0, v2
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s1, s3
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[61:64], v7
	ds_load_b128 v[57:60], v2
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s1, s1, 0x80000
	v_and_b32_e32 v2, 16, v0
	s_sext_i32_i16 s1, s1
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[53:56], v5
	ds_load_b128 v[49:52], v6
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s1, s1, 10
	v_mov_b32_e32 v6, 0x5410
	s_and_b32 s91, s1, 0xfffff800
	v_cmp_eq_u32_e64 s1, 0, v2
	v_mov_b32_e32 v2, 0x7632
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v4, 0x78, v0
	v_or_b32_e32 v115, v3, v1
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	v_cndmask_b32_e64 v6, 0x1054, v6, s1
	v_cndmask_b32_e64 v2, 0x3276, v2, s1
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v4
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s0, s0, 0xffffc000
	v_xor_b32_e32 v5, 16, v115
	v_lshl_or_b32 v6, v6, 8, v6
	v_lshl_or_b32 v2, v2, 8, v2
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[75:76], null, s89, v1, v[65:66]
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s91, s91, s0
	v_and_b32_e32 v6, 0x540054, v6
	v_and_b32_e32 v1, 0x760076, v2
	v_xor_b32_e32 v2, v3, v4
	v_bfe_i32 v4, v0, 3, 1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s89, v65
	v_lshl_or_b32 v3, v6, 4, v6
	v_xor_b32_e32 v7, 32, v115
	v_lshl_or_b32 v0, v66, 10, v2
	v_and_b32_e32 v2, 0x410, v4
	v_xor_b32_e32 v8, 48, v115
	v_and_b32_e32 v116, 0x5040504, v3
	v_mul_u32_u24_e32 v3, 0x90, v66
	v_xor_b32_e32 v9, 64, v115
	v_xor_b32_e32 v10, 0x50, v115
	v_xor_b32_e32 v11, 0x60, v115
	v_xor_b32_e32 v12, 0x70, v115
	v_xor_b32_e32 v118, v3, v2
	v_xor_b32_e32 v4, 0x120, v0
	v_xor_b32_e32 v6, 0x1b0, v0
	v_xor_b32_e32 v2, 0x240, v0
	v_xor_b32_e32 v3, 0x2d0, v0
	v_xor_b32_e32 v28, 0x840, v118
	v_xor_b32_e32 v13, 0x360, v0
	v_xor_b32_e32 v14, 0x3f0, v0
	v_xor_b32_e32 v15, 16, v118
	v_xor_b32_e32 v16, 32, v118
	v_add_nc_u32_e32 v145, 0, v28
	v_mov_b32_e32 v28, v25
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v17, 48, v118
	v_xor_b32_e32 v18, 64, v118
	v_xor_b32_e32 v19, 0x50, v118
	v_xor_b32_e32 v20, 0x60, v118
	v_and_b32_e32 v117, 0x7060706, v1
	v_xor_b32_e32 v1, 0x90, v0
	v_xor_b32_e32 v21, 0x70, v118
	v_xor_b32_e32 v22, 0x820, v118
	v_xor_b32_e32 v23, 0x830, v118
	v_xor_b32_e32 v24, 0x810, v118
	v_xor_b32_e32 v26, 0x860, v118
	v_xor_b32_e32 v27, 0x870, v118
	v_xor_b32_e32 v29, 0x850, v118
	v_xor_b32_e32 v30, 0x1040, v118
	v_xor_b32_e32 v31, 0x1050, v118
	v_xor_b32_e32 v32, 0x1060, v118
	v_xor_b32_e32 v65, 0x1070, v118
	v_xor_b32_e32 v66, 0x1010, v118
	v_xor_b32_e32 v67, 0x1020, v118
	v_xor_b32_e32 v68, 0x1030, v118
	v_xor_b32_e32 v69, 0x1860, v118
	v_xor_b32_e32 v70, 0x1870, v118
	v_xor_b32_e32 v71, 0x1840, v118
	v_xor_b32_e32 v72, 0x1850, v118
	v_xor_b32_e32 v76, 0x1820, v118
	v_xor_b32_e32 v159, 0x1830, v118
	v_xor_b32_e32 v160, 0x1810, v118
	v_add_nc_u32_e32 v119, 0, v5
	v_add_nc_u32_e32 v120, 0, v7
	v_add_nc_u32_e32 v121, 0, v8
	v_add_nc_u32_e32 v122, 0, v9
	v_add_nc_u32_e32 v123, 0, v10
	v_add_nc_u32_e32 v124, 0, v11
	v_add_nc_u32_e32 v125, 0, v12
	v_add_nc_u32_e32 v126, 0, v1
	v_add_nc_u32_e32 v127, 0, v4
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v128, 0, v6
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v129, 0, v2
	v_add_nc_u32_e32 v130, 0, v3
	v_mov_b32_e32 v3, v25
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v131, 0, v13
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v132, 0, v14
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v133, 0, v15
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v134, 0, v16
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v135, 0, v17
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_add_nc_u32 v136, 0, v18
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v137, 0, v19
	v_add_nc_u32_e32 v138, 0, v20
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v139, 0, v21
	v_add_nc_u32_e32 v140, 0, v22
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v141, 0, v23
	v_add_nc_u32_e32 v142, 0, v24
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v143, 0, v26
	v_add_nc_u32_e32 v144, 0, v27
	v_add_nc_u32_e32 v146, 0, v29
	v_add_nc_u32_e32 v147, 0, v30
	v_add_nc_u32_e32 v148, 0, v31
	v_add_nc_u32_e32 v149, 0, v32
	v_add_nc_u32_e32 v150, 0, v65
	v_add_nc_u32_e32 v151, 0, v66
	v_add_nc_u32_e32 v152, 0, v67
	v_add_nc_u32_e32 v153, 0, v68
	v_add_nc_u32_e32 v154, 0, v69
	v_add_nc_u32_e32 v155, 0, v70
	v_add_nc_u32_e32 v156, 0, v71
	v_add_nc_u32_e32 v157, 0, v72
	v_add_nc_u32_e32 v158, 0, v76
	v_add_nc_u32_e32 v159, 0, v159
	v_add_nc_u32_e32 v160, 0, v160
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v32, v25
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v76, v25
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s90, s11, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_lshl_b32 s92, s89, 1
	s_mul_i32 s93, s89, 3
	s_and_b32 s85, s7, 0xffff
	s_mov_b32 s80, s4
	s_mov_b32 s81, s5
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s94, 0x76543210
	s_mov_b32 s84, s6
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s1, s91, s78
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v165, s78, v82
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s1, s88
	v_mad_u64_u32 v[198:199], null, s1, s89, v[75:76]
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v199, s3, v73, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v169, s78, v86
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v200, s3, v110, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v173, s78, v90
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v201, s3, v111, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v177, s78, v94
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v202, s3, v74, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v164, 0, v0
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v166, s78, v83
	v_or_b32_e32 v167, s78, v84
	v_or_b32_e32 v168, s78, v85
	v_or_b32_e32 v170, s78, v87
	v_or_b32_e32 v171, s78, v88
	v_or_b32_e32 v172, s78, v89
	v_or_b32_e32 v174, s78, v91
	v_or_b32_e32 v175, s78, v92
	v_or_b32_e32 v176, s78, v93
	v_or_b32_e32 v178, s78, v95
	v_or_b32_e32 v179, s78, v96
	v_or_b32_e32 v180, s78, v97
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v165, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v165, v114
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v165, 0x80000000, v199, vcc_lo
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v169, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v169, v114
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v169, 0x80000000, v200, vcc_lo
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v173, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v173, v114
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v173, 0x80000000, v201, vcc_lo
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v177, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s27, v177, v114
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v177, 0x80000000, v202, vcc_lo
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s4, v166, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v166, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v167, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v167, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v168, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v168, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v170, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v170, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v171, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v171, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v172, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v172, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v174, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s21, v174, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v175, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s23, v175, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v176, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s25, v176, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v178, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s29, v178, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s30, v179, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s31, v179, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s33, v180, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s34, v180, v114
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x3
	buffer_load_b128 v[165:168], v165, s[80:83], 0 offen
	buffer_load_b128 v[169:172], v169, s[80:83], 0 offen
	buffer_load_b128 v[173:176], v173, s[80:83], 0 offen
	buffer_load_b128 v[177:180], v177, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v181, s78, v99
	v_or_b32_e32 v182, s78, v100
	v_or_b32_e32 v183, s78, v101
	v_or_b32_e32 v184, s78, v102
	v_or_b32_e32 v185, s78, v103
	v_or_b32_e32 v186, s78, v104
	v_or_b32_e32 v187, s78, v105
	v_or_b32_e32 v188, s78, v106
	v_or_b32_e32 v189, s78, v107
	v_or_b32_e32 v190, s78, v108
	v_or_b32_e32 v191, s78, v98
	v_or_b32_e32 v192, s78, v81
	v_or_b32_e32 v193, s78, v78
	v_or_b32_e32 v194, s78, v77
	v_or_b32_e32 v195, s78, v79
	v_or_b32_e32 v196, s78, v80
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s35, v181, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s36, v181, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s37, v182, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s38, v182, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s39, v183, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s40, v183, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s41, v184, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s42, v184, v114
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v181, v198, s92, 1
	v_add_lshl_u32 v182, v198, s93, 1
	v_lshlrev_b32_e32 v183, 1, v198
	v_add_lshl_u32 v184, v198, s89, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v65, s68 :: v_dual_add_nc_u32 v162, 0, v115
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s43, v185, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s44, v185, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s45, v186, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s46, v186, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s47, v187, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s48, v187, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s49, v188, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s50, v188, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s51, v189, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s52, v189, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s53, v190, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s54, v190, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s55, v191, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s56, v191, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s57, v192, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s58, v192, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s59, v193, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s60, v193, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s61, v194, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s62, v194, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s63, v195, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s64, v195, v114
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s65, v196, v113
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s66, v196, v114
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v230, 0x80000000, v181, s0
	v_cndmask_b32_e64 v231, 0x80000000, v182, s0
	v_cndmask_b32_e64 v232, 0x80000000, v183, s0
	v_cndmask_b32_e64 v238, 0x80000000, v184, s0
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v66, s69 :: v_dual_mov_b32 v67, s70
	v_dual_mov_b32 v68, s71 :: v_dual_mov_b32 v69, s72
	v_dual_mov_b32 v70, s73 :: v_dual_mov_b32 v71, s74
	v_dual_mov_b32 v72, s75 :: v_dual_add_nc_u32 v197, 0, v118
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s95, s1, s3
	s_and_b32 s1, s4, s5
	s_and_b32 s3, s6, s7
	s_and_b32 s4, s8, s9
	s_and_b32 s5, s10, s11
	s_and_b32 s6, s12, s13
	s_and_b32 s7, s14, s15
	s_and_b32 s8, s16, s17
	s_and_b32 s9, s18, s19
	s_and_b32 s10, s20, s21
	s_and_b32 s12, s22, s23
	s_and_b32 s11, s24, s25
	s_and_b32 s13, s26, s27
	s_and_b32 s14, s28, s29
	s_and_b32 s16, s30, s31
	s_and_b32 s17, s33, s34
	s_and_b32 s18, s35, s36
	s_and_b32 s21, s37, s38
	s_and_b32 s23, s45, s46
	s_and_b32 s25, s47, s48
	s_and_b32 s27, s49, s50
	s_and_b32 s29, s53, s54
	s_and_b32 s31, s55, s56
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s2, s11
	s_and_b32 s13, s2, s13
	s_and_b32 s15, s2, s14
	s_and_b32 s19, s2, s16
	s_and_b32 s20, s2, s17
	s_and_b32 s22, s2, s18
	s_and_b32 s17, s2, s12
	s_and_b32 s24, s2, s21
	s_and_b32 s26, s2, s23
	s_and_b32 s27, s2, s27
	s_and_b32 s29, s2, s29
	s_and_b32 s30, s2, s25
	s_and_b32 s31, s2, s31
	s_and_b32 s28, s51, s52
	s_and_b32 s34, s39, s40
	s_and_b32 s33, s41, s42
	s_and_b32 s35, s43, s44
	s_and_b32 s36, s57, s58
	s_and_b32 s37, s59, s60
	s_and_b32 s39, s63, s64
	s_and_b32 s40, s65, s66
	s_and_b32 s1, s2, s1
	s_and_b32 s3, s2, s3
	s_and_b32 s4, s2, s4
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s2, s9
	s_and_b32 s28, s2, s28
	s_and_b32 s33, s2, s33
	s_and_b32 s25, s2, s34
	s_and_b32 s34, s2, s35
	s_and_b32 s12, s2, s36
	s_and_b32 s18, s2, s39
	s_and_b32 s16, s2, s37
	s_and_b32 s21, s2, s40
	s_and_b32 s23, s2, s95
	s_and_b32 s38, s61, s62
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s35, 0xff800000, v161
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s2, s38
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v163.h, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s78, s78, 64
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v112, v[165:168]
	s_waitcnt vmcnt(2)
	ds_store_b128 v112, v[169:172] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v112, v[173:176] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v112, v[177:180] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[169:172], v119
	ds_load_b128 v[165:168], v162
	ds_load_b128 v[173:176], v162 offset:2048
	ds_load_b128 v[177:180], v119 offset:2048
	ds_load_b128 v[185:188], v119 offset:4096
	ds_load_b128 v[181:184], v162 offset:4096
	ds_load_b128 v[189:192], v162 offset:6144
	ds_load_b128 v[193:196], v119 offset:6144
	ds_load_b128 v[202:205], v121
	ds_load_b128 v[198:201], v120
	ds_load_b128 v[206:209], v120 offset:2048
	ds_load_b128 v[210:213], v121 offset:2048
	ds_load_b128 v[218:221], v121 offset:4096
	ds_load_b128 v[214:217], v120 offset:4096
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v234.h, v163.h
	v_mov_b16_e64 v235.h, v163.h
	v_mov_b16_e64 v236.h, v163.h
	v_mov_b16_e64 v237.h, v163.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s78, s79
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[222:229], v[165:172], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[173:180], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[173:180], v[181:188], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[181:188], v[189:196], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[222:229], v[198:205], v[49:56], v[222:229]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[198:201], v122 offset:2048
	ds_load_b128 v[202:205], v123 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[206:213], v[49:56], v[165:172]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v120 offset:6144
	ds_load_b128 v[69:72], v121 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[173:180], v[214:221], v[49:56], v[173:180]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[218:221], v230, s[84:87], 0 offen
	buffer_load_b128 v[214:217], v231, s[84:87], 0 offen
	buffer_load_b128 v[230:233], v232, s[84:87], 0 offen
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[193:196], v123
	ds_load_b128 v[189:192], v122
	ds_load_b128 v[210:213], v123 offset:4096
	ds_load_b128 v[206:209], v122 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[198:205], v[41:48], v[165:172]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[198:201], v238, s[84:87], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[181:188], v[65:72], v[49:56], v[181:188]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v122 offset:6144
	ds_load_b128 v[69:72], v123 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[222:229], v[189:196], v[41:48], v[222:229]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[193:196], v125
	ds_load_b128 v[189:192], v124
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[173:180], v[206:213], v[41:48], v[173:180]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[181:188], v[65:72], v[41:48], v[181:188]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v124 offset:2048
	ds_load_b128 v[69:72], v125 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[222:229], v[189:196], v[33:40], v[222:229]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[189:192], v124 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[65:72], v[33:40], v[165:172]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v124 offset:6144
	ds_load_b128 v[193:196], v125 offset:4096
	ds_load_b128 v[69:72], v125 offset:6144
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v162, s90, v165 :: v_dual_mul_f32 v165, s90, v166
	v_dual_mul_f32 v166, s90, v167 :: v_dual_mul_f32 v167, s90, v168
	v_dual_mul_f32 v168, s90, v169 :: v_dual_mul_f32 v169, s90, v170
	v_mul_f32_e32 v170, s90, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v238, 0xff800000, v166, s22
	v_cndmask_b32_e64 v239, 0xff800000, v167, s20
	v_cndmask_b32_e64 v240, 0xff800000, v165, s24
	v_cndmask_b32_e64 v241, 0xff800000, v162, s25
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[173:180], v[189:196], v[33:40], v[173:180]
	v_wmma_f32_16x16x16_bf16 v[181:188], v[65:72], v[33:40], v[181:188]
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v65, s90, v222 :: v_dual_mul_f32 v68, s90, v225
	v_dual_mul_f32 v66, s90, v223 :: v_dual_mul_f32 v67, s90, v224
	v_dual_mul_f32 v70, s90, v227 :: v_dual_mul_f32 v69, s90, v226
	v_dual_mul_f32 v72, s90, v229 :: v_dual_mul_f32 v71, s90, v228
	v_dual_mul_f32 v171, s90, v172 :: v_dual_mul_f32 v172, s90, v173
	v_dual_mul_f32 v173, s90, v174 :: v_dual_mul_f32 v174, s90, v175
	v_dual_mul_f32 v175, s90, v176 :: v_dual_mul_f32 v176, s90, v177
	v_dual_mul_f32 v177, s90, v178 :: v_dual_mul_f32 v178, s90, v179
	v_dual_mul_f32 v179, s90, v180 :: v_dual_mul_f32 v180, s90, v181
	v_dual_mul_f32 v181, s90, v182 :: v_dual_mul_f32 v182, s90, v183
	v_dual_mul_f32 v183, s90, v184 :: v_dual_mul_f32 v184, s90, v185
	v_dual_mul_f32 v185, s90, v186 :: v_dual_mul_f32 v186, s90, v187
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v224, 0xff800000, v172, s17
	v_cndmask_b32_e64 v225, 0xff800000, v173, s10
	v_cndmask_b32_e64 v226, 0xff800000, v170, s13
	v_cndmask_b32_e64 v227, 0xff800000, v171, s11
	v_cndmask_b32_e64 v228, 0xff800000, v168, s19
	v_cndmask_b32_e64 v229, 0xff800000, v169, s15
	v_cndmask_b32_e64 v69, 0xff800000, v69, s30
	v_cndmask_b32_e64 v70, 0xff800000, v70, s26
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v187, s90, v188
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v68, s27
	v_cndmask_b32_e64 v65, 0xff800000, v65, s31
	v_cndmask_b32_e64 v66, 0xff800000, v66, s29
	v_cndmask_b32_e64 v196, 0xff800000, v182, s23
	v_cndmask_b32_e64 v203, 0xff800000, v180, s3
	v_cndmask_b32_e64 v204, 0xff800000, v181, s1
	v_cndmask_b32_e64 v205, 0xff800000, v178, s5
	v_cndmask_b32_e64 v210, 0xff800000, v179, s4
	v_cndmask_b32_e64 v211, 0xff800000, v176, s7
	v_cndmask_b32_e64 v212, 0xff800000, v177, s6
	v_cndmask_b32_e64 v222, 0xff800000, v174, s9
	v_cndmask_b32_e64 v223, 0xff800000, v175, s8
	v_cndmask_b32_e64 v67, 0xff800000, v67, s28
	v_cndmask_b32_e64 v71, 0xff800000, v71, s34
	v_cndmask_b32_e64 v72, 0xff800000, v72, s33
	v_cndmask_b32_e64 v186, 0xff800000, v186, s16
	v_cndmask_b32_e64 v187, 0xff800000, v187, s12
	v_cndmask_b32_e64 v184, 0xff800000, v184, s18
	v_cndmask_b32_e64 v242, 0xff800000, v183, s21
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v167, v227, v224, v225
	v_max3_f32 v168, v228, v229, v226
	v_max3_f32 v169, v240, v238, v239
	v_max3_f32 v170, v68, v69, v70
	v_max_f32_e32 v171, v65, v66
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v185, 0xff800000, v185, s14
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v162, v203, v204, v196
	v_max3_f32 v165, v212, v205, v210
	v_max3_f32 v166, v222, v223, v211
	v_max3_f32 v172, v71, v72, v241
	v_max_f32_e32 v173, v186, v187
	v_max_f32_e32 v174, v242, v184
	v_max3_f32 v167, v169, v168, v167
	v_max3_f32 v168, v171, v67, v170
	v_max3_f32 v162, v166, v165, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v165, v174, v185, v173
	v_max3_f32 v166, v168, v172, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v162, v166, v162, v165
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v165, v162, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v243, v161, v162, v165
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v162, v161, v243
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v243
	v_sub_f32_e32 v68, v68, v243
	v_sub_f32_e32 v70, v70, v243
	v_sub_f32_e32 v72, v72, v243
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v162, v162
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v72, v72
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v252, 0, v162, s35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v243
	v_sub_f32_e32 v67, v67, v243
	v_sub_f32_e32 v69, v69, v243
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v71, v71, v243 :: v_dual_mul_f32 v18, v18, v252
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v252
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v252
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v252
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v245, 0, v66, s29
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v247, 0, v68, s27
	v_cndmask_b32_e64 v249, 0, v70, s26
	v_cndmask_b32_e64 v251, 0, v72, s33
	v_cndmask_b32_e64 v244, 0, v65, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v163.l, v245.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v246, 0, v67, s28
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v252
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v248, 0, v69, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v234.l, v244.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v252
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v235.l, v246.h
	v_and_b32_e32 v66, 1, v163
	v_mov_b16_e64 v163.l, v247.h
	v_and_b32_e32 v65, 1, v234
	v_mov_b16_e64 v236.l, v248.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v250, 0, v71, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v244, v244
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v29, v29, v252 :: v_dual_and_b32 v70, 1, v163
	v_dual_mul_f32 v22, v22, v252 :: v_dual_and_b32 v67, 1, v235
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v244, v65, 0x7fff
	v_mov_b16_e64 v163.l, v249.h
	v_and_b32_e32 v68, 1, v236
	v_add3_u32 v66, v245, v66, 0x7fff
	v_cmp_o_f32_e64 s29, v246, v246
	v_mov_b16_e64 v237.l, v250.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v252
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v246, v67, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s27
	v_and_b32_e32 v65, 1, v163
	v_mov_b16_e64 v163.l, v251.h
	v_add3_u32 v68, v248, v68, 0x7fff
	v_cmp_o_f32_e64 s28, v247, v247
	v_cmp_o_f32_e64 s31, v248, v248
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v24, v24, v252 :: v_dual_and_b32 v69, 1, v237
	v_mul_f32_e32 v12, v12, v252
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v70, v247, v70, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s29
	v_and_b32_e32 v67, 1, v163
	v_cmp_o_f32_e64 s26, v245, v245
	v_cmp_o_f32_e64 s30, v249, v249
	v_cmp_o_f32_e64 s33, v251, v251
	v_cmp_o_f32_e64 s34, v250, v250
	v_add3_u32 v69, v250, v69, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v68.h, s31
	v_cndmask_b16 v68.h, 0x7fff, v70.h, s28
	v_add3_u32 v71, v249, v65, 0x7fff
	v_add3_u32 v67, v251, v67, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s26
	v_cndmask_b16 v72.l, 0x7fff, v69.h, s34
	v_permlanex16_b32 v161, v68, s94, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v70.h, 0x7fff, v71.h, s30
	v_cndmask_b16 v72.h, 0x7fff, v67.h, s33
	v_permlanex16_b32 v69, v66, s94, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v252
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v67, v161, v68, v116
	v_permlanex16_b32 v71, v70, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v161, v68, v117
	v_permlanex16_b32 v161, v72, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v69, v66, v116
	v_perm_b32 v66, v69, v66, v117
	v_perm_b32 v69, v71, v70, v116
	v_perm_b32 v70, v71, v70, v117
	v_perm_b32 v71, v161, v72, v116
	v_perm_b32 v72, v161, v72, v117
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v252
	v_dual_mul_f32 v19, v19, v252 :: v_dual_mov_b32 v234, v76
	v_mul_f32_e32 v21, v21, v252
	v_dual_mul_f32 v23, v23, v252 :: v_dual_sub_f32 v76, v228, v243
	v_mul_f32_e32 v9, v9, v252
	v_mul_f32_e32 v11, v11, v252
	v_mul_f32_e32 v13, v13, v252
	v_mul_f32_e32 v15, v15, v252
	v_mul_f32_e32 v1, v1, v252
	v_mul_f32_e32 v2, v2, v252
	v_mul_f32_e32 v3, v3, v252
	v_mul_f32_e32 v4, v4, v252
	v_mul_f32_e32 v5, v5, v252
	v_mul_f32_e32 v6, v6, v252
	v_mul_f32_e32 v7, v7, v252
	v_mul_f32_e32 v8, v8, v252
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s19
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v162.l, v218.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v162.h, v214.l
	v_mov_b16_e64 v214.l, v218.h
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v161.l, v230.l
	v_mov_b16_e64 v166.l, v219.l
	v_mov_b16_e64 v166.h, v215.l
	v_mov_b16_e64 v165.l, v231.l
	v_mov_b16_e64 v215.l, v219.h
	v_mov_b16_e64 v170.h, v217.l
	v_mov_b16_e64 v217.l, v221.h
	v_mov_b16_e64 v168.l, v220.l
	v_mov_b16_e64 v168.h, v216.l
	v_mov_b16_e64 v167.l, v232.l
	v_mov_b16_e64 v216.l, v220.h
	v_mov_b16_e64 v170.l, v221.l
	v_mov_b16_e64 v169.l, v233.l
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v31, v31, v252 :: v_dual_mov_b32 v202, v217
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v161.h, v198.l
	v_mov_b16_e64 v198.l, v230.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v252
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v165.h, v199.l
	v_mov_b16_e64 v199.l, v231.h
	v_mov_b16_e64 v167.h, v200.l
	v_mov_b32_e32 v213, v198
	v_mov_b16_e64 v200.l, v232.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v252
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v164, v[161:162]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v252
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v126, v[213:214]
	v_mov_b32_e32 v214, v199
	ds_store_b64 v127, v[165:166]
	ds_store_b64 v128, v[214:215]
	v_mov_b32_e32 v215, v200
	v_mov_b16_e64 v169.h, v201.l
	v_mov_b16_e64 v201.l, v233.h
	ds_store_b64 v129, v[167:168]
	ds_store_b64 v130, v[215:216]
	ds_store_b64 v131, v[169:170]
	ds_store_b64 v132, v[201:202]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[164:167], v197
	ds_load_b128 v[168:171], v133
	ds_load_b128 v[172:175], v140
	ds_load_b128 v[176:179], v141
	ds_load_b128 v[180:183], v134
	ds_load_b128 v[188:191], v197 offset:2048
	ds_load_b128 v[192:195], v142
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v162, v226, v243
	v_sub_f32_e32 v161, v229, v243
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v215.h, v163.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[218:221], v158
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v162, v162
	v_exp_f32_e32 v161, v161
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[164:171], v[65:72], v[25:32]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v164, v227, v243
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[172:179], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[170:173], v147
	ds_load_b128 v[174:177], v148
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v178, v204, v243
	v_sub_f32_e32 v165, v224, v243
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v164, v164
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v202, 0, v161, s15
	v_cndmask_b32_e64 v161, 0, v162, s13
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v178, v178
	v_exp_f32_e32 v165, v165
.Ltmp6:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v204, v248, v249 :: v_dual_sub_f32 v185, v185, v243
.Ltmp7:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[166:169], v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v164, s11
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v184, v184, v243
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v202, v202
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v165, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v213, v161, v162
.Ltmp9:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v184, v184
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[170:177], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[170:173], v154
	ds_load_b128 v[174:177], v155
	ds_load_b128 v[198:201], v156
	ds_load_b128 v[206:209], v153
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v184, 0, v184, s18
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[170:177], v[65:72], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v238, v243
	v_sub_f32_e32 v69, v241, v243
	v_sub_f32_e32 v70, v240, v243
	v_sub_f32_e32 v72, v239, v243
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v66.h, v163.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v72, v72
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v170, v225, v243
	v_sub_f32_e32 v171, v222, v243
	v_sub_f32_e32 v172, v223, v243
	v_sub_f32_e32 v173, v211, v243
	v_sub_f32_e32 v174, v212, v243
	v_sub_f32_e32 v175, v205, v243
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s22
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v176, v210, v243
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s25
	v_cndmask_b32_e64 v70, 0, v70, s24
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v177, v203, v243
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v66.l, v71.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v179, v196, v243
	v_sub_f32_e32 v196, v242, v243
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v171, v171
	v_exp_f32_e32 v172, v172
	v_exp_f32_e32 v173, v173
	v_exp_f32_e32 v174, v174
	v_exp_f32_e32 v175, v175
	v_exp_f32_e32 v176, v176
.Ltmp10:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v210, v69, v70
.Ltmp11:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v177, v177
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v211, v71, v72
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v196, v196
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v66, 1, v66
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v179, v179
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v212, v76, v202
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v65.h, v163.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v170, s10
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v187, v187, v243
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v170, 0, v171, s9
	v_cndmask_b32_e64 v171, 0, v172, s8
	v_cndmask_b32_e64 v172, 0, v173, s7
	v_cndmask_b32_e64 v173, 0, v174, s6
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v186, v186, v243
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v174, 0, v175, s5
	v_cndmask_b32_e64 v175, 0, v176, s4
	v_cndmask_b32_e64 v176, 0, v177, s3
	v_cndmask_b32_e64 v177, 0, v178, s1
	v_cndmask_b32_e64 v178, 0, v179, s23
	v_cndmask_b32_e64 v179, 0, v196, s21
.Ltmp16:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v196, v244, v245 :: v_dual_add_f32 v205, v250, v251
	v_dual_add_f32 v212, v212, v213 :: v_dual_add_f32 v203, v246, v247
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v69.h
	v_mov_b16_e64 v67.h, v163.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v185, v185
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v214, v164, v165
.Ltmp19:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v187, v187
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v204, v204, v205
	v_add_f32_e32 v205, v172, v173
.Ltmp21:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v186, v186
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v210, v210, v211 :: v_dual_add_f32 v213, v176, v177
	v_dual_add_f32 v196, v196, v203 :: v_dual_and_b32 v65, 1, v65
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.l, v76.h
	v_mov_b16_e64 v68.h, v163.h
	v_cmp_o_f32_e64 s1, v69, v69
	v_mov_b16_e64 v68.l, v161.h
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v203, v170, v171
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v69, v65, 0x7fff
	v_mov_b16_e64 v69.h, v163.h
	v_and_b32_e32 v67, 1, v67
	v_mov_b16_e64 v69.l, v170.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v185, s14
	v_cndmask_b32_e64 v186, 0, v186, s16
	v_cndmask_b32_e64 v187, 0, v187, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v71, v71
	v_add3_u32 v66, v71, v66, 0x7fff
	v_mov_b16_e64 v71.h, v163.h
	v_cmp_o_f32_e64 s4, v76, v76
	v_add3_u32 v67, v76, v67, 0x7fff
	v_mov_b16_e64 v76.h, v163.h
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v203, v214, v203 :: v_dual_and_b32 v68, 1, v68
	v_dual_add_f32 v214, v178, v179 :: v_dual_and_b32 v69, 1, v69
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v71.l, v172.h
	v_mov_b16_e64 v76.l, v174.h
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v211, v174, v175
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v170, v170
	v_add3_u32 v69, v170, v69, 0x7fff
	v_mov_b16_e64 v170.h, v163.h
	v_and_b32_e32 v71, 1, v71
	v_mov_b16_e64 v170.l, v184.h
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v205, v205, v211 :: v_dual_and_b32 v76, 1, v76
	v_add_f32_e32 v211, v184, v185
	v_dual_add_f32 v213, v213, v214 :: v_dual_add_f32 v214, v186, v187
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v172, v172
	v_add3_u32 v71, v172, v71, 0x7fff
	v_mov_b16_e64 v172.h, v163.h
	v_mov_b16_e64 v172.l, v186.h
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v211, v211, v214
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v214.h, v163.h
	v_mov_b16_e64 v214.l, v164.h
	v_cmp_o_f32_e64 s5, v161, v161
	v_add3_u32 v68, v161, v68, 0x7fff
	v_mov_b16_e64 v215.l, v176.h
	v_and_b32_e32 v170, 1, v170
	v_and_b32_e32 v161, 1, v214
	v_mov_b16_e64 v214.l, v178.h
	v_cmp_o_f32_e64 s17, v174, v174
	v_and_b32_e32 v215, 1, v215
	v_cmp_o_f32_e64 s19, v176, v176
	v_cmp_o_f32_e64 s20, v178, v178
	v_and_b32_e32 v214, 1, v214
	v_cmp_o_f32_e64 s21, v184, v184
	v_and_b32_e32 v172, 1, v172
	v_add3_u32 v76, v174, v76, 0x7fff
	v_add3_u32 v174, v176, v215, 0x7fff
	v_add3_u32 v176, v178, v214, 0x7fff
	v_add3_u32 v170, v184, v170, 0x7fff
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v178, v196, v204
	v_add_f32_e32 v184, v210, v212
	v_dual_add_f32 v196, v203, v205 :: v_dual_add_f32 v203, v213, v211
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s1
	v_cndmask_b16 v71.l, 0x7fff, v67.h, s4
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v178, v184
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v163.l, v70.h
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v196, v203
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v70, v70
	v_cndmask_b16 v68.l, 0x7fff, v66.h, s3
	v_cndmask_b16 v174.l, 0x7fff, v69.h, s7
	v_cmp_o_f32_e64 s10, v72, v72
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v67
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v67, 1, v163
	v_mov_b16_e64 v163.l, v72.h
	v_cmp_o_f32_e64 s22, v186, v186
	v_add3_u32 v172, v186, v172, 0x7fff
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v69, v65, s94, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v70, v67, 0x7fff
	v_and_b32_e32 v70, 1, v163
	v_mov_b16_e64 v163.l, v202.h
	v_cndmask_b16 v186.l, 0x7fff, v76.h, s17
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v65, v69
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s9
	v_add3_u32 v65, v72, v70, 0x7fff
	v_and_b32_e32 v67, 1, v163
	v_mov_b16_e64 v163.l, v162.h
	v_cmp_o_f32_e64 s6, v164, v164
	v_add3_u32 v164, v164, v161, 0x7fff
	v_cmp_o_f32_e64 s12, v162, v162
	v_add3_u32 v67, v202, v67, 0x7fff
	v_and_b32_e32 v70, 1, v163
	v_mov_b16_e64 v163.l, v165.h
	v_cndmask_b16 v164.l, 0x7fff, v68.h, s5
	v_cndmask_b16 v176.l, 0x7fff, v71.h, s8
	v_permlanex16_b32 v69, v66, s94, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v68.h, 0x7fff, v65.h, s10
	v_cndmask_b16 v71.h, 0x7fff, v67.h, s11
	v_add3_u32 v70, v162, v70, 0x7fff
	v_and_b32_e32 v72, 1, v163
	v_mov_b16_e64 v163.l, v171.h
	v_cmp_o_f32_e64 s13, v165, v165
	v_cndmask_b16 v172.l, 0x7fff, v164.h, s6
	v_perm_b32 v65, v69, v66, v116
	v_perm_b32 v66, v69, v66, v117
	v_permlanex16_b32 v69, v68, s94, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v162, v71, s94, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v164.h, 0x7fff, v70.h, s12
	v_add3_u32 v72, v165, v72, 0x7fff
	v_and_b32_e32 v165, 1, v163
	v_mov_b16_e64 v163.l, v173.h
	v_cmp_o_f32_e64 s14, v171, v171
	v_cndmask_b16 v235.l, 0x7fff, v170.h, s21
	v_perm_b32 v67, v69, v68, v116
	v_perm_b32 v68, v69, v68, v117
	v_perm_b32 v69, v162, v71, v116
	v_perm_b32 v70, v162, v71, v117
	v_permlanex16_b32 v162, v164, s94, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v165, v171, v165, 0x7fff
	v_and_b32_e32 v170, 1, v163
	v_mov_b16_e64 v163.l, v175.h
	v_cmp_o_f32_e64 s15, v173, v173
	v_cndmask_b16 v204.l, 0x7fff, v174.h, s19
	v_cndmask_b16 v236.l, 0x7fff, v172.h, s22
	v_cndmask_b16 v172.h, 0x7fff, v72.h, s13
	v_perm_b32 v71, v162, v164, v116
	v_perm_b32 v72, v162, v164, v117
	v_cndmask_b16 v174.h, 0x7fff, v165.h, s14
	v_add3_u32 v164, v173, v170, 0x7fff
	v_and_b32_e32 v165, 1, v163
	v_mov_b16_e64 v163.l, v177.h
	v_cmp_o_f32_e64 s16, v175, v175
	v_cndmask_b16 v196.l, 0x7fff, v176.h, s20
	v_permlanex16_b32 v162, v172, s94, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v176.h, 0x7fff, v164.h, s15
	v_add3_u32 v164, v175, v165, 0x7fff
	v_and_b32_e32 v165, 1, v163
	v_mov_b16_e64 v163.l, v179.h
	v_cmp_o_f32_e64 s18, v177, v177
	v_perm_b32 v170, v162, v172, v116
	v_perm_b32 v171, v162, v172, v117
	v_permlanex16_b32 v162, v174, s94, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v186.h, 0x7fff, v164.h, s16
	v_add3_u32 v164, v177, v165, 0x7fff
	v_and_b32_e32 v165, 1, v163
	v_mov_b16_e64 v163.l, v185.h
	v_perm_b32 v172, v162, v174, v116
	v_perm_b32 v173, v162, v174, v117
	v_permlanex16_b32 v162, v176, s94, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v204.h, 0x7fff, v164.h, s18
	v_add3_u32 v164, v179, v165, 0x7fff
	v_and_b32_e32 v165, 1, v163
	v_mov_b16_e64 v163.l, v187.h
	v_perm_b32 v174, v162, v176, v116
	v_perm_b32 v175, v162, v176, v117
	v_permlanex16_b32 v162, v186, s94, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s24, v185, v185
	v_and_b32_e32 v163, 1, v163
	v_cmp_o_f32_e64 s25, v187, v187
	v_cmp_o_f32_e64 s23, v179, v179
	v_perm_b32 v176, v162, v186, v116
	v_perm_b32 v177, v162, v186, v117
	v_add3_u32 v162, v185, v165, 0x7fff
	v_add3_u32 v238, v187, v163, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[184:187], v135
	ds_load_b128 v[210:213], v136
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v179, v204, s94, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[188:195], v[65:72], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[188:191], v143
	ds_load_b128 v[192:195], v144
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v196.h, 0x7fff, v164.h, s23
	v_cndmask_b16 v235.h, 0x7fff, v162.h, s24
	v_perm_b32 v178, v179, v204, v116
	v_perm_b32 v179, v179, v204, v117
	v_cndmask_b16 v236.h, 0x7fff, v238.h, s25
	v_permlanex16_b32 v237, v196, s94, 0xfedcba98 op_sel:[1,0]
	v_dual_mov_b32 v161, v243 :: v_dual_fmac_f32 v76, v234, v252
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[180:187], v[65:72], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[180:183], v149
	ds_load_b128 v[184:187], v150
	ds_load_b128 v[202:205], v157
	ds_load_b128 v[214:217], v137
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[188:195], v[170:177], v[17:24]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[180:187], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[198:205], v[65:72], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[69:72], v151
	ds_load_b128 v[222:225], v159
	ds_load_b128 v[162:165], v138
	ds_load_b128 v[65:68], v197 offset:4096
	ds_load_b128 v[226:229], v197 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[210:217], v[170:177], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[210:213], v145
	ds_load_b128 v[214:217], v146
	ds_load_b128 v[202:205], v152
	ds_load_b128 v[230:233], v160
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v183, v235, s94, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v185, v236, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v180, v237, v196, v116
	v_perm_b32 v181, v237, v196, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v182, v183, v235, v116
	v_perm_b32 v183, v183, v235, v117
	v_perm_b32 v184, v185, v236, v116
	v_perm_b32 v185, v185, v236, v117
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[218:225], v[170:177], v[1:8]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[162:169], v[178:185], v[25:32]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[170:177], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[210:217], v[178:185], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[226:233], v[178:185], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[202:209], v[178:185], v[9:16]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v0, null, v76, v76, v25
	v_div_scale_f32 v33, null, v76, v76, v26
	v_div_scale_f32 v34, null, v76, v76, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v0
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v38, vcc_lo, v25, v76, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, s0, v26, v76, v26
	v_div_scale_f32 v42, null, v76, v76, v28
	v_div_scale_f32 v48, s3, v28, v76, v28
	v_fma_f32 v40, -v0, v35, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v33, v36, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s77, s77, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v34, v37, 1.0
	s_mov_b32 s79, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v41, v36
	v_rcp_f32_e32 v41, v42
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v40, s1, v27, v76, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v38, v35 :: v_dual_mul_f32 v44, v39, v36
	s_mov_b32 s78, 0x7ffffffe
	v_fma_f32 v46, -v0, v43, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v47, -v33, v44, v39
	v_fma_f32 v49, -v42, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, v46, v35 :: v_dual_fmac_f32 v44, v47, v36
	v_div_scale_f32 v46, null, v76, v76, v29
	v_fmac_f32_e32 v41, v49, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v0, v43, v38
	v_fma_f32 v33, -v33, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v46
	v_div_scale_f32 v39, null, v76, v76, v30
	v_div_fmas_f32 v0, v0, v35, v43
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v35, v48, v41
	v_div_fmas_f32 v33, v33, v36, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v76, v25
	v_rcp_f32_e32 v43, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v46, v38, 1.0
	v_div_fixup_f32 v25, v33, v76, v26
	v_div_scale_f32 v33, s4, v29, v76, v29
	v_fma_f32 v36, -v42, v35, v48
	v_fmac_f32_e32 v38, v44, v38
	v_mul_f32_e32 v45, v40, v37
	v_div_scale_f32 v44, null, v76, v76, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v36, v41
	v_div_scale_f32 v36, null, v76, v76, v31
	v_fma_f32 v50, -v34, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v44
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v76
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v50, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v26, -v34, v45, v40
	v_mul_f32_e32 v40, v33, v38
	v_fma_f32 v34, -v39, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v37, v45
	v_fma_f32 v37, -v42, v35, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v30, v76, v30
	v_div_fixup_f32 v26, v26, v76, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v37, v41, v35
	v_fma_f32 v37, -v46, v40, v33
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v35, v76, v28
	v_fmac_f32_e32 v40, v37, v38
	v_div_scale_f32 v37, null, v76, v76, v17
	v_div_scale_f32 v35, s3, v31, v76, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v40, v33
	v_rcp_f32_e32 v48, v37
	v_fmac_f32_e32 v43, v34, v43
	v_rcp_f32_e32 v34, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v42, v43
	v_fma_f32 v28, -v39, v41, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v36, v34, 1.0
	v_dual_fmac_f32 v41, v28, v43 :: v_dual_fmac_f32 v34, v45, v34
	v_fma_f32 v45, -v44, v47, 1.0
	v_div_fmas_f32 v28, v33, v38, v40
	v_fma_f32 v40, -v37, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v39, v41, v42
	v_mul_f32_e32 v46, v35, v34
	v_div_scale_f32 v42, null, v76, v76, v18
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v45, s5, v32, v76, v32
	v_fma_f32 v38, -v36, v46, v35
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v48, v40, v48 :: v_dual_mul_f32 v39, v45, v47
	v_div_fmas_f32 v33, v33, v43, v41
	v_fmac_f32_e32 v46, v38, v34
	v_rcp_f32_e32 v38, v42
	v_div_scale_f32 v40, s1, v17, v76, v17
	v_fma_f32 v41, -v44, v39, v45
	v_div_fixup_f32 v28, v28, v76, v29
	v_div_fixup_f32 v29, v33, v76, v30
	v_fma_f32 v30, -v36, v46, v35
	v_div_scale_f32 v36, null, v76, v76, v19
	v_fmac_f32_e32 v39, v41, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v42, v38, 1.0
	v_mul_f32_e32 v33, v40, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s3, v18, v76, v18
	v_fmac_f32_e32 v38, v35, v38
	v_rcp_f32_e32 v35, v36
	v_div_fmas_f32 v30, v30, v34, v46
	v_fma_f32 v34, -v44, v39, v45
	v_fma_f32 v41, -v37, v33, v40
	v_div_scale_f32 v44, null, v76, v76, v20
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v30, v30, v76, v31
	v_div_fmas_f32 v34, v34, v47, v39
	v_fmac_f32_e32 v33, v41, v48
	v_rcp_f32_e32 v39, v44
	v_mul_f32_e32 v41, v43, v38
	v_fma_f32 v45, -v36, v35, 1.0
	v_div_fixup_f32 v31, v34, v76, v32
	v_fma_f32 v32, -v37, v33, v40
	v_div_scale_f32 v37, s4, v19, v76, v19
	v_fma_f32 v34, -v42, v41, v43
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v76, v76, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v44, v39, 1.0
	v_fmac_f32_e32 v41, v34, v38
	v_div_scale_f32 v46, null, v76, v76, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v34, v45
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v39, v40, v39
	v_div_fmas_f32 v32, v32, v48, v33
	v_mul_f32_e32 v33, v37, v35
	v_div_scale_f32 v40, s1, v20, v76, v20
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v17, v32, v76, v17
	v_fma_f32 v32, -v42, v41, v43
	v_fma_f32 v42, -v36, v33, v37
	v_mul_f32_e32 v43, v40, v39
	v_fma_f32 v48, -v45, v34, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v38, v41
	v_fmac_f32_e32 v33, v42, v35
	v_fma_f32 v38, -v44, v43, v40
	v_fmac_f32_e32 v34, v48, v34
	v_div_scale_f32 v41, s3, v21, v76, v21
	v_fma_f32 v42, -v46, v47, 1.0
	v_div_fixup_f32 v18, v32, v76, v18
	v_fma_f32 v32, -v36, v33, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v43, v38, v39 :: v_dual_mul_f32 v36, v41, v34
	v_fmac_f32_e32 v47, v42, v47
	v_div_scale_f32 v37, s5, v22, v76, v22
	v_div_scale_f32 v38, null, v76, v76, v23
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v42, v37, v47
	v_div_fmas_f32 v32, v32, v35, v33
	v_fma_f32 v33, -v44, v43, v40
	v_fma_f32 v35, -v45, v36, v41
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v44, null, v76, v76, v24
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v35, v34
	v_div_fmas_f32 v33, v33, v39, v43
	v_rcp_f32_e32 v35, v44
	v_fma_f32 v39, -v46, v42, v37
	v_div_fixup_f32 v19, v32, v76, v19
	v_fma_f32 v32, -v45, v36, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v43, -v38, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v39, v47
	v_div_fixup_f32 v20, v33, v76, v20
	v_div_scale_f32 v33, s1, v23, v76, v23
	v_fmac_f32_e32 v40, v43, v40
	v_fma_f32 v39, -v44, v35, 1.0
	v_div_fmas_f32 v32, v32, v34, v36
	v_fma_f32 v34, -v46, v42, v37
	v_div_scale_f32 v37, null, v76, v76, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v36, v33, v40 :: v_dual_fmac_f32 v35, v39, v35
	v_div_scale_f32 v39, s3, v24, v76, v24
	v_rcp_f32_e32 v41, v37
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v76, v76, v10
	v_div_fmas_f32 v34, v34, v47, v42
	v_fma_f32 v42, -v38, v36, v33
	v_mul_f32_e32 v43, v39, v35
	v_div_fixup_f32 v21, v32, v76, v21
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v76, v22
	v_fmac_f32_e32 v36, v42, v40
	v_fma_f32 v32, -v44, v43, v39
	v_rcp_f32_e32 v34, v45
	v_fma_f32 v42, -v37, v41, 1.0
	v_div_scale_f32 v47, null, v76, v76, v12
	v_fma_f32 v33, -v38, v36, v33
	v_fmac_f32_e32 v43, v32, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v32, s4, v9, v76, v9
	v_div_fmas_f32 v33, v33, v40, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v45, v34, 1.0
	v_fma_f32 v36, -v44, v43, v39
	v_mul_f32_e32 v39, v32, v41
	v_div_scale_f32 v38, null, v76, v76, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v46, v34
	v_div_scale_f32 v40, s1, v10, v76, v10
	v_fma_f32 v46, -v37, v39, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v38
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v48, v40, v34
	v_div_fmas_f32 v35, v36, v35, v43
	v_fmac_f32_e32 v39, v46, v41
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v36, -v45, v48, v40
	v_div_fixup_f32 v23, v33, v76, v23
	v_fma_f32 v32, -v37, v39, v32
	v_fma_f32 v44, -v38, v42, 1.0
	v_div_fixup_f32 v24, v35, v76, v24
	v_fmac_f32_e32 v48, v36, v34
	v_div_scale_f32 v36, null, v76, v76, v13
	v_div_fmas_f32 v32, v32, v41, v39
	v_div_scale_f32 v39, null, v76, v76, v14
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, s5, v11, v76, v11
	v_fma_f32 v37, -v45, v48, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v43, v44, v42
	v_fma_f32 v35, -v47, v49, 1.0
	v_div_fmas_f32 v34, v37, v34, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v32, v76, v9
	v_fma_f32 v33, -v38, v43, v44
	v_fmac_f32_e32 v49, v35, v49
	v_div_fixup_f32 v10, v34, v76, v10
	v_fma_f32 v34, -v39, v41, 1.0
	v_div_scale_f32 v35, s3, v12, v76, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v34, v41
	v_fmac_f32_e32 v43, v33, v42
	v_rcp_f32_e32 v33, v36
	v_div_scale_f32 v34, s4, v14, v76, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v38, v43, v44
	v_mul_f32_e32 v38, v35, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v36, v33, 1.0
	v_fma_f32 v42, -v47, v38, v35
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v37, v76, v11
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v13, v76, v13
	v_fmac_f32_e32 v38, v42, v49
	v_div_scale_f32 v37, null, v76, v76, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v32, v40, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v47, v38, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v43, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v36, v32, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v49, v38
	v_mul_f32_e32 v38, v34, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v32, v42, v33
	v_div_scale_f32 v42, null, v76, v76, v16
	v_div_fixup_f32 v12, v35, v76, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v36, v32, v40
	v_fma_f32 v36, -v39, v38, v34
	v_fma_f32 v40, -v37, v43, 1.0
	v_rcp_f32_e32 v44, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v35, v33, v32
	v_div_scale_f32 v33, null, v76, v76, v1
	v_fmac_f32_e32 v38, v36, v41
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v76, v76, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v35, s1, v15, v76, v15
	v_div_fixup_f32 v13, v32, v76, v13
	v_fma_f32 v32, -v42, v44, 1.0
	v_rcp_f32_e32 v46, v40
	v_fma_f32 v34, -v39, v38, v34
	v_mul_f32_e32 v39, v35, v43
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v44, v32, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v33, v36, 1.0
	v_div_scale_f32 v32, s3, v16, v76, v16
	v_div_fmas_f32 v34, v34, v41, v38
	v_fma_f32 v38, -v37, v39, v35
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v76, v76, v3
	v_mul_f32_e32 v41, v32, v44
	v_div_scale_f32 v47, s4, v1, v76, v1
	v_fma_f32 v48, -v40, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v45
	v_fmac_f32_e32 v39, v38, v43
	v_fma_f32 v38, -v42, v41, v32
	v_mul_f32_e32 v50, v47, v36
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v2, v76, v2
	v_div_fixup_f32 v14, v34, v76, v14
	v_fma_f32 v34, -v37, v39, v35
	v_fmac_f32_e32 v41, v38, v44
	v_fma_f32 v35, -v33, v50, v47
	v_mul_f32_e32 v37, v48, v46
	v_fma_f32 v38, -v45, v49, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v42, v41, v32
	v_fmac_f32_e32 v50, v35, v36
	v_fma_f32 v35, -v40, v37, v48
	v_fmac_f32_e32 v49, v38, v49
	v_div_scale_f32 v38, s1, v3, v76, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v50, v47
	v_fmac_f32_e32 v37, v35, v46
	v_div_fmas_f32 v34, v34, v43, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v35, v38, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v76, v76, v4
	v_div_fmas_f32 v32, v32, v44, v41
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v34, v76, v15
	v_div_fmas_f32 v33, v33, v36, v50
	v_fma_f32 v36, -v40, v37, v48
	v_fma_f32 v40, -v45, v35, v38
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v16, v32, v76, v16
	v_div_fixup_f32 v1, v33, v76, v1
	v_div_scale_f32 v33, null, v76, v76, v5
	v_fmac_f32_e32 v35, v40, v49
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v43, null, v76, v76, v8
	v_div_fmas_f32 v36, v36, v46, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v32, -v45, v35, v38
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v39, v41, 1.0
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v2, v36, v76, v2
	v_div_fmas_f32 v32, v32, v49, v35
	v_rcp_f32_e32 v35, v33
	v_fmac_f32_e32 v41, v34, v41
	v_div_scale_f32 v34, null, v76, v76, v6
	v_div_scale_f32 v36, null, v76, v76, v7
	v_div_scale_f32 v37, vcc_lo, v4, v76, v4
	v_div_fixup_f32 v3, v32, v76, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v34
	v_fma_f32 v32, -v33, v35, 1.0
	v_rcp_f32_e32 v40, v36
	v_mul_f32_e32 v42, v37, v41
	v_fma_f32 v49, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v5, v76, v5
	v_fma_f32 v46, -v39, v42, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v34, v38, 1.0
	v_dual_fmac_f32 v45, v49, v45 :: v_dual_mul_f32 v48, v32, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v36, v40, 1.0
	v_fmac_f32_e32 v42, v46, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, s3, v6, v76, v6
	v_fma_f32 v46, -v33, v48, v32
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s4, v7, v76, v7
	v_div_scale_f32 v49, s5, v8, v76, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v46, v35
	v_dual_mul_f32 v50, v44, v38 :: v_dual_mul_f32 v51, v47, v40
	v_fma_f32 v37, -v39, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v49, v45
	v_fma_f32 v32, -v33, v48, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v39, -v34, v50, v44
	v_fma_f32 v46, -v36, v51, v47
	v_div_fmas_f32 v37, v37, v41, v42
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v43, v52, v49
	v_div_fmas_f32 v32, v32, v35, v48
	v_dual_fmac_f32 v50, v39, v38 :: v_dual_fmac_f32 v51, v46, v40
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v33, v45
	v_div_fixup_f32 v5, v32, v76, v5
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v32, s67, v109
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v34, v50, v44
	v_fma_f32 v33, -v36, v51, v47
	v_fma_f32 v35, -v43, v52, v49
	v_div_fixup_f32 v4, v37, v76, v4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v32, s89, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v38, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v40, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v34, v76, v6
	v_div_fmas_f32 v35, v35, v45, v52
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s89, v98
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v33, v76, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v98, 2
	v_add_lshl_u32 v34, v32, v108, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v35, v76, v8
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v35, v32, v107, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v0, v33, s[76:79], 0 offen
	buffer_store_b32 v25, v34, s[76:79], 0 offen
	buffer_store_b32 v26, v35, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v106, 2
	v_add_lshl_u32 v25, v32, v105, 2
	v_add_lshl_u32 v26, v32, v104, 2
	v_add_lshl_u32 v33, v32, v103, 2
	v_add_lshl_u32 v34, v32, v102, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s89, v101
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_clause 0x4
	buffer_store_b32 v27, v0, s[76:79], 0 offen
	buffer_store_b32 v28, v25, s[76:79], 0 offen
	buffer_store_b32 v29, v26, s[76:79], 0 offen
	buffer_store_b32 v30, v33, s[76:79], 0 offen
	buffer_store_b32 v31, v34, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v101, 2
	v_add_lshl_u32 v25, v32, v100, 2
	v_add_lshl_u32 v26, v32, v99, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v97, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v96, 2
	s_clause 0x2
	buffer_store_b32 v17, v0, s[76:79], 0 offen
	buffer_store_b32 v18, v25, s[76:79], 0 offen
	buffer_store_b32 v19, v26, s[76:79], 0 offen
	v_add_lshl_u32 v17, v32, v95, 2
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v0, 0x80000000, v28
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s89, v92
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v18, v32, v94, 2
	v_add_lshl_u32 v19, v32, v93, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_store_b32 v20, v27, s[76:79], 0 offen
	buffer_store_b32 v21, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v92, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v17, s[76:79], 0 offen
	v_add_lshl_u32 v17, v32, v91, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v18, s[76:79], 0 offen
	buffer_store_b32 v24, v19, s[76:79], 0 offen
	buffer_store_b32 v9, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v90, 2
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v89, 2
	v_add_lshl_u32 v18, v32, v88, 2
	v_add_lshl_u32 v19, v32, v87, 2
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b32 v10, v9, s[76:79], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s89, v84
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v11, v0, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v86, 2
	s_clause 0x2
	buffer_store_b32 v12, v9, s[76:79], 0 offen
	buffer_store_b32 v13, v10, s[76:79], 0 offen
	buffer_store_b32 v14, v17, s[76:79], 0 offen
	v_add_lshl_u32 v9, v32, v85, 2
	v_add_lshl_u32 v10, v32, v84, 2
	v_add_lshl_u32 v11, v32, v83, 2
	v_add_lshl_u32 v12, v32, v82, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v0, s[76:79], 0 offen
	buffer_store_b32 v16, v9, s[76:79], 0 offen
	buffer_store_b32 v1, v10, s[76:79], 0 offen
	buffer_store_b32 v2, v11, s[76:79], 0 offen
	buffer_store_b32 v3, v12, s[76:79], 0 offen
	v_add_lshl_u32 v0, v32, v80, 2
	v_add_lshl_u32 v1, v32, v79, 2
	v_add_lshl_u32 v2, v32, v77, 2
	v_add_lshl_u32 v3, v32, v78, 2
	v_add_lshl_u32 v9, v32, v81, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[76:79], 0 offen
	buffer_store_b32 v5, v1, s[76:79], 0 offen
	buffer_store_b32 v6, v2, s[76:79], 0 offen
	buffer_store_b32 v7, v3, s[76:79], 0 offen
	buffer_store_b32 v8, v9, s[76:79], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp46:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 253
		.amdhsa_next_free_sgpr 96
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 253
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 96
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11584
; TotalNumSgprs: 98
; NumVgprs: 253
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 98
; NumVGPRsForWavesPerEU: 253
; Occupancy: 5
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
	.short	883                             ; DW_AT_call_line
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
	.short	887                             ; DW_AT_call_line
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
.Ldebug_ranges3:
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     98
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     253
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
